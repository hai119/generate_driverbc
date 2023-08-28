; ModuleID = '../bcout/drivers/pci/iov.llvm.bc'
source_filename = "drivers/pci/iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.vdso_image = type opaque
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, {}*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }
%struct.pci_sysdata = type { i32, i32, %struct.acpi_device*, i8*, i8*, %struct.pci_dev* }
%struct.acpi_device = type opaque
%struct.pci_bus_region = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"virtfn%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"physfn\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"drivers/pci/iov.c\00", align 1
@sriov_dev_attrs = internal global [7 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sriov_totalvfs, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sriov_numvfs, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sriov_offset, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sriov_stride, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sriov_vf_device, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_sriov_drivers_autoprobe, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !0
@sriov_dev_attr_group = dso_local constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @sriov_attrs_are_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([7 x %struct.attribute*], [7 x %struct.attribute*]* @sriov_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4056
@.str.3 = private unnamed_addr constant [41 x i8] c"driver left SR-IOV enabled after remove\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s %s: can't update enabled VF BAR%d %pR\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Cannot modify SR-IOV while VFs are assigned\0A\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 8
@dev_attr_sriov_totalvfs = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sriov_totalvfs_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4058
@dev_attr_sriov_numvfs = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sriov_numvfs_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sriov_numvfs_store }, align 8, !dbg !4072
@dev_attr_sriov_offset = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sriov_offset_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4074
@dev_attr_sriov_stride = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sriov_stride_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4076
@dev_attr_sriov_vf_device = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sriov_vf_device_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4078
@dev_attr_sriov_drivers_autoprobe = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @sriov_drivers_autoprobe_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sriov_drivers_autoprobe_store }, align 8, !dbg !4080
@.str.6 = private unnamed_addr constant [15 x i8] c"sriov_totalvfs\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"sriov_numvfs\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Driver does not support SRIOV configuration via sysfs\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"%d VFs already enabled. Disable before enabling %d VFs\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"%d VFs requested; only %d enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"sriov_offset\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"sriov_stride\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"sriov_vf_device\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"sriov_drivers_autoprobe\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"VF(n) BAR%d space: %pR (contains BAR%d for %d VFs)\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"not enough MMIO resources for SR-IOV\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"can't enable %d VFs (bus %02x out of range of %pR)\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"SR-IOV: IOV BARS not allocated\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"dep_link\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"failure %d from pcibios_sriov_enable()\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_iov_virtfn_bus(%struct.pci_dev* %dev, i32 %vf_id) #0 !dbg !4090 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %vf_id.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4091, metadata !DIExpression()), !dbg !4092
  store i32 %vf_id, i32* %vf_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vf_id.addr, metadata !4093, metadata !DIExpression()), !dbg !4094
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4095
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4097
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !4097
  %bf.load = load i40, i40* %1, align 1, !dbg !4097
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !4097
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4097
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4097
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4095
  br i1 %tobool, label %if.end, label %if.then, !dbg !4098

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4099
  br label %return, !dbg !4099

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4100
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 1, !dbg !4101
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4101
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %3, i32 0, i32 13, !dbg !4102
  %4 = load i8, i8* %number, align 8, !dbg !4102
  %conv = zext i8 %4 to i32, !dbg !4100
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4103
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 6, !dbg !4104
  %6 = load i32, i32* %devfn, align 8, !dbg !4104
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4105
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 59, !dbg !4106
  %sriov = bitcast %union.anon.65* %8 to %struct.pci_sriov**, !dbg !4106
  %9 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !4106
  %offset = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %9, i32 0, i32 7, !dbg !4107
  %10 = load i16, i16* %offset, align 4, !dbg !4107
  %conv1 = zext i16 %10 to i32, !dbg !4105
  %add = add i32 %6, %conv1, !dbg !4108
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4109
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 59, !dbg !4110
  %sriov2 = bitcast %union.anon.65* %12 to %struct.pci_sriov**, !dbg !4110
  %13 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov2, align 8, !dbg !4110
  %stride = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %13, i32 0, i32 8, !dbg !4111
  %14 = load i16, i16* %stride, align 2, !dbg !4111
  %conv3 = zext i16 %14 to i32, !dbg !4109
  %15 = load i32, i32* %vf_id.addr, align 4, !dbg !4112
  %mul = mul i32 %conv3, %15, !dbg !4113
  %add4 = add i32 %add, %mul, !dbg !4114
  %shr = lshr i32 %add4, 8, !dbg !4115
  %add5 = add i32 %conv, %shr, !dbg !4116
  store i32 %add5, i32* %retval, align 4, !dbg !4117
  br label %return, !dbg !4117

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4118
  ret i32 %16, !dbg !4118
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_iov_virtfn_devfn(%struct.pci_dev* %dev, i32 %vf_id) #0 !dbg !4119 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %vf_id.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4120, metadata !DIExpression()), !dbg !4121
  store i32 %vf_id, i32* %vf_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %vf_id.addr, metadata !4122, metadata !DIExpression()), !dbg !4123
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4124
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4126
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !4126
  %bf.load = load i40, i40* %1, align 1, !dbg !4126
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !4126
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4126
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4126
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4124
  br i1 %tobool, label %if.end, label %if.then, !dbg !4127

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4128
  br label %return, !dbg !4128

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4129
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 6, !dbg !4130
  %3 = load i32, i32* %devfn, align 8, !dbg !4130
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4131
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 59, !dbg !4132
  %sriov = bitcast %union.anon.65* %5 to %struct.pci_sriov**, !dbg !4132
  %6 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !4132
  %offset = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %6, i32 0, i32 7, !dbg !4133
  %7 = load i16, i16* %offset, align 4, !dbg !4133
  %conv = zext i16 %7 to i32, !dbg !4131
  %add = add i32 %3, %conv, !dbg !4134
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4135
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 59, !dbg !4136
  %sriov1 = bitcast %union.anon.65* %9 to %struct.pci_sriov**, !dbg !4136
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov1, align 8, !dbg !4136
  %stride = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 8, !dbg !4137
  %11 = load i16, i16* %stride, align 2, !dbg !4137
  %conv2 = zext i16 %11 to i32, !dbg !4135
  %12 = load i32, i32* %vf_id.addr, align 4, !dbg !4138
  %mul = mul i32 %conv2, %12, !dbg !4139
  %add3 = add i32 %add, %mul, !dbg !4140
  %and = and i32 %add3, 255, !dbg !4141
  store i32 %and, i32* %retval, align 4, !dbg !4142
  br label %return, !dbg !4142

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4143
  ret i32 %13, !dbg !4143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @pci_iov_resource_size(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !4144 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4149, metadata !DIExpression()), !dbg !4150
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4151
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4153
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !4153
  %bf.load = load i40, i40* %1, align 1, !dbg !4153
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !4153
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4153
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4153
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4151
  br i1 %tobool, label %if.end, label %if.then, !dbg !4154

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !4155
  br label %return, !dbg !4155

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4156
  %3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 59, !dbg !4157
  %sriov = bitcast %union.anon.65* %3 to %struct.pci_sriov**, !dbg !4157
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !4157
  %barsz = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 20, !dbg !4158
  %5 = load i32, i32* %resno.addr, align 4, !dbg !4159
  %sub = sub i32 %5, 7, !dbg !4160
  %idxprom = sext i32 %sub to i64, !dbg !4156
  %arrayidx = getelementptr [6 x i64], [6 x i64]* %barsz, i64 0, i64 %idxprom, !dbg !4156
  %6 = load i64, i64* %arrayidx, align 8, !dbg !4156
  store i64 %6, i64* %retval, align 8, !dbg !4161
  br label %return, !dbg !4161

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !4162
  ret i64 %7, !dbg !4162
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_iov_sysfs_link(%struct.pci_dev* %dev, %struct.pci_dev* %virtfn, i32 %id) #0 !dbg !4163 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %virtfn.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %rc = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  store %struct.pci_dev* %virtfn, %struct.pci_dev** %virtfn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %virtfn.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.declare(metadata [16 x i8]* %buf, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4174, metadata !DIExpression()), !dbg !4175
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4176
  %0 = load i32, i32* %id.addr, align 4, !dbg !4177
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %0) #7, !dbg !4178
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4179
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !4180
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 0, !dbg !4181
  %2 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4182
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4183
  %kobj3 = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 0, !dbg !4184
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4185
  %call5 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj3, i8* %arraydecay4) #7, !dbg !4186
  store i32 %call5, i32* %rc, align 4, !dbg !4187
  %3 = load i32, i32* %rc, align 4, !dbg !4188
  %tobool = icmp ne i32 %3, 0, !dbg !4188
  br i1 %tobool, label %if.then, label %if.end, !dbg !4190

if.then:                                          ; preds = %entry
  br label %failed, !dbg !4191

if.end:                                           ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4192
  %dev6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4193
  %kobj7 = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 0, !dbg !4194
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4195
  %dev8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 41, !dbg !4196
  %kobj9 = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 0, !dbg !4197
  %call10 = call i32 @sysfs_create_link(%struct.kobject* %kobj7, %struct.kobject* %kobj9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !4198
  store i32 %call10, i32* %rc, align 4, !dbg !4199
  %6 = load i32, i32* %rc, align 4, !dbg !4200
  %tobool11 = icmp ne i32 %6, 0, !dbg !4200
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4202

if.then12:                                        ; preds = %if.end
  br label %failed1, !dbg !4203

if.end13:                                         ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4204
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 41, !dbg !4205
  %kobj15 = getelementptr inbounds %struct.device, %struct.device* %dev14, i32 0, i32 0, !dbg !4206
  %call16 = call i32 @kobject_uevent(%struct.kobject* %kobj15, i32 2) #7, !dbg !4207
  store i32 0, i32* %retval, align 4, !dbg !4208
  br label %return, !dbg !4208

failed1:                                          ; preds = %if.then12
  call void @llvm.dbg.label(metadata !4209), !dbg !4210
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4211
  %dev17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !4212
  %kobj18 = getelementptr inbounds %struct.device, %struct.device* %dev17, i32 0, i32 0, !dbg !4213
  %arraydecay19 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4214
  call void @sysfs_remove_link(%struct.kobject* %kobj18, i8* %arraydecay19) #7, !dbg !4215
  br label %failed, !dbg !4215

failed:                                           ; preds = %failed1, %if.then
  call void @llvm.dbg.label(metadata !4216), !dbg !4217
  %9 = load i32, i32* %rc, align 4, !dbg !4218
  store i32 %9, i32* %retval, align 4, !dbg !4219
  br label %return, !dbg !4219

return:                                           ; preds = %failed, %if.end13
  %10 = load i32, i32* %retval, align 4, !dbg !4220
  ret i32 %10, !dbg !4220
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_iov_add_virtfn(%struct.pci_dev* %dev, i32 %id) #0 !dbg !4221 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %size = alloca i64, align 8
  %virtfn = alloca %struct.pci_dev*, align 8
  %res = alloca %struct.resource*, align 8
  %iov = alloca %struct.pci_sriov*, align 8
  %bus = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4222, metadata !DIExpression()), !dbg !4223
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i32 -12, i32* %rc, align 4, !dbg !4229
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %virtfn, metadata !4232, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !4236, metadata !DIExpression()), !dbg !4237
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4238
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !4239
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !4239
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !4239
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !4237
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus, metadata !4240, metadata !DIExpression()), !dbg !4241
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4242
  %bus1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1, !dbg !4243
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus1, align 8, !dbg !4243
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4244
  %6 = load i32, i32* %id.addr, align 4, !dbg !4245
  %call = call i32 @pci_iov_virtfn_bus(%struct.pci_dev* %5, i32 %6) #7, !dbg !4246
  %call2 = call %struct.pci_bus* @virtfn_add_bus(%struct.pci_bus* %4, i32 %call) #7, !dbg !4247
  store %struct.pci_bus* %call2, %struct.pci_bus** %bus, align 8, !dbg !4248
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4249
  %tobool = icmp ne %struct.pci_bus* %7, null, !dbg !4249
  br i1 %tobool, label %if.end, label %if.then, !dbg !4251

if.then:                                          ; preds = %entry
  br label %failed, !dbg !4252

if.end:                                           ; preds = %entry
  %8 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4253
  %call3 = call %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus* %8) #7, !dbg !4254
  store %struct.pci_dev* %call3, %struct.pci_dev** %virtfn, align 8, !dbg !4255
  %9 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4256
  %tobool4 = icmp ne %struct.pci_dev* %9, null, !dbg !4256
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4258

if.then5:                                         ; preds = %if.end
  br label %failed0, !dbg !4259

if.end6:                                          ; preds = %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4260
  %11 = load i32, i32* %id.addr, align 4, !dbg !4261
  %call7 = call i32 @pci_iov_virtfn_devfn(%struct.pci_dev* %10, i32 %11) #7, !dbg !4262
  %12 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4263
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 6, !dbg !4264
  store i32 %call7, i32* %devfn, align 8, !dbg !4265
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4266
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 7, !dbg !4267
  %14 = load i16, i16* %vendor, align 4, !dbg !4267
  %15 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4268
  %vendor8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 7, !dbg !4269
  store i16 %14, i16* %vendor8, align 4, !dbg !4270
  %16 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4271
  %vf_device = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %16, i32 0, i32 9, !dbg !4272
  %17 = load i16, i16* %vf_device, align 8, !dbg !4272
  %18 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4273
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 8, !dbg !4274
  store i16 %17, i16* %device, align 2, !dbg !4275
  %19 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4276
  %is_virtfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 46, !dbg !4277
  %20 = bitcast [5 x i8]* %is_virtfn to i40*, !dbg !4277
  %bf.load = load i40, i40* %20, align 1, !dbg !4278
  %bf.clear = and i40 %bf.load, -4194305, !dbg !4278
  %bf.set = or i40 %bf.clear, 4194304, !dbg !4278
  store i40 %bf.set, i40* %20, align 1, !dbg !4278
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4279
  %call9 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %21) #7, !dbg !4280
  %22 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4281
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 59, !dbg !4282
  %physfn = bitcast %union.anon.65* %23 to %struct.pci_dev**, !dbg !4282
  store %struct.pci_dev* %call9, %struct.pci_dev** %physfn, align 8, !dbg !4283
  %24 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4284
  %no_command_memory = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 46, !dbg !4285
  %25 = bitcast [5 x i8]* %no_command_memory to i40*, !dbg !4285
  %bf.load10 = load i40, i40* %25, align 1, !dbg !4286
  %bf.clear11 = and i40 %bf.load10, -68719476737, !dbg !4286
  %bf.set12 = or i40 %bf.clear11, 68719476736, !dbg !4286
  store i40 %bf.set12, i40* %25, align 1, !dbg !4286
  %26 = load i32, i32* %id.addr, align 4, !dbg !4287
  %cmp = icmp eq i32 %26, 0, !dbg !4289
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !4290

if.then13:                                        ; preds = %if.end6
  %27 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4291
  call void @pci_read_vf_config_common(%struct.pci_dev* %27) #7, !dbg !4292
  br label %if.end14, !dbg !4292

if.end14:                                         ; preds = %if.then13, %if.end6
  %28 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4293
  %call15 = call i32 @pci_setup_device(%struct.pci_dev* %28) #7, !dbg !4294
  store i32 %call15, i32* %rc, align 4, !dbg !4295
  %29 = load i32, i32* %rc, align 4, !dbg !4296
  %tobool16 = icmp ne i32 %29, 0, !dbg !4296
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4298

if.then17:                                        ; preds = %if.end14
  br label %failed1, !dbg !4299

if.end18:                                         ; preds = %if.end14
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4300
  %dev19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 41, !dbg !4301
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev19, i32 0, i32 1, !dbg !4302
  %31 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4302
  %32 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4303
  %dev20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 41, !dbg !4304
  %parent21 = getelementptr inbounds %struct.device, %struct.device* %dev20, i32 0, i32 1, !dbg !4305
  store %struct.device* %31, %struct.device** %parent21, align 8, !dbg !4306
  %33 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4307
  %multifunction = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 46, !dbg !4308
  %34 = bitcast [5 x i8]* %multifunction to i40*, !dbg !4308
  %bf.load22 = load i40, i40* %34, align 1, !dbg !4309
  %bf.clear23 = and i40 %bf.load22, -17, !dbg !4309
  store i40 %bf.clear23, i40* %34, align 1, !dbg !4309
  store i32 0, i32* %i, align 4, !dbg !4310
  br label %for.cond, !dbg !4312

for.cond:                                         ; preds = %for.inc, %if.end18
  %35 = load i32, i32* %i, align 4, !dbg !4313
  %cmp24 = icmp slt i32 %35, 6, !dbg !4315
  br i1 %cmp24, label %for.body, label %for.end, !dbg !4316

for.body:                                         ; preds = %for.cond
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4317
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 44, !dbg !4319
  %37 = load i32, i32* %i, align 4, !dbg !4320
  %add = add i32 %37, 7, !dbg !4321
  %idxprom = sext i32 %add to i64, !dbg !4317
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !4317
  store %struct.resource* %arrayidx, %struct.resource** %res, align 8, !dbg !4322
  %38 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4323
  %parent25 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 5, !dbg !4325
  %39 = load %struct.resource*, %struct.resource** %parent25, align 8, !dbg !4325
  %tobool26 = icmp ne %struct.resource* %39, null, !dbg !4323
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !4326

if.then27:                                        ; preds = %for.body
  br label %for.inc, !dbg !4327

if.end28:                                         ; preds = %for.body
  %40 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4328
  %call29 = call i8* @pci_name(%struct.pci_dev* %40) #7, !dbg !4329
  %41 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4330
  %resource30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 44, !dbg !4331
  %42 = load i32, i32* %i, align 4, !dbg !4332
  %idxprom31 = sext i32 %42 to i64, !dbg !4330
  %arrayidx32 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource30, i64 0, i64 %idxprom31, !dbg !4330
  %name = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx32, i32 0, i32 2, !dbg !4333
  store i8* %call29, i8** %name, align 8, !dbg !4334
  %43 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4335
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 3, !dbg !4336
  %44 = load i64, i64* %flags, align 8, !dbg !4336
  %45 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4337
  %resource33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 44, !dbg !4338
  %46 = load i32, i32* %i, align 4, !dbg !4339
  %idxprom34 = sext i32 %46 to i64, !dbg !4337
  %arrayidx35 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource33, i64 0, i64 %idxprom34, !dbg !4337
  %flags36 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx35, i32 0, i32 3, !dbg !4340
  store i64 %44, i64* %flags36, align 8, !dbg !4341
  %47 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4342
  %48 = load i32, i32* %i, align 4, !dbg !4343
  %add37 = add i32 %48, 7, !dbg !4344
  %call38 = call i64 @pci_iov_resource_size(%struct.pci_dev* %47, i32 %add37) #7, !dbg !4345
  store i64 %call38, i64* %size, align 8, !dbg !4346
  %49 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4347
  %start = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0, !dbg !4348
  %50 = load i64, i64* %start, align 8, !dbg !4348
  %51 = load i64, i64* %size, align 8, !dbg !4349
  %52 = load i32, i32* %id.addr, align 4, !dbg !4350
  %conv = sext i32 %52 to i64, !dbg !4350
  %mul = mul i64 %51, %conv, !dbg !4351
  %add39 = add i64 %50, %mul, !dbg !4352
  %53 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4353
  %resource40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 44, !dbg !4354
  %54 = load i32, i32* %i, align 4, !dbg !4355
  %idxprom41 = sext i32 %54 to i64, !dbg !4353
  %arrayidx42 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource40, i64 0, i64 %idxprom41, !dbg !4353
  %start43 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx42, i32 0, i32 0, !dbg !4356
  store i64 %add39, i64* %start43, align 8, !dbg !4357
  %55 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4358
  %resource44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 44, !dbg !4359
  %56 = load i32, i32* %i, align 4, !dbg !4360
  %idxprom45 = sext i32 %56 to i64, !dbg !4358
  %arrayidx46 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource44, i64 0, i64 %idxprom45, !dbg !4358
  %start47 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx46, i32 0, i32 0, !dbg !4361
  %57 = load i64, i64* %start47, align 8, !dbg !4361
  %58 = load i64, i64* %size, align 8, !dbg !4362
  %add48 = add i64 %57, %58, !dbg !4363
  %sub = sub i64 %add48, 1, !dbg !4364
  %59 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4365
  %resource49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 44, !dbg !4366
  %60 = load i32, i32* %i, align 4, !dbg !4367
  %idxprom50 = sext i32 %60 to i64, !dbg !4365
  %arrayidx51 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource49, i64 0, i64 %idxprom50, !dbg !4365
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx51, i32 0, i32 1, !dbg !4368
  store i64 %sub, i64* %end, align 8, !dbg !4369
  %61 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4370
  %62 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4371
  %resource52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 44, !dbg !4372
  %63 = load i32, i32* %i, align 4, !dbg !4373
  %idxprom53 = sext i32 %63 to i64, !dbg !4371
  %arrayidx54 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource52, i64 0, i64 %idxprom53, !dbg !4371
  %call55 = call i32 @request_resource(%struct.resource* %61, %struct.resource* %arrayidx54) #7, !dbg !4374
  store i32 %call55, i32* %rc, align 4, !dbg !4375
  br label %do.body, !dbg !4376

do.body:                                          ; preds = %if.end28
  %64 = load i32, i32* %rc, align 4, !dbg !4377
  %tobool56 = icmp ne i32 %64, 0, !dbg !4377
  %lnot = xor i1 %tobool56, true, !dbg !4377
  %lnot57 = xor i1 %lnot, true, !dbg !4377
  %lnot.ext = zext i1 %lnot57 to i32, !dbg !4377
  %conv58 = sext i32 %lnot.ext to i64, !dbg !4377
  %tobool59 = icmp ne i64 %conv58, 0, !dbg !4377
  br i1 %tobool59, label %if.then60, label %if.end68, !dbg !4380

if.then60:                                        ; preds = %do.body
  br label %do.body61, !dbg !4377

do.body61:                                        ; preds = %if.then60
  br label %do.body62, !dbg !4381

do.body62:                                        ; preds = %do.body61
  br label %do.end, !dbg !4383

do.end:                                           ; preds = %do.body62
  br label %do.body63, !dbg !4381

do.body63:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 205, i32 0, i64 12) #8, !dbg !4385, !srcloc !4387
  br label %do.end64, !dbg !4385

do.end64:                                         ; preds = %do.body63
  br label %do.body65, !dbg !4381

do.body65:                                        ; preds = %do.end64
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #8, !dbg !4388, !srcloc !4391
  unreachable, !dbg !4392

do.end66:                                         ; No predecessors!
  br label %do.end67, !dbg !4381

do.end67:                                         ; preds = %do.end66
  br label %if.end68, !dbg !4381

if.end68:                                         ; preds = %do.end67, %do.body
  br label %do.end69, !dbg !4380

do.end69:                                         ; preds = %if.end68
  br label %for.inc, !dbg !4393

for.inc:                                          ; preds = %do.end69, %if.then27
  %65 = load i32, i32* %i, align 4, !dbg !4394
  %inc = add i32 %65, 1, !dbg !4394
  store i32 %inc, i32* %i, align 4, !dbg !4394
  br label %for.cond, !dbg !4395, !llvm.loop !4396

for.end:                                          ; preds = %for.cond
  %66 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4398
  %67 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4399
  %bus70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 1, !dbg !4400
  %68 = load %struct.pci_bus*, %struct.pci_bus** %bus70, align 8, !dbg !4400
  call void @pci_device_add(%struct.pci_dev* %66, %struct.pci_bus* %68) #7, !dbg !4401
  %69 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4402
  %70 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4403
  %71 = load i32, i32* %id.addr, align 4, !dbg !4404
  %call71 = call i32 @pci_iov_sysfs_link(%struct.pci_dev* %69, %struct.pci_dev* %70, i32 %71) #7, !dbg !4405
  store i32 %call71, i32* %rc, align 4, !dbg !4406
  %72 = load i32, i32* %rc, align 4, !dbg !4407
  %tobool72 = icmp ne i32 %72, 0, !dbg !4407
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !4409

if.then73:                                        ; preds = %for.end
  br label %failed1, !dbg !4410

if.end74:                                         ; preds = %for.end
  %73 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4411
  call void @pci_bus_add_device(%struct.pci_dev* %73) #7, !dbg !4412
  store i32 0, i32* %retval, align 4, !dbg !4413
  br label %return, !dbg !4413

failed1:                                          ; preds = %if.then73, %if.then17
  call void @llvm.dbg.label(metadata !4414), !dbg !4415
  %74 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4416
  call void @pci_stop_and_remove_bus_device(%struct.pci_dev* %74) #7, !dbg !4417
  %75 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4418
  call void @pci_dev_put(%struct.pci_dev* %75) #7, !dbg !4419
  br label %failed0, !dbg !4419

failed0:                                          ; preds = %failed1, %if.then5
  call void @llvm.dbg.label(metadata !4420), !dbg !4421
  %76 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4422
  %bus75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 1, !dbg !4423
  %77 = load %struct.pci_bus*, %struct.pci_bus** %bus75, align 8, !dbg !4423
  %78 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4424
  call void @virtfn_remove_bus(%struct.pci_bus* %77, %struct.pci_bus* %78) #7, !dbg !4425
  br label %failed, !dbg !4425

failed:                                           ; preds = %failed0, %if.then
  call void @llvm.dbg.label(metadata !4426), !dbg !4427
  %79 = load i32, i32* %rc, align 4, !dbg !4428
  store i32 %79, i32* %retval, align 4, !dbg !4429
  br label %return, !dbg !4429

return:                                           ; preds = %failed, %if.end74
  %80 = load i32, i32* %retval, align 4, !dbg !4430
  ret i32 %80, !dbg !4430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_bus* @virtfn_add_bus(%struct.pci_bus* %bus, i32 %busnr) #0 !dbg !4431 {
entry:
  %retval = alloca %struct.pci_bus*, align 8
  %bus.addr = alloca %struct.pci_bus*, align 8
  %busnr.addr = alloca i32, align 4
  %child = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  store i32 %busnr, i32* %busnr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %busnr.addr, metadata !4436, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %child, metadata !4438, metadata !DIExpression()), !dbg !4439
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4440
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 13, !dbg !4442
  %1 = load i8, i8* %number, align 8, !dbg !4442
  %conv = zext i8 %1 to i32, !dbg !4440
  %2 = load i32, i32* %busnr.addr, align 4, !dbg !4443
  %cmp = icmp eq i32 %conv, %2, !dbg !4444
  br i1 %cmp, label %if.then, label %if.end, !dbg !4445

if.then:                                          ; preds = %entry
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4446
  store %struct.pci_bus* %3, %struct.pci_bus** %retval, align 8, !dbg !4447
  br label %return, !dbg !4447

if.end:                                           ; preds = %entry
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4448
  %call = call i32 @pci_domain_nr(%struct.pci_bus* %4) #7, !dbg !4449
  %5 = load i32, i32* %busnr.addr, align 4, !dbg !4450
  %call2 = call %struct.pci_bus* @pci_find_bus(i32 %call, i32 %5) #7, !dbg !4451
  store %struct.pci_bus* %call2, %struct.pci_bus** %child, align 8, !dbg !4452
  %6 = load %struct.pci_bus*, %struct.pci_bus** %child, align 8, !dbg !4453
  %tobool = icmp ne %struct.pci_bus* %6, null, !dbg !4453
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4455

if.then3:                                         ; preds = %if.end
  %7 = load %struct.pci_bus*, %struct.pci_bus** %child, align 8, !dbg !4456
  store %struct.pci_bus* %7, %struct.pci_bus** %retval, align 8, !dbg !4457
  br label %return, !dbg !4457

if.end4:                                          ; preds = %if.end
  %8 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4458
  %9 = load i32, i32* %busnr.addr, align 4, !dbg !4459
  %call5 = call %struct.pci_bus* @pci_add_new_bus(%struct.pci_bus* %8, %struct.pci_dev* null, i32 %9) #7, !dbg !4460
  store %struct.pci_bus* %call5, %struct.pci_bus** %child, align 8, !dbg !4461
  %10 = load %struct.pci_bus*, %struct.pci_bus** %child, align 8, !dbg !4462
  %tobool6 = icmp ne %struct.pci_bus* %10, null, !dbg !4462
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4464

if.then7:                                         ; preds = %if.end4
  store %struct.pci_bus* null, %struct.pci_bus** %retval, align 8, !dbg !4465
  br label %return, !dbg !4465

if.end8:                                          ; preds = %if.end4
  %11 = load %struct.pci_bus*, %struct.pci_bus** %child, align 8, !dbg !4466
  %12 = load i32, i32* %busnr.addr, align 4, !dbg !4467
  %13 = load i32, i32* %busnr.addr, align 4, !dbg !4468
  %call9 = call i32 @pci_bus_insert_busn_res(%struct.pci_bus* %11, i32 %12, i32 %13) #7, !dbg !4469
  %14 = load %struct.pci_bus*, %struct.pci_bus** %child, align 8, !dbg !4470
  store %struct.pci_bus* %14, %struct.pci_bus** %retval, align 8, !dbg !4471
  br label %return, !dbg !4471

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %15 = load %struct.pci_bus*, %struct.pci_bus** %retval, align 8, !dbg !4472
  ret %struct.pci_bus* %15, !dbg !4472
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_alloc_dev(%struct.pci_bus*) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_dev_get(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_read_vf_config_common(%struct.pci_dev* %virtfn) #0 !dbg !4473 {
entry:
  %virtfn.addr = alloca %struct.pci_dev*, align 8
  %physfn = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %virtfn, %struct.pci_dev** %virtfn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %virtfn.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %physfn, metadata !4476, metadata !DIExpression()), !dbg !4477
  %0 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4478
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !4479
  %physfn1 = bitcast %union.anon.65* %1 to %struct.pci_dev**, !dbg !4479
  %2 = load %struct.pci_dev*, %struct.pci_dev** %physfn1, align 8, !dbg !4479
  store %struct.pci_dev* %2, %struct.pci_dev** %physfn, align 8, !dbg !4477
  %3 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4480
  %4 = load %struct.pci_dev*, %struct.pci_dev** %physfn, align 8, !dbg !4481
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 59, !dbg !4482
  %sriov = bitcast %union.anon.65* %5 to %struct.pci_sriov**, !dbg !4482
  %6 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !4482
  %class = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %6, i32 0, i32 16, !dbg !4483
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %3, i32 8, i32* %class) #7, !dbg !4484
  %7 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4485
  %8 = load %struct.pci_dev*, %struct.pci_dev** %physfn, align 8, !dbg !4486
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 59, !dbg !4487
  %sriov2 = bitcast %union.anon.65* %9 to %struct.pci_sriov**, !dbg !4487
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov2, align 8, !dbg !4487
  %hdr_type = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 17, !dbg !4488
  %call3 = call i32 @pci_read_config_byte(%struct.pci_dev* %7, i32 14, i8* %hdr_type) #7, !dbg !4489
  %11 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4490
  %12 = load %struct.pci_dev*, %struct.pci_dev** %physfn, align 8, !dbg !4491
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 59, !dbg !4492
  %sriov4 = bitcast %union.anon.65* %13 to %struct.pci_sriov**, !dbg !4492
  %14 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov4, align 8, !dbg !4492
  %subsystem_vendor = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %14, i32 0, i32 18, !dbg !4493
  %call5 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i32 44, i16* %subsystem_vendor) #7, !dbg !4494
  %15 = load %struct.pci_dev*, %struct.pci_dev** %virtfn.addr, align 8, !dbg !4495
  %16 = load %struct.pci_dev*, %struct.pci_dev** %physfn, align 8, !dbg !4496
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 59, !dbg !4497
  %sriov6 = bitcast %union.anon.65* %17 to %struct.pci_sriov**, !dbg !4497
  %18 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov6, align 8, !dbg !4497
  %subsystem_device = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %18, i32 0, i32 19, !dbg !4498
  %call7 = call i32 @pci_read_config_word(%struct.pci_dev* %15, i32 46, i16* %subsystem_device) #7, !dbg !4499
  ret void, !dbg !4500
}

; Function Attrs: noredzone
declare dso_local i32 @pci_setup_device(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #0 !dbg !4501 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4508
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4509
  %call = call i8* @dev_name(%struct.device* %dev) #7, !dbg !4510
  ret i8* %call, !dbg !4511
}

; Function Attrs: noredzone
declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local void @pci_device_add(%struct.pci_dev*, %struct.pci_bus*) #2

; Function Attrs: noredzone
declare dso_local void @pci_bus_add_device(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_stop_and_remove_bus_device(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @virtfn_remove_bus(%struct.pci_bus* %physbus, %struct.pci_bus* %virtbus) #0 !dbg !4512 {
entry:
  %physbus.addr = alloca %struct.pci_bus*, align 8
  %virtbus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %physbus, %struct.pci_bus** %physbus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %physbus.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  store %struct.pci_bus* %virtbus, %struct.pci_bus** %virtbus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %virtbus.addr, metadata !4517, metadata !DIExpression()), !dbg !4518
  %0 = load %struct.pci_bus*, %struct.pci_bus** %physbus.addr, align 8, !dbg !4519
  %1 = load %struct.pci_bus*, %struct.pci_bus** %virtbus.addr, align 8, !dbg !4521
  %cmp = icmp ne %struct.pci_bus* %0, %1, !dbg !4522
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4523

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %virtbus.addr, align 8, !dbg !4524
  %devices = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 3, !dbg !4525
  %call = call i32 @list_empty(%struct.list_head* %devices) #7, !dbg !4526
  %tobool = icmp ne i32 %call, 0, !dbg !4526
  br i1 %tobool, label %if.then, label %if.end, !dbg !4527

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.pci_bus*, %struct.pci_bus** %virtbus.addr, align 8, !dbg !4528
  call void @pci_remove_bus(%struct.pci_bus* %3) #7, !dbg !4529
  br label %if.end, !dbg !4529

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !4530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_iov_remove_virtfn(%struct.pci_dev* %dev, i32 %id) #0 !dbg !4531 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %virtfn = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4534, metadata !DIExpression()), !dbg !4535
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4536, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.declare(metadata [16 x i8]* %buf, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %virtfn, metadata !4540, metadata !DIExpression()), !dbg !4541
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4542
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4543
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4543
  %call = call i32 @pci_domain_nr(%struct.pci_bus* %1) #7, !dbg !4544
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4545
  %3 = load i32, i32* %id.addr, align 4, !dbg !4546
  %call1 = call i32 @pci_iov_virtfn_bus(%struct.pci_dev* %2, i32 %3) #7, !dbg !4547
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4548
  %5 = load i32, i32* %id.addr, align 4, !dbg !4549
  %call2 = call i32 @pci_iov_virtfn_devfn(%struct.pci_dev* %4, i32 %5) #7, !dbg !4550
  %call3 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %call, i32 %call1, i32 %call2) #7, !dbg !4551
  store %struct.pci_dev* %call3, %struct.pci_dev** %virtfn, align 8, !dbg !4552
  %6 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4553
  %tobool = icmp ne %struct.pci_dev* %6, null, !dbg !4553
  br i1 %tobool, label %if.end, label %if.then, !dbg !4555

if.then:                                          ; preds = %entry
  br label %return, !dbg !4556

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4557
  %7 = load i32, i32* %id.addr, align 4, !dbg !4558
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7) #7, !dbg !4559
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4560
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !4561
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 0, !dbg !4562
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !4563
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* %arraydecay6) #7, !dbg !4564
  %9 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4565
  %dev7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !4567
  %kobj8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 0, !dbg !4568
  %sd = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj8, i32 0, i32 5, !dbg !4569
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** %sd, align 8, !dbg !4569
  %tobool9 = icmp ne %struct.kernfs_node* %10, null, !dbg !4565
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !4570

if.then10:                                        ; preds = %if.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4571
  %dev11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 41, !dbg !4572
  %kobj12 = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 0, !dbg !4573
  call void @sysfs_remove_link(%struct.kobject* %kobj12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !4574
  br label %if.end13, !dbg !4574

if.end13:                                         ; preds = %if.then10, %if.end
  %12 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4575
  call void @pci_stop_and_remove_bus_device(%struct.pci_dev* %12) #7, !dbg !4576
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4577
  %bus14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1, !dbg !4578
  %14 = load %struct.pci_bus*, %struct.pci_bus** %bus14, align 8, !dbg !4578
  %15 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4579
  %bus15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1, !dbg !4580
  %16 = load %struct.pci_bus*, %struct.pci_bus** %bus15, align 8, !dbg !4580
  call void @virtfn_remove_bus(%struct.pci_bus* %14, %struct.pci_bus* %16) #7, !dbg !4581
  %17 = load %struct.pci_dev*, %struct.pci_dev** %virtfn, align 8, !dbg !4582
  call void @pci_dev_put(%struct.pci_dev* %17) #7, !dbg !4583
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4584
  call void @pci_dev_put(%struct.pci_dev* %18) #7, !dbg !4585
  br label %return, !dbg !4586

return:                                           ; preds = %if.end13, %if.then
  ret void, !dbg !4586
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_domain_nr(%struct.pci_bus* %bus) #0 !dbg !4587 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4591
  %call = call %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %0) #7, !dbg !4592
  %domain = getelementptr inbounds %struct.pci_sysdata, %struct.pci_sysdata* %call, i32 0, i32 0, !dbg !4593
  %1 = load i32, i32* %domain, align 8, !dbg !4593
  ret i32 %1, !dbg !4594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @sriov_attrs_are_visible(%struct.kobject* %kobj, %struct.attribute* %a, i32 %n) #0 !dbg !4595 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca %struct.kobject*, align 8
  %a.addr = alloca %struct.attribute*, align 8
  %n.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4596, metadata !DIExpression()), !dbg !4597
  store %struct.attribute* %a, %struct.attribute** %a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %a.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4602, metadata !DIExpression()), !dbg !4603
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4604
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #7, !dbg !4605
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !4603
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4606
  %bus = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 5, !dbg !4606
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !4606
  %cmp = icmp eq %struct.bus_type* %2, @pci_bus_type, !dbg !4606
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4608

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4609, metadata !DIExpression()), !dbg !4611
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4611
  %4 = bitcast %struct.device* %3 to i8*, !dbg !4611
  store i8* %4, i8** %__mptr, align 8, !dbg !4611
  br label %do.body, !dbg !4611

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4612

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !4611
  %add.ptr = getelementptr i8, i8* %5, i64 -176, !dbg !4611
  %6 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4611
  store %struct.pci_dev* %6, %struct.pci_dev** %tmp, align 8, !dbg !4612
  %7 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4611
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 46, !dbg !4606
  %8 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !4606
  %bf.load = load i40, i40* %8, align 1, !dbg !4606
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !4606
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4606
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4606
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4606
  br i1 %tobool, label %if.end, label %if.then, !dbg !4606

cond.false:                                       ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4608

if.then:                                          ; preds = %cond.false, %do.end
  store i16 0, i16* %retval, align 2, !dbg !4614
  br label %return, !dbg !4614

if.end:                                           ; preds = %cond.false, %do.end
  %9 = load %struct.attribute*, %struct.attribute** %a.addr, align 8, !dbg !4615
  %mode = getelementptr inbounds %struct.attribute, %struct.attribute* %9, i32 0, i32 1, !dbg !4616
  %10 = load i16, i16* %mode, align 8, !dbg !4616
  store i16 %10, i16* %retval, align 2, !dbg !4617
  br label %return, !dbg !4617

return:                                           ; preds = %if.end, %if.then
  %11 = load i16, i16* %retval, align 2, !dbg !4618
  ret i16 %11, !dbg !4618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i32 @pcibios_sriov_enable(%struct.pci_dev* %pdev, i16 zeroext %num_vfs) #0 !dbg !4619 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %num_vfs.addr = alloca i16, align 2
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  store i16 %num_vfs, i16* %num_vfs.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %num_vfs.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  ret i32 0, !dbg !4626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i32 @pcibios_sriov_disable(%struct.pci_dev* %pdev) #0 !dbg !4627 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4628, metadata !DIExpression()), !dbg !4629
  ret i32 0, !dbg !4630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_iov_init(%struct.pci_dev* %dev) #0 !dbg !4631 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !4634, metadata !DIExpression()), !dbg !4635
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4636
  %call = call zeroext i1 @pci_is_pcie(%struct.pci_dev* %0) #7, !dbg !4638
  br i1 %call, label %if.end, label %if.then, !dbg !4639

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4640
  br label %return, !dbg !4640

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4641
  %call1 = call i32 @pci_find_ext_capability(%struct.pci_dev* %1, i32 16) #7, !dbg !4642
  store i32 %call1, i32* %pos, align 4, !dbg !4643
  %2 = load i32, i32* %pos, align 4, !dbg !4644
  %tobool = icmp ne i32 %2, 0, !dbg !4644
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !4646

if.then2:                                         ; preds = %if.end
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4647
  %4 = load i32, i32* %pos, align 4, !dbg !4648
  %call3 = call i32 @sriov_init(%struct.pci_dev* %3, i32 %4) #7, !dbg !4649
  store i32 %call3, i32* %retval, align 4, !dbg !4650
  br label %return, !dbg !4650

if.end4:                                          ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4651
  br label %return, !dbg !4651

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !4652
  ret i32 %5, !dbg !4652
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pci_is_pcie(%struct.pci_dev* %dev) #0 !dbg !4653 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4658
  %call = call i32 @pci_pcie_cap(%struct.pci_dev* %0) #7, !dbg !4659
  %tobool = icmp ne i32 %call, 0, !dbg !4659
  ret i1 %tobool, !dbg !4660
}

; Function Attrs: noredzone
declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sriov_init(%struct.pci_dev* %dev, i32 %pos) #0 !dbg !4661 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %bar64 = alloca i32, align 4
  %rc = alloca i32, align 4
  %nres = alloca i32, align 4
  %pgsz = alloca i32, align 4
  %ctrl = alloca i16, align 2
  %total = alloca i16, align 2
  %iov = alloca %struct.pci_sriov*, align 8
  %res = alloca %struct.resource*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4666, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.declare(metadata i32* %bar64, metadata !4668, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.declare(metadata i32* %nres, metadata !4672, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.declare(metadata i32* %pgsz, metadata !4674, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.declare(metadata i16* %ctrl, metadata !4676, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.declare(metadata i16* %total, metadata !4678, metadata !DIExpression()), !dbg !4679
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !4680, metadata !DIExpression()), !dbg !4681
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !4684, metadata !DIExpression()), !dbg !4685
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4686
  %1 = load i32, i32* %pos.addr, align 4, !dbg !4687
  %add = add i32 %1, 8, !dbg !4688
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %0, i32 %add, i16* %ctrl) #7, !dbg !4689
  %2 = load i16, i16* %ctrl, align 2, !dbg !4690
  %conv = zext i16 %2 to i32, !dbg !4690
  %and = and i32 %conv, 1, !dbg !4692
  %tobool = icmp ne i32 %and, 0, !dbg !4692
  br i1 %tobool, label %if.then, label %if.end, !dbg !4693

if.then:                                          ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4694
  %4 = load i32, i32* %pos.addr, align 4, !dbg !4696
  %add1 = add i32 %4, 8, !dbg !4697
  %call2 = call i32 @pci_write_config_word(%struct.pci_dev* %3, i32 %add1, i16 zeroext 0) #7, !dbg !4698
  call void @ssleep(i32 1) #7, !dbg !4699
  br label %if.end, !dbg !4700

if.end:                                           ; preds = %if.then, %entry
  store i16 0, i16* %ctrl, align 2, !dbg !4701
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4702, metadata !DIExpression()), !dbg !4705
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4705
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1, !dbg !4705
  %6 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4705
  %devices = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 3, !dbg !4705
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !4705
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4705
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4705
  store i8* %8, i8** %__mptr, align 8, !dbg !4705
  br label %do.body, !dbg !4705

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4706

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !4705
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !4705
  %10 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4705
  store %struct.pci_dev* %10, %struct.pci_dev** %tmp, align 8, !dbg !4706
  %11 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4705
  store %struct.pci_dev* %11, %struct.pci_dev** %pdev, align 8, !dbg !4708
  br label %for.cond, !dbg !4708

for.cond:                                         ; preds = %do.end13, %do.end
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4709
  %bus_list = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0, !dbg !4709
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4709
  %bus3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1, !dbg !4709
  %14 = load %struct.pci_bus*, %struct.pci_bus** %bus3, align 8, !dbg !4709
  %devices4 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 3, !dbg !4709
  %cmp = icmp eq %struct.list_head* %bus_list, %devices4, !dbg !4709
  %lnot = xor i1 %cmp, true, !dbg !4709
  br i1 %lnot, label %for.body, label %for.end, !dbg !4708

for.body:                                         ; preds = %for.cond
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4711
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 46, !dbg !4713
  %16 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !4713
  %bf.load = load i40, i40* %16, align 1, !dbg !4713
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !4713
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4713
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4713
  %tobool6 = icmp ne i32 %bf.cast, 0, !dbg !4711
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4714

if.then7:                                         ; preds = %for.body
  br label %found, !dbg !4715

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !4713

for.inc:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !4716, metadata !DIExpression()), !dbg !4718
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4718
  %bus_list10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0, !dbg !4718
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %bus_list10, i32 0, i32 0, !dbg !4718
  %18 = load %struct.list_head*, %struct.list_head** %next11, align 8, !dbg !4718
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4718
  store i8* %19, i8** %__mptr9, align 8, !dbg !4718
  br label %do.body12, !dbg !4718

do.body12:                                        ; preds = %for.inc
  br label %do.end13, !dbg !4719

do.end13:                                         ; preds = %do.body12
  %20 = load i8*, i8** %__mptr9, align 8, !dbg !4718
  %add.ptr15 = getelementptr i8, i8* %20, i64 0, !dbg !4718
  %21 = bitcast i8* %add.ptr15 to %struct.pci_dev*, !dbg !4718
  store %struct.pci_dev* %21, %struct.pci_dev** %tmp14, align 8, !dbg !4719
  %22 = load %struct.pci_dev*, %struct.pci_dev** %tmp14, align 8, !dbg !4718
  store %struct.pci_dev* %22, %struct.pci_dev** %pdev, align 8, !dbg !4709
  br label %for.cond, !dbg !4709, !llvm.loop !4721

for.end:                                          ; preds = %for.cond
  store %struct.pci_dev* null, %struct.pci_dev** %pdev, align 8, !dbg !4723
  %23 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4724
  %bus16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1, !dbg !4726
  %24 = load %struct.pci_bus*, %struct.pci_bus** %bus16, align 8, !dbg !4726
  %call17 = call zeroext i1 @pci_ari_enabled(%struct.pci_bus* %24) #7, !dbg !4727
  br i1 %call17, label %if.then18, label %if.end21, !dbg !4728

if.then18:                                        ; preds = %for.end
  %25 = load i16, i16* %ctrl, align 2, !dbg !4729
  %conv19 = zext i16 %25 to i32, !dbg !4729
  %or = or i32 %conv19, 16, !dbg !4729
  %conv20 = trunc i32 %or to i16, !dbg !4729
  store i16 %conv20, i16* %ctrl, align 2, !dbg !4729
  br label %if.end21, !dbg !4730

if.end21:                                         ; preds = %if.then18, %for.end
  br label %found, !dbg !4731

found:                                            ; preds = %if.end21, %if.then7
  call void @llvm.dbg.label(metadata !4732), !dbg !4733
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4734
  %27 = load i32, i32* %pos.addr, align 4, !dbg !4735
  %add22 = add i32 %27, 8, !dbg !4736
  %28 = load i16, i16* %ctrl, align 2, !dbg !4737
  %call23 = call i32 @pci_write_config_word(%struct.pci_dev* %26, i32 %add22, i16 zeroext %28) #7, !dbg !4738
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4739
  %30 = load i32, i32* %pos.addr, align 4, !dbg !4740
  %add24 = add i32 %30, 14, !dbg !4741
  %call25 = call i32 @pci_read_config_word(%struct.pci_dev* %29, i32 %add24, i16* %total) #7, !dbg !4742
  %31 = load i16, i16* %total, align 2, !dbg !4743
  %tobool26 = icmp ne i16 %31, 0, !dbg !4743
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !4745

if.then27:                                        ; preds = %found
  store i32 0, i32* %retval, align 4, !dbg !4746
  br label %return, !dbg !4746

if.end28:                                         ; preds = %found
  %32 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4747
  %33 = load i32, i32* %pos.addr, align 4, !dbg !4748
  %add29 = add i32 %33, 28, !dbg !4749
  %call30 = call i32 @pci_read_config_dword(%struct.pci_dev* %32, i32 %add29, i32* %pgsz) #7, !dbg !4750
  store i32 0, i32* %i, align 4, !dbg !4751
  %34 = load i32, i32* %i, align 4, !dbg !4752
  %shl = shl i32 1, %34, !dbg !4753
  %sub = sub i32 %shl, 1, !dbg !4754
  %neg = xor i32 %sub, -1, !dbg !4755
  %35 = load i32, i32* %pgsz, align 4, !dbg !4756
  %and31 = and i32 %35, %neg, !dbg !4756
  store i32 %and31, i32* %pgsz, align 4, !dbg !4756
  %36 = load i32, i32* %pgsz, align 4, !dbg !4757
  %tobool32 = icmp ne i32 %36, 0, !dbg !4757
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !4759

if.then33:                                        ; preds = %if.end28
  store i32 -5, i32* %retval, align 4, !dbg !4760
  br label %return, !dbg !4760

if.end34:                                         ; preds = %if.end28
  %37 = load i32, i32* %pgsz, align 4, !dbg !4761
  %sub35 = sub i32 %37, 1, !dbg !4762
  %neg36 = xor i32 %sub35, -1, !dbg !4763
  %38 = load i32, i32* %pgsz, align 4, !dbg !4764
  %and37 = and i32 %38, %neg36, !dbg !4764
  store i32 %and37, i32* %pgsz, align 4, !dbg !4764
  %39 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4765
  %40 = load i32, i32* %pos.addr, align 4, !dbg !4766
  %add38 = add i32 %40, 32, !dbg !4767
  %41 = load i32, i32* %pgsz, align 4, !dbg !4768
  %call39 = call i32 @pci_write_config_dword(%struct.pci_dev* %39, i32 %add38, i32 %41) #7, !dbg !4769
  %call40 = call i8* @kzalloc(i64 128, i32 3264) #7, !dbg !4770
  %42 = bitcast i8* %call40 to %struct.pci_sriov*, !dbg !4770
  store %struct.pci_sriov* %42, %struct.pci_sriov** %iov, align 8, !dbg !4771
  %43 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4772
  %tobool41 = icmp ne %struct.pci_sriov* %43, null, !dbg !4772
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !4774

if.then42:                                        ; preds = %if.end34
  store i32 -12, i32* %retval, align 4, !dbg !4775
  br label %return, !dbg !4775

if.end43:                                         ; preds = %if.end34
  store i32 0, i32* %nres, align 4, !dbg !4776
  store i32 0, i32* %i, align 4, !dbg !4777
  br label %for.cond44, !dbg !4779

for.cond44:                                       ; preds = %for.inc79, %if.end43
  %44 = load i32, i32* %i, align 4, !dbg !4780
  %cmp45 = icmp slt i32 %44, 6, !dbg !4782
  br i1 %cmp45, label %for.body47, label %for.end81, !dbg !4783

for.body47:                                       ; preds = %for.cond44
  %45 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4784
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 44, !dbg !4786
  %46 = load i32, i32* %i, align 4, !dbg !4787
  %add48 = add i32 %46, 7, !dbg !4788
  %idxprom = sext i32 %add48 to i64, !dbg !4784
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !4784
  store %struct.resource* %arrayidx, %struct.resource** %res, align 8, !dbg !4789
  %47 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4790
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 3, !dbg !4792
  %48 = load i64, i64* %flags, align 8, !dbg !4792
  %and49 = and i64 %48, 16, !dbg !4793
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4793
  br i1 %tobool50, label %if.then51, label %if.else, !dbg !4794

if.then51:                                        ; preds = %for.body47
  %49 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4795
  %flags52 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 3, !dbg !4796
  %50 = load i64, i64* %flags52, align 8, !dbg !4796
  %and53 = and i64 %50, 1048576, !dbg !4797
  %tobool54 = icmp ne i64 %and53, 0, !dbg !4798
  %51 = zext i1 %tobool54 to i64, !dbg !4798
  %cond = select i1 %tobool54, i32 1, i32 0, !dbg !4798
  store i32 %cond, i32* %bar64, align 4, !dbg !4799
  br label %if.end58, !dbg !4800

if.else:                                          ; preds = %for.body47
  %52 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4801
  %53 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4802
  %54 = load i32, i32* %pos.addr, align 4, !dbg !4803
  %add55 = add i32 %54, 36, !dbg !4804
  %55 = load i32, i32* %i, align 4, !dbg !4805
  %mul = mul i32 %55, 4, !dbg !4806
  %add56 = add i32 %add55, %mul, !dbg !4807
  %call57 = call i32 @__pci_read_base(%struct.pci_dev* %52, i32 0, %struct.resource* %53, i32 %add56) #7, !dbg !4808
  store i32 %call57, i32* %bar64, align 4, !dbg !4809
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then51
  %56 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4810
  %flags59 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 3, !dbg !4812
  %57 = load i64, i64* %flags59, align 8, !dbg !4812
  %tobool60 = icmp ne i64 %57, 0, !dbg !4810
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !4813

if.then61:                                        ; preds = %if.end58
  br label %for.inc79, !dbg !4814

if.end62:                                         ; preds = %if.end58
  %58 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4815
  %call63 = call i64 @resource_size(%struct.resource* %58) #7, !dbg !4817
  %and64 = and i64 %call63, 4095, !dbg !4818
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4818
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !4819

if.then66:                                        ; preds = %if.end62
  store i32 -5, i32* %rc, align 4, !dbg !4820
  br label %failed, !dbg !4822

if.end67:                                         ; preds = %if.end62
  %59 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4823
  %call68 = call i64 @resource_size(%struct.resource* %59) #7, !dbg !4824
  %60 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4825
  %barsz = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %60, i32 0, i32 20, !dbg !4826
  %61 = load i32, i32* %i, align 4, !dbg !4827
  %idxprom69 = sext i32 %61 to i64, !dbg !4825
  %arrayidx70 = getelementptr [6 x i64], [6 x i64]* %barsz, i64 0, i64 %idxprom69, !dbg !4825
  store i64 %call68, i64* %arrayidx70, align 8, !dbg !4828
  %62 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4829
  %start = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0, !dbg !4830
  %63 = load i64, i64* %start, align 8, !dbg !4830
  %64 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4831
  %call71 = call i64 @resource_size(%struct.resource* %64) #7, !dbg !4832
  %65 = load i16, i16* %total, align 2, !dbg !4833
  %conv72 = zext i16 %65 to i64, !dbg !4833
  %mul73 = mul i64 %call71, %conv72, !dbg !4834
  %add74 = add i64 %63, %mul73, !dbg !4835
  %sub75 = sub i64 %add74, 1, !dbg !4836
  %66 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4837
  %end = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 1, !dbg !4838
  store i64 %sub75, i64* %end, align 8, !dbg !4839
  %67 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4840
  %dev76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 41, !dbg !4840
  %68 = load i32, i32* %i, align 4, !dbg !4840
  %69 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4840
  %70 = load i32, i32* %i, align 4, !dbg !4840
  %71 = load i16, i16* %total, align 2, !dbg !4840
  %conv77 = zext i16 %71 to i32, !dbg !4840
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev76, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 %68, %struct.resource* %69, i32 %70, i32 %conv77) #9, !dbg !4840
  %72 = load i32, i32* %bar64, align 4, !dbg !4841
  %73 = load i32, i32* %i, align 4, !dbg !4842
  %add78 = add i32 %73, %72, !dbg !4842
  store i32 %add78, i32* %i, align 4, !dbg !4842
  %74 = load i32, i32* %nres, align 4, !dbg !4843
  %inc = add i32 %74, 1, !dbg !4843
  store i32 %inc, i32* %nres, align 4, !dbg !4843
  br label %for.inc79, !dbg !4844

for.inc79:                                        ; preds = %if.end67, %if.then61
  %75 = load i32, i32* %i, align 4, !dbg !4845
  %inc80 = add i32 %75, 1, !dbg !4845
  store i32 %inc80, i32* %i, align 4, !dbg !4845
  br label %for.cond44, !dbg !4846, !llvm.loop !4847

for.end81:                                        ; preds = %for.cond44
  %76 = load i32, i32* %pos.addr, align 4, !dbg !4849
  %77 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4850
  %pos82 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %77, i32 0, i32 0, !dbg !4851
  store i32 %76, i32* %pos82, align 8, !dbg !4852
  %78 = load i32, i32* %nres, align 4, !dbg !4853
  %79 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4854
  %nres83 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %79, i32 0, i32 1, !dbg !4855
  store i32 %78, i32* %nres83, align 4, !dbg !4856
  %80 = load i16, i16* %ctrl, align 2, !dbg !4857
  %81 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4858
  %ctrl84 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %81, i32 0, i32 3, !dbg !4859
  store i16 %80, i16* %ctrl84, align 4, !dbg !4860
  %82 = load i16, i16* %total, align 2, !dbg !4861
  %83 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4862
  %total_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %83, i32 0, i32 4, !dbg !4863
  store i16 %82, i16* %total_VFs, align 2, !dbg !4864
  %84 = load i16, i16* %total, align 2, !dbg !4865
  %85 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4866
  %driver_max_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %85, i32 0, i32 13, !dbg !4867
  store i16 %84, i16* %driver_max_VFs, align 2, !dbg !4868
  %86 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4869
  %87 = load i32, i32* %pos.addr, align 4, !dbg !4870
  %add85 = add i32 %87, 26, !dbg !4871
  %88 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4872
  %vf_device = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %88, i32 0, i32 9, !dbg !4873
  %call86 = call i32 @pci_read_config_word(%struct.pci_dev* %86, i32 %add85, i16* %vf_device) #7, !dbg !4874
  %89 = load i32, i32* %pgsz, align 4, !dbg !4875
  %90 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4876
  %pgsz87 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %90, i32 0, i32 10, !dbg !4877
  store i32 %89, i32* %pgsz87, align 4, !dbg !4878
  %91 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4879
  %92 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4880
  %self = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %92, i32 0, i32 15, !dbg !4881
  store %struct.pci_dev* %91, %struct.pci_dev** %self, align 8, !dbg !4882
  %93 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4883
  %drivers_autoprobe = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %93, i32 0, i32 21, !dbg !4884
  store i8 1, i8* %drivers_autoprobe, align 8, !dbg !4885
  %94 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4886
  %95 = load i32, i32* %pos.addr, align 4, !dbg !4887
  %add88 = add i32 %95, 4, !dbg !4888
  %96 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4889
  %cap = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %96, i32 0, i32 2, !dbg !4890
  %call89 = call i32 @pci_read_config_dword(%struct.pci_dev* %94, i32 %add88, i32* %cap) #7, !dbg !4891
  %97 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4892
  %98 = load i32, i32* %pos.addr, align 4, !dbg !4893
  %add90 = add i32 %98, 18, !dbg !4894
  %99 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4895
  %link = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %99, i32 0, i32 11, !dbg !4896
  %call91 = call i32 @pci_read_config_byte(%struct.pci_dev* %97, i32 %add90, i8* %link) #7, !dbg !4897
  %100 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4898
  %call92 = call i32 @pci_pcie_type(%struct.pci_dev* %100) #7, !dbg !4900
  %cmp93 = icmp eq i32 %call92, 9, !dbg !4901
  br i1 %cmp93, label %if.then95, label %if.end105, !dbg !4902

if.then95:                                        ; preds = %for.end81
  %101 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4903
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 6, !dbg !4903
  %102 = load i32, i32* %devfn, align 8, !dbg !4903
  %shr = lshr i32 %102, 3, !dbg !4903
  %and96 = and i32 %shr, 31, !dbg !4903
  %and97 = and i32 %and96, 31, !dbg !4903
  %shl98 = shl i32 %and97, 3, !dbg !4903
  %103 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4903
  %link99 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %103, i32 0, i32 11, !dbg !4903
  %104 = load i8, i8* %link99, align 8, !dbg !4903
  %conv100 = zext i8 %104 to i32, !dbg !4903
  %and101 = and i32 %conv100, 7, !dbg !4903
  %or102 = or i32 %shl98, %and101, !dbg !4903
  %conv103 = trunc i32 %or102 to i8, !dbg !4903
  %105 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4904
  %link104 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %105, i32 0, i32 11, !dbg !4905
  store i8 %conv103, i8* %link104, align 8, !dbg !4906
  br label %if.end105, !dbg !4904

if.end105:                                        ; preds = %if.then95, %for.end81
  %106 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4907
  %tobool106 = icmp ne %struct.pci_dev* %106, null, !dbg !4907
  br i1 %tobool106, label %if.then107, label %if.else110, !dbg !4909

if.then107:                                       ; preds = %if.end105
  %107 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4910
  %call108 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %107) #7, !dbg !4911
  %108 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4912
  %dev109 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %108, i32 0, i32 14, !dbg !4913
  store %struct.pci_dev* %call108, %struct.pci_dev** %dev109, align 8, !dbg !4914
  br label %if.end112, !dbg !4912

if.else110:                                       ; preds = %if.end105
  %109 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4915
  %110 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4916
  %dev111 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %110, i32 0, i32 14, !dbg !4917
  store %struct.pci_dev* %109, %struct.pci_dev** %dev111, align 8, !dbg !4918
  br label %if.end112

if.end112:                                        ; preds = %if.else110, %if.then107
  %111 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4919
  %112 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4920
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 59, !dbg !4921
  %sriov = bitcast %union.anon.65* %113 to %struct.pci_sriov**, !dbg !4921
  store %struct.pci_sriov* %111, %struct.pci_sriov** %sriov, align 8, !dbg !4922
  %114 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4923
  %is_physfn113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 46, !dbg !4924
  %115 = bitcast [5 x i8]* %is_physfn113 to i40*, !dbg !4924
  %bf.load114 = load i40, i40* %115, align 1, !dbg !4925
  %bf.clear115 = and i40 %bf.load114, -2097153, !dbg !4925
  %bf.set = or i40 %bf.clear115, 2097152, !dbg !4925
  store i40 %bf.set, i40* %115, align 1, !dbg !4925
  %116 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4926
  %call116 = call i32 @compute_max_vf_buses(%struct.pci_dev* %116) #7, !dbg !4927
  store i32 %call116, i32* %rc, align 4, !dbg !4928
  %117 = load i32, i32* %rc, align 4, !dbg !4929
  %tobool117 = icmp ne i32 %117, 0, !dbg !4929
  br i1 %tobool117, label %if.then118, label %if.end119, !dbg !4931

if.then118:                                       ; preds = %if.end112
  br label %fail_max_buses, !dbg !4932

if.end119:                                        ; preds = %if.end112
  store i32 0, i32* %retval, align 4, !dbg !4933
  br label %return, !dbg !4933

fail_max_buses:                                   ; preds = %if.then118
  call void @llvm.dbg.label(metadata !4934), !dbg !4935
  %118 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4936
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 59, !dbg !4937
  %sriov120 = bitcast %union.anon.65* %119 to %struct.pci_sriov**, !dbg !4937
  store %struct.pci_sriov* null, %struct.pci_sriov** %sriov120, align 8, !dbg !4938
  %120 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4939
  %is_physfn121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 46, !dbg !4940
  %121 = bitcast [5 x i8]* %is_physfn121 to i40*, !dbg !4940
  %bf.load122 = load i40, i40* %121, align 1, !dbg !4941
  %bf.clear123 = and i40 %bf.load122, -2097153, !dbg !4941
  store i40 %bf.clear123, i40* %121, align 1, !dbg !4941
  br label %failed, !dbg !4939

failed:                                           ; preds = %fail_max_buses, %if.then66
  call void @llvm.dbg.label(metadata !4942), !dbg !4943
  store i32 0, i32* %i, align 4, !dbg !4944
  br label %for.cond124, !dbg !4946

for.cond124:                                      ; preds = %for.inc133, %failed
  %122 = load i32, i32* %i, align 4, !dbg !4947
  %cmp125 = icmp slt i32 %122, 6, !dbg !4949
  br i1 %cmp125, label %for.body127, label %for.end135, !dbg !4950

for.body127:                                      ; preds = %for.cond124
  %123 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4951
  %resource128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 44, !dbg !4953
  %124 = load i32, i32* %i, align 4, !dbg !4954
  %add129 = add i32 %124, 7, !dbg !4955
  %idxprom130 = sext i32 %add129 to i64, !dbg !4951
  %arrayidx131 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource128, i64 0, i64 %idxprom130, !dbg !4951
  store %struct.resource* %arrayidx131, %struct.resource** %res, align 8, !dbg !4956
  %125 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4957
  %flags132 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 3, !dbg !4958
  store i64 0, i64* %flags132, align 8, !dbg !4959
  br label %for.inc133, !dbg !4960

for.inc133:                                       ; preds = %for.body127
  %126 = load i32, i32* %i, align 4, !dbg !4961
  %inc134 = add i32 %126, 1, !dbg !4961
  store i32 %inc134, i32* %i, align 4, !dbg !4961
  br label %for.cond124, !dbg !4962, !llvm.loop !4963

for.end135:                                       ; preds = %for.cond124
  %127 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !4965
  %128 = bitcast %struct.pci_sriov* %127 to i8*, !dbg !4965
  call void @kfree(i8* %128) #7, !dbg !4966
  %129 = load i32, i32* %rc, align 4, !dbg !4967
  store i32 %129, i32* %retval, align 4, !dbg !4968
  br label %return, !dbg !4968

return:                                           ; preds = %for.end135, %if.end119, %if.then42, %if.then33, %if.then27
  %130 = load i32, i32* %retval, align 4, !dbg !4969
  ret i32 %130, !dbg !4969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_iov_release(%struct.pci_dev* %dev) #0 !dbg !4970 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4971, metadata !DIExpression()), !dbg !4972
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4973
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4975
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !4975
  %bf.load = load i40, i40* %1, align 1, !dbg !4975
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !4975
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4975
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4975
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4973
  br i1 %tobool, label %if.then, label %if.end, !dbg !4976

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4977
  call void @sriov_release(%struct.pci_dev* %2) #7, !dbg !4978
  br label %if.end, !dbg !4978

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sriov_release(%struct.pci_dev* %dev) #0 !dbg !4980 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  br label %do.body, !dbg !4983

do.body:                                          ; preds = %entry
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4984
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !4984
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !4984
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !4984
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %2, i32 0, i32 6, !dbg !4984
  %3 = load i16, i16* %num_VFs, align 2, !dbg !4984
  %tobool = icmp ne i16 %3, 0, !dbg !4984
  %lnot = xor i1 %tobool, true, !dbg !4984
  %lnot1 = xor i1 %lnot, true, !dbg !4984
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4984
  %conv = sext i32 %lnot.ext to i64, !dbg !4984
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4984
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4987

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4984

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4988

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !4990

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4988

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 716, i32 0, i64 12) #8, !dbg !4992, !srcloc !4994
  br label %do.end6, !dbg !4992

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4988

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 242) #8, !dbg !4995, !srcloc !4998
  unreachable, !dbg !4999

do.end8:                                          ; No predecessors!
  br label %do.end9, !dbg !4988

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !4988

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !4987

do.end10:                                         ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5000
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5002
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 59, !dbg !5003
  %sriov11 = bitcast %union.anon.65* %6 to %struct.pci_sriov**, !dbg !5003
  %7 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov11, align 8, !dbg !5003
  %dev12 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %7, i32 0, i32 14, !dbg !5004
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev12, align 8, !dbg !5004
  %cmp = icmp ne %struct.pci_dev* %4, %8, !dbg !5005
  br i1 %cmp, label %if.then14, label %if.end17, !dbg !5006

if.then14:                                        ; preds = %do.end10
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5007
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 59, !dbg !5008
  %sriov15 = bitcast %union.anon.65* %10 to %struct.pci_sriov**, !dbg !5008
  %11 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov15, align 8, !dbg !5008
  %dev16 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %11, i32 0, i32 14, !dbg !5009
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev16, align 8, !dbg !5009
  call void @pci_dev_put(%struct.pci_dev* %12) #7, !dbg !5010
  br label %if.end17, !dbg !5010

if.end17:                                         ; preds = %if.then14, %do.end10
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5011
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 59, !dbg !5012
  %sriov18 = bitcast %union.anon.65* %14 to %struct.pci_sriov**, !dbg !5012
  %15 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov18, align 8, !dbg !5012
  %16 = bitcast %struct.pci_sriov* %15 to i8*, !dbg !5011
  call void @kfree(i8* %16) #7, !dbg !5013
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5014
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 59, !dbg !5015
  %sriov19 = bitcast %union.anon.65* %18 to %struct.pci_sriov**, !dbg !5015
  store %struct.pci_sriov* null, %struct.pci_sriov** %sriov19, align 8, !dbg !5016
  ret void, !dbg !5017
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_iov_remove(%struct.pci_dev* %dev) #0 !dbg !5018 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %iov = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !5021, metadata !DIExpression()), !dbg !5022
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5023
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !5024
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !5024
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5024
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !5022
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5025
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 46, !dbg !5027
  %4 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5027
  %bf.load = load i40, i40* %4, align 1, !dbg !5027
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5027
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5027
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5027
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5025
  br i1 %tobool, label %if.end, label %if.then, !dbg !5028

if.then:                                          ; preds = %entry
  br label %if.end4, !dbg !5029

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5030
  %total_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %5, i32 0, i32 4, !dbg !5031
  %6 = load i16, i16* %total_VFs, align 2, !dbg !5031
  %7 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5032
  %driver_max_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %7, i32 0, i32 13, !dbg !5033
  store i16 %6, i16* %driver_max_VFs, align 2, !dbg !5034
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5035
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 6, !dbg !5037
  %9 = load i16, i16* %num_VFs, align 2, !dbg !5037
  %tobool1 = icmp ne i16 %9, 0, !dbg !5035
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5038

if.then2:                                         ; preds = %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5039
  %dev3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !5039
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !5039
  br label %if.end4, !dbg !5039

if.end4:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !5040
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_iov_update_resource(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !5041 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %iov = alloca %struct.pci_sriov*, align 8
  %res = alloca %struct.resource*, align 8
  %vf_bar = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  %cmd = alloca i16, align 2
  %new = alloca i32, align 4
  %reg = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !5046, metadata !DIExpression()), !dbg !5047
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5048
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5049
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5049
  %bf.load = load i40, i40* %1, align 1, !dbg !5049
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5049
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5049
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5049
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5048
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5048

cond.true:                                        ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5050
  %3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 59, !dbg !5051
  %sriov = bitcast %union.anon.65* %3 to %struct.pci_sriov**, !dbg !5051
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5051
  br label %cond.end, !dbg !5048

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5048

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.pci_sriov* [ %4, %cond.true ], [ null, %cond.false ], !dbg !5048
  store %struct.pci_sriov* %cond, %struct.pci_sriov** %iov, align 8, !dbg !5047
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5052, metadata !DIExpression()), !dbg !5053
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5054
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 44, !dbg !5055
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !5054
  %6 = load i32, i32* %resno.addr, align 4, !dbg !5056
  %idx.ext = sext i32 %6 to i64, !dbg !5057
  %add.ptr = getelementptr %struct.resource, %struct.resource* %arraydecay, i64 %idx.ext, !dbg !5057
  store %struct.resource* %add.ptr, %struct.resource** %res, align 8, !dbg !5053
  call void @llvm.dbg.declare(metadata i32* %vf_bar, metadata !5058, metadata !DIExpression()), !dbg !5059
  %7 = load i32, i32* %resno.addr, align 4, !dbg !5060
  %sub = sub i32 %7, 7, !dbg !5061
  store i32 %sub, i32* %vf_bar, align 4, !dbg !5059
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region* %region, metadata !5062, metadata !DIExpression()), !dbg !5068
  call void @llvm.dbg.declare(metadata i16* %cmd, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata i32* %new, metadata !5071, metadata !DIExpression()), !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5073, metadata !DIExpression()), !dbg !5074
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5075
  %tobool1 = icmp ne %struct.pci_sriov* %8, null, !dbg !5075
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5077

if.then:                                          ; preds = %cond.end
  br label %if.end67, !dbg !5078

if.end:                                           ; preds = %cond.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5079
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5080
  %pos = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 0, !dbg !5081
  %11 = load i32, i32* %pos, align 8, !dbg !5081
  %add = add i32 %11, 8, !dbg !5082
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %9, i32 %add, i16* %cmd) #7, !dbg !5083
  %12 = load i16, i16* %cmd, align 2, !dbg !5084
  %conv = zext i16 %12 to i32, !dbg !5084
  %and = and i32 %conv, 1, !dbg !5086
  %tobool2 = icmp ne i32 %and, 0, !dbg !5086
  br i1 %tobool2, label %land.lhs.true, label %if.end35, !dbg !5087

land.lhs.true:                                    ; preds = %if.end
  %13 = load i16, i16* %cmd, align 2, !dbg !5088
  %conv3 = zext i16 %13 to i32, !dbg !5088
  %and4 = and i32 %conv3, 8, !dbg !5089
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5089
  br i1 %tobool5, label %if.then6, label %if.end35, !dbg !5090

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5091, metadata !DIExpression()), !dbg !5094
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5094
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !5095
  %tobool7 = icmp ne i32 %14, 0, !dbg !5095
  %lnot = xor i1 %tobool7, true, !dbg !5095
  %lnot8 = xor i1 %lnot, true, !dbg !5095
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5095
  %conv9 = sext i32 %lnot.ext to i64, !dbg !5095
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !5095
  br i1 %tobool10, label %if.then11, label %if.end28, !dbg !5094

if.then11:                                        ; preds = %if.then6
  br label %do.body, !dbg !5095

do.body:                                          ; preds = %if.then11
  br label %do.body12, !dbg !5097

do.body12:                                        ; preds = %do.body
  br label %do.end, !dbg !5099

do.end:                                           ; preds = %do.body12
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5097
  %dev13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 41, !dbg !5097
  %call14 = call i8* @dev_driver_string(%struct.device* %dev13) #7, !dbg !5097
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5097
  %dev15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 41, !dbg !5097
  %call16 = call i8* @dev_name(%struct.device* %dev15) #7, !dbg !5097
  %17 = load i32, i32* %vf_bar, align 4, !dbg !5097
  %18 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5097
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %call14, i8* %call16, i32 %17, %struct.resource* %18) #7, !dbg !5097
  br label %do.body17, !dbg !5097

do.body17:                                        ; preds = %do.end
  br label %do.body18, !dbg !5101

do.body18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5103

do.end19:                                         ; preds = %do.body18
  br label %do.body20, !dbg !5101

do.body20:                                        ; preds = %do.end19
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 827, i32 2313, i64 12) #8, !dbg !5105, !srcloc !5107
  br label %do.end21, !dbg !5105

do.end21:                                         ; preds = %do.body20
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 243) #8, !dbg !5108, !srcloc !5110
  br label %do.body22, !dbg !5101

do.body22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !5111

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !5101

do.end24:                                         ; preds = %do.end23
  br label %do.body25, !dbg !5097

do.body25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !5113

do.end26:                                         ; preds = %do.body25
  br label %do.end27, !dbg !5097

do.end27:                                         ; preds = %do.end26
  br label %if.end28, !dbg !5097

if.end28:                                         ; preds = %do.end27, %if.then6
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !5094
  %tobool29 = icmp ne i32 %19, 0, !dbg !5094
  %lnot30 = xor i1 %tobool29, true, !dbg !5094
  %lnot32 = xor i1 %lnot30, true, !dbg !5094
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5094
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !5094
  store i64 %conv34, i64* %tmp, align 8, !dbg !5095
  %20 = load i64, i64* %tmp, align 8, !dbg !5094
  br label %if.end67, !dbg !5115

if.end35:                                         ; preds = %land.lhs.true, %if.end
  %21 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5116
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 3, !dbg !5118
  %22 = load i64, i64* %flags, align 8, !dbg !5118
  %tobool36 = icmp ne i64 %22, 0, !dbg !5116
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5119

if.then37:                                        ; preds = %if.end35
  br label %if.end67, !dbg !5120

if.end38:                                         ; preds = %if.end35
  %23 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5121
  %flags39 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 3, !dbg !5123
  %24 = load i64, i64* %flags39, align 8, !dbg !5123
  %and40 = and i64 %24, 536870912, !dbg !5124
  %tobool41 = icmp ne i64 %and40, 0, !dbg !5124
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !5125

if.then42:                                        ; preds = %if.end38
  br label %if.end67, !dbg !5126

if.end43:                                         ; preds = %if.end38
  %25 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5127
  %flags44 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 3, !dbg !5129
  %26 = load i64, i64* %flags44, align 8, !dbg !5129
  %and45 = and i64 %26, 16, !dbg !5130
  %tobool46 = icmp ne i64 %and45, 0, !dbg !5130
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !5131

if.then47:                                        ; preds = %if.end43
  br label %if.end67, !dbg !5132

if.end48:                                         ; preds = %if.end43
  %27 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5133
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1, !dbg !5134
  %28 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5134
  %29 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5135
  call void @pcibios_resource_to_bus(%struct.pci_bus* %28, %struct.pci_bus_region* %region, %struct.resource* %29) #7, !dbg !5136
  %start = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !5137
  %30 = load i64, i64* %start, align 8, !dbg !5137
  %conv49 = trunc i64 %30 to i32, !dbg !5138
  store i32 %conv49, i32* %new, align 4, !dbg !5139
  %31 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5140
  %flags50 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 3, !dbg !5141
  %32 = load i64, i64* %flags50, align 8, !dbg !5141
  %and51 = and i64 %32, 15, !dbg !5142
  %33 = load i32, i32* %new, align 4, !dbg !5143
  %conv52 = zext i32 %33 to i64, !dbg !5143
  %or = or i64 %conv52, %and51, !dbg !5143
  %conv53 = trunc i64 %or to i32, !dbg !5143
  store i32 %conv53, i32* %new, align 4, !dbg !5143
  %34 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5144
  %pos54 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %34, i32 0, i32 0, !dbg !5145
  %35 = load i32, i32* %pos54, align 8, !dbg !5145
  %add55 = add i32 %35, 36, !dbg !5146
  %36 = load i32, i32* %vf_bar, align 4, !dbg !5147
  %mul = mul i32 4, %36, !dbg !5148
  %add56 = add i32 %add55, %mul, !dbg !5149
  store i32 %add56, i32* %reg, align 4, !dbg !5150
  %37 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5151
  %38 = load i32, i32* %reg, align 4, !dbg !5152
  %39 = load i32, i32* %new, align 4, !dbg !5153
  %call57 = call i32 @pci_write_config_dword(%struct.pci_dev* %37, i32 %38, i32 %39) #7, !dbg !5154
  %40 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5155
  %flags58 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 3, !dbg !5157
  %41 = load i64, i64* %flags58, align 8, !dbg !5157
  %and59 = and i64 %41, 1048576, !dbg !5158
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5158
  br i1 %tobool60, label %if.then61, label %if.end67, !dbg !5159

if.then61:                                        ; preds = %if.end48
  %start62 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !5160
  %42 = load i64, i64* %start62, align 8, !dbg !5160
  %shr = lshr i64 %42, 16, !dbg !5162
  %shr63 = lshr i64 %shr, 16, !dbg !5163
  %conv64 = trunc i64 %shr63 to i32, !dbg !5164
  store i32 %conv64, i32* %new, align 4, !dbg !5165
  %43 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5166
  %44 = load i32, i32* %reg, align 4, !dbg !5167
  %add65 = add i32 %44, 4, !dbg !5168
  %45 = load i32, i32* %new, align 4, !dbg !5169
  %call66 = call i32 @pci_write_config_dword(%struct.pci_dev* %43, i32 %add65, i32 %45) #7, !dbg !5170
  br label %if.end67, !dbg !5171

if.end67:                                         ; preds = %if.then, %if.end28, %if.then37, %if.then42, %if.then47, %if.then61, %if.end48
  ret void, !dbg !5172
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @dev_driver_string(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !5173 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5176, metadata !DIExpression()), !dbg !5177
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5178
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5180
  %1 = load i8*, i8** %init_name, align 8, !dbg !5180
  %tobool = icmp ne i8* %1, null, !dbg !5178
  br i1 %tobool, label %if.then, label %if.end, !dbg !5181

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5182
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5183
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5183
  store i8* %3, i8** %retval, align 8, !dbg !5184
  br label %return, !dbg !5184

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5185
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5186
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !5187
  store i8* %call, i8** %retval, align 8, !dbg !5188
  br label %return, !dbg !5188

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5189
  ret i8* %5, !dbg !5189
}

; Function Attrs: noredzone
declare dso_local void @pcibios_resource_to_bus(%struct.pci_bus*, %struct.pci_bus_region*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @pcibios_iov_resource_alignment(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !5190 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5195
  %1 = load i32, i32* %resno.addr, align 4, !dbg !5196
  %call = call i64 @pci_iov_resource_size(%struct.pci_dev* %0, i32 %1) #7, !dbg !5197
  ret i64 %call, !dbg !5198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @pci_sriov_resource_alignment(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !5199 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5204
  %1 = load i32, i32* %resno.addr, align 4, !dbg !5205
  %call = call i64 @pcibios_iov_resource_alignment(%struct.pci_dev* %0, i32 %1) #7, !dbg !5206
  ret i64 %call, !dbg !5207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_restore_iov_state(%struct.pci_dev* %dev) #0 !dbg !5208 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5211
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5213
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5213
  %bf.load = load i40, i40* %1, align 1, !dbg !5213
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5213
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5213
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5213
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5211
  br i1 %tobool, label %if.then, label %if.end, !dbg !5214

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5215
  call void @sriov_restore_state(%struct.pci_dev* %2) #7, !dbg !5216
  br label %if.end, !dbg !5216

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5217
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sriov_restore_state(%struct.pci_dev* %dev) #0 !dbg !5218 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %i = alloca i32, align 4
  %ctrl = alloca i16, align 2
  %iov = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5221, metadata !DIExpression()), !dbg !5222
  call void @llvm.dbg.declare(metadata i16* %ctrl, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5227
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !5228
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !5228
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5228
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !5226
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5229
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5230
  %pos = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 0, !dbg !5231
  %5 = load i32, i32* %pos, align 8, !dbg !5231
  %add = add i32 %5, 8, !dbg !5232
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %3, i32 %add, i16* %ctrl) #7, !dbg !5233
  %6 = load i16, i16* %ctrl, align 2, !dbg !5234
  %conv = zext i16 %6 to i32, !dbg !5234
  %and = and i32 %conv, 1, !dbg !5236
  %tobool = icmp ne i32 %and, 0, !dbg !5236
  br i1 %tobool, label %if.then, label %if.end, !dbg !5237

if.then:                                          ; preds = %entry
  br label %if.end27, !dbg !5238

if.end:                                           ; preds = %entry
  %7 = load i16, i16* %ctrl, align 2, !dbg !5239
  %conv1 = zext i16 %7 to i32, !dbg !5239
  %and2 = and i32 %conv1, -17, !dbg !5239
  %conv3 = trunc i32 %and2 to i16, !dbg !5239
  store i16 %conv3, i16* %ctrl, align 2, !dbg !5239
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5240
  %ctrl4 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 3, !dbg !5241
  %9 = load i16, i16* %ctrl4, align 4, !dbg !5241
  %conv5 = zext i16 %9 to i32, !dbg !5240
  %and6 = and i32 %conv5, 16, !dbg !5242
  %10 = load i16, i16* %ctrl, align 2, !dbg !5243
  %conv7 = zext i16 %10 to i32, !dbg !5243
  %or = or i32 %conv7, %and6, !dbg !5243
  %conv8 = trunc i32 %or to i16, !dbg !5243
  store i16 %conv8, i16* %ctrl, align 2, !dbg !5243
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5244
  %12 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5245
  %pos9 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %12, i32 0, i32 0, !dbg !5246
  %13 = load i32, i32* %pos9, align 8, !dbg !5246
  %add10 = add i32 %13, 8, !dbg !5247
  %14 = load i16, i16* %ctrl, align 2, !dbg !5248
  %call11 = call i32 @pci_write_config_word(%struct.pci_dev* %11, i32 %add10, i16 zeroext %14) #7, !dbg !5249
  store i32 0, i32* %i, align 4, !dbg !5250
  br label %for.cond, !dbg !5252

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4, !dbg !5253
  %cmp = icmp slt i32 %15, 6, !dbg !5255
  br i1 %cmp, label %for.body, label %for.end, !dbg !5256

for.body:                                         ; preds = %for.cond
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5257
  %17 = load i32, i32* %i, align 4, !dbg !5258
  %add13 = add i32 %17, 7, !dbg !5259
  call void @pci_update_resource(%struct.pci_dev* %16, i32 %add13) #7, !dbg !5260
  br label %for.inc, !dbg !5260

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !5261
  %inc = add i32 %18, 1, !dbg !5261
  store i32 %inc, i32* %i, align 4, !dbg !5261
  br label %for.cond, !dbg !5262, !llvm.loop !5263

for.end:                                          ; preds = %for.cond
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5265
  %20 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5266
  %pos14 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %20, i32 0, i32 0, !dbg !5267
  %21 = load i32, i32* %pos14, align 8, !dbg !5267
  %add15 = add i32 %21, 32, !dbg !5268
  %22 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5269
  %pgsz = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %22, i32 0, i32 10, !dbg !5270
  %23 = load i32, i32* %pgsz, align 4, !dbg !5270
  %call16 = call i32 @pci_write_config_dword(%struct.pci_dev* %19, i32 %add15, i32 %23) #7, !dbg !5271
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5272
  %25 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5273
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %25, i32 0, i32 6, !dbg !5274
  %26 = load i16, i16* %num_VFs, align 2, !dbg !5274
  %conv17 = zext i16 %26 to i32, !dbg !5273
  call void @pci_iov_set_numvfs(%struct.pci_dev* %24, i32 %conv17) #7, !dbg !5275
  %27 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5276
  %28 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5277
  %pos18 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %28, i32 0, i32 0, !dbg !5278
  %29 = load i32, i32* %pos18, align 8, !dbg !5278
  %add19 = add i32 %29, 8, !dbg !5279
  %30 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5280
  %ctrl20 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %30, i32 0, i32 3, !dbg !5281
  %31 = load i16, i16* %ctrl20, align 4, !dbg !5281
  %call21 = call i32 @pci_write_config_word(%struct.pci_dev* %27, i32 %add19, i16 zeroext %31) #7, !dbg !5282
  %32 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5283
  %ctrl22 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %32, i32 0, i32 3, !dbg !5285
  %33 = load i16, i16* %ctrl22, align 4, !dbg !5285
  %conv23 = zext i16 %33 to i32, !dbg !5283
  %and24 = and i32 %conv23, 1, !dbg !5286
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5286
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5287

if.then26:                                        ; preds = %for.end
  call void @msleep(i32 100) #7, !dbg !5288
  br label %if.end27, !dbg !5288

if.end27:                                         ; preds = %if.then, %if.then26, %for.end
  ret void, !dbg !5289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_vf_drivers_autoprobe(%struct.pci_dev* %dev, i1 zeroext %auto_probe) #0 !dbg !5290 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %auto_probe.addr = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  %frombool = zext i1 %auto_probe to i8
  store i8 %frombool, i8* %auto_probe.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %auto_probe.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5297
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5299
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5299
  %bf.load = load i40, i40* %1, align 1, !dbg !5299
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5299
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5299
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5299
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5297
  br i1 %tobool, label %if.then, label %if.end, !dbg !5300

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %auto_probe.addr, align 1, !dbg !5301
  %tobool1 = trunc i8 %2 to i1, !dbg !5301
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5302
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 59, !dbg !5303
  %sriov = bitcast %union.anon.65* %4 to %struct.pci_sriov**, !dbg !5303
  %5 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5303
  %drivers_autoprobe = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %5, i32 0, i32 21, !dbg !5304
  %frombool2 = zext i1 %tobool1 to i8, !dbg !5305
  store i8 %frombool2, i8* %drivers_autoprobe, align 8, !dbg !5305
  br label %if.end, !dbg !5302

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_iov_bus_range(%struct.pci_bus* %bus) #0 !dbg !5307 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %max = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5308, metadata !DIExpression()), !dbg !5309
  call void @llvm.dbg.declare(metadata i32* %max, metadata !5310, metadata !DIExpression()), !dbg !5311
  store i32 0, i32* %max, align 4, !dbg !5311
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5312, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5314, metadata !DIExpression()), !dbg !5317
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5317
  %devices = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 3, !dbg !5317
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !5317
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5317
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5317
  store i8* %2, i8** %__mptr, align 8, !dbg !5317
  br label %do.body, !dbg !5317

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5318

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5317
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5317
  %4 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5317
  store %struct.pci_dev* %4, %struct.pci_dev** %tmp, align 8, !dbg !5318
  %5 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5317
  store %struct.pci_dev* %5, %struct.pci_dev** %dev, align 8, !dbg !5320
  br label %for.cond, !dbg !5320

for.cond:                                         ; preds = %do.end13, %do.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5321
  %bus_list = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0, !dbg !5321
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5321
  %devices1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 3, !dbg !5321
  %cmp = icmp eq %struct.list_head* %bus_list, %devices1, !dbg !5321
  %lnot = xor i1 %cmp, true, !dbg !5321
  br i1 %lnot, label %for.body, label %for.end, !dbg !5320

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5323
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 46, !dbg !5326
  %9 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5326
  %bf.load = load i40, i40* %9, align 1, !dbg !5326
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5326
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5326
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5326
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5323
  br i1 %tobool, label %if.end, label %if.then, !dbg !5327

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5328

if.end:                                           ; preds = %for.body
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5329
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 59, !dbg !5331
  %sriov = bitcast %union.anon.65* %11 to %struct.pci_sriov**, !dbg !5331
  %12 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5331
  %max_VF_buses = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %12, i32 0, i32 12, !dbg !5332
  %13 = load i8, i8* %max_VF_buses, align 1, !dbg !5332
  %conv = zext i8 %13 to i32, !dbg !5329
  %14 = load i32, i32* %max, align 4, !dbg !5333
  %cmp2 = icmp sgt i32 %conv, %14, !dbg !5334
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !5335

if.then4:                                         ; preds = %if.end
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5336
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 59, !dbg !5337
  %sriov5 = bitcast %union.anon.65* %16 to %struct.pci_sriov**, !dbg !5337
  %17 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov5, align 8, !dbg !5337
  %max_VF_buses6 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %17, i32 0, i32 12, !dbg !5338
  %18 = load i8, i8* %max_VF_buses6, align 1, !dbg !5338
  %conv7 = zext i8 %18 to i32, !dbg !5336
  store i32 %conv7, i32* %max, align 4, !dbg !5339
  br label %if.end8, !dbg !5340

if.end8:                                          ; preds = %if.then4, %if.end
  br label %for.inc, !dbg !5341

for.inc:                                          ; preds = %if.end8, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !5342, metadata !DIExpression()), !dbg !5344
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5344
  %bus_list10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0, !dbg !5344
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %bus_list10, i32 0, i32 0, !dbg !5344
  %20 = load %struct.list_head*, %struct.list_head** %next11, align 8, !dbg !5344
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !5344
  store i8* %21, i8** %__mptr9, align 8, !dbg !5344
  br label %do.body12, !dbg !5344

do.body12:                                        ; preds = %for.inc
  br label %do.end13, !dbg !5345

do.end13:                                         ; preds = %do.body12
  %22 = load i8*, i8** %__mptr9, align 8, !dbg !5344
  %add.ptr15 = getelementptr i8, i8* %22, i64 0, !dbg !5344
  %23 = bitcast i8* %add.ptr15 to %struct.pci_dev*, !dbg !5344
  store %struct.pci_dev* %23, %struct.pci_dev** %tmp14, align 8, !dbg !5345
  %24 = load %struct.pci_dev*, %struct.pci_dev** %tmp14, align 8, !dbg !5344
  store %struct.pci_dev* %24, %struct.pci_dev** %dev, align 8, !dbg !5321
  br label %for.cond, !dbg !5321, !llvm.loop !5347

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %max, align 4, !dbg !5349
  %tobool16 = icmp ne i32 %25, 0, !dbg !5349
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !5349

cond.true:                                        ; preds = %for.end
  %26 = load i32, i32* %max, align 4, !dbg !5350
  %27 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5351
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 13, !dbg !5352
  %28 = load i8, i8* %number, align 8, !dbg !5352
  %conv17 = zext i8 %28 to i32, !dbg !5351
  %sub = sub i32 %26, %conv17, !dbg !5353
  br label %cond.end, !dbg !5349

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !5349

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !5349
  ret i32 %cond, !dbg !5354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_enable_sriov(%struct.pci_dev* %dev, i32 %nr_virtfn) #0 !dbg !5355 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %nr_virtfn.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i32 %nr_virtfn, i32* %nr_virtfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_virtfn.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  br label %do.body, !dbg !5360

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5361

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5363

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !5361

do.end2:                                          ; preds = %do.end
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5365
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5367
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5367
  %bf.load = load i40, i40* %1, align 1, !dbg !5367
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5367
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5367
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5367
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5365
  br i1 %tobool, label %if.end, label %if.then, !dbg !5368

if.then:                                          ; preds = %do.end2
  store i32 -38, i32* %retval, align 4, !dbg !5369
  br label %return, !dbg !5369

if.end:                                           ; preds = %do.end2
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5370
  %3 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5371
  %call = call i32 @sriov_enable(%struct.pci_dev* %2, i32 %3) #7, !dbg !5372
  store i32 %call, i32* %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5374
  ret i32 %4, !dbg !5374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sriov_enable(%struct.pci_dev* %dev, i32 %nr_virtfn) #0 !dbg !5375 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %nr_virtfn.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %nres = alloca i32, align 4
  %initial = alloca i16, align 2
  %res = alloca %struct.resource*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %iov = alloca %struct.pci_sriov*, align 8
  %bars = alloca i32, align 4
  %bus = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  store i32 %nr_virtfn, i32* %nr_virtfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_virtfn.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5380, metadata !DIExpression()), !dbg !5381
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5382, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.declare(metadata i32* %nres, metadata !5384, metadata !DIExpression()), !dbg !5385
  call void @llvm.dbg.declare(metadata i16* %initial, metadata !5386, metadata !DIExpression()), !dbg !5387
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5388, metadata !DIExpression()), !dbg !5389
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !5390, metadata !DIExpression()), !dbg !5391
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !5392, metadata !DIExpression()), !dbg !5393
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5394
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !5395
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !5395
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5395
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !5393
  call void @llvm.dbg.declare(metadata i32* %bars, metadata !5396, metadata !DIExpression()), !dbg !5397
  store i32 0, i32* %bars, align 4, !dbg !5397
  call void @llvm.dbg.declare(metadata i32* %bus, metadata !5398, metadata !DIExpression()), !dbg !5399
  %3 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5400
  %tobool = icmp ne i32 %3, 0, !dbg !5400
  br i1 %tobool, label %if.end, label %if.then, !dbg !5402

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5403
  br label %return, !dbg !5403

if.end:                                           ; preds = %entry
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5404
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 6, !dbg !5406
  %5 = load i16, i16* %num_VFs, align 2, !dbg !5406
  %tobool1 = icmp ne i16 %5, 0, !dbg !5404
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5407

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5408
  br label %return, !dbg !5408

if.end3:                                          ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5409
  %7 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5410
  %pos = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %7, i32 0, i32 0, !dbg !5411
  %8 = load i32, i32* %pos, align 8, !dbg !5411
  %add = add i32 %8, 12, !dbg !5412
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %6, i32 %add, i16* %initial) #7, !dbg !5413
  %9 = load i16, i16* %initial, align 2, !dbg !5414
  %conv = zext i16 %9 to i32, !dbg !5414
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5416
  %total_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 4, !dbg !5417
  %11 = load i16, i16* %total_VFs, align 2, !dbg !5417
  %conv4 = zext i16 %11 to i32, !dbg !5416
  %cmp = icmp sgt i32 %conv, %conv4, !dbg !5418
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !5419

lor.lhs.false:                                    ; preds = %if.end3
  %12 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5420
  %cap = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %12, i32 0, i32 2, !dbg !5421
  %13 = load i32, i32* %cap, align 8, !dbg !5421
  %and = and i32 %13, 1, !dbg !5422
  %tobool6 = icmp ne i32 %and, 0, !dbg !5422
  br i1 %tobool6, label %if.end13, label %land.lhs.true, !dbg !5423

land.lhs.true:                                    ; preds = %lor.lhs.false
  %14 = load i16, i16* %initial, align 2, !dbg !5424
  %conv7 = zext i16 %14 to i32, !dbg !5424
  %15 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5425
  %total_VFs8 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %15, i32 0, i32 4, !dbg !5426
  %16 = load i16, i16* %total_VFs8, align 2, !dbg !5426
  %conv9 = zext i16 %16 to i32, !dbg !5425
  %cmp10 = icmp ne i32 %conv7, %conv9, !dbg !5427
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5428

if.then12:                                        ; preds = %land.lhs.true, %if.end3
  store i32 -5, i32* %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

if.end13:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %17 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5430
  %cmp14 = icmp slt i32 %17, 0, !dbg !5432
  br i1 %cmp14, label %if.then29, label %lor.lhs.false16, !dbg !5433

lor.lhs.false16:                                  ; preds = %if.end13
  %18 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5434
  %19 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5435
  %total_VFs17 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %19, i32 0, i32 4, !dbg !5436
  %20 = load i16, i16* %total_VFs17, align 2, !dbg !5436
  %conv18 = zext i16 %20 to i32, !dbg !5435
  %cmp19 = icmp sgt i32 %18, %conv18, !dbg !5437
  br i1 %cmp19, label %if.then29, label %lor.lhs.false21, !dbg !5438

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %21 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5439
  %cap22 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %21, i32 0, i32 2, !dbg !5440
  %22 = load i32, i32* %cap22, align 8, !dbg !5440
  %and23 = and i32 %22, 1, !dbg !5441
  %tobool24 = icmp ne i32 %and23, 0, !dbg !5441
  br i1 %tobool24, label %if.end30, label %land.lhs.true25, !dbg !5442

land.lhs.true25:                                  ; preds = %lor.lhs.false21
  %23 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5443
  %24 = load i16, i16* %initial, align 2, !dbg !5444
  %conv26 = zext i16 %24 to i32, !dbg !5444
  %cmp27 = icmp sgt i32 %23, %conv26, !dbg !5445
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !5446

if.then29:                                        ; preds = %land.lhs.true25, %lor.lhs.false16, %if.end13
  store i32 -22, i32* %retval, align 4, !dbg !5447
  br label %return, !dbg !5447

if.end30:                                         ; preds = %land.lhs.true25, %lor.lhs.false21
  store i32 0, i32* %nres, align 4, !dbg !5448
  store i32 0, i32* %i, align 4, !dbg !5449
  br label %for.cond, !dbg !5451

for.cond:                                         ; preds = %for.inc, %if.end30
  %25 = load i32, i32* %i, align 4, !dbg !5452
  %cmp31 = icmp slt i32 %25, 6, !dbg !5454
  br i1 %cmp31, label %for.body, label %for.end, !dbg !5455

for.body:                                         ; preds = %for.cond
  %26 = load i32, i32* %i, align 4, !dbg !5456
  %add33 = add i32 %26, 7, !dbg !5458
  %shl = shl i32 1, %add33, !dbg !5459
  %27 = load i32, i32* %bars, align 4, !dbg !5460
  %or = or i32 %27, %shl, !dbg !5460
  store i32 %or, i32* %bars, align 4, !dbg !5460
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5461
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 44, !dbg !5462
  %29 = load i32, i32* %i, align 4, !dbg !5463
  %add34 = add i32 %29, 7, !dbg !5464
  %idxprom = sext i32 %add34 to i64, !dbg !5461
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !5461
  store %struct.resource* %arrayidx, %struct.resource** %res, align 8, !dbg !5465
  %30 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5466
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 5, !dbg !5468
  %31 = load %struct.resource*, %struct.resource** %parent, align 8, !dbg !5468
  %tobool35 = icmp ne %struct.resource* %31, null, !dbg !5466
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5469

if.then36:                                        ; preds = %for.body
  %32 = load i32, i32* %nres, align 4, !dbg !5470
  %inc = add i32 %32, 1, !dbg !5470
  store i32 %inc, i32* %nres, align 4, !dbg !5470
  br label %if.end37, !dbg !5471

if.end37:                                         ; preds = %if.then36, %for.body
  br label %for.inc, !dbg !5472

for.inc:                                          ; preds = %if.end37
  %33 = load i32, i32* %i, align 4, !dbg !5473
  %inc38 = add i32 %33, 1, !dbg !5473
  store i32 %inc38, i32* %i, align 4, !dbg !5473
  br label %for.cond, !dbg !5474, !llvm.loop !5475

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %nres, align 4, !dbg !5477
  %35 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5479
  %nres39 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %35, i32 0, i32 1, !dbg !5480
  %36 = load i32, i32* %nres39, align 4, !dbg !5480
  %cmp40 = icmp ne i32 %34, %36, !dbg !5481
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !5482

if.then42:                                        ; preds = %for.end
  %37 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5483
  %dev43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 41, !dbg !5483
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !5483
  store i32 -12, i32* %retval, align 4, !dbg !5485
  br label %return, !dbg !5485

if.end44:                                         ; preds = %for.end
  %38 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5486
  %39 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5487
  %sub = sub i32 %39, 1, !dbg !5488
  %call45 = call i32 @pci_iov_virtfn_bus(%struct.pci_dev* %38, i32 %sub) #7, !dbg !5489
  store i32 %call45, i32* %bus, align 4, !dbg !5490
  %40 = load i32, i32* %bus, align 4, !dbg !5491
  %conv46 = sext i32 %40 to i64, !dbg !5491
  %41 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5493
  %bus47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1, !dbg !5494
  %42 = load %struct.pci_bus*, %struct.pci_bus** %bus47, align 8, !dbg !5494
  %busn_res = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %42, i32 0, i32 8, !dbg !5495
  %end = getelementptr inbounds %struct.resource, %struct.resource* %busn_res, i32 0, i32 1, !dbg !5496
  %43 = load i64, i64* %end, align 8, !dbg !5496
  %cmp48 = icmp ugt i64 %conv46, %43, !dbg !5497
  br i1 %cmp48, label %if.then50, label %if.end54, !dbg !5498

if.then50:                                        ; preds = %if.end44
  %44 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5499
  %dev51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 41, !dbg !5499
  %45 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5499
  %46 = load i32, i32* %bus, align 4, !dbg !5499
  %47 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5499
  %bus52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1, !dbg !5499
  %48 = load %struct.pci_bus*, %struct.pci_bus** %bus52, align 8, !dbg !5499
  %busn_res53 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %48, i32 0, i32 8, !dbg !5499
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0), i32 %45, i32 %46, %struct.resource* %busn_res53) #9, !dbg !5499
  store i32 -12, i32* %retval, align 4, !dbg !5501
  br label %return, !dbg !5501

if.end54:                                         ; preds = %if.end44
  %49 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5502
  %50 = load i32, i32* %bars, align 4, !dbg !5504
  %call55 = call i32 @pci_enable_resources(%struct.pci_dev* %49, i32 %50) #7, !dbg !5505
  %tobool56 = icmp ne i32 %call55, 0, !dbg !5505
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !5506

if.then57:                                        ; preds = %if.end54
  %51 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5507
  %dev58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 41, !dbg !5507
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !5507
  store i32 -12, i32* %retval, align 4, !dbg !5509
  br label %return, !dbg !5509

if.end59:                                         ; preds = %if.end54
  %52 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5510
  %link = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %52, i32 0, i32 11, !dbg !5512
  %53 = load i8, i8* %link, align 8, !dbg !5512
  %conv60 = zext i8 %53 to i32, !dbg !5510
  %54 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5513
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 6, !dbg !5514
  %55 = load i32, i32* %devfn, align 8, !dbg !5514
  %cmp61 = icmp ne i32 %conv60, %55, !dbg !5515
  br i1 %cmp61, label %if.then63, label %if.end81, !dbg !5516

if.then63:                                        ; preds = %if.end59
  %56 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5517
  %bus64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 1, !dbg !5519
  %57 = load %struct.pci_bus*, %struct.pci_bus** %bus64, align 8, !dbg !5519
  %58 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5520
  %link65 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %58, i32 0, i32 11, !dbg !5521
  %59 = load i8, i8* %link65, align 8, !dbg !5521
  %conv66 = zext i8 %59 to i32, !dbg !5520
  %call67 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %57, i32 %conv66) #7, !dbg !5522
  store %struct.pci_dev* %call67, %struct.pci_dev** %pdev, align 8, !dbg !5523
  %60 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5524
  %tobool68 = icmp ne %struct.pci_dev* %60, null, !dbg !5524
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !5526

if.then69:                                        ; preds = %if.then63
  store i32 -19, i32* %retval, align 4, !dbg !5527
  br label %return, !dbg !5527

if.end70:                                         ; preds = %if.then63
  %61 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5528
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 46, !dbg !5530
  %62 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5530
  %bf.load = load i40, i40* %62, align 1, !dbg !5530
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5530
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5530
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5530
  %tobool71 = icmp ne i32 %bf.cast, 0, !dbg !5528
  br i1 %tobool71, label %if.end73, label %if.then72, !dbg !5531

if.then72:                                        ; preds = %if.end70
  %63 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5532
  call void @pci_dev_put(%struct.pci_dev* %63) #7, !dbg !5534
  store i32 -38, i32* %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

if.end73:                                         ; preds = %if.end70
  %64 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5536
  %dev74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 41, !dbg !5537
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev74, i32 0, i32 0, !dbg !5538
  %65 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5539
  %dev75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 41, !dbg !5540
  %kobj76 = getelementptr inbounds %struct.device, %struct.device* %dev75, i32 0, i32 0, !dbg !5541
  %call77 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !5542
  store i32 %call77, i32* %rc, align 4, !dbg !5543
  %66 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5544
  call void @pci_dev_put(%struct.pci_dev* %66) #7, !dbg !5545
  %67 = load i32, i32* %rc, align 4, !dbg !5546
  %tobool78 = icmp ne i32 %67, 0, !dbg !5546
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !5548

if.then79:                                        ; preds = %if.end73
  %68 = load i32, i32* %rc, align 4, !dbg !5549
  store i32 %68, i32* %retval, align 4, !dbg !5550
  br label %return, !dbg !5550

if.end80:                                         ; preds = %if.end73
  br label %if.end81, !dbg !5551

if.end81:                                         ; preds = %if.end80, %if.end59
  %69 = load i16, i16* %initial, align 2, !dbg !5552
  %70 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5553
  %initial_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %70, i32 0, i32 5, !dbg !5554
  store i16 %69, i16* %initial_VFs, align 8, !dbg !5555
  %71 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5556
  %72 = load i16, i16* %initial, align 2, !dbg !5558
  %conv82 = zext i16 %72 to i32, !dbg !5558
  %cmp83 = icmp slt i32 %71, %conv82, !dbg !5559
  br i1 %cmp83, label %if.then85, label %if.end87, !dbg !5560

if.then85:                                        ; preds = %if.end81
  %73 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5561
  %conv86 = trunc i32 %73 to i16, !dbg !5561
  store i16 %conv86, i16* %initial, align 2, !dbg !5562
  br label %if.end87, !dbg !5563

if.end87:                                         ; preds = %if.then85, %if.end81
  %74 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5564
  %75 = load i16, i16* %initial, align 2, !dbg !5565
  %call88 = call i32 @pcibios_sriov_enable(%struct.pci_dev* %74, i16 zeroext %75) #7, !dbg !5566
  store i32 %call88, i32* %rc, align 4, !dbg !5567
  %76 = load i32, i32* %rc, align 4, !dbg !5568
  %tobool89 = icmp ne i32 %76, 0, !dbg !5568
  br i1 %tobool89, label %if.then90, label %if.end92, !dbg !5570

if.then90:                                        ; preds = %if.end87
  %77 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5571
  %dev91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 41, !dbg !5571
  %78 = load i32, i32* %rc, align 4, !dbg !5571
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 %78) #9, !dbg !5571
  br label %err_pcibios, !dbg !5573

if.end92:                                         ; preds = %if.end87
  %79 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5574
  %80 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5575
  call void @pci_iov_set_numvfs(%struct.pci_dev* %79, i32 %80) #7, !dbg !5576
  %81 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5577
  %ctrl = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %81, i32 0, i32 3, !dbg !5578
  %82 = load i16, i16* %ctrl, align 4, !dbg !5579
  %conv93 = zext i16 %82 to i32, !dbg !5579
  %or94 = or i32 %conv93, 9, !dbg !5579
  %conv95 = trunc i32 %or94 to i16, !dbg !5579
  store i16 %conv95, i16* %ctrl, align 4, !dbg !5579
  %83 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5580
  call void @pci_cfg_access_lock(%struct.pci_dev* %83) #7, !dbg !5581
  %84 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5582
  %85 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5583
  %pos96 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %85, i32 0, i32 0, !dbg !5584
  %86 = load i32, i32* %pos96, align 8, !dbg !5584
  %add97 = add i32 %86, 8, !dbg !5585
  %87 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5586
  %ctrl98 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %87, i32 0, i32 3, !dbg !5587
  %88 = load i16, i16* %ctrl98, align 4, !dbg !5587
  %call99 = call i32 @pci_write_config_word(%struct.pci_dev* %84, i32 %add97, i16 zeroext %88) #7, !dbg !5588
  call void @msleep(i32 100) #7, !dbg !5589
  %89 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5590
  call void @pci_cfg_access_unlock(%struct.pci_dev* %89) #7, !dbg !5591
  %90 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5592
  %91 = load i16, i16* %initial, align 2, !dbg !5593
  %call100 = call i32 @sriov_add_vfs(%struct.pci_dev* %90, i16 zeroext %91) #7, !dbg !5594
  store i32 %call100, i32* %rc, align 4, !dbg !5595
  %92 = load i32, i32* %rc, align 4, !dbg !5596
  %tobool101 = icmp ne i32 %92, 0, !dbg !5596
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !5598

if.then102:                                       ; preds = %if.end92
  br label %err_pcibios, !dbg !5599

if.end103:                                        ; preds = %if.end92
  %93 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5600
  %dev104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 41, !dbg !5601
  %kobj105 = getelementptr inbounds %struct.device, %struct.device* %dev104, i32 0, i32 0, !dbg !5602
  %call106 = call i32 @kobject_uevent(%struct.kobject* %kobj105, i32 2) #7, !dbg !5603
  %94 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5604
  %conv107 = trunc i32 %94 to i16, !dbg !5604
  %95 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5605
  %num_VFs108 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %95, i32 0, i32 6, !dbg !5606
  store i16 %conv107, i16* %num_VFs108, align 2, !dbg !5607
  store i32 0, i32* %retval, align 4, !dbg !5608
  br label %return, !dbg !5608

err_pcibios:                                      ; preds = %if.then102, %if.then90
  call void @llvm.dbg.label(metadata !5609), !dbg !5610
  %96 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5611
  %ctrl109 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %96, i32 0, i32 3, !dbg !5612
  %97 = load i16, i16* %ctrl109, align 4, !dbg !5613
  %conv110 = zext i16 %97 to i32, !dbg !5613
  %and111 = and i32 %conv110, -10, !dbg !5613
  %conv112 = trunc i32 %and111 to i16, !dbg !5613
  store i16 %conv112, i16* %ctrl109, align 4, !dbg !5613
  %98 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5614
  call void @pci_cfg_access_lock(%struct.pci_dev* %98) #7, !dbg !5615
  %99 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5616
  %100 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5617
  %pos113 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %100, i32 0, i32 0, !dbg !5618
  %101 = load i32, i32* %pos113, align 8, !dbg !5618
  %add114 = add i32 %101, 8, !dbg !5619
  %102 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5620
  %ctrl115 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %102, i32 0, i32 3, !dbg !5621
  %103 = load i16, i16* %ctrl115, align 4, !dbg !5621
  %call116 = call i32 @pci_write_config_word(%struct.pci_dev* %99, i32 %add114, i16 zeroext %103) #7, !dbg !5622
  call void @ssleep(i32 1) #7, !dbg !5623
  %104 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5624
  call void @pci_cfg_access_unlock(%struct.pci_dev* %104) #7, !dbg !5625
  %105 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5626
  %call117 = call i32 @pcibios_sriov_disable(%struct.pci_dev* %105) #7, !dbg !5627
  %106 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5628
  %link118 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %106, i32 0, i32 11, !dbg !5630
  %107 = load i8, i8* %link118, align 8, !dbg !5630
  %conv119 = zext i8 %107 to i32, !dbg !5628
  %108 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5631
  %devfn120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 6, !dbg !5632
  %109 = load i32, i32* %devfn120, align 8, !dbg !5632
  %cmp121 = icmp ne i32 %conv119, %109, !dbg !5633
  br i1 %cmp121, label %if.then123, label %if.end126, !dbg !5634

if.then123:                                       ; preds = %err_pcibios
  %110 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5635
  %dev124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 41, !dbg !5636
  %kobj125 = getelementptr inbounds %struct.device, %struct.device* %dev124, i32 0, i32 0, !dbg !5637
  call void @sysfs_remove_link(%struct.kobject* %kobj125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !5638
  br label %if.end126, !dbg !5638

if.end126:                                        ; preds = %if.then123, %err_pcibios
  %111 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5639
  call void @pci_iov_set_numvfs(%struct.pci_dev* %111, i32 0) #7, !dbg !5640
  %112 = load i32, i32* %rc, align 4, !dbg !5641
  store i32 %112, i32* %retval, align 4, !dbg !5642
  br label %return, !dbg !5642

return:                                           ; preds = %if.end126, %if.end103, %if.then79, %if.then72, %if.then69, %if.then57, %if.then50, %if.then42, %if.then29, %if.then12, %if.then2, %if.then
  %113 = load i32, i32* %retval, align 4, !dbg !5643
  ret i32 %113, !dbg !5643
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_disable_sriov(%struct.pci_dev* %dev) #0 !dbg !5644 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5645, metadata !DIExpression()), !dbg !5646
  br label %do.body, !dbg !5647

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5648

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5650

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !5648

do.end2:                                          ; preds = %do.end
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5652
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5654
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5654
  %bf.load = load i40, i40* %1, align 1, !dbg !5654
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5654
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5654
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5654
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5652
  br i1 %tobool, label %if.end, label %if.then, !dbg !5655

if.then:                                          ; preds = %do.end2
  br label %return, !dbg !5656

if.end:                                           ; preds = %do.end2
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5657
  call void @sriov_disable(%struct.pci_dev* %2) #7, !dbg !5658
  br label %return, !dbg !5659

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sriov_disable(%struct.pci_dev* %dev) #0 !dbg !5660 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %iov = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5661, metadata !DIExpression()), !dbg !5662
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !5663, metadata !DIExpression()), !dbg !5664
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5665
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !5666
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !5666
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5666
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !5664
  %3 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5667
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %3, i32 0, i32 6, !dbg !5669
  %4 = load i16, i16* %num_VFs, align 2, !dbg !5669
  %tobool = icmp ne i16 %4, 0, !dbg !5667
  br i1 %tobool, label %if.end, label %if.then, !dbg !5670

if.then:                                          ; preds = %entry
  br label %return, !dbg !5671

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5672
  call void @sriov_del_vfs(%struct.pci_dev* %5) #7, !dbg !5673
  %6 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5674
  %ctrl = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %6, i32 0, i32 3, !dbg !5675
  %7 = load i16, i16* %ctrl, align 4, !dbg !5676
  %conv = zext i16 %7 to i32, !dbg !5676
  %and = and i32 %conv, -10, !dbg !5676
  %conv1 = trunc i32 %and to i16, !dbg !5676
  store i16 %conv1, i16* %ctrl, align 4, !dbg !5676
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5677
  call void @pci_cfg_access_lock(%struct.pci_dev* %8) #7, !dbg !5678
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5679
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5680
  %pos = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 0, !dbg !5681
  %11 = load i32, i32* %pos, align 8, !dbg !5681
  %add = add i32 %11, 8, !dbg !5682
  %12 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5683
  %ctrl2 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %12, i32 0, i32 3, !dbg !5684
  %13 = load i16, i16* %ctrl2, align 4, !dbg !5684
  %call = call i32 @pci_write_config_word(%struct.pci_dev* %9, i32 %add, i16 zeroext %13) #7, !dbg !5685
  call void @ssleep(i32 1) #7, !dbg !5686
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5687
  call void @pci_cfg_access_unlock(%struct.pci_dev* %14) #7, !dbg !5688
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5689
  %call3 = call i32 @pcibios_sriov_disable(%struct.pci_dev* %15) #7, !dbg !5690
  %16 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5691
  %link = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %16, i32 0, i32 11, !dbg !5693
  %17 = load i8, i8* %link, align 8, !dbg !5693
  %conv4 = zext i8 %17 to i32, !dbg !5691
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5694
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 6, !dbg !5695
  %19 = load i32, i32* %devfn, align 8, !dbg !5695
  %cmp = icmp ne i32 %conv4, %19, !dbg !5696
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !5697

if.then6:                                         ; preds = %if.end
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5698
  %dev7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 41, !dbg !5699
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 0, !dbg !5700
  call void @sysfs_remove_link(%struct.kobject* %kobj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !5701
  br label %if.end8, !dbg !5701

if.end8:                                          ; preds = %if.then6, %if.end
  %21 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !5702
  %num_VFs9 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %21, i32 0, i32 6, !dbg !5703
  store i16 0, i16* %num_VFs9, align 2, !dbg !5704
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5705
  call void @pci_iov_set_numvfs(%struct.pci_dev* %22, i32 0) #7, !dbg !5706
  br label %return, !dbg !5707

return:                                           ; preds = %if.end8, %if.then
  ret void, !dbg !5707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_num_vf(%struct.pci_dev* %dev) #0 !dbg !5708 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5711
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5713
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5713
  %bf.load = load i40, i40* %1, align 1, !dbg !5713
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5713
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5713
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5713
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5711
  br i1 %tobool, label %if.end, label %if.then, !dbg !5714

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5715
  br label %return, !dbg !5715

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5716
  %3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 59, !dbg !5717
  %sriov = bitcast %union.anon.65* %3 to %struct.pci_sriov**, !dbg !5717
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5717
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 6, !dbg !5718
  %5 = load i16, i16* %num_VFs, align 2, !dbg !5718
  %conv = zext i16 %5 to i32, !dbg !5716
  store i32 %conv, i32* %retval, align 4, !dbg !5719
  br label %return, !dbg !5719

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5720
  ret i32 %6, !dbg !5720
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_vfs_assigned(%struct.pci_dev* %dev) #0 !dbg !5721 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %vfdev = alloca %struct.pci_dev*, align 8
  %vfs_assigned = alloca i32, align 4
  %dev_id = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5722, metadata !DIExpression()), !dbg !5723
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %vfdev, metadata !5724, metadata !DIExpression()), !dbg !5725
  call void @llvm.dbg.declare(metadata i32* %vfs_assigned, metadata !5726, metadata !DIExpression()), !dbg !5727
  store i32 0, i32* %vfs_assigned, align 4, !dbg !5727
  call void @llvm.dbg.declare(metadata i16* %dev_id, metadata !5728, metadata !DIExpression()), !dbg !5729
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5730
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5732
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5732
  %bf.load = load i40, i40* %1, align 1, !dbg !5732
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5732
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5732
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5732
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5730
  br i1 %tobool, label %if.end, label %if.then, !dbg !5733

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5734
  br label %return, !dbg !5734

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5735
  %3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 59, !dbg !5736
  %sriov = bitcast %union.anon.65* %3 to %struct.pci_sriov**, !dbg !5736
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5736
  %vf_device = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 9, !dbg !5737
  %5 = load i16, i16* %vf_device, align 8, !dbg !5737
  store i16 %5, i16* %dev_id, align 2, !dbg !5738
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5739
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 7, !dbg !5740
  %7 = load i16, i16* %vendor, align 4, !dbg !5740
  %conv = zext i16 %7 to i32, !dbg !5739
  %8 = load i16, i16* %dev_id, align 2, !dbg !5741
  %conv1 = zext i16 %8 to i32, !dbg !5741
  %call = call %struct.pci_dev* @pci_get_device(i32 %conv, i32 %conv1, %struct.pci_dev* null) #7, !dbg !5742
  store %struct.pci_dev* %call, %struct.pci_dev** %vfdev, align 8, !dbg !5743
  br label %while.cond, !dbg !5744

while.cond:                                       ; preds = %if.end13, %if.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %vfdev, align 8, !dbg !5745
  %tobool2 = icmp ne %struct.pci_dev* %9, null, !dbg !5744
  br i1 %tobool2, label %while.body, label %while.end, !dbg !5744

while.body:                                       ; preds = %while.cond
  %10 = load %struct.pci_dev*, %struct.pci_dev** %vfdev, align 8, !dbg !5746
  %is_virtfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 46, !dbg !5749
  %11 = bitcast [5 x i8]* %is_virtfn to i40*, !dbg !5749
  %bf.load3 = load i40, i40* %11, align 1, !dbg !5749
  %bf.lshr4 = lshr i40 %bf.load3, 22, !dbg !5749
  %bf.clear5 = and i40 %bf.lshr4, 1, !dbg !5749
  %bf.cast6 = trunc i40 %bf.clear5 to i32, !dbg !5749
  %tobool7 = icmp ne i32 %bf.cast6, 0, !dbg !5746
  br i1 %tobool7, label %land.lhs.true, label %if.end13, !dbg !5750

land.lhs.true:                                    ; preds = %while.body
  %12 = load %struct.pci_dev*, %struct.pci_dev** %vfdev, align 8, !dbg !5751
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 59, !dbg !5752
  %physfn = bitcast %union.anon.65* %13 to %struct.pci_dev**, !dbg !5752
  %14 = load %struct.pci_dev*, %struct.pci_dev** %physfn, align 8, !dbg !5752
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5753
  %cmp = icmp eq %struct.pci_dev* %14, %15, !dbg !5754
  br i1 %cmp, label %land.lhs.true9, label %if.end13, !dbg !5755

land.lhs.true9:                                   ; preds = %land.lhs.true
  %16 = load %struct.pci_dev*, %struct.pci_dev** %vfdev, align 8, !dbg !5756
  %call10 = call zeroext i1 @pci_is_dev_assigned(%struct.pci_dev* %16) #7, !dbg !5757
  br i1 %call10, label %if.then12, label %if.end13, !dbg !5758

if.then12:                                        ; preds = %land.lhs.true9
  %17 = load i32, i32* %vfs_assigned, align 4, !dbg !5759
  %inc = add i32 %17, 1, !dbg !5759
  store i32 %inc, i32* %vfs_assigned, align 4, !dbg !5759
  br label %if.end13, !dbg !5760

if.end13:                                         ; preds = %if.then12, %land.lhs.true9, %land.lhs.true, %while.body
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5761
  %vendor14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 7, !dbg !5762
  %19 = load i16, i16* %vendor14, align 4, !dbg !5762
  %conv15 = zext i16 %19 to i32, !dbg !5761
  %20 = load i16, i16* %dev_id, align 2, !dbg !5763
  %conv16 = zext i16 %20 to i32, !dbg !5763
  %21 = load %struct.pci_dev*, %struct.pci_dev** %vfdev, align 8, !dbg !5764
  %call17 = call %struct.pci_dev* @pci_get_device(i32 %conv15, i32 %conv16, %struct.pci_dev* %21) #7, !dbg !5765
  store %struct.pci_dev* %call17, %struct.pci_dev** %vfdev, align 8, !dbg !5766
  br label %while.cond, !dbg !5744, !llvm.loop !5767

while.end:                                        ; preds = %while.cond
  %22 = load i32, i32* %vfs_assigned, align 4, !dbg !5769
  store i32 %22, i32* %retval, align 4, !dbg !5770
  br label %return, !dbg !5770

return:                                           ; preds = %while.end, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5771
  ret i32 %23, !dbg !5771
}

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pci_is_dev_assigned(%struct.pci_dev* %pdev) #0 !dbg !5772 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5775
  %dev_flags = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 47, !dbg !5776
  %1 = load i16, i16* %dev_flags, align 2, !dbg !5776
  %conv = zext i16 %1 to i32, !dbg !5775
  %and = and i32 %conv, 4, !dbg !5777
  %cmp = icmp eq i32 %and, 4, !dbg !5778
  ret i1 %cmp, !dbg !5779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_sriov_set_totalvfs(%struct.pci_dev* %dev, i16 zeroext %numvfs) #0 !dbg !5780 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %numvfs.addr = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5781, metadata !DIExpression()), !dbg !5782
  store i16 %numvfs, i16* %numvfs.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %numvfs.addr, metadata !5783, metadata !DIExpression()), !dbg !5784
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5785
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5787
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5787
  %bf.load = load i40, i40* %1, align 1, !dbg !5787
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5787
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5787
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5787
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5785
  br i1 %tobool, label %if.end, label %if.then, !dbg !5788

if.then:                                          ; preds = %entry
  store i32 -38, i32* %retval, align 4, !dbg !5789
  br label %return, !dbg !5789

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %numvfs.addr, align 2, !dbg !5790
  %conv = zext i16 %2 to i32, !dbg !5790
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5792
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 59, !dbg !5793
  %sriov = bitcast %union.anon.65* %4 to %struct.pci_sriov**, !dbg !5793
  %5 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5793
  %total_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %5, i32 0, i32 4, !dbg !5794
  %6 = load i16, i16* %total_VFs, align 2, !dbg !5794
  %conv1 = zext i16 %6 to i32, !dbg !5792
  %cmp = icmp sgt i32 %conv, %conv1, !dbg !5795
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5796

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5797
  br label %return, !dbg !5797

if.end4:                                          ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5798
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 59, !dbg !5800
  %sriov5 = bitcast %union.anon.65* %8 to %struct.pci_sriov**, !dbg !5800
  %9 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov5, align 8, !dbg !5800
  %ctrl = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %9, i32 0, i32 3, !dbg !5801
  %10 = load i16, i16* %ctrl, align 4, !dbg !5801
  %conv6 = zext i16 %10 to i32, !dbg !5798
  %and = and i32 %conv6, 1, !dbg !5802
  %tobool7 = icmp ne i32 %and, 0, !dbg !5802
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5803

if.then8:                                         ; preds = %if.end4
  store i32 -16, i32* %retval, align 4, !dbg !5804
  br label %return, !dbg !5804

if.end9:                                          ; preds = %if.end4
  %11 = load i16, i16* %numvfs.addr, align 2, !dbg !5805
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5806
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 59, !dbg !5807
  %sriov10 = bitcast %union.anon.65* %13 to %struct.pci_sriov**, !dbg !5807
  %14 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov10, align 8, !dbg !5807
  %driver_max_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %14, i32 0, i32 13, !dbg !5808
  store i16 %11, i16* %driver_max_VFs, align 2, !dbg !5809
  store i32 0, i32* %retval, align 4, !dbg !5810
  br label %return, !dbg !5810

return:                                           ; preds = %if.end9, %if.then8, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5811
  ret i32 %15, !dbg !5811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %dev) #0 !dbg !5812 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5813, metadata !DIExpression()), !dbg !5814
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5815
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5817
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5817
  %bf.load = load i40, i40* %1, align 1, !dbg !5817
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5817
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5817
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5817
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5815
  br i1 %tobool, label %if.end, label %if.then, !dbg !5818

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5819
  br label %return, !dbg !5819

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5820
  %3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 59, !dbg !5821
  %sriov = bitcast %union.anon.65* %3 to %struct.pci_sriov**, !dbg !5821
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5821
  %driver_max_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 13, !dbg !5822
  %5 = load i16, i16* %driver_max_VFs, align 2, !dbg !5822
  %conv = zext i16 %5 to i32, !dbg !5820
  store i32 %conv, i32* %retval, align 4, !dbg !5823
  br label %return, !dbg !5823

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !5824
  ret i32 %6, !dbg !5824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_sriov_configure_simple(%struct.pci_dev* %dev, i32 %nr_virtfn) #0 !dbg !5825 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %nr_virtfn.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  store i32 %nr_virtfn, i32* %nr_virtfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_virtfn.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5830, metadata !DIExpression()), !dbg !5831
  br label %do.body, !dbg !5832

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5833

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5835

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !5833

do.end2:                                          ; preds = %do.end
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5837
  %is_physfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !5839
  %1 = bitcast [5 x i8]* %is_physfn to i40*, !dbg !5839
  %bf.load = load i40, i40* %1, align 1, !dbg !5839
  %bf.lshr = lshr i40 %bf.load, 21, !dbg !5839
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5839
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5839
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5837
  br i1 %tobool, label %if.end, label %if.then, !dbg !5840

if.then:                                          ; preds = %do.end2
  store i32 -19, i32* %retval, align 4, !dbg !5841
  br label %return, !dbg !5841

if.end:                                           ; preds = %do.end2
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5842
  %call = call i32 @pci_vfs_assigned(%struct.pci_dev* %2) #7, !dbg !5844
  %tobool3 = icmp ne i32 %call, 0, !dbg !5844
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5845

if.then4:                                         ; preds = %if.end
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5846
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 41, !dbg !5846
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !5846
  store i32 -1, i32* %retval, align 4, !dbg !5848
  br label %return, !dbg !5848

if.end6:                                          ; preds = %if.end
  %4 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5849
  %cmp = icmp eq i32 %4, 0, !dbg !5851
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !5852

if.then7:                                         ; preds = %if.end6
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5853
  call void @sriov_disable(%struct.pci_dev* %5) #7, !dbg !5855
  store i32 0, i32* %retval, align 4, !dbg !5856
  br label %return, !dbg !5856

if.end8:                                          ; preds = %if.end6
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5857
  %7 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5858
  %call9 = call i32 @sriov_enable(%struct.pci_dev* %6, i32 %7) #7, !dbg !5859
  store i32 %call9, i32* %rc, align 4, !dbg !5860
  %8 = load i32, i32* %rc, align 4, !dbg !5861
  %cmp10 = icmp slt i32 %8, 0, !dbg !5863
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !5864

if.then11:                                        ; preds = %if.end8
  %9 = load i32, i32* %rc, align 4, !dbg !5865
  store i32 %9, i32* %retval, align 4, !dbg !5866
  br label %return, !dbg !5866

if.end12:                                         ; preds = %if.end8
  %10 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !5867
  store i32 %10, i32* %retval, align 4, !dbg !5868
  br label %return, !dbg !5868

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5869
  ret i32 %11, !dbg !5869
}

; Function Attrs: noredzone
declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_bus* @pci_add_new_bus(%struct.pci_bus*, %struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_insert_busn_res(%struct.pci_bus*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5870 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5876, metadata !DIExpression()), !dbg !5877
  br label %do.body, !dbg !5878

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5880

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5878
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5878
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5878
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5880
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5878
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5882
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5883
  %conv = zext i1 %cmp to i32, !dbg !5883
  ret i32 %conv, !dbg !5884
}

; Function Attrs: noredzone
declare dso_local void @pci_remove_bus(%struct.pci_bus*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %bus) #0 !dbg !5885 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5903
  %sysdata = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 11, !dbg !5904
  %1 = load i8*, i8** %sysdata, align 8, !dbg !5904
  %2 = bitcast i8* %1 to %struct.pci_sysdata*, !dbg !5903
  ret %struct.pci_sysdata* %2, !dbg !5905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @kobj_to_dev(%struct.kobject* %kobj) #0 !dbg !5906 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5909, metadata !DIExpression()), !dbg !5910
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5911, metadata !DIExpression()), !dbg !5913
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5913
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !5913
  store i8* %1, i8** %__mptr, align 8, !dbg !5913
  br label %do.body, !dbg !5913

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5914

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5913
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5913
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !5913
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !5914
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !5913
  ret %struct.device* %4, !dbg !5916
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_totalvfs_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5917 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5920, metadata !DIExpression()), !dbg !5921
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !5924, metadata !DIExpression()), !dbg !5925
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5926, metadata !DIExpression()), !dbg !5928
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5928
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5928
  store i8* %1, i8** %__mptr, align 8, !dbg !5928
  br label %do.body, !dbg !5928

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5929

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5928
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5928
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5928
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5929
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5928
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !5925
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5931
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5932
  %call = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %6) #7, !dbg !5933
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %call) #7, !dbg !5934
  %conv = sext i32 %call1 to i64, !dbg !5934
  ret i64 %conv, !dbg !5935
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_numvfs_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5936 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %num_vfs = alloca i16, align 2
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5937, metadata !DIExpression()), !dbg !5938
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5939, metadata !DIExpression()), !dbg !5940
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5941, metadata !DIExpression()), !dbg !5942
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !5943, metadata !DIExpression()), !dbg !5944
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5945, metadata !DIExpression()), !dbg !5947
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5947
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5947
  store i8* %1, i8** %__mptr, align 8, !dbg !5947
  br label %do.body, !dbg !5947

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5948

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5947
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5947
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5947
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5948
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5947
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !5944
  call void @llvm.dbg.declare(metadata i16* %num_vfs, metadata !5950, metadata !DIExpression()), !dbg !5951
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5952
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 41, !dbg !5953
  call void @device_lock(%struct.device* %dev1) #7, !dbg !5954
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5955
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 59, !dbg !5956
  %sriov = bitcast %union.anon.65* %7 to %struct.pci_sriov**, !dbg !5956
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !5956
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 6, !dbg !5957
  %9 = load i16, i16* %num_VFs, align 2, !dbg !5957
  store i16 %9, i16* %num_vfs, align 2, !dbg !5958
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5959
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !5960
  call void @device_unlock(%struct.device* %dev2) #7, !dbg !5961
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !5962
  %12 = load i16, i16* %num_vfs, align 2, !dbg !5963
  %conv = zext i16 %12 to i32, !dbg !5963
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #7, !dbg !5964
  %conv3 = sext i32 %call to i64, !dbg !5964
  ret i64 %conv3, !dbg !5965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_numvfs_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !5966 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %ret = alloca i32, align 4
  %num_vfs = alloca i16, align 2
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5967, metadata !DIExpression()), !dbg !5968
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5969, metadata !DIExpression()), !dbg !5970
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !5975, metadata !DIExpression()), !dbg !5976
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5977, metadata !DIExpression()), !dbg !5979
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5979
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5979
  store i8* %1, i8** %__mptr, align 8, !dbg !5979
  br label %do.body, !dbg !5979

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5980

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5979
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !5979
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5979
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !5980
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5979
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !5976
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5982, metadata !DIExpression()), !dbg !5983
  call void @llvm.dbg.declare(metadata i16* %num_vfs, metadata !5984, metadata !DIExpression()), !dbg !5985
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5986
  %call = call i32 @kstrtou16(i8* %5, i32 0, i16* %num_vfs) #7, !dbg !5987
  store i32 %call, i32* %ret, align 4, !dbg !5988
  %6 = load i32, i32* %ret, align 4, !dbg !5989
  %cmp = icmp slt i32 %6, 0, !dbg !5991
  br i1 %cmp, label %if.then, label %if.end, !dbg !5992

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %ret, align 4, !dbg !5993
  %conv = sext i32 %7 to i64, !dbg !5993
  store i64 %conv, i64* %retval, align 8, !dbg !5994
  br label %return, !dbg !5994

if.end:                                           ; preds = %do.end
  %8 = load i16, i16* %num_vfs, align 2, !dbg !5995
  %conv1 = zext i16 %8 to i32, !dbg !5995
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5997
  %call2 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %9) #7, !dbg !5998
  %cmp3 = icmp sgt i32 %conv1, %call2, !dbg !5999
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !6000

if.then5:                                         ; preds = %if.end
  store i64 -34, i64* %retval, align 8, !dbg !6001
  br label %return, !dbg !6001

if.end6:                                          ; preds = %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6002
  %dev7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !6003
  call void @device_lock(%struct.device* %dev7) #7, !dbg !6004
  %11 = load i16, i16* %num_vfs, align 2, !dbg !6005
  %conv8 = zext i16 %11 to i32, !dbg !6005
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6007
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 59, !dbg !6008
  %sriov = bitcast %union.anon.65* %13 to %struct.pci_sriov**, !dbg !6008
  %14 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6008
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %14, i32 0, i32 6, !dbg !6009
  %15 = load i16, i16* %num_VFs, align 2, !dbg !6009
  %conv9 = zext i16 %15 to i32, !dbg !6007
  %cmp10 = icmp eq i32 %conv8, %conv9, !dbg !6010
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !6011

if.then12:                                        ; preds = %if.end6
  br label %exit, !dbg !6012

if.end13:                                         ; preds = %if.end6
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6013
  %driver = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 23, !dbg !6015
  %17 = load %struct.pci_driver*, %struct.pci_driver** %driver, align 8, !dbg !6015
  %tobool = icmp ne %struct.pci_driver* %17, null, !dbg !6013
  br i1 %tobool, label %lor.lhs.false, label %if.then17, !dbg !6016

lor.lhs.false:                                    ; preds = %if.end13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6017
  %driver14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 23, !dbg !6018
  %19 = load %struct.pci_driver*, %struct.pci_driver** %driver14, align 8, !dbg !6018
  %sriov_configure = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %19, i32 0, i32 8, !dbg !6019
  %sriov_configure15 = bitcast {}** %sriov_configure to i32 (%struct.pci_dev*, i32)**, !dbg !6019
  %20 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %sriov_configure15, align 8, !dbg !6019
  %tobool16 = icmp ne i32 (%struct.pci_dev*, i32)* %20, null, !dbg !6017
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !6020

if.then17:                                        ; preds = %lor.lhs.false, %if.end13
  %21 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6021
  %dev18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 41, !dbg !6021
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev18, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !6021
  store i32 -2, i32* %ret, align 4, !dbg !6023
  br label %exit, !dbg !6024

if.end19:                                         ; preds = %lor.lhs.false
  %22 = load i16, i16* %num_vfs, align 2, !dbg !6025
  %conv20 = zext i16 %22 to i32, !dbg !6025
  %cmp21 = icmp eq i32 %conv20, 0, !dbg !6027
  br i1 %cmp21, label %if.then23, label %if.end28, !dbg !6028

if.then23:                                        ; preds = %if.end19
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6029
  %driver24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 23, !dbg !6031
  %24 = load %struct.pci_driver*, %struct.pci_driver** %driver24, align 8, !dbg !6031
  %sriov_configure25 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %24, i32 0, i32 8, !dbg !6032
  %sriov_configure26 = bitcast {}** %sriov_configure25 to i32 (%struct.pci_dev*, i32)**, !dbg !6032
  %25 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %sriov_configure26, align 8, !dbg !6032
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6033
  %call27 = call i32 %25(%struct.pci_dev* %26, i32 0) #7, !dbg !6029
  store i32 %call27, i32* %ret, align 4, !dbg !6034
  br label %exit, !dbg !6035

if.end28:                                         ; preds = %if.end19
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6036
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 59, !dbg !6038
  %sriov29 = bitcast %union.anon.65* %28 to %struct.pci_sriov**, !dbg !6038
  %29 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov29, align 8, !dbg !6038
  %num_VFs30 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %29, i32 0, i32 6, !dbg !6039
  %30 = load i16, i16* %num_VFs30, align 2, !dbg !6039
  %tobool31 = icmp ne i16 %30, 0, !dbg !6036
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !6040

if.then32:                                        ; preds = %if.end28
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6041
  %dev33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 41, !dbg !6041
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6041
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 59, !dbg !6041
  %sriov34 = bitcast %union.anon.65* %33 to %struct.pci_sriov**, !dbg !6041
  %34 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov34, align 8, !dbg !6041
  %num_VFs35 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %34, i32 0, i32 6, !dbg !6041
  %35 = load i16, i16* %num_VFs35, align 2, !dbg !6041
  %conv36 = zext i16 %35 to i32, !dbg !6041
  %36 = load i16, i16* %num_vfs, align 2, !dbg !6041
  %conv37 = zext i16 %36 to i32, !dbg !6041
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %conv36, i32 %conv37) #9, !dbg !6041
  store i32 -16, i32* %ret, align 4, !dbg !6043
  br label %exit, !dbg !6044

if.end38:                                         ; preds = %if.end28
  %37 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6045
  %driver39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 23, !dbg !6046
  %38 = load %struct.pci_driver*, %struct.pci_driver** %driver39, align 8, !dbg !6046
  %sriov_configure40 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %38, i32 0, i32 8, !dbg !6047
  %sriov_configure41 = bitcast {}** %sriov_configure40 to i32 (%struct.pci_dev*, i32)**, !dbg !6047
  %39 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %sriov_configure41, align 8, !dbg !6047
  %40 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6048
  %41 = load i16, i16* %num_vfs, align 2, !dbg !6049
  %conv42 = zext i16 %41 to i32, !dbg !6049
  %call43 = call i32 %39(%struct.pci_dev* %40, i32 %conv42) #7, !dbg !6045
  store i32 %call43, i32* %ret, align 4, !dbg !6050
  %42 = load i32, i32* %ret, align 4, !dbg !6051
  %cmp44 = icmp slt i32 %42, 0, !dbg !6053
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !6054

if.then46:                                        ; preds = %if.end38
  br label %exit, !dbg !6055

if.end47:                                         ; preds = %if.end38
  %43 = load i32, i32* %ret, align 4, !dbg !6056
  %44 = load i16, i16* %num_vfs, align 2, !dbg !6058
  %conv48 = zext i16 %44 to i32, !dbg !6058
  %cmp49 = icmp ne i32 %43, %conv48, !dbg !6059
  br i1 %cmp49, label %if.then51, label %if.end54, !dbg !6060

if.then51:                                        ; preds = %if.end47
  %45 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6061
  %dev52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 41, !dbg !6061
  %46 = load i16, i16* %num_vfs, align 2, !dbg !6061
  %conv53 = zext i16 %46 to i32, !dbg !6061
  %47 = load i32, i32* %ret, align 4, !dbg !6061
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %conv53, i32 %47) #9, !dbg !6061
  br label %if.end54, !dbg !6061

if.end54:                                         ; preds = %if.then51, %if.end47
  br label %exit, !dbg !6058

exit:                                             ; preds = %if.end54, %if.then46, %if.then32, %if.then23, %if.then17, %if.then12
  call void @llvm.dbg.label(metadata !6062), !dbg !6063
  %48 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6064
  %dev55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 41, !dbg !6065
  call void @device_unlock(%struct.device* %dev55) #7, !dbg !6066
  %49 = load i32, i32* %ret, align 4, !dbg !6067
  %cmp56 = icmp slt i32 %49, 0, !dbg !6069
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !6070

if.then58:                                        ; preds = %exit
  %50 = load i32, i32* %ret, align 4, !dbg !6071
  %conv59 = sext i32 %50 to i64, !dbg !6071
  store i64 %conv59, i64* %retval, align 8, !dbg !6072
  br label %return, !dbg !6072

if.end60:                                         ; preds = %exit
  %51 = load i64, i64* %count.addr, align 8, !dbg !6073
  store i64 %51, i64* %retval, align 8, !dbg !6074
  br label %return, !dbg !6074

return:                                           ; preds = %if.end60, %if.then58, %if.then5, %if.then
  %52 = load i64, i64* %retval, align 8, !dbg !6075
  ret i64 %52, !dbg !6075
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_lock(%struct.device* %dev) #0 !dbg !6076 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6077, metadata !DIExpression()), !dbg !6078
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6079
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !6080
  call void @mutex_lock(%struct.mutex* %mutex) #7, !dbg !6081
  ret void, !dbg !6082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_unlock(%struct.device* %dev) #0 !dbg !6083 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6086
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !6087
  call void @mutex_unlock(%struct.mutex* %mutex) #7, !dbg !6088
  ret void, !dbg !6089
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtou16(i8*, i32, i16*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_offset_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6090 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6095, metadata !DIExpression()), !dbg !6096
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6097, metadata !DIExpression()), !dbg !6098
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6099, metadata !DIExpression()), !dbg !6101
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6101
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6101
  store i8* %1, i8** %__mptr, align 8, !dbg !6101
  br label %do.body, !dbg !6101

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6102

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6101
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !6101
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6101
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !6102
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6101
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !6098
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6104
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6105
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 59, !dbg !6106
  %sriov = bitcast %union.anon.65* %7 to %struct.pci_sriov**, !dbg !6106
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6106
  %offset = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 7, !dbg !6107
  %9 = load i16, i16* %offset, align 4, !dbg !6107
  %conv = zext i16 %9 to i32, !dbg !6105
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #7, !dbg !6108
  %conv1 = sext i32 %call to i64, !dbg !6108
  ret i64 %conv1, !dbg !6109
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_stride_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6110 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6111, metadata !DIExpression()), !dbg !6112
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6113, metadata !DIExpression()), !dbg !6114
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6115, metadata !DIExpression()), !dbg !6116
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6117, metadata !DIExpression()), !dbg !6118
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6119, metadata !DIExpression()), !dbg !6121
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6121
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6121
  store i8* %1, i8** %__mptr, align 8, !dbg !6121
  br label %do.body, !dbg !6121

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6122

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6121
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !6121
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6121
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !6122
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6121
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !6118
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6124
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6125
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 59, !dbg !6126
  %sriov = bitcast %union.anon.65* %7 to %struct.pci_sriov**, !dbg !6126
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6126
  %stride = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 8, !dbg !6127
  %9 = load i16, i16* %stride, align 2, !dbg !6127
  %conv = zext i16 %9 to i32, !dbg !6125
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #7, !dbg !6128
  %conv1 = sext i32 %call to i64, !dbg !6128
  ret i64 %conv1, !dbg !6129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_vf_device_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6130 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6131, metadata !DIExpression()), !dbg !6132
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6133, metadata !DIExpression()), !dbg !6134
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6137, metadata !DIExpression()), !dbg !6138
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6139, metadata !DIExpression()), !dbg !6141
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6141
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6141
  store i8* %1, i8** %__mptr, align 8, !dbg !6141
  br label %do.body, !dbg !6141

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6142

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6141
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !6141
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6141
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !6142
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6141
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !6138
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6144
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6145
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 59, !dbg !6146
  %sriov = bitcast %union.anon.65* %7 to %struct.pci_sriov**, !dbg !6146
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6146
  %vf_device = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 9, !dbg !6147
  %9 = load i16, i16* %vf_device, align 8, !dbg !6147
  %conv = zext i16 %9 to i32, !dbg !6145
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %conv) #7, !dbg !6148
  %conv1 = sext i32 %call to i64, !dbg !6148
  ret i64 %conv1, !dbg !6149
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_drivers_autoprobe_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6150 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6151, metadata !DIExpression()), !dbg !6152
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6157, metadata !DIExpression()), !dbg !6158
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6159, metadata !DIExpression()), !dbg !6161
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6161
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6161
  store i8* %1, i8** %__mptr, align 8, !dbg !6161
  br label %do.body, !dbg !6161

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6162

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6161
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !6161
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6161
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !6162
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6161
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !6158
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6164
  %6 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6165
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 59, !dbg !6166
  %sriov = bitcast %union.anon.65* %7 to %struct.pci_sriov**, !dbg !6166
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6166
  %drivers_autoprobe = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 21, !dbg !6167
  %9 = load i8, i8* %drivers_autoprobe, align 8, !dbg !6167
  %tobool = trunc i8 %9 to i1, !dbg !6167
  %conv = zext i1 %tobool to i32, !dbg !6165
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %conv) #7, !dbg !6168
  %conv1 = sext i32 %call to i64, !dbg !6168
  ret i64 %conv1, !dbg !6169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sriov_drivers_autoprobe_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !6170 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %drivers_autoprobe = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6171, metadata !DIExpression()), !dbg !6172
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6173, metadata !DIExpression()), !dbg !6174
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6175, metadata !DIExpression()), !dbg !6176
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6177, metadata !DIExpression()), !dbg !6178
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6179, metadata !DIExpression()), !dbg !6180
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6181, metadata !DIExpression()), !dbg !6183
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6183
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6183
  store i8* %1, i8** %__mptr, align 8, !dbg !6183
  br label %do.body, !dbg !6183

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6184

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6183
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !6183
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6183
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !6184
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6183
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !6180
  call void @llvm.dbg.declare(metadata i8* %drivers_autoprobe, metadata !6186, metadata !DIExpression()), !dbg !6187
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6188
  %call = call i32 @kstrtobool(i8* %5, i8* %drivers_autoprobe) #7, !dbg !6190
  %cmp = icmp slt i32 %call, 0, !dbg !6191
  br i1 %cmp, label %if.then, label %if.end, !dbg !6192

if.then:                                          ; preds = %do.end
  store i64 -22, i64* %retval, align 8, !dbg !6193
  br label %return, !dbg !6193

if.end:                                           ; preds = %do.end
  %6 = load i8, i8* %drivers_autoprobe, align 1, !dbg !6194
  %tobool = trunc i8 %6 to i1, !dbg !6194
  %7 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6195
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 59, !dbg !6196
  %sriov = bitcast %union.anon.65* %8 to %struct.pci_sriov**, !dbg !6196
  %9 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6196
  %drivers_autoprobe1 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %9, i32 0, i32 21, !dbg !6197
  %frombool = zext i1 %tobool to i8, !dbg !6198
  store i8 %frombool, i8* %drivers_autoprobe1, align 8, !dbg !6198
  %10 = load i64, i64* %count.addr, align 8, !dbg !6199
  store i64 %10, i64* %retval, align 8, !dbg !6200
  br label %return, !dbg !6200

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !6201
  ret i64 %11, !dbg !6201
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtobool(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_pcie_cap(%struct.pci_dev* %dev) #0 !dbg !6202 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6203, metadata !DIExpression()), !dbg !6204
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6205
  %pcie_cap = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 14, !dbg !6206
  %1 = load i8, i8* %pcie_cap, align 2, !dbg !6206
  %conv = zext i8 %1 to i32, !dbg !6205
  ret i32 %conv, !dbg !6207
}

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssleep(i32 %seconds) #0 !dbg !6208 {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %seconds.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  %0 = load i32, i32* %seconds.addr, align 4, !dbg !6214
  %mul = mul i32 %0, 1000, !dbg !6215
  call void @msleep(i32 %mul) #7, !dbg !6216
  ret void, !dbg !6217
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pci_ari_enabled(%struct.pci_bus* %bus) #0 !dbg !6218 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !6221, metadata !DIExpression()), !dbg !6222
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !6223
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 4, !dbg !6224
  %1 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !6224
  %tobool = icmp ne %struct.pci_dev* %1, null, !dbg !6223
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6225

land.rhs:                                         ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !6226
  %self1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 4, !dbg !6227
  %3 = load %struct.pci_dev*, %struct.pci_dev** %self1, align 8, !dbg !6227
  %ari_enabled = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 46, !dbg !6228
  %4 = bitcast [5 x i8]* %ari_enabled to i40*, !dbg !6228
  %bf.load = load i40, i40* %4, align 1, !dbg !6228
  %bf.lshr = lshr i40 %bf.load, 14, !dbg !6228
  %bf.clear = and i40 %bf.lshr, 1, !dbg !6228
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !6228
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !6225
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !6229
  ret i1 %5, !dbg !6230
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !6231 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !6234, metadata !DIExpression()), !dbg !6238
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !6244, metadata !DIExpression()), !dbg !6245
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !6246, metadata !DIExpression()), !dbg !6247
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !6248, metadata !DIExpression()), !dbg !6249
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !6250, metadata !DIExpression()), !dbg !6254
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !6256, metadata !DIExpression()), !dbg !6260
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !6262, metadata !DIExpression()), !dbg !6266
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !6271, metadata !DIExpression()), !dbg !6272
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !6273, metadata !DIExpression()), !dbg !6274
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6275, metadata !DIExpression()), !dbg !6276
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !6277, metadata !DIExpression()), !dbg !6278
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !6279, metadata !DIExpression()), !dbg !6280
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6281, metadata !DIExpression()), !dbg !6282
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !6283, metadata !DIExpression()), !dbg !6284
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !6285, metadata !DIExpression()), !dbg !6286
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6289, metadata !DIExpression()), !dbg !6290
  %0 = load i64, i64* %size.addr, align 8, !dbg !6291
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6292
  %or = or i32 %1, 256, !dbg !6293
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6294
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !6295
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6296

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6297
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6298
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6299

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6300
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6301
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6302
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !6303
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6280
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6304
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6305
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6306
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6307
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6308
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6309
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !6310
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6310
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6310
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6310
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !6310
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6311
  br label %kmalloc.exit, !dbg !6311

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6312
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6313
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6313
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6315

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6316
  br label %kmalloc_index.exit.i, !dbg !6316

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6317
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6319
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6320

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6321
  br label %kmalloc_index.exit.i, !dbg !6321

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6322
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6324
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6325

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6326
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6327
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6328

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6329
  br label %kmalloc_index.exit.i, !dbg !6329

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6330
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6332
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6333

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6334
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6335
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6336

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6337
  br label %kmalloc_index.exit.i, !dbg !6337

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6338
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6340
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6341

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6342
  br label %kmalloc_index.exit.i, !dbg !6342

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6343
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6345
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6346

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6347
  br label %kmalloc_index.exit.i, !dbg !6347

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6348
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6350
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6351

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6352
  br label %kmalloc_index.exit.i, !dbg !6352

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6353
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6355
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6356

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6357
  br label %kmalloc_index.exit.i, !dbg !6357

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6358
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6360
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6361

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6362
  br label %kmalloc_index.exit.i, !dbg !6362

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6363
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6365
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6366

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6367
  br label %kmalloc_index.exit.i, !dbg !6367

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6368
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6370
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6371

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6372
  br label %kmalloc_index.exit.i, !dbg !6372

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6373
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6375
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6376

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6377
  br label %kmalloc_index.exit.i, !dbg !6377

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6378
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6380
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6381

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6382
  br label %kmalloc_index.exit.i, !dbg !6382

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6383
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6385
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6386

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6387
  br label %kmalloc_index.exit.i, !dbg !6387

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6388
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6390
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6391

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6392
  br label %kmalloc_index.exit.i, !dbg !6392

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6393
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6395
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6396

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6397
  br label %kmalloc_index.exit.i, !dbg !6397

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6398
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6400
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6401

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6402
  br label %kmalloc_index.exit.i, !dbg !6402

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6403
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6405
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6406

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6407
  br label %kmalloc_index.exit.i, !dbg !6407

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6408
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6410
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6411

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6412
  br label %kmalloc_index.exit.i, !dbg !6412

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6413
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6415
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6416

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6417
  br label %kmalloc_index.exit.i, !dbg !6417

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6418
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6420
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6421

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6422
  br label %kmalloc_index.exit.i, !dbg !6422

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6423
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6425
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6426

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6427
  br label %kmalloc_index.exit.i, !dbg !6427

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6428
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6430
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6431

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6432
  br label %kmalloc_index.exit.i, !dbg !6432

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6433
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6435
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6436

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6437
  br label %kmalloc_index.exit.i, !dbg !6437

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6438
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6440
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6441

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6442
  br label %kmalloc_index.exit.i, !dbg !6442

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6443
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6445
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6446

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6447
  br label %kmalloc_index.exit.i, !dbg !6447

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6448
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6450
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6451

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6452
  br label %kmalloc_index.exit.i, !dbg !6452

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6453
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6455
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6456

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6457
  br label %kmalloc_index.exit.i, !dbg !6457

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !6458, !srcloc !6461
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !6462, !srcloc !6465
  unreachable, !dbg !6466

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6467
  store i32 %45, i32* %index.i, align 4, !dbg !6468
  %46 = load i32, i32* %index.i, align 4, !dbg !6469
  %tobool.i = icmp ne i32 %46, 0, !dbg !6469
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6471

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6472
  br label %kmalloc.exit, !dbg !6472

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6473
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6474
  %and.i.i = and i32 %48, 17, !dbg !6474
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6474
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6474
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6474
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6474
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6476

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6477
  br label %kmalloc_type.exit.i, !dbg !6477

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6478
  %and2.i.i = and i32 %49, 1, !dbg !6479
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6478
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6478
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6478
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6480
  br label %kmalloc_type.exit.i, !dbg !6480

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6481
  %idxprom.i = zext i32 %51 to i64, !dbg !6482
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6482
  %52 = load i32, i32* %index.i, align 4, !dbg !6483
  %idxprom6.i = zext i32 %52 to i64, !dbg !6482
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6482
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6482
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6484
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6485
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6486
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6487
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !6488
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6488
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6488
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6488
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !6488
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6249
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6489
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6490
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6491
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6492
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !6493
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6494
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6495
  store i8* %62, i8** %retval.i, align 8, !dbg !6496
  br label %kmalloc.exit, !dbg !6496

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6497
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6498
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !6499
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6499
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6499
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6499
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !6499
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6500
  br label %kmalloc.exit, !dbg !6500

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6501
  ret i8* %65, !dbg !6502
}

; Function Attrs: noredzone
declare dso_local i32 @__pci_read_base(%struct.pci_dev*, i32, %struct.resource*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !6503 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !6508, metadata !DIExpression()), !dbg !6509
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !6510
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !6511
  %1 = load i64, i64* %end, align 8, !dbg !6511
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !6512
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !6513
  %3 = load i64, i64* %start, align 8, !dbg !6513
  %sub = sub i64 %1, %3, !dbg !6514
  %add = add i64 %sub, 1, !dbg !6515
  ret i64 %add, !dbg !6516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_pcie_type(%struct.pci_dev* %dev) #0 !dbg !6517 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6520, metadata !DIExpression()), !dbg !6521
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6522
  %call = call zeroext i16 @pcie_caps_reg(%struct.pci_dev* %0) #7, !dbg !6523
  %conv = zext i16 %call to i32, !dbg !6523
  %and = and i32 %conv, 240, !dbg !6524
  %shr = ashr i32 %and, 4, !dbg !6525
  ret i32 %shr, !dbg !6526
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @compute_max_vf_buses(%struct.pci_dev* %dev) #0 !dbg !6527 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %iov = alloca %struct.pci_sriov*, align 8
  %nr_virtfn = alloca i32, align 4
  %busnr = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6528, metadata !DIExpression()), !dbg !6529
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !6530, metadata !DIExpression()), !dbg !6531
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6532
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !6533
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !6533
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6533
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !6531
  call void @llvm.dbg.declare(metadata i32* %nr_virtfn, metadata !6534, metadata !DIExpression()), !dbg !6535
  call void @llvm.dbg.declare(metadata i32* %busnr, metadata !6536, metadata !DIExpression()), !dbg !6537
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6538, metadata !DIExpression()), !dbg !6539
  store i32 0, i32* %rc, align 4, !dbg !6539
  %3 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6540
  %total_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %3, i32 0, i32 4, !dbg !6542
  %4 = load i16, i16* %total_VFs, align 2, !dbg !6542
  %conv = zext i16 %4 to i32, !dbg !6540
  store i32 %conv, i32* %nr_virtfn, align 4, !dbg !6543
  br label %for.cond, !dbg !6544

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %nr_virtfn, align 4, !dbg !6545
  %tobool = icmp ne i32 %5, 0, !dbg !6547
  br i1 %tobool, label %for.body, label %for.end, !dbg !6547

for.body:                                         ; preds = %for.cond
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6548
  %7 = load i32, i32* %nr_virtfn, align 4, !dbg !6550
  call void @pci_iov_set_numvfs(%struct.pci_dev* %6, i32 %7) #7, !dbg !6551
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6552
  %offset = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 7, !dbg !6554
  %9 = load i16, i16* %offset, align 4, !dbg !6554
  %tobool1 = icmp ne i16 %9, 0, !dbg !6552
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !6555

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %nr_virtfn, align 4, !dbg !6556
  %cmp = icmp sgt i32 %10, 1, !dbg !6557
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6558

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6559
  %stride = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %11, i32 0, i32 8, !dbg !6560
  %12 = load i16, i16* %stride, align 2, !dbg !6560
  %tobool3 = icmp ne i16 %12, 0, !dbg !6559
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6561

if.then:                                          ; preds = %land.lhs.true, %for.body
  store i32 -5, i32* %rc, align 4, !dbg !6562
  br label %out, !dbg !6564

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6565
  %14 = load i32, i32* %nr_virtfn, align 4, !dbg !6566
  %sub = sub i32 %14, 1, !dbg !6567
  %call = call i32 @pci_iov_virtfn_bus(%struct.pci_dev* %13, i32 %sub) #7, !dbg !6568
  store i32 %call, i32* %busnr, align 4, !dbg !6569
  %15 = load i32, i32* %busnr, align 4, !dbg !6570
  %16 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6572
  %max_VF_buses = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %16, i32 0, i32 12, !dbg !6573
  %17 = load i8, i8* %max_VF_buses, align 1, !dbg !6573
  %conv4 = zext i8 %17 to i32, !dbg !6572
  %cmp5 = icmp sgt i32 %15, %conv4, !dbg !6574
  br i1 %cmp5, label %if.then7, label %if.end10, !dbg !6575

if.then7:                                         ; preds = %if.end
  %18 = load i32, i32* %busnr, align 4, !dbg !6576
  %conv8 = trunc i32 %18 to i8, !dbg !6576
  %19 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6577
  %max_VF_buses9 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %19, i32 0, i32 12, !dbg !6578
  store i8 %conv8, i8* %max_VF_buses9, align 1, !dbg !6579
  br label %if.end10, !dbg !6577

if.end10:                                         ; preds = %if.then7, %if.end
  br label %for.inc, !dbg !6580

for.inc:                                          ; preds = %if.end10
  %20 = load i32, i32* %nr_virtfn, align 4, !dbg !6581
  %dec = add i32 %20, -1, !dbg !6581
  store i32 %dec, i32* %nr_virtfn, align 4, !dbg !6581
  br label %for.cond, !dbg !6582, !llvm.loop !6583

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !6584

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !6585), !dbg !6586
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6587
  call void @pci_iov_set_numvfs(%struct.pci_dev* %21, i32 0) #7, !dbg !6588
  %22 = load i32, i32* %rc, align 4, !dbg !6589
  ret i32 %22, !dbg !6590
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !6591 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6595, metadata !DIExpression()), !dbg !6600
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6602, metadata !DIExpression()), !dbg !6603
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6604, metadata !DIExpression()), !dbg !6605
  %0 = load i64, i64* %size.addr, align 8, !dbg !6606
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6608
  br i1 %1, label %if.then, label %if.end447, !dbg !6609

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6610
  %tobool = icmp ne i64 %2, 0, !dbg !6610
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6613

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6614
  br label %return, !dbg !6614

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6615
  %cmp = icmp ult i64 %3, 4096, !dbg !6617
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6618

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6619
  br label %return, !dbg !6619

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub = sub i64 %4, 1, !dbg !6620
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6620
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6620

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub4 = sub i64 %6, 1, !dbg !6620
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6620
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6620

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub6 = sub i64 %8, 1, !dbg !6620
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6620
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6620

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6620

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub9 = sub i64 %9, 1, !dbg !6620
  %and = and i64 %sub9, -9223372036854775808, !dbg !6620
  %tobool10 = icmp ne i64 %and, 0, !dbg !6620
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6620

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6620

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub13 = sub i64 %10, 1, !dbg !6620
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6620
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6620
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6620

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6620

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub18 = sub i64 %11, 1, !dbg !6620
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6620
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6620
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6620

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6620

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub23 = sub i64 %12, 1, !dbg !6620
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6620
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6620
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6620

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6620

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub28 = sub i64 %13, 1, !dbg !6620
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6620
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6620
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6620

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6620

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub33 = sub i64 %14, 1, !dbg !6620
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6620
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6620
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6620

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6620

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub38 = sub i64 %15, 1, !dbg !6620
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6620
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6620
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6620

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6620

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub43 = sub i64 %16, 1, !dbg !6620
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6620
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6620
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6620

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6620

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub48 = sub i64 %17, 1, !dbg !6620
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6620
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6620
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6620

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6620

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub53 = sub i64 %18, 1, !dbg !6620
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6620
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6620
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6620

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6620

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub58 = sub i64 %19, 1, !dbg !6620
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6620
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6620
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6620

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6620

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub63 = sub i64 %20, 1, !dbg !6620
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6620
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6620
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6620

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6620

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub68 = sub i64 %21, 1, !dbg !6620
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6620
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6620
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6620

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6620

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub73 = sub i64 %22, 1, !dbg !6620
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6620
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6620
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6620

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6620

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub78 = sub i64 %23, 1, !dbg !6620
  %and79 = and i64 %sub78, 562949953421312, !dbg !6620
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6620
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6620

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6620

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub83 = sub i64 %24, 1, !dbg !6620
  %and84 = and i64 %sub83, 281474976710656, !dbg !6620
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6620
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6620

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6620

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub88 = sub i64 %25, 1, !dbg !6620
  %and89 = and i64 %sub88, 140737488355328, !dbg !6620
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6620
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6620

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6620

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub93 = sub i64 %26, 1, !dbg !6620
  %and94 = and i64 %sub93, 70368744177664, !dbg !6620
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6620
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6620

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6620

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub98 = sub i64 %27, 1, !dbg !6620
  %and99 = and i64 %sub98, 35184372088832, !dbg !6620
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6620
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6620

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6620

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub103 = sub i64 %28, 1, !dbg !6620
  %and104 = and i64 %sub103, 17592186044416, !dbg !6620
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6620
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6620

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6620

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub108 = sub i64 %29, 1, !dbg !6620
  %and109 = and i64 %sub108, 8796093022208, !dbg !6620
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6620
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6620

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6620

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub113 = sub i64 %30, 1, !dbg !6620
  %and114 = and i64 %sub113, 4398046511104, !dbg !6620
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6620
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6620

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6620

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub118 = sub i64 %31, 1, !dbg !6620
  %and119 = and i64 %sub118, 2199023255552, !dbg !6620
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6620
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6620

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6620

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub123 = sub i64 %32, 1, !dbg !6620
  %and124 = and i64 %sub123, 1099511627776, !dbg !6620
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6620
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6620

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6620

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub128 = sub i64 %33, 1, !dbg !6620
  %and129 = and i64 %sub128, 549755813888, !dbg !6620
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6620
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6620

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6620

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub133 = sub i64 %34, 1, !dbg !6620
  %and134 = and i64 %sub133, 274877906944, !dbg !6620
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6620
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6620

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6620

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub138 = sub i64 %35, 1, !dbg !6620
  %and139 = and i64 %sub138, 137438953472, !dbg !6620
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6620
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6620

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6620

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub143 = sub i64 %36, 1, !dbg !6620
  %and144 = and i64 %sub143, 68719476736, !dbg !6620
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6620
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6620

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6620

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub148 = sub i64 %37, 1, !dbg !6620
  %and149 = and i64 %sub148, 34359738368, !dbg !6620
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6620
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6620

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6620

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub153 = sub i64 %38, 1, !dbg !6620
  %and154 = and i64 %sub153, 17179869184, !dbg !6620
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6620
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6620

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6620

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub158 = sub i64 %39, 1, !dbg !6620
  %and159 = and i64 %sub158, 8589934592, !dbg !6620
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6620
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6620

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6620

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub163 = sub i64 %40, 1, !dbg !6620
  %and164 = and i64 %sub163, 4294967296, !dbg !6620
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6620
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6620

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6620

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub168 = sub i64 %41, 1, !dbg !6620
  %and169 = and i64 %sub168, 2147483648, !dbg !6620
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6620
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6620

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6620

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub173 = sub i64 %42, 1, !dbg !6620
  %and174 = and i64 %sub173, 1073741824, !dbg !6620
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6620
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6620

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6620

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub178 = sub i64 %43, 1, !dbg !6620
  %and179 = and i64 %sub178, 536870912, !dbg !6620
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6620
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6620

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6620

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub183 = sub i64 %44, 1, !dbg !6620
  %and184 = and i64 %sub183, 268435456, !dbg !6620
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6620
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6620

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6620

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub188 = sub i64 %45, 1, !dbg !6620
  %and189 = and i64 %sub188, 134217728, !dbg !6620
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6620
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6620

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6620

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub193 = sub i64 %46, 1, !dbg !6620
  %and194 = and i64 %sub193, 67108864, !dbg !6620
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6620
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6620

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6620

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub198 = sub i64 %47, 1, !dbg !6620
  %and199 = and i64 %sub198, 33554432, !dbg !6620
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6620
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6620

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6620

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub203 = sub i64 %48, 1, !dbg !6620
  %and204 = and i64 %sub203, 16777216, !dbg !6620
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6620
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6620

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6620

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub208 = sub i64 %49, 1, !dbg !6620
  %and209 = and i64 %sub208, 8388608, !dbg !6620
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6620
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6620

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6620

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub213 = sub i64 %50, 1, !dbg !6620
  %and214 = and i64 %sub213, 4194304, !dbg !6620
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6620
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6620

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6620

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub218 = sub i64 %51, 1, !dbg !6620
  %and219 = and i64 %sub218, 2097152, !dbg !6620
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6620
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6620

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6620

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub223 = sub i64 %52, 1, !dbg !6620
  %and224 = and i64 %sub223, 1048576, !dbg !6620
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6620
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6620

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6620

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub228 = sub i64 %53, 1, !dbg !6620
  %and229 = and i64 %sub228, 524288, !dbg !6620
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6620
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6620

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6620

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub233 = sub i64 %54, 1, !dbg !6620
  %and234 = and i64 %sub233, 262144, !dbg !6620
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6620
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6620

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6620

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub238 = sub i64 %55, 1, !dbg !6620
  %and239 = and i64 %sub238, 131072, !dbg !6620
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6620
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6620

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6620

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub243 = sub i64 %56, 1, !dbg !6620
  %and244 = and i64 %sub243, 65536, !dbg !6620
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6620
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6620

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6620

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub248 = sub i64 %57, 1, !dbg !6620
  %and249 = and i64 %sub248, 32768, !dbg !6620
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6620
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6620

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6620

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub253 = sub i64 %58, 1, !dbg !6620
  %and254 = and i64 %sub253, 16384, !dbg !6620
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6620
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6620

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6620

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub258 = sub i64 %59, 1, !dbg !6620
  %and259 = and i64 %sub258, 8192, !dbg !6620
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6620
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6620

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6620

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub263 = sub i64 %60, 1, !dbg !6620
  %and264 = and i64 %sub263, 4096, !dbg !6620
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6620
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6620

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6620

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub268 = sub i64 %61, 1, !dbg !6620
  %and269 = and i64 %sub268, 2048, !dbg !6620
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6620
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6620

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6620

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub273 = sub i64 %62, 1, !dbg !6620
  %and274 = and i64 %sub273, 1024, !dbg !6620
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6620
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6620

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6620

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub278 = sub i64 %63, 1, !dbg !6620
  %and279 = and i64 %sub278, 512, !dbg !6620
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6620
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6620

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6620

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub283 = sub i64 %64, 1, !dbg !6620
  %and284 = and i64 %sub283, 256, !dbg !6620
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6620
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6620

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6620

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub288 = sub i64 %65, 1, !dbg !6620
  %and289 = and i64 %sub288, 128, !dbg !6620
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6620
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6620

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6620

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub293 = sub i64 %66, 1, !dbg !6620
  %and294 = and i64 %sub293, 64, !dbg !6620
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6620
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6620

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6620

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub298 = sub i64 %67, 1, !dbg !6620
  %and299 = and i64 %sub298, 32, !dbg !6620
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6620
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6620

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6620

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub303 = sub i64 %68, 1, !dbg !6620
  %and304 = and i64 %sub303, 16, !dbg !6620
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6620
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6620

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6620

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub308 = sub i64 %69, 1, !dbg !6620
  %and309 = and i64 %sub308, 8, !dbg !6620
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6620
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6620

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6620

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub313 = sub i64 %70, 1, !dbg !6620
  %and314 = and i64 %sub313, 4, !dbg !6620
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6620
  %71 = zext i1 %tobool315 to i64, !dbg !6620
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6620
  br label %cond.end, !dbg !6620

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6620
  br label %cond.end317, !dbg !6620

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6620
  br label %cond.end319, !dbg !6620

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6620
  br label %cond.end321, !dbg !6620

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6620
  br label %cond.end323, !dbg !6620

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6620
  br label %cond.end325, !dbg !6620

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6620
  br label %cond.end327, !dbg !6620

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6620
  br label %cond.end329, !dbg !6620

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6620
  br label %cond.end331, !dbg !6620

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6620
  br label %cond.end333, !dbg !6620

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6620
  br label %cond.end335, !dbg !6620

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6620
  br label %cond.end337, !dbg !6620

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6620
  br label %cond.end339, !dbg !6620

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6620
  br label %cond.end341, !dbg !6620

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6620
  br label %cond.end343, !dbg !6620

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6620
  br label %cond.end345, !dbg !6620

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6620
  br label %cond.end347, !dbg !6620

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6620
  br label %cond.end349, !dbg !6620

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6620
  br label %cond.end351, !dbg !6620

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6620
  br label %cond.end353, !dbg !6620

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6620
  br label %cond.end355, !dbg !6620

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6620
  br label %cond.end357, !dbg !6620

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6620
  br label %cond.end359, !dbg !6620

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6620
  br label %cond.end361, !dbg !6620

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6620
  br label %cond.end363, !dbg !6620

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6620
  br label %cond.end365, !dbg !6620

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6620
  br label %cond.end367, !dbg !6620

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6620
  br label %cond.end369, !dbg !6620

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6620
  br label %cond.end371, !dbg !6620

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6620
  br label %cond.end373, !dbg !6620

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6620
  br label %cond.end375, !dbg !6620

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6620
  br label %cond.end377, !dbg !6620

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6620
  br label %cond.end379, !dbg !6620

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6620
  br label %cond.end381, !dbg !6620

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6620
  br label %cond.end383, !dbg !6620

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6620
  br label %cond.end385, !dbg !6620

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6620
  br label %cond.end387, !dbg !6620

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6620
  br label %cond.end389, !dbg !6620

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6620
  br label %cond.end391, !dbg !6620

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6620
  br label %cond.end393, !dbg !6620

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6620
  br label %cond.end395, !dbg !6620

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6620
  br label %cond.end397, !dbg !6620

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6620
  br label %cond.end399, !dbg !6620

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6620
  br label %cond.end401, !dbg !6620

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6620
  br label %cond.end403, !dbg !6620

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6620
  br label %cond.end405, !dbg !6620

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6620
  br label %cond.end407, !dbg !6620

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6620
  br label %cond.end409, !dbg !6620

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6620
  br label %cond.end411, !dbg !6620

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6620
  br label %cond.end413, !dbg !6620

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6620
  br label %cond.end415, !dbg !6620

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6620
  br label %cond.end417, !dbg !6620

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6620
  br label %cond.end419, !dbg !6620

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6620
  br label %cond.end421, !dbg !6620

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6620
  br label %cond.end423, !dbg !6620

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6620
  br label %cond.end425, !dbg !6620

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6620
  br label %cond.end427, !dbg !6620

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6620
  br label %cond.end429, !dbg !6620

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6620
  br label %cond.end431, !dbg !6620

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6620
  br label %cond.end433, !dbg !6620

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6620
  br label %cond.end435, !dbg !6620

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6620
  br label %cond.end437, !dbg !6620

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6620
  br label %cond.end440, !dbg !6620

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6620

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6620
  br label %cond.end444, !dbg !6620

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6620
  %sub443 = sub i64 %72, 1, !dbg !6620
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !6620
  br label %cond.end444, !dbg !6620

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6620
  %sub446 = sub i32 %cond445, 12, !dbg !6621
  %add = add i32 %sub446, 1, !dbg !6622
  store i32 %add, i32* %retval, align 4, !dbg !6623
  br label %return, !dbg !6623

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6624
  %dec = add i64 %73, -1, !dbg !6624
  store i64 %dec, i64* %size.addr, align 8, !dbg !6624
  %74 = load i64, i64* %size.addr, align 8, !dbg !6625
  %shr = lshr i64 %74, 12, !dbg !6625
  store i64 %shr, i64* %size.addr, align 8, !dbg !6625
  %75 = load i64, i64* %size.addr, align 8, !dbg !6626
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6603
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6627
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6628
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !6627, !srcloc !6629
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6627
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6630
  %add.i = add i32 %79, 1, !dbg !6631
  store i32 %add.i, i32* %retval, align 4, !dbg !6632
  br label %return, !dbg !6632

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6633
  ret i32 %80, !dbg !6633
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !6634 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6595, metadata !DIExpression()), !dbg !6638
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6602, metadata !DIExpression()), !dbg !6640
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6641, metadata !DIExpression()), !dbg !6642
  %0 = load i64, i64* %n.addr, align 8, !dbg !6643
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6640
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6644
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6645
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !6644, !srcloc !6629
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6644
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6646
  %add.i = add i32 %4, 1, !dbg !6647
  %sub = sub i32 %add.i, 1, !dbg !6648
  ret i32 %sub, !dbg !6649
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6650 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6654, metadata !DIExpression()), !dbg !6655
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6656, metadata !DIExpression()), !dbg !6657
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6658, metadata !DIExpression()), !dbg !6659
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6660, metadata !DIExpression()), !dbg !6661
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6662
  ret i8* %0, !dbg !6663
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @pcie_caps_reg(%struct.pci_dev* %dev) #0 !dbg !6664 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6667, metadata !DIExpression()), !dbg !6668
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6669
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 20, !dbg !6670
  %1 = load i16, i16* %pcie_flags_reg, align 8, !dbg !6670
  ret i16 %1, !dbg !6671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_iov_set_numvfs(%struct.pci_dev* %dev, i32 %nr_virtfn) #0 !dbg !6672 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %nr_virtfn.addr = alloca i32, align 4
  %iov = alloca %struct.pci_sriov*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6673, metadata !DIExpression()), !dbg !6674
  store i32 %nr_virtfn, i32* %nr_virtfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_virtfn.addr, metadata !6675, metadata !DIExpression()), !dbg !6676
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !6677, metadata !DIExpression()), !dbg !6678
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6679
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !6680
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !6680
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6680
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !6678
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6681
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6682
  %pos = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 0, !dbg !6683
  %5 = load i32, i32* %pos, align 8, !dbg !6683
  %add = add i32 %5, 16, !dbg !6684
  %6 = load i32, i32* %nr_virtfn.addr, align 4, !dbg !6685
  %conv = trunc i32 %6 to i16, !dbg !6685
  %call = call i32 @pci_write_config_word(%struct.pci_dev* %3, i32 %add, i16 zeroext %conv) #7, !dbg !6686
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6687
  %8 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6688
  %pos1 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %8, i32 0, i32 0, !dbg !6689
  %9 = load i32, i32* %pos1, align 8, !dbg !6689
  %add2 = add i32 %9, 20, !dbg !6690
  %10 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6691
  %offset = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %10, i32 0, i32 7, !dbg !6692
  %call3 = call i32 @pci_read_config_word(%struct.pci_dev* %7, i32 %add2, i16* %offset) #7, !dbg !6693
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6694
  %12 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6695
  %pos4 = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %12, i32 0, i32 0, !dbg !6696
  %13 = load i32, i32* %pos4, align 8, !dbg !6696
  %add5 = add i32 %13, 22, !dbg !6697
  %14 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6698
  %stride = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %14, i32 0, i32 8, !dbg !6699
  %call6 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i32 %add5, i16* %stride) #7, !dbg !6700
  ret void, !dbg !6701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6702 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6707, metadata !DIExpression()), !dbg !6708
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6709
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6710
  %1 = load i8*, i8** %name, align 8, !dbg !6710
  ret i8* %1, !dbg !6711
}

; Function Attrs: noredzone
declare dso_local void @pci_update_resource(%struct.pci_dev*, i32) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_resources(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #2

; Function Attrs: noredzone
declare dso_local void @pci_cfg_access_lock(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_cfg_access_unlock(%struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sriov_add_vfs(%struct.pci_dev* %dev, i16 zeroext %num_vfs) #0 !dbg !6712 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %num_vfs.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6713, metadata !DIExpression()), !dbg !6714
  store i16 %num_vfs, i16* %num_vfs.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %num_vfs.addr, metadata !6715, metadata !DIExpression()), !dbg !6716
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6717, metadata !DIExpression()), !dbg !6718
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !6719, metadata !DIExpression()), !dbg !6720
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6721
  %no_vf_scan = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !6723
  %1 = bitcast [5 x i8]* %no_vf_scan to i40*, !dbg !6723
  %bf.load = load i40, i40* %1, align 1, !dbg !6723
  %bf.lshr = lshr i40 %bf.load, 35, !dbg !6723
  %bf.clear = and i40 %bf.lshr, 1, !dbg !6723
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !6723
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6721
  br i1 %tobool, label %if.then, label %if.end, !dbg !6724

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6725
  br label %return, !dbg !6725

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !6726
  br label %for.cond, !dbg !6728

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !6729
  %3 = load i16, i16* %num_vfs.addr, align 2, !dbg !6731
  %conv = zext i16 %3 to i32, !dbg !6731
  %cmp = icmp ult i32 %2, %conv, !dbg !6732
  br i1 %cmp, label %for.body, label %for.end, !dbg !6733

for.body:                                         ; preds = %for.cond
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6734
  %5 = load i32, i32* %i, align 4, !dbg !6736
  %call = call i32 @pci_iov_add_virtfn(%struct.pci_dev* %4, i32 %5) #7, !dbg !6737
  store i32 %call, i32* %rc, align 4, !dbg !6738
  %6 = load i32, i32* %rc, align 4, !dbg !6739
  %tobool2 = icmp ne i32 %6, 0, !dbg !6739
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6741

if.then3:                                         ; preds = %for.body
  br label %failed, !dbg !6742

if.end4:                                          ; preds = %for.body
  br label %for.inc, !dbg !6743

for.inc:                                          ; preds = %if.end4
  %7 = load i32, i32* %i, align 4, !dbg !6744
  %inc = add i32 %7, 1, !dbg !6744
  store i32 %inc, i32* %i, align 4, !dbg !6744
  br label %for.cond, !dbg !6745, !llvm.loop !6746

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !6748
  br label %return, !dbg !6748

failed:                                           ; preds = %if.then3
  call void @llvm.dbg.label(metadata !6749), !dbg !6750
  br label %while.cond, !dbg !6751

while.cond:                                       ; preds = %while.body, %failed
  %8 = load i32, i32* %i, align 4, !dbg !6752
  %dec = add i32 %8, -1, !dbg !6752
  store i32 %dec, i32* %i, align 4, !dbg !6752
  %tobool5 = icmp ne i32 %8, 0, !dbg !6751
  br i1 %tobool5, label %while.body, label %while.end, !dbg !6751

while.body:                                       ; preds = %while.cond
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6753
  %10 = load i32, i32* %i, align 4, !dbg !6754
  call void @pci_iov_remove_virtfn(%struct.pci_dev* %9, i32 %10) #7, !dbg !6755
  br label %while.cond, !dbg !6751, !llvm.loop !6756

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %rc, align 4, !dbg !6758
  store i32 %11, i32* %retval, align 4, !dbg !6759
  br label %return, !dbg !6759

return:                                           ; preds = %while.end, %for.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !6760
  ret i32 %12, !dbg !6760
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sriov_del_vfs(%struct.pci_dev* %dev) #0 !dbg !6761 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %iov = alloca %struct.pci_sriov*, align 8
  %i = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6762, metadata !DIExpression()), !dbg !6763
  call void @llvm.dbg.declare(metadata %struct.pci_sriov** %iov, metadata !6764, metadata !DIExpression()), !dbg !6765
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6766
  %1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 59, !dbg !6767
  %sriov = bitcast %union.anon.65* %1 to %struct.pci_sriov**, !dbg !6767
  %2 = load %struct.pci_sriov*, %struct.pci_sriov** %sriov, align 8, !dbg !6767
  store %struct.pci_sriov* %2, %struct.pci_sriov** %iov, align 8, !dbg !6765
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6768, metadata !DIExpression()), !dbg !6769
  store i32 0, i32* %i, align 4, !dbg !6770
  br label %for.cond, !dbg !6772

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !6773
  %4 = load %struct.pci_sriov*, %struct.pci_sriov** %iov, align 8, !dbg !6775
  %num_VFs = getelementptr inbounds %struct.pci_sriov, %struct.pci_sriov* %4, i32 0, i32 6, !dbg !6776
  %5 = load i16, i16* %num_VFs, align 2, !dbg !6776
  %conv = zext i16 %5 to i32, !dbg !6775
  %cmp = icmp slt i32 %3, %conv, !dbg !6777
  br i1 %cmp, label %for.body, label %for.end, !dbg !6778

for.body:                                         ; preds = %for.cond
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6779
  %7 = load i32, i32* %i, align 4, !dbg !6780
  call void @pci_iov_remove_virtfn(%struct.pci_dev* %6, i32 %7) #7, !dbg !6781
  br label %for.inc, !dbg !6781

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !6782
  %inc = add i32 %8, 1, !dbg !6782
  store i32 %inc, i32* %i, align 4, !dbg !6782
  br label %for.cond, !dbg !6783, !llvm.loop !6784

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6786
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4085, !4086, !4087, !4088}
!llvm.ident = !{!4089}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sriov_dev_attrs", scope: !2, file: !3, line: 403, type: !4082, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !148, globals: !4055, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/iov.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !105, !116, !121, !128, !135}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 89, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104}
!96 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5, isUnsigned: true)
!98 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6, isUnsigned: true)
!99 = !DIEnumerator(name: "PCI_IOV_RESOURCES", value: 7, isUnsigned: true)
!100 = !DIEnumerator(name: "PCI_IOV_RESOURCE_END", value: 12, isUnsigned: true)
!101 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 13, isUnsigned: true)
!102 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 16, isUnsigned: true)
!103 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 17, isUnsigned: true)
!104 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 17, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !106, line: 53, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115}
!108 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!115 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 10, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_bar_type", file: !122, line: 262, baseType: !7, size: 32, elements: !123)
!122 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !125, !126, !127}
!124 = !DIEnumerator(name: "pci_bar_unknown", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "pci_bar_io", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "pci_bar_mem32", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "pci_bar_mem64", value: 3, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !129, line: 305, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_dev_flags", file: !94, line: 207, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!137 = !DIEnumerator(name: "PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_D3", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "PCI_DEV_FLAGS_ASSIGNED", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "PCI_DEV_FLAGS_ACS_ENABLED_QUIRK", value: 8, isUnsigned: true)
!141 = !DIEnumerator(name: "PCI_DEV_FLAG_PCIE_BRIDGE_ALIAS", value: 32, isUnsigned: true)
!142 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_BUS_RESET", value: 64, isUnsigned: true)
!143 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_PM_RESET", value: 128, isUnsigned: true)
!144 = !DIEnumerator(name: "PCI_DEV_FLAGS_VPD_REF_F0", value: 256, isUnsigned: true)
!145 = !DIEnumerator(name: "PCI_DEV_FLAGS_BRIDGE_XLATE_ROOT", value: 512, isUnsigned: true)
!146 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_FLR_RESET", value: 1024, isUnsigned: true)
!147 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_RELAXED_ORDERING", value: 2048, isUnsigned: true)
!148 = !{!149, !150, !4052, !249, !769}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !94, line: 309, size: 19264, elements: !152)
!152 = !{!153, !160, !3829, !3830, !3831, !3832, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3860, !3925, !3926, !3927, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4001, !4002, !4004, !4005, !4006, !4007, !4009, !4010, !4011, !4014, !4045, !4046, !4047, !4048, !4049, !4050, !4051}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !151, file: !94, line: 310, baseType: !154, size: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !155, line: 178, size: 128, elements: !156)
!155 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !155, line: 179, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !155, line: 179, baseType: !158, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !151, file: !94, line: 311, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !94, line: 605, size: 8064, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !197, !198, !199, !227, !230, !231, !235, !237, !238, !239, !240, !244, !246, !248, !3825, !3826, !3827, !3828}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !162, file: !94, line: 606, baseType: !154, size: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !162, file: !94, line: 607, baseType: !161, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !162, file: !94, line: 608, baseType: !154, size: 128, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !162, file: !94, line: 609, baseType: !154, size: 128, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !162, file: !94, line: 610, baseType: !150, size: 64, offset: 448)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !162, file: !94, line: 611, baseType: !154, size: 128, offset: 512)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !162, file: !94, line: 613, baseType: !171, size: 256, offset: 640)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !195)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !174, line: 20, size: 512, elements: !175)
!174 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176, !184, !185, !189, !191, !192, !193, !194}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !173, file: !174, line: 21, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !155, line: 158, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !155, line: 153, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !180, line: 23, baseType: !181)
!180 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !182, line: 31, baseType: !183)
!182 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!183 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !173, file: !174, line: 22, baseType: !177, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 23, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !174, line: 24, baseType: !190, size: 64, offset: 192)
!190 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !173, file: !174, line: 25, baseType: !190, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !174, line: 26, baseType: !172, size: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !173, file: !174, line: 26, baseType: !172, size: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !173, file: !174, line: 26, baseType: !172, size: 64, offset: 448)
!195 = !{!196}
!196 = !DISubrange(count: 4)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !162, file: !94, line: 614, baseType: !154, size: 128, offset: 896)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !162, file: !94, line: 615, baseType: !173, size: 512, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !162, file: !94, line: 617, baseType: !200, size: 64, offset: 1536)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !94, line: 731, size: 320, elements: !202)
!202 = !{!203, !208, !212, !216, !223}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !201, file: !94, line: 732, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !161}
!207 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !201, file: !94, line: 733, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !161}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !201, file: !94, line: 734, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!149, !161, !7, !207}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !201, file: !94, line: 735, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!207, !161, !7, !207, !207, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !180, line: 21, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !182, line: 27, baseType: !7)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !201, file: !94, line: 736, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!207, !161, !7, !207, !207, !221}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !162, file: !94, line: 618, baseType: !228, size: 64, offset: 1600)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !94, line: 537, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !162, file: !94, line: 619, baseType: !149, size: 64, offset: 1664)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !162, file: !94, line: 620, baseType: !232, size: 64, offset: 1728)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !234, line: 123, flags: DIFlagFwdDecl)
!234 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !162, file: !94, line: 622, baseType: !236, size: 8, offset: 1792)
!236 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !162, file: !94, line: 623, baseType: !236, size: 8, offset: 1800)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !162, file: !94, line: 624, baseType: !236, size: 8, offset: 1808)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !162, file: !94, line: 625, baseType: !236, size: 8, offset: 1816)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !94, line: 630, baseType: !241, size: 384, offset: 1824)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 384, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 48)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !162, file: !94, line: 632, baseType: !245, size: 16, offset: 2208)
!245 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !162, file: !94, line: 633, baseType: !247, size: 16, offset: 2224)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !94, line: 237, baseType: !245)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !162, file: !94, line: 634, baseType: !249, size: 64, offset: 2240)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !251)
!251 = !{!252, !3379, !3380, !3383, !3384, !3435, !3526, !3527, !3528, !3529, !3530, !3539, !3644, !3657, !3660, !3661, !3665, !3667, !3668, !3669, !3673, !3679, !3680, !3683, !3687, !3777, !3778, !3779, !3780, !3781, !3813, !3814, !3815, !3818, !3821, !3822, !3823, !3824}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !250, file: !73, line: 462, baseType: !253, size: 512)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !106, line: 64, size: 512, elements: !254)
!254 = !{!255, !256, !257, !259, !319, !3230, !3369, !3374, !3375, !3376, !3377, !3378}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !106, line: 65, baseType: !186, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !253, file: !106, line: 66, baseType: !154, size: 128, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !253, file: !106, line: 67, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !253, file: !106, line: 68, baseType: !260, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !106, line: 192, size: 704, elements: !262)
!262 = !{!263, !264, !280, !281}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !261, file: !106, line: 193, baseType: !154, size: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !261, file: !106, line: 194, baseType: !265, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !266, line: 83, baseType: !267)
!266 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !266, line: 71, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !266, line: 72, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !266, line: 72, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !270, file: !266, line: 73, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !266, line: 20, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !273, file: !266, line: 21, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !277, line: 25, baseType: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 25, elements: !279)
!279 = !{}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !261, file: !106, line: 195, baseType: !253, size: 512, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !261, file: !106, line: 196, baseType: !282, size: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !106, line: 156, size: 192, elements: !285)
!285 = !{!286, !291, !296}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !284, file: !106, line: 157, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!207, !260, !258}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !106, line: 158, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!186, !260, !258}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !284, file: !106, line: 159, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!207, !260, !258, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !106, line: 148, size: 20736, elements: !303)
!303 = !{!304, !309, !313, !314, !318}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !302, file: !106, line: 149, baseType: !305, size: 192)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 192, elements: !307)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!307 = !{!308}
!308 = !DISubrange(count: 3)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !302, file: !106, line: 150, baseType: !310, size: 4096, offset: 192)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 4096, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !302, file: !106, line: 151, baseType: !207, size: 32, offset: 4288)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !302, file: !106, line: 152, baseType: !315, size: 16384, offset: 4320)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 16384, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 2048)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !302, file: !106, line: 153, baseType: !207, size: 32, offset: 20704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !253, file: !106, line: 69, baseType: !320, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !106, line: 138, size: 448, elements: !322)
!322 = !{!323, !327, !355, !357, !3192, !3220, !3224}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !321, file: !106, line: 139, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !258}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !321, file: !106, line: 140, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !331, line: 230, size: 128, elements: !332)
!331 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333, !348}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !330, file: !331, line: 231, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!337, !258, !342, !306}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !155, line: 60, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !339, line: 73, baseType: !340)
!339 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !339, line: 15, baseType: !341)
!341 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !331, line: 30, size: 128, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !331, line: 31, baseType: !186, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !343, file: !331, line: 32, baseType: !347, size: 16, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !155, line: 19, baseType: !245)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !330, file: !331, line: 232, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!337, !258, !342, !186, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 55, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !339, line: 72, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !339, line: 16, baseType: !190)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !321, file: !106, line: 141, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !321, file: !106, line: 142, baseType: !358, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !331, line: 84, size: 320, elements: !362)
!362 = !{!363, !364, !368, !3189, !3190}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !331, line: 85, baseType: !186, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !361, file: !331, line: 86, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!347, !258, !342, !207}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !361, file: !331, line: 88, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!347, !258, !372, !207}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !331, line: 168, size: 448, elements: !374)
!374 = !{!375, !376, !377, !378, !3184, !3185}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !373, file: !331, line: 169, baseType: !343, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !373, file: !331, line: 170, baseType: !352, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !373, file: !331, line: 171, baseType: !149, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !373, file: !331, line: 172, baseType: !379, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!337, !382, !258, !372, !306, !553, !352}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !384)
!384 = !{!385, !403, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3167, !3168, !3177, !3178, !3179, !3180, !3181, !3182, !3183}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !383, file: !44, line: 920, baseType: !386, size: 128)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !44, line: 917, size: 128, elements: !387)
!387 = !{!388, !394}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !386, file: !44, line: 918, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !390, line: 58, size: 64, elements: !391)
!390 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !390, line: 59, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !386, file: !44, line: 919, baseType: !395, size: 128, align: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !155, line: 216, size: 128, align: 64, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !155, line: 217, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !395, file: !155, line: 218, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !398}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !383, file: !44, line: 921, baseType: !404, size: 128, offset: 128)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !405, line: 8, size: 128, elements: !406)
!405 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!406 = !{!407, !411}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !404, file: !405, line: 9, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !410, line: 18, flags: DIFlagFwdDecl)
!410 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !404, file: !405, line: 10, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !410, line: 89, size: 1536, elements: !414)
!414 = !{!415, !416, !426, !434, !435, !450, !3117, !3119, !3131, !3132, !3133, !3134, !3135, !3141, !3142, !3143}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !413, file: !410, line: 91, baseType: !7, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !413, file: !410, line: 92, baseType: !417, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !418, line: 277, baseType: !419)
!418 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !418, line: 277, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !419, file: !418, line: 277, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !418, line: 70, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !418, line: 65, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !423, file: !418, line: 66, baseType: !7, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !413, file: !410, line: 93, baseType: !427, size: 128, offset: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !428, line: 38, size: 128, elements: !429)
!428 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !428, line: 39, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !427, file: !428, line: 39, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !413, file: !410, line: 94, baseType: !412, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !413, file: !410, line: 95, baseType: !436, size: 128, offset: 256)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !410, line: 47, size: 128, elements: !437)
!437 = !{!438, !447}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !410, line: 48, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !410, line: 48, size: 64, elements: !440)
!440 = !{!441, !446}
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !410, line: 49, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !410, line: 49, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !442, file: !410, line: 50, baseType: !221, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !442, file: !410, line: 50, baseType: !221, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !439, file: !410, line: 52, baseType: !179, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !410, line: 54, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !413, file: !410, line: 96, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !453)
!453 = !{!454, !455, !456, !464, !471, !472, !620, !2828, !2829, !2830, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !3093, !3101, !3102, !3103, !3113, !3114, !3115, !3116}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !452, file: !44, line: 611, baseType: !347, size: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !452, file: !44, line: 612, baseType: !245, size: 16, offset: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !452, file: !44, line: 613, baseType: !457, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !458, line: 23, baseType: !459)
!458 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 21, size: 32, elements: !460)
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !459, file: !458, line: 22, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !155, line: 32, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !339, line: 49, baseType: !7)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !452, file: !44, line: 614, baseType: !465, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !458, line: 28, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 26, size: 32, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !466, file: !458, line: 27, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !155, line: 33, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !339, line: 50, baseType: !7)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !452, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !452, file: !44, line: 622, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !476)
!476 = !{!477, !481, !494, !498, !504, !508, !514, !518, !522, !526, !530, !531, !537, !541, !567, !596, !600, !606, !611, !615, !616}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !475, file: !44, line: 1865, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!412, !451, !412, !7}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !475, file: !44, line: 1866, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!186, !412, !451, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !487, line: 10, size: 128, elements: !488)
!487 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !493}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !486, file: !487, line: 11, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !149}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !486, file: !487, line: 12, baseType: !149, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !475, file: !44, line: 1867, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!207, !451, !207}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !475, file: !44, line: 1868, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !451, !207}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !475, file: !44, line: 1870, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!207, !412, !306, !207}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !475, file: !44, line: 1872, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!207, !451, !412, !347, !512}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !155, line: 30, baseType: !513)
!513 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !475, file: !44, line: 1873, baseType: !515, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!207, !412, !451, !412}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !475, file: !44, line: 1874, baseType: !519, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!207, !451, !412}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !475, file: !44, line: 1875, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!207, !451, !412, !186}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !475, file: !44, line: 1876, baseType: !527, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!207, !451, !412, !347}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !475, file: !44, line: 1877, baseType: !519, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !475, file: !44, line: 1878, baseType: !532, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!207, !451, !412, !347, !535}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !155, line: 16, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !155, line: 13, baseType: !221)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !475, file: !44, line: 1879, baseType: !538, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!207, !451, !412, !451, !412, !7}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !475, file: !44, line: 1881, baseType: !542, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!207, !412, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !556, !564, !565, !566}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !546, file: !44, line: 220, baseType: !7, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !546, file: !44, line: 221, baseType: !347, size: 16, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !546, file: !44, line: 222, baseType: !457, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !546, file: !44, line: 223, baseType: !465, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !546, file: !44, line: 224, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !155, line: 46, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !339, line: 88, baseType: !555)
!555 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !546, file: !44, line: 225, baseType: !557, size: 128, offset: 192)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !558, line: 13, size: 128, elements: !559)
!558 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !563}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !557, file: !558, line: 14, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !558, line: 8, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !182, line: 30, baseType: !555)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !557, file: !558, line: 15, baseType: !341, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !546, file: !44, line: 226, baseType: !557, size: 128, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !546, file: !44, line: 227, baseType: !557, size: 128, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !546, file: !44, line: 234, baseType: !382, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !475, file: !44, line: 1882, baseType: !568, size: 64, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!207, !571, !573, !221, !7}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !575, line: 22, size: 1152, elements: !576)
!575 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !578, !579, !580, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !574, file: !575, line: 23, baseType: !221, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !574, file: !575, line: 24, baseType: !347, size: 16, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !574, file: !575, line: 25, baseType: !7, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !574, file: !575, line: 26, baseType: !581, size: 32, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !155, line: 104, baseType: !221)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !574, file: !575, line: 27, baseType: !179, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !574, file: !575, line: 28, baseType: !179, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !574, file: !575, line: 37, baseType: !179, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !574, file: !575, line: 38, baseType: !535, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !574, file: !575, line: 39, baseType: !535, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !574, file: !575, line: 40, baseType: !457, size: 32, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !574, file: !575, line: 41, baseType: !465, size: 32, offset: 416)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !574, file: !575, line: 42, baseType: !553, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !574, file: !575, line: 43, baseType: !557, size: 128, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !574, file: !575, line: 44, baseType: !557, size: 128, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !574, file: !575, line: 45, baseType: !557, size: 128, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !574, file: !575, line: 46, baseType: !557, size: 128, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !574, file: !575, line: 47, baseType: !179, size: 64, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !574, file: !575, line: 48, baseType: !179, size: 64, offset: 1088)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !475, file: !44, line: 1883, baseType: !597, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!337, !412, !306, !352}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !475, file: !44, line: 1884, baseType: !601, size: 64, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!207, !451, !604, !179, !179}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !475, file: !44, line: 1886, baseType: !607, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!207, !451, !610, !207}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !475, file: !44, line: 1887, baseType: !612, size: 64, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!207, !451, !412, !382, !7, !347}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !475, file: !44, line: 1890, baseType: !527, size: 64, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !475, file: !44, line: 1891, baseType: !617, size: 64, offset: 1280)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!207, !451, !502, !207}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !452, file: !44, line: 623, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !679, !2435, !2517, !2600, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2616, !2620, !2621, !2624, !2625, !2628, !2629, !2630, !2671, !2698, !2699, !2700, !2701, !2702, !2703, !2706, !2708, !2715, !2716, !2718, !2719, !2720, !2779, !2780, !2795, !2796, !2797, !2798, !2799, !2802, !2803, !2804, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !622, file: !44, line: 1417, baseType: !154, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !622, file: !44, line: 1418, baseType: !535, size: 32, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !622, file: !44, line: 1419, baseType: !236, size: 8, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !622, file: !44, line: 1420, baseType: !190, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !622, file: !44, line: 1421, baseType: !553, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !622, file: !44, line: 1422, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !632)
!632 = !{!633, !634, !635, !642, !646, !650, !654, !658, !659, !669, !672, !673, !674, !676, !677, !678}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !44, line: 2229, baseType: !186, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !631, file: !44, line: 2230, baseType: !207, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !631, file: !44, line: 2238, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!207, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !641, line: 28, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !631, file: !44, line: 2239, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !631, file: !44, line: 2240, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!412, !630, !207, !186, !149}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !631, file: !44, line: 2242, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !621}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !44, line: 2243, baseType: !655, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !657, line: 189, flags: DIFlagFwdDecl)
!657 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !44, line: 2244, baseType: !630, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !631, file: !44, line: 2245, baseType: !660, size: 64, offset: 512)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !155, line: 182, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !660, file: !155, line: 183, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !155, line: 186, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !155, line: 187, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !664, file: !155, line: 187, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !631, file: !44, line: 2247, baseType: !670, offset: 576)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !671, line: 187, elements: !279)
!671 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !631, file: !44, line: 2248, baseType: !670, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !631, file: !44, line: 2249, baseType: !670, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !631, file: !44, line: 2250, baseType: !675, offset: 576)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, elements: !307)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !631, file: !44, line: 2252, baseType: !670, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !631, file: !44, line: 2253, baseType: !670, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !631, file: !44, line: 2254, baseType: !670, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !622, file: !44, line: 1423, baseType: !680, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !683)
!683 = !{!684, !688, !692, !693, !697, !703, !707, !708, !709, !713, !717, !718, !719, !720, !726, !731, !732, !739, !740, !741, !742, !2419, !2434}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !682, file: !44, line: 1936, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!451, !621}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !682, file: !44, line: 1937, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !451}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !682, file: !44, line: 1938, baseType: !689, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !682, file: !44, line: 1940, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !451, !207}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !682, file: !44, line: 1941, baseType: !698, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!207, !451, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !682, file: !44, line: 1942, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!207, !451}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !682, file: !44, line: 1943, baseType: !689, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !682, file: !44, line: 1944, baseType: !651, size: 64, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !682, file: !44, line: 1945, baseType: !710, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!207, !621, !207}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !682, file: !44, line: 1946, baseType: !714, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!207, !621}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !682, file: !44, line: 1947, baseType: !714, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !682, file: !44, line: 1948, baseType: !714, size: 64, offset: 704)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !682, file: !44, line: 1949, baseType: !714, size: 64, offset: 768)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !682, file: !44, line: 1950, baseType: !721, size: 64, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!207, !412, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !682, file: !44, line: 1951, baseType: !727, size: 64, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!207, !621, !730, !306}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !682, file: !44, line: 1952, baseType: !651, size: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !682, file: !44, line: 1954, baseType: !733, size: 64, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!207, !736, !412}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !738, line: 539, flags: DIFlagFwdDecl)
!738 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!739 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !682, file: !44, line: 1955, baseType: !733, size: 64, offset: 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !682, file: !44, line: 1956, baseType: !733, size: 64, offset: 1152)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !682, file: !44, line: 1957, baseType: !733, size: 64, offset: 1216)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !682, file: !44, line: 1963, baseType: !743, size: 64, offset: 1280)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!207, !621, !746, !769}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !748, line: 68, size: 512, align: 128, elements: !749)
!748 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!749 = !{!750, !751, !2411, !2418}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 69, baseType: !190, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 77, baseType: !752, size: 320, offset: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 77, size: 320, elements: !753)
!753 = !{!754, !942, !947, !975, !983, !989, !2342, !2410}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 78, baseType: !755, size: 320)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 78, size: 320, elements: !756)
!756 = !{!757, !758, !940, !941}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !755, file: !748, line: 84, baseType: !154, size: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !755, file: !748, line: 86, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !761)
!761 = !{!762, !763, !771, !772, !777, !792, !808, !809, !810, !811, !933, !934, !937, !938, !939}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !760, file: !44, line: 452, baseType: !451, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !760, file: !44, line: 453, baseType: !764, size: 128, offset: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !765, line: 292, size: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !770}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !764, file: !765, line: 293, baseType: !265)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !764, file: !765, line: 295, baseType: !769, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !155, line: 148, baseType: !7)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !764, file: !765, line: 296, baseType: !149, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !760, file: !44, line: 454, baseType: !769, size: 32, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !760, file: !44, line: 455, baseType: !773, size: 32, offset: 224)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !155, line: 168, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 166, size: 32, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !774, file: !155, line: 167, baseType: !207, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !760, file: !44, line: 460, baseType: !778, size: 128, offset: 256)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !779, line: 125, size: 128, elements: !780)
!779 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !778, file: !779, line: 126, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !779, line: 31, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !782, file: !779, line: 32, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !779, line: 24, size: 192, align: 64, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !786, file: !779, line: 25, baseType: !190, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !786, file: !779, line: 26, baseType: !785, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !786, file: !779, line: 27, baseType: !785, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !778, file: !779, line: 127, baseType: !785, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !760, file: !44, line: 461, baseType: !793, size: 256, offset: 384)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !794, line: 35, size: 256, elements: !795)
!794 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !804, !805, !807}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !793, file: !794, line: 36, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !798, line: 13, baseType: !799)
!798 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !155, line: 175, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 173, size: 64, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !800, file: !155, line: 174, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !180, line: 22, baseType: !562)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !793, file: !794, line: 42, baseType: !797, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !793, file: !794, line: 46, baseType: !806, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !266, line: 29, baseType: !273)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !793, file: !794, line: 47, baseType: !154, size: 128, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !760, file: !44, line: 462, baseType: !190, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !760, file: !44, line: 463, baseType: !190, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !760, file: !44, line: 464, baseType: !190, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !760, file: !44, line: 465, baseType: !812, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !815)
!815 = !{!816, !820, !824, !828, !832, !836, !842, !848, !852, !857, !861, !865, !869, !897, !901, !907, !908, !909, !913, !918, !922, !929}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !814, file: !44, line: 368, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!207, !746, !701}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !814, file: !44, line: 369, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!207, !382, !746}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !814, file: !44, line: 372, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!207, !759, !701}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !814, file: !44, line: 375, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!207, !746}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !814, file: !44, line: 381, baseType: !833, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!207, !382, !759, !158, !7}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !814, file: !44, line: 383, baseType: !837, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !814, file: !44, line: 385, baseType: !843, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!207, !382, !759, !553, !7, !7, !846, !847}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !814, file: !44, line: 388, baseType: !849, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!207, !382, !759, !553, !7, !7, !746, !149}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !814, file: !44, line: 393, baseType: !853, size: 64, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!856, !759, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !155, line: 125, baseType: !179)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !814, file: !44, line: 394, baseType: !858, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !746, !7, !7}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !814, file: !44, line: 395, baseType: !862, size: 64, offset: 640)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!207, !746, !769}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !814, file: !44, line: 396, baseType: !866, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !746}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !814, file: !44, line: 397, baseType: !870, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!337, !873, !895}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !875)
!875 = !{!876, !877, !878, !882, !883, !884, !887, !888}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !874, file: !44, line: 321, baseType: !382, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !874, file: !44, line: 326, baseType: !553, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !874, file: !44, line: 327, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !873, !341, !341}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !874, file: !44, line: 328, baseType: !149, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !874, file: !44, line: 329, baseType: !207, size: 32, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !874, file: !44, line: 330, baseType: !885, size: 16, offset: 288)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !180, line: 19, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !182, line: 24, baseType: !245)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !874, file: !44, line: 331, baseType: !885, size: 16, offset: 304)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !44, line: 332, baseType: !889, size: 64, offset: 320)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !44, line: 332, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !889, file: !44, line: 333, baseType: !7, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !889, file: !44, line: 334, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !814, file: !44, line: 402, baseType: !898, size: 64, offset: 832)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!207, !759, !746, !746, !5}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !814, file: !44, line: 404, baseType: !902, size: 64, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!512, !746, !905}
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !906, line: 305, baseType: !7)
!906 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !814, file: !44, line: 405, baseType: !866, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !814, file: !44, line: 406, baseType: !829, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !814, file: !44, line: 407, baseType: !910, size: 64, offset: 1088)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!207, !746, !190, !190}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !814, file: !44, line: 409, baseType: !914, size: 64, offset: 1152)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !746, !917, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !814, file: !44, line: 410, baseType: !919, size: 64, offset: 1216)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!207, !759, !746}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !814, file: !44, line: 413, baseType: !923, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!207, !926, !382, !928}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !814, file: !44, line: 415, baseType: !930, size: 64, offset: 1344)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !382}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !44, line: 466, baseType: !190, size: 64, offset: 896)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !760, file: !44, line: 467, baseType: !935, size: 32, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !936, line: 8, baseType: !221)
!936 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!937 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !760, file: !44, line: 468, baseType: !265, offset: 992)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !760, file: !44, line: 469, baseType: !154, size: 128, offset: 1024)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !760, file: !44, line: 470, baseType: !149, size: 64, offset: 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !755, file: !748, line: 87, baseType: !190, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !755, file: !748, line: 94, baseType: !190, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 96, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 96, size: 64, elements: !944)
!944 = !{!945}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !943, file: !748, line: 101, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !155, line: 143, baseType: !179)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 103, baseType: !948, size: 320)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 103, size: 320, elements: !949)
!949 = !{!950, !960, !963, !964}
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !748, line: 104, baseType: !951, size: 128)
!951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !748, line: 104, size: 128, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !951, file: !748, line: 105, baseType: !154, size: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !748, line: 106, baseType: !955, size: 128)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !748, line: 106, size: 128, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !955, file: !748, line: 107, baseType: !746, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !955, file: !748, line: 109, baseType: !207, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !955, file: !748, line: 110, baseType: !207, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !948, file: !748, line: 117, baseType: !961, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !748, line: 117, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !948, file: !748, line: 119, baseType: !149, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !748, line: 120, baseType: !965, size: 64, offset: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !748, line: 120, size: 64, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !965, file: !748, line: 121, baseType: !149, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !965, file: !748, line: 122, baseType: !190, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !748, line: 123, baseType: !970, size: 32)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !748, line: 123, size: 32, elements: !971)
!971 = !{!972, !973, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !970, file: !748, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !970, file: !748, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !970, file: !748, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 130, baseType: !976, size: 192)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 130, size: 192, elements: !977)
!977 = !{!978, !979, !980, !981, !982}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !976, file: !748, line: 131, baseType: !190, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !976, file: !748, line: 134, baseType: !236, size: 8, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !976, file: !748, line: 135, baseType: !236, size: 8, offset: 72)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !976, file: !748, line: 136, baseType: !773, size: 32, offset: 96)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !976, file: !748, line: 137, baseType: !7, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 139, baseType: !984, size: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 139, size: 256, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !984, file: !748, line: 140, baseType: !190, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !984, file: !748, line: 141, baseType: !773, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !984, file: !748, line: 143, baseType: !154, size: 128, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 145, baseType: !990, size: 256)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 145, size: 256, elements: !991)
!991 = !{!992, !993, !995, !996, !2341}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !990, file: !748, line: 146, baseType: !190, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !990, file: !748, line: 147, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !738, line: 509, baseType: !746)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !990, file: !748, line: 148, baseType: !190, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !748, line: 149, baseType: !997, size: 64, offset: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !748, line: 149, size: 64, elements: !998)
!998 = !{!999, !2340}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !997, file: !748, line: 150, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !748, line: 388, size: 7296, elements: !1002)
!1002 = !{!1003, !2336}
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !748, line: 389, baseType: !1004, size: 7296)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1001, file: !748, line: 389, size: 7296, elements: !1005)
!1005 = !{!1006, !1124, !1125, !1126, !1130, !1131, !1132, !1133, !1134, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1175, !1181, !1184, !1214, !1215, !2320, !2321, !2324, !2325, !2326, !2329, !2330, !2331, !2334, !2335}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1004, file: !748, line: 390, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !748, line: 305, size: 1472, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1024, !1025, !1030, !1031, !1034, !1118, !1119, !1120, !1121, !1122}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1008, file: !748, line: 308, baseType: !190, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1008, file: !748, line: 309, baseType: !190, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1008, file: !748, line: 313, baseType: !1007, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1008, file: !748, line: 313, baseType: !1007, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1008, file: !748, line: 315, baseType: !786, size: 192, align: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1008, file: !748, line: 323, baseType: !190, size: 64, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1008, file: !748, line: 327, baseType: !1000, size: 64, offset: 512)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1008, file: !748, line: 333, baseType: !1018, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !738, line: 284, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !738, line: 284, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1019, file: !738, line: 284, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1023, line: 19, baseType: !190)
!1023 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1008, file: !748, line: 334, baseType: !190, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1008, file: !748, line: 343, baseType: !1026, size: 256, offset: 704)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !748, line: 340, size: 256, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1026, file: !748, line: 341, baseType: !786, size: 192, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1026, file: !748, line: 342, baseType: !190, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1008, file: !748, line: 351, baseType: !154, size: 128, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1008, file: !748, line: 353, baseType: !1032, size: 64, offset: 1088)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !748, line: 353, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1008, file: !748, line: 356, baseType: !1035, size: 64, offset: 1152)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1038)
!1038 = !{!1039, !1043, !1044, !1048, !1052, !1092, !1096, !1100, !1104, !1105, !1106, !1110, !1114}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1037, file: !14, line: 558, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !1007}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1037, file: !14, line: 559, baseType: !1040, size: 64, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1037, file: !14, line: 560, baseType: !1045, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!207, !1007, !190}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1037, file: !14, line: 561, baseType: !1049, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!207, !1007}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1037, file: !14, line: 562, baseType: !1053, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !748, line: 682, baseType: !7)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1072, !1079, !1085, !1086, !1087, !1089, !1091}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1058, file: !14, line: 509, baseType: !1007, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1058, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1058, file: !14, line: 511, baseType: !769, size: 32, offset: 96)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1058, file: !14, line: 512, baseType: !190, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1058, file: !14, line: 513, baseType: !190, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1058, file: !14, line: 514, baseType: !1066, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !738, line: 385, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 385, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1068, file: !738, line: 385, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1023, line: 15, baseType: !190)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1058, file: !14, line: 516, baseType: !1073, size: 64, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !738, line: 359, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 359, size: 64, elements: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1075, file: !738, line: 359, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1023, line: 16, baseType: !190)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1058, file: !14, line: 519, baseType: !1080, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1023, line: 21, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1023, line: 21, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1081, file: !1023, line: 21, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1023, line: 14, baseType: !190)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1058, file: !14, line: 521, baseType: !746, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1058, file: !14, line: 522, baseType: !746, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1058, file: !14, line: 528, baseType: !1088, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1058, file: !14, line: 532, baseType: !1090, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1058, file: !14, line: 536, baseType: !994, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1037, file: !14, line: 563, baseType: !1093, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!1056, !1057, !13}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1037, file: !14, line: 565, baseType: !1097, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1057, !190, !190}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1037, file: !14, line: 567, baseType: !1101, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!190, !1007}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1037, file: !14, line: 571, baseType: !1053, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1037, file: !14, line: 574, baseType: !1053, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1037, file: !14, line: 579, baseType: !1107, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!207, !1007, !190, !149, !207, !207}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1037, file: !14, line: 585, baseType: !1111, size: 64, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!186, !1007}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1037, file: !14, line: 615, baseType: !1115, size: 64, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!746, !1007, !190}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1008, file: !748, line: 359, baseType: !190, size: 64, offset: 1216)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1008, file: !748, line: 361, baseType: !382, size: 64, offset: 1280)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1008, file: !748, line: 362, baseType: !149, size: 64, offset: 1344)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1008, file: !748, line: 365, baseType: !797, size: 64, offset: 1408)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1008, file: !748, line: 373, baseType: !1123, offset: 1472)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !748, line: 296, elements: !279)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1004, file: !748, line: 391, baseType: !782, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1004, file: !748, line: 392, baseType: !179, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1004, file: !748, line: 394, baseType: !1127, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!190, !382, !190, !190, !190, !190}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1004, file: !748, line: 398, baseType: !190, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1004, file: !748, line: 399, baseType: !190, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1004, file: !748, line: 405, baseType: !190, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1004, file: !748, line: 406, baseType: !190, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1004, file: !748, line: 407, baseType: !1135, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !738, line: 286, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 286, size: 64, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1137, file: !738, line: 286, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1023, line: 18, baseType: !190)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1004, file: !748, line: 416, baseType: !773, size: 32, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1004, file: !748, line: 428, baseType: !773, size: 32, offset: 608)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1004, file: !748, line: 437, baseType: !773, size: 32, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1004, file: !748, line: 447, baseType: !773, size: 32, offset: 672)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1004, file: !748, line: 450, baseType: !797, size: 64, offset: 704)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1004, file: !748, line: 452, baseType: !207, size: 32, offset: 768)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1004, file: !748, line: 454, baseType: !265, offset: 800)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1004, file: !748, line: 457, baseType: !793, size: 256, offset: 832)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1004, file: !748, line: 459, baseType: !154, size: 128, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1004, file: !748, line: 466, baseType: !190, size: 64, offset: 1216)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1004, file: !748, line: 467, baseType: !190, size: 64, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1004, file: !748, line: 469, baseType: !190, size: 64, offset: 1344)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1004, file: !748, line: 470, baseType: !190, size: 64, offset: 1408)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1004, file: !748, line: 471, baseType: !799, size: 64, offset: 1472)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1004, file: !748, line: 472, baseType: !190, size: 64, offset: 1536)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1004, file: !748, line: 473, baseType: !190, size: 64, offset: 1600)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1004, file: !748, line: 474, baseType: !190, size: 64, offset: 1664)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1004, file: !748, line: 475, baseType: !190, size: 64, offset: 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1004, file: !748, line: 477, baseType: !265, offset: 1792)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1004, file: !748, line: 478, baseType: !190, size: 64, offset: 1792)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1004, file: !748, line: 478, baseType: !190, size: 64, offset: 1856)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1004, file: !748, line: 478, baseType: !190, size: 64, offset: 1920)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1004, file: !748, line: 478, baseType: !190, size: 64, offset: 1984)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1004, file: !748, line: 479, baseType: !190, size: 64, offset: 2048)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1004, file: !748, line: 479, baseType: !190, size: 64, offset: 2112)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1004, file: !748, line: 479, baseType: !190, size: 64, offset: 2176)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1004, file: !748, line: 480, baseType: !190, size: 64, offset: 2240)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1004, file: !748, line: 480, baseType: !190, size: 64, offset: 2304)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1004, file: !748, line: 480, baseType: !190, size: 64, offset: 2368)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1004, file: !748, line: 480, baseType: !190, size: 64, offset: 2432)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1004, file: !748, line: 482, baseType: !1172, size: 2816, offset: 2496)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2816, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 44)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1004, file: !748, line: 488, baseType: !1176, size: 256, offset: 5312)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1177, line: 60, size: 256, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1176, file: !1177, line: 61, baseType: !1180, size: 256)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 256, elements: !195)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1004, file: !748, line: 490, baseType: !1182, size: 64, offset: 5568)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !748, line: 490, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1004, file: !748, line: 493, baseType: !1185, size: 896, offset: 5632)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1186, line: 53, baseType: !1187)
!1186 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1186, line: 13, size: 896, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1195, !1196, !1203, !1204, !1208, !1209, !1210}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1187, file: !1186, line: 18, baseType: !179, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1187, file: !1186, line: 28, baseType: !799, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1187, file: !1186, line: 31, baseType: !793, size: 256, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1187, file: !1186, line: 32, baseType: !1193, size: 64, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1186, line: 32, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1187, file: !1186, line: 37, baseType: !245, size: 16, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1187, file: !1186, line: 40, baseType: !1197, size: 192, offset: 512)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1198, line: 53, size: 192, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200, !1201, !1202}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1197, file: !1198, line: 54, baseType: !797, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1197, file: !1198, line: 55, baseType: !265, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1197, file: !1198, line: 59, baseType: !154, size: 128, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1187, file: !1186, line: 41, baseType: !149, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1187, file: !1186, line: 42, baseType: !1205, size: 64, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1186, line: 42, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1187, file: !1186, line: 44, baseType: !773, size: 32, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1187, file: !1186, line: 50, baseType: !885, size: 16, offset: 864)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1187, file: !1186, line: 51, baseType: !1211, size: 16, offset: 880)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !180, line: 18, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !182, line: 23, baseType: !1213)
!1213 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1004, file: !748, line: 495, baseType: !190, size: 64, offset: 6528)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1004, file: !748, line: 497, baseType: !1216, size: 64, offset: 6592)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !748, line: 381, size: 384, elements: !1218)
!1218 = !{!1219, !1220, !2319}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1217, file: !748, line: 382, baseType: !773, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1217, file: !748, line: 383, baseType: !1221, size: 128, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !748, line: 376, size: 128, elements: !1222)
!1222 = !{!1223, !2317}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1221, file: !748, line: 377, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1226, line: 640, size: 48640, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1227 = !{!1228, !1234, !1236, !1237, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1254, !1272, !1283, !1368, !1369, !1370, !1381, !1382, !1384, !1385, !1386, !1387, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1465, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1503, !1505, !1506, !1507, !1519, !1520, !1521, !1522, !1523, !1524, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1548, !1553, !1737, !1738, !1739, !1740, !1744, !1747, !1750, !1753, !1756, !1759, !1860, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1906, !1907, !1908, !1909, !1910, !1915, !1916, !1917, !1920, !1921, !1924, !1927, !1930, !1933, !1976, !1979, !1980, !2059, !2060, !2063, !2064, !2067, !2068, !2069, !2073, !2074, !2075, !2088, !2089, !2090, !2100, !2105, !2108, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1225, file: !1226, line: 646, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1230, line: 56, size: 128, elements: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1229, file: !1230, line: 57, baseType: !190, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1229, file: !1230, line: 58, baseType: !221, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1225, file: !1226, line: 649, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !341)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1225, file: !1226, line: 657, baseType: !149, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1225, file: !1226, line: 658, baseType: !1238, size: 32, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1239, line: 113, baseType: !1240)
!1239 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1239, line: 111, size: 32, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1240, file: !1239, line: 112, baseType: !773, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !1226, line: 660, baseType: !7, size: 32, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1225, file: !1226, line: 661, baseType: !7, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1225, file: !1226, line: 684, baseType: !207, size: 32, offset: 352)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1225, file: !1226, line: 686, baseType: !207, size: 32, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1225, file: !1226, line: 687, baseType: !207, size: 32, offset: 416)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1225, file: !1226, line: 688, baseType: !207, size: 32, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1225, file: !1226, line: 689, baseType: !7, size: 32, offset: 480)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1225, file: !1226, line: 691, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1253)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1226, line: 691, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1225, file: !1226, line: 692, baseType: !1255, size: 832, offset: 576)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1226, line: 451, size: 832, elements: !1256)
!1256 = !{!1257, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1255, file: !1226, line: 453, baseType: !1258, size: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1226, line: 325, size: 128, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1258, file: !1226, line: 326, baseType: !190, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1258, file: !1226, line: 327, baseType: !221, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1255, file: !1226, line: 454, baseType: !786, size: 192, align: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1255, file: !1226, line: 455, baseType: !154, size: 128, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1255, file: !1226, line: 456, baseType: !7, size: 32, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1255, file: !1226, line: 458, baseType: !179, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1255, file: !1226, line: 459, baseType: !179, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1255, file: !1226, line: 460, baseType: !179, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1255, file: !1226, line: 461, baseType: !179, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1255, file: !1226, line: 463, baseType: !179, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1255, file: !1226, line: 465, baseType: !1271, offset: 832)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1226, line: 415, elements: !279)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1225, file: !1226, line: 693, baseType: !1273, size: 384, offset: 1408)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1226, line: 489, size: 384, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1273, file: !1226, line: 490, baseType: !154, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1273, file: !1226, line: 491, baseType: !190, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1273, file: !1226, line: 492, baseType: !190, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1273, file: !1226, line: 493, baseType: !7, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1273, file: !1226, line: 494, baseType: !245, size: 16, offset: 288)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1273, file: !1226, line: 495, baseType: !245, size: 16, offset: 304)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1273, file: !1226, line: 497, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1225, file: !1226, line: 697, baseType: !1284, size: 1792, offset: 1792)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1226, line: 507, size: 1792, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1365, !1366}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1284, file: !1226, line: 508, baseType: !786, size: 192, align: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1284, file: !1226, line: 515, baseType: !179, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1284, file: !1226, line: 516, baseType: !179, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1284, file: !1226, line: 517, baseType: !179, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1284, file: !1226, line: 518, baseType: !179, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1284, file: !1226, line: 519, baseType: !179, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1284, file: !1226, line: 526, baseType: !803, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1284, file: !1226, line: 527, baseType: !179, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !1226, line: 528, baseType: !7, size: 32, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1284, file: !1226, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1284, file: !1226, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1284, file: !1226, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1284, file: !1226, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1284, file: !1226, line: 563, baseType: !1300, size: 512, offset: 704)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1301)
!1301 = !{!1302, !1310, !1311, !1316, !1359, !1362, !1363, !1364}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1300, file: !20, line: 119, baseType: !1303, size: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1304, line: 9, size: 256, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1303, file: !1304, line: 10, baseType: !786, size: 192, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1303, file: !1304, line: 11, baseType: !1308, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1309, line: 29, baseType: !803)
!1309 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1300, file: !20, line: 120, baseType: !1308, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1300, file: !20, line: 121, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!19, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1300, file: !20, line: 122, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1319)
!1319 = !{!1320, !1340, !1341, !1344, !1349, !1350, !1354, !1358}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1318, file: !20, line: 160, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !20, line: 215, baseType: !806)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1322, file: !20, line: 216, baseType: !7, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1322, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1322, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1322, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1322, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1322, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1322, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1322, file: !20, line: 233, baseType: !1308, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1322, file: !20, line: 234, baseType: !1315, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1322, file: !20, line: 235, baseType: !1308, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1322, file: !20, line: 236, baseType: !1315, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1322, file: !20, line: 237, baseType: !1337, size: 4096, offset: 512)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 4096, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 8)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1318, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1318, file: !20, line: 162, baseType: !1342, size: 32, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !155, line: 27, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !339, line: 96, baseType: !207)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1318, file: !20, line: 163, baseType: !1345, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !418, line: 276, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !418, line: 276, size: 32, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1346, file: !418, line: 276, baseType: !422, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1318, file: !20, line: 164, baseType: !1315, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1318, file: !20, line: 165, baseType: !1351, size: 128, offset: 256)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1304, line: 14, size: 128, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1351, file: !1304, line: 15, baseType: !778, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1318, file: !20, line: 166, baseType: !1355, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1308}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1318, file: !20, line: 167, baseType: !1308, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1300, file: !20, line: 123, baseType: !1360, size: 8, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !180, line: 17, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !182, line: 21, baseType: !236)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1300, file: !20, line: 124, baseType: !1360, size: 8, offset: 456)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1300, file: !20, line: 125, baseType: !1360, size: 8, offset: 464)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1300, file: !20, line: 126, baseType: !1360, size: 8, offset: 472)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1284, file: !1226, line: 572, baseType: !1300, size: 512, offset: 1216)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1284, file: !1226, line: 580, baseType: !1367, size: 64, offset: 1728)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1225, file: !1226, line: 721, baseType: !7, size: 32, offset: 3584)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1225, file: !1226, line: 722, baseType: !207, size: 32, offset: 3616)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1225, file: !1226, line: 723, baseType: !1371, size: 64, offset: 3648)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1374, line: 17, baseType: !1375)
!1374 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1374, line: 17, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1375, file: !1374, line: 17, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1225, file: !1226, line: 724, baseType: !1373, size: 64, offset: 3712)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1225, file: !1226, line: 749, baseType: !1383, offset: 3776)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1226, line: 290, elements: !279)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1225, file: !1226, line: 751, baseType: !154, size: 128, offset: 3776)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1225, file: !1226, line: 757, baseType: !1000, size: 64, offset: 3904)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1225, file: !1226, line: 758, baseType: !1000, size: 64, offset: 3968)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1225, file: !1226, line: 761, baseType: !1388, size: 320, offset: 4032)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1177, line: 34, size: 320, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1388, file: !1177, line: 35, baseType: !179, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1388, file: !1177, line: 36, baseType: !1392, size: 256, offset: 64)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 256, elements: !195)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1225, file: !1226, line: 766, baseType: !207, size: 32, offset: 4352)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1225, file: !1226, line: 767, baseType: !207, size: 32, offset: 4384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1225, file: !1226, line: 768, baseType: !207, size: 32, offset: 4416)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1225, file: !1226, line: 770, baseType: !207, size: 32, offset: 4448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1225, file: !1226, line: 772, baseType: !190, size: 64, offset: 4480)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1225, file: !1226, line: 775, baseType: !7, size: 32, offset: 4544)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1225, file: !1226, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1225, file: !1226, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1225, file: !1226, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1225, file: !1226, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1225, file: !1226, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1225, file: !1226, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1225, file: !1226, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1225, file: !1226, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1225, file: !1226, line: 831, baseType: !190, size: 64, offset: 4672)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1225, file: !1226, line: 833, baseType: !1409, size: 384, offset: 4736)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1410)
!1410 = !{!1411, !1416}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1409, file: !25, line: 26, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!341, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !25, line: 27, baseType: !1417, size: 320, offset: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !25, line: 27, size: 320, elements: !1418)
!1418 = !{!1419, !1428, !1455}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1417, file: !25, line: 36, baseType: !1420, size: 320)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !25, line: 29, size: 320, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1420, file: !25, line: 30, baseType: !220, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1420, file: !25, line: 31, baseType: !221, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !25, line: 32, baseType: !221, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1420, file: !25, line: 33, baseType: !221, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1420, file: !25, line: 34, baseType: !179, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1420, file: !25, line: 35, baseType: !220, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1417, file: !25, line: 46, baseType: !1429, size: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !25, line: 38, size: 192, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1454}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1429, file: !25, line: 39, baseType: !1342, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1429, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !25, line: 41, baseType: !1434, size: 64, offset: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !25, line: 41, size: 64, elements: !1435)
!1435 = !{!1436, !1444}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1434, file: !25, line: 42, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1439, line: 7, size: 128, elements: !1440)
!1439 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1438, file: !1439, line: 8, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !339, line: 93, baseType: !555)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1438, file: !1439, line: 9, baseType: !555, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1434, file: !25, line: 43, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1447, line: 7, size: 64, elements: !1448)
!1447 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1453}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1446, file: !1447, line: 8, baseType: !1450, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1447, line: 5, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !180, line: 20, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !182, line: 26, baseType: !207)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1446, file: !1447, line: 9, baseType: !1451, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1429, file: !25, line: 45, baseType: !179, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1417, file: !25, line: 54, baseType: !1456, size: 256)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !25, line: 48, size: 256, elements: !1457)
!1457 = !{!1458, !1461, !1462, !1463, !1464}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1456, file: !25, line: 49, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1456, file: !25, line: 50, baseType: !207, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1456, file: !25, line: 51, baseType: !207, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1456, file: !25, line: 52, baseType: !190, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1456, file: !25, line: 53, baseType: !190, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1225, file: !1226, line: 835, baseType: !1466, size: 32, offset: 5120)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !155, line: 22, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !339, line: 28, baseType: !207)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1225, file: !1226, line: 836, baseType: !1466, size: 32, offset: 5152)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1225, file: !1226, line: 840, baseType: !190, size: 64, offset: 5184)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1225, file: !1226, line: 849, baseType: !1224, size: 64, offset: 5248)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1225, file: !1226, line: 852, baseType: !1224, size: 64, offset: 5312)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1225, file: !1226, line: 857, baseType: !154, size: 128, offset: 5376)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1225, file: !1226, line: 858, baseType: !154, size: 128, offset: 5504)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1225, file: !1226, line: 859, baseType: !1224, size: 64, offset: 5632)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1225, file: !1226, line: 867, baseType: !154, size: 128, offset: 5696)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1225, file: !1226, line: 868, baseType: !154, size: 128, offset: 5824)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1225, file: !1226, line: 871, baseType: !1478, size: 64, offset: 5952)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1486, !1487, !1494, !1495}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1479, file: !53, line: 61, baseType: !1238, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1479, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !53, line: 63, baseType: !265, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1479, file: !53, line: 65, baseType: !1485, size: 256, offset: 64)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !195)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1479, file: !53, line: 66, baseType: !660, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1479, file: !53, line: 68, baseType: !1488, size: 128, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1489, line: 40, baseType: !1490)
!1489 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1489, line: 36, size: 128, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1489, line: 37, baseType: !265)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1490, file: !1489, line: 38, baseType: !154, size: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1479, file: !53, line: 69, baseType: !395, size: 128, align: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1479, file: !53, line: 70, baseType: !1496, size: 128, offset: 640)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1497, size: 128, elements: !1379)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1497, file: !53, line: 55, baseType: !207, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1497, file: !53, line: 56, baseType: !1501, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1225, file: !1226, line: 872, baseType: !1504, size: 512, offset: 6016)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 512, elements: !195)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1225, file: !1226, line: 873, baseType: !154, size: 128, offset: 6528)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1225, file: !1226, line: 874, baseType: !154, size: 128, offset: 6656)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1225, file: !1226, line: 876, baseType: !1508, size: 64, offset: 6784)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1510, line: 26, size: 192, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1509, file: !1510, line: 27, baseType: !7, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1509, file: !1510, line: 28, baseType: !1514, size: 128, offset: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1515, line: 43, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1515, line: 44, baseType: !806)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1514, file: !1515, line: 45, baseType: !154, size: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1225, file: !1226, line: 879, baseType: !730, size: 64, offset: 6848)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1225, file: !1226, line: 882, baseType: !730, size: 64, offset: 6912)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1225, file: !1226, line: 884, baseType: !179, size: 64, offset: 6976)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1225, file: !1226, line: 885, baseType: !179, size: 64, offset: 7040)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1225, file: !1226, line: 890, baseType: !179, size: 64, offset: 7104)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1225, file: !1226, line: 891, baseType: !1525, size: 128, offset: 7168)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1226, line: 242, size: 128, elements: !1526)
!1526 = !{!1527, !1528, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1525, file: !1226, line: 244, baseType: !179, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1525, file: !1226, line: 245, baseType: !179, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1226, line: 246, baseType: !806, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1225, file: !1226, line: 900, baseType: !190, size: 64, offset: 7296)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1225, file: !1226, line: 901, baseType: !190, size: 64, offset: 7360)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1225, file: !1226, line: 904, baseType: !179, size: 64, offset: 7424)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1225, file: !1226, line: 907, baseType: !179, size: 64, offset: 7488)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1225, file: !1226, line: 910, baseType: !190, size: 64, offset: 7552)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1225, file: !1226, line: 911, baseType: !190, size: 64, offset: 7616)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1225, file: !1226, line: 914, baseType: !1537, size: 640, offset: 7680)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1538, line: 123, size: 640, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1546, !1547}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1537, file: !1538, line: 124, baseType: !1541, size: 576)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1542, size: 576, elements: !307)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1538, line: 108, size: 192, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1542, file: !1538, line: 109, baseType: !179, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1542, file: !1538, line: 110, baseType: !1351, size: 128, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1537, file: !1538, line: 125, baseType: !7, size: 32, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1537, file: !1538, line: 126, baseType: !7, size: 32, offset: 608)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1225, file: !1226, line: 917, baseType: !1549, size: 192, offset: 8320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1538, line: 134, size: 192, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1549, file: !1538, line: 135, baseType: !395, size: 128, align: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1549, file: !1538, line: 136, baseType: !7, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1225, file: !1226, line: 923, baseType: !1554, size: 64, offset: 8512)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1557, line: 111, size: 1280, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1578, !1579, !1580, !1581, !1582, !1583, !1690, !1691, !1692, !1693, !1719, !1722, !1732}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1556, file: !1557, line: 112, baseType: !773, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1556, file: !1557, line: 120, baseType: !457, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1556, file: !1557, line: 121, baseType: !465, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1556, file: !1557, line: 122, baseType: !457, size: 32, offset: 96)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1556, file: !1557, line: 123, baseType: !465, size: 32, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1556, file: !1557, line: 124, baseType: !457, size: 32, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1556, file: !1557, line: 125, baseType: !465, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1556, file: !1557, line: 126, baseType: !457, size: 32, offset: 224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1556, file: !1557, line: 127, baseType: !465, size: 32, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1556, file: !1557, line: 128, baseType: !7, size: 32, offset: 288)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1556, file: !1557, line: 129, baseType: !1570, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1571, line: 26, baseType: !1572)
!1571 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1571, line: 24, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1572, file: !1571, line: 25, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DISubrange(count: 2)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1556, file: !1557, line: 130, baseType: !1570, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1556, file: !1557, line: 131, baseType: !1570, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1556, file: !1557, line: 132, baseType: !1570, size: 64, offset: 512)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1556, file: !1557, line: 133, baseType: !1570, size: 64, offset: 576)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1556, file: !1557, line: 135, baseType: !236, size: 8, offset: 640)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1556, file: !1557, line: 137, baseType: !1584, size: 64, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1586, line: 189, size: 1664, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1592, !1597, !1598, !1601, !1602, !1607, !1608, !1609, !1610, !1612, !1613, !1614, !1615, !1616, !1654, !1675}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1585, file: !1586, line: 190, baseType: !1238, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1585, file: !1586, line: 191, baseType: !1590, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1586, line: 28, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !155, line: 98, baseType: !1451)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 192, baseType: !1593, size: 192, offset: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 192, size: 192, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1593, file: !1586, line: 193, baseType: !154, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1593, file: !1586, line: 194, baseType: !786, size: 192, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1585, file: !1586, line: 199, baseType: !793, size: 256, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1585, file: !1586, line: 200, baseType: !1599, size: 64, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1586, line: 200, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1585, file: !1586, line: 201, baseType: !149, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 202, baseType: !1603, size: 64, offset: 640)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 202, size: 64, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1603, file: !1586, line: 203, baseType: !561, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1603, file: !1586, line: 204, baseType: !561, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1585, file: !1586, line: 206, baseType: !561, size: 64, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1585, file: !1586, line: 207, baseType: !457, size: 32, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1585, file: !1586, line: 208, baseType: !465, size: 32, offset: 800)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1585, file: !1586, line: 209, baseType: !1611, size: 32, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1586, line: 31, baseType: !581)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1585, file: !1586, line: 210, baseType: !245, size: 16, offset: 864)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1585, file: !1586, line: 211, baseType: !245, size: 16, offset: 880)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1585, file: !1586, line: 215, baseType: !1213, size: 16, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1586, line: 222, baseType: !190, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 239, baseType: !1617, size: 320, offset: 1024)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 239, size: 320, elements: !1618)
!1618 = !{!1619, !1646}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1617, file: !1586, line: 240, baseType: !1620, size: 320)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1586, line: 108, size: 320, elements: !1621)
!1621 = !{!1622, !1623, !1635, !1638, !1645}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1620, file: !1586, line: 110, baseType: !190, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1586, line: 111, baseType: !1624, size: 64, offset: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1586, line: 111, size: 64, elements: !1625)
!1625 = !{!1626, !1634}
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1586, line: 112, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1624, file: !1586, line: 112, size: 64, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1627, file: !1586, line: 114, baseType: !885, size: 16)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1627, file: !1586, line: 115, baseType: !1631, size: 48, offset: 16)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 6)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1624, file: !1586, line: 121, baseType: !190, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1620, file: !1586, line: 123, baseType: !1636, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1586, line: 96, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1620, file: !1586, line: 124, baseType: !1639, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1586, line: 102, size: 192, elements: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1640, file: !1586, line: 103, baseType: !395, size: 128, align: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1640, file: !1586, line: 104, baseType: !1238, size: 32, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1640, file: !1586, line: 105, baseType: !512, size: 8, offset: 160)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1620, file: !1586, line: 125, baseType: !186, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1586, line: 241, baseType: !1647, size: 320)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !1586, line: 241, size: 320, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1653}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1647, file: !1586, line: 242, baseType: !190, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1647, file: !1586, line: 243, baseType: !190, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1647, file: !1586, line: 244, baseType: !1636, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1647, file: !1586, line: 245, baseType: !1639, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1647, file: !1586, line: 246, baseType: !306, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 254, baseType: !1655, size: 256, offset: 1344)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 254, size: 256, elements: !1656)
!1656 = !{!1657, !1663}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1655, file: !1586, line: 255, baseType: !1658, size: 256)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1586, line: 128, size: 256, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1658, file: !1586, line: 129, baseType: !149, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1658, file: !1586, line: 130, baseType: !1662, size: 256)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !195)
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1586, line: 256, baseType: !1664, size: 256)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1655, file: !1586, line: 256, size: 256, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1664, file: !1586, line: 258, baseType: !154, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1664, file: !1586, line: 259, baseType: !1668, size: 128, offset: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1669, line: 22, size: 128, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1670 = !{!1671, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1668, file: !1669, line: 23, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1669, line: 23, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1668, file: !1669, line: 24, baseType: !190, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1585, file: !1586, line: 274, baseType: !1676, size: 64, offset: 1600)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1586, line: 170, size: 192, elements: !1678)
!1678 = !{!1679, !1688, !1689}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1677, file: !1586, line: 171, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1586, line: 165, baseType: !1681)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!207, !1584, !1684, !1686, !1584}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1677, file: !1586, line: 172, baseType: !1584, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1677, file: !1586, line: 173, baseType: !1636, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1556, file: !1557, line: 138, baseType: !1584, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1556, file: !1557, line: 139, baseType: !1584, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1556, file: !1557, line: 140, baseType: !1584, size: 64, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1556, file: !1557, line: 145, baseType: !1694, size: 64, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1696, line: 13, size: 896, elements: !1697)
!1696 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1695, file: !1696, line: 14, baseType: !1238, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1695, file: !1696, line: 15, baseType: !773, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1695, file: !1696, line: 16, baseType: !773, size: 32, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1695, file: !1696, line: 21, baseType: !797, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1695, file: !1696, line: 27, baseType: !190, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1695, file: !1696, line: 28, baseType: !190, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1695, file: !1696, line: 29, baseType: !797, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1695, file: !1696, line: 32, baseType: !664, size: 128, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1695, file: !1696, line: 33, baseType: !457, size: 32, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1695, file: !1696, line: 37, baseType: !797, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1695, file: !1696, line: 44, baseType: !1709, size: 256, offset: 640)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1710, line: 15, size: 256, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1709, file: !1710, line: 16, baseType: !806)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1709, file: !1710, line: 18, baseType: !207, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1709, file: !1710, line: 19, baseType: !207, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1709, file: !1710, line: 20, baseType: !207, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1709, file: !1710, line: 21, baseType: !207, size: 32, offset: 96)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1709, file: !1710, line: 22, baseType: !190, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !1710, line: 23, baseType: !190, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1556, file: !1557, line: 146, baseType: !1720, size: 64, offset: 1024)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !748, line: 516, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1556, file: !1557, line: 147, baseType: !1723, size: 64, offset: 1088)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1557, line: 25, size: 64, elements: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1724, file: !1557, line: 26, baseType: !773, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1724, file: !1557, line: 27, baseType: !207, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1724, file: !1557, line: 28, baseType: !1729, offset: 64)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, elements: !1730)
!1730 = !{!1731}
!1731 = !DISubrange(count: 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !1557, line: 149, baseType: !1733, size: 128, offset: 1152)
!1733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !1557, line: 149, size: 128, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1733, file: !1557, line: 150, baseType: !207, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1733, file: !1557, line: 151, baseType: !395, size: 128, align: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1225, file: !1226, line: 926, baseType: !1554, size: 64, offset: 8576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1225, file: !1226, line: 929, baseType: !1554, size: 64, offset: 8640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1225, file: !1226, line: 933, baseType: !1584, size: 64, offset: 8704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1225, file: !1226, line: 943, baseType: !1741, size: 128, offset: 8768)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 16)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1225, file: !1226, line: 945, baseType: !1745, size: 64, offset: 8896)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1226, line: 49, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1225, file: !1226, line: 956, baseType: !1748, size: 64, offset: 8960)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1226, line: 45, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1225, file: !1226, line: 959, baseType: !1751, size: 64, offset: 9024)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1226, line: 959, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1225, file: !1226, line: 962, baseType: !1754, size: 64, offset: 9088)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1226, line: 66, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1225, file: !1226, line: 966, baseType: !1757, size: 64, offset: 9152)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1226, line: 50, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1225, file: !1226, line: 969, baseType: !1760, size: 64, offset: 9216)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1762, line: 82, size: 7296, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1799, !1808, !1809, !1811, !1812, !1813, !1816, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1846, !1847, !1854, !1855, !1856, !1857, !1858, !1859}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1761, file: !1762, line: 83, baseType: !1238, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1761, file: !1762, line: 84, baseType: !773, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1761, file: !1762, line: 85, baseType: !207, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1761, file: !1762, line: 86, baseType: !154, size: 128, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1761, file: !1762, line: 88, baseType: !1488, size: 128, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1761, file: !1762, line: 91, baseType: !1224, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1761, file: !1762, line: 94, baseType: !1771, size: 192, offset: 448)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1772, line: 30, size: 192, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1771, file: !1772, line: 31, baseType: !154, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1771, file: !1772, line: 32, baseType: !1776, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1777, line: 25, baseType: !1778)
!1777 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1777, line: 23, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1778, file: !1777, line: 24, baseType: !1378, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1761, file: !1762, line: 97, baseType: !660, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1761, file: !1762, line: 100, baseType: !207, size: 32, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1761, file: !1762, line: 106, baseType: !207, size: 32, offset: 736)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1761, file: !1762, line: 107, baseType: !1224, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1761, file: !1762, line: 110, baseType: !207, size: 32, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 111, baseType: !7, size: 32, offset: 864)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1761, file: !1762, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1761, file: !1762, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1761, file: !1762, line: 128, baseType: !207, size: 32, offset: 928)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1761, file: !1762, line: 129, baseType: !154, size: 128, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1761, file: !1762, line: 132, baseType: !1300, size: 512, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1761, file: !1762, line: 133, baseType: !1308, size: 64, offset: 1600)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1761, file: !1762, line: 140, baseType: !1794, size: 256, offset: 1664)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, size: 256, elements: !1576)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1762, line: 38, size: 128, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1795, file: !1762, line: 39, baseType: !179, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1795, file: !1762, line: 40, baseType: !179, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1761, file: !1762, line: 146, baseType: !1800, size: 192, offset: 1920)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1762, line: 66, size: 192, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1800, file: !1762, line: 67, baseType: !1803, size: 192)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1762, line: 47, size: 192, elements: !1804)
!1804 = !{!1805, !1806, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1803, file: !1762, line: 48, baseType: !799, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1803, file: !1762, line: 49, baseType: !799, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1803, file: !1762, line: 50, baseType: !799, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1761, file: !1762, line: 150, baseType: !1537, size: 640, offset: 2112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1761, file: !1762, line: 153, baseType: !1810, size: 256, offset: 2752)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1478, size: 256, elements: !195)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1761, file: !1762, line: 159, baseType: !1478, size: 64, offset: 3008)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1761, file: !1762, line: 162, baseType: !207, size: 32, offset: 3072)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1761, file: !1762, line: 164, baseType: !1814, size: 64, offset: 3136)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1762, line: 164, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1761, file: !1762, line: 175, baseType: !1817, size: 32, offset: 3200)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !418, line: 805, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 798, size: 32, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1818, file: !418, line: 803, baseType: !417, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1818, file: !418, line: 804, baseType: !265, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1761, file: !1762, line: 176, baseType: !179, size: 64, offset: 3264)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1761, file: !1762, line: 176, baseType: !179, size: 64, offset: 3328)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1761, file: !1762, line: 176, baseType: !179, size: 64, offset: 3392)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1761, file: !1762, line: 176, baseType: !179, size: 64, offset: 3456)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1761, file: !1762, line: 177, baseType: !179, size: 64, offset: 3520)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1761, file: !1762, line: 178, baseType: !179, size: 64, offset: 3584)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1761, file: !1762, line: 179, baseType: !1525, size: 128, offset: 3648)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1761, file: !1762, line: 180, baseType: !190, size: 64, offset: 3776)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1761, file: !1762, line: 180, baseType: !190, size: 64, offset: 3840)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1761, file: !1762, line: 180, baseType: !190, size: 64, offset: 3904)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1761, file: !1762, line: 180, baseType: !190, size: 64, offset: 3968)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1761, file: !1762, line: 181, baseType: !190, size: 64, offset: 4032)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1761, file: !1762, line: 181, baseType: !190, size: 64, offset: 4096)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1761, file: !1762, line: 181, baseType: !190, size: 64, offset: 4160)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1761, file: !1762, line: 181, baseType: !190, size: 64, offset: 4224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1761, file: !1762, line: 182, baseType: !190, size: 64, offset: 4288)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1761, file: !1762, line: 182, baseType: !190, size: 64, offset: 4352)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1761, file: !1762, line: 182, baseType: !190, size: 64, offset: 4416)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1761, file: !1762, line: 182, baseType: !190, size: 64, offset: 4480)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1761, file: !1762, line: 183, baseType: !190, size: 64, offset: 4544)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1761, file: !1762, line: 183, baseType: !190, size: 64, offset: 4608)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1761, file: !1762, line: 184, baseType: !1844, offset: 4672)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1845, line: 12, elements: !279)
!1845 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1761, file: !1762, line: 192, baseType: !183, size: 64, offset: 4672)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1761, file: !1762, line: 203, baseType: !1848, size: 2048, offset: 4736)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, size: 2048, elements: !1742)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1850, line: 43, size: 128, elements: !1851)
!1850 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1849, file: !1850, line: 44, baseType: !354, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1849, file: !1850, line: 45, baseType: !354, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1761, file: !1762, line: 220, baseType: !512, size: 8, offset: 6784)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1761, file: !1762, line: 221, baseType: !1213, size: 16, offset: 6800)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1761, file: !1762, line: 222, baseType: !1213, size: 16, offset: 6816)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1761, file: !1762, line: 224, baseType: !1000, size: 64, offset: 6848)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1761, file: !1762, line: 227, baseType: !1197, size: 192, offset: 6912)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1761, file: !1762, line: 233, baseType: !1197, size: 192, offset: 7104)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1225, file: !1226, line: 970, baseType: !1861, size: 64, offset: 9280)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1762, line: 20, size: 16576, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1862, file: !1762, line: 21, baseType: !265)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1862, file: !1762, line: 22, baseType: !1238, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1862, file: !1762, line: 23, baseType: !1488, size: 128, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1862, file: !1762, line: 24, baseType: !1868, size: 16384, offset: 192)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, size: 16384, elements: !311)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1772, line: 49, size: 256, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1869, file: !1772, line: 50, baseType: !1872, size: 256)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1772, line: 35, size: 256, elements: !1873)
!1873 = !{!1874, !1881, !1882, !1888}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1872, file: !1772, line: 37, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1876, line: 19, baseType: !1877)
!1876 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1876, line: 18, baseType: !1879)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !207}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1872, file: !1772, line: 38, baseType: !190, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1872, file: !1772, line: 44, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1876, line: 22, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1876, line: 21, baseType: !1886)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1872, file: !1772, line: 46, baseType: !1776, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1225, file: !1226, line: 971, baseType: !1776, size: 64, offset: 9344)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1225, file: !1226, line: 972, baseType: !1776, size: 64, offset: 9408)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1225, file: !1226, line: 974, baseType: !1776, size: 64, offset: 9472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1225, file: !1226, line: 975, baseType: !1771, size: 192, offset: 9536)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1225, file: !1226, line: 976, baseType: !190, size: 64, offset: 9728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1225, file: !1226, line: 977, baseType: !352, size: 64, offset: 9792)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1225, file: !1226, line: 978, baseType: !7, size: 32, offset: 9856)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1225, file: !1226, line: 980, baseType: !398, size: 64, offset: 9920)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1225, file: !1226, line: 989, baseType: !1898, size: 128, offset: 9984)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1899, line: 35, size: 128, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1898, file: !1899, line: 36, baseType: !207, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1898, file: !1899, line: 37, baseType: !773, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1898, file: !1899, line: 38, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1899, line: 23, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1225, file: !1226, line: 992, baseType: !179, size: 64, offset: 10112)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1225, file: !1226, line: 993, baseType: !179, size: 64, offset: 10176)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1225, file: !1226, line: 996, baseType: !265, offset: 10240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1225, file: !1226, line: 999, baseType: !806, offset: 10240)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1225, file: !1226, line: 1001, baseType: !1911, size: 64, offset: 10240)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1226, line: 636, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1911, file: !1226, line: 637, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1225, file: !1226, line: 1005, baseType: !778, size: 128, offset: 10304)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1225, file: !1226, line: 1007, baseType: !1224, size: 64, offset: 10432)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1225, file: !1226, line: 1009, baseType: !1918, size: 64, offset: 10496)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1226, line: 1009, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1225, file: !1226, line: 1043, baseType: !149, size: 64, offset: 10560)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1225, file: !1226, line: 1046, baseType: !1922, size: 64, offset: 10624)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1226, line: 41, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1225, file: !1226, line: 1050, baseType: !1925, size: 64, offset: 10688)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1226, line: 42, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1225, file: !1226, line: 1054, baseType: !1928, size: 64, offset: 10752)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1226, line: 55, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1225, file: !1226, line: 1056, baseType: !1931, size: 64, offset: 10816)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1226, line: 40, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1225, file: !1226, line: 1058, baseType: !1934, size: 64, offset: 10880)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1936, line: 99, size: 704, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1963, !1964}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1935, file: !1936, line: 100, baseType: !797, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1935, file: !1936, line: 101, baseType: !773, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1935, file: !1936, line: 102, baseType: !773, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !1936, line: 105, baseType: !265, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1935, file: !1936, line: 107, baseType: !245, size: 16, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1935, file: !1936, line: 109, baseType: !764, size: 128, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1935, file: !1936, line: 110, baseType: !1945, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1936, line: 73, size: 448, elements: !1947)
!1947 = !{!1948, !1951, !1952, !1957, !1962}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1946, file: !1936, line: 74, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1936, line: 74, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1946, file: !1936, line: 75, baseType: !1934, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1936, line: 83, baseType: !1953, size: 128, offset: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !1936, line: 83, size: 128, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1953, file: !1936, line: 84, baseType: !154, size: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1953, file: !1936, line: 85, baseType: !961, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1936, line: 87, baseType: !1958, size: 128, offset: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !1936, line: 87, size: 128, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1958, file: !1936, line: 88, baseType: !664, size: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1958, file: !1936, line: 89, baseType: !395, size: 128, align: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !1936, line: 92, baseType: !7, size: 32, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1935, file: !1936, line: 111, baseType: !660, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1935, file: !1936, line: 113, baseType: !1965, size: 256, offset: 448)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1966, line: 102, size: 256, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1965, file: !1966, line: 103, baseType: !797, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1965, file: !1966, line: 104, baseType: !154, size: 128, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1965, file: !1966, line: 105, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1966, line: 21, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1225, file: !1226, line: 1061, baseType: !1977, size: 64, offset: 10944)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1226, line: 43, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1225, file: !1226, line: 1064, baseType: !190, size: 64, offset: 11008)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1225, file: !1226, line: 1065, baseType: !1981, size: 64, offset: 11072)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1772, line: 14, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1772, line: 12, size: 384, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1772, line: 13, baseType: !1986, size: 384)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1772, line: 13, size: 384, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1986, file: !1772, line: 13, baseType: !207, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1986, file: !1772, line: 13, baseType: !207, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1986, file: !1772, line: 13, baseType: !207, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1986, file: !1772, line: 13, baseType: !1992, size: 256, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1993, line: 32, size: 256, elements: !1994)
!1993 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !2000, !2013, !2019, !2028, !2048, !2053}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1992, file: !1993, line: 37, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 34, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1996, file: !1993, line: 35, baseType: !1467, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1996, file: !1993, line: 36, baseType: !463, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1992, file: !1993, line: 45, baseType: !2001, size: 192)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 40, size: 192, elements: !2002)
!2002 = !{!2003, !2005, !2006, !2012}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2001, file: !1993, line: 41, baseType: !2004, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !339, line: 95, baseType: !207)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2001, file: !1993, line: 42, baseType: !207, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2001, file: !1993, line: 43, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1993, line: 11, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1993, line: 8, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2008, file: !1993, line: 9, baseType: !207, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2008, file: !1993, line: 10, baseType: !149, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2001, file: !1993, line: 44, baseType: !207, size: 32, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1992, file: !1993, line: 52, baseType: !2014, size: 128)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 48, size: 128, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2014, file: !1993, line: 49, baseType: !1467, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2014, file: !1993, line: 50, baseType: !463, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2014, file: !1993, line: 51, baseType: !2007, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1992, file: !1993, line: 61, baseType: !2020, size: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 55, size: 256, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !1993, line: 56, baseType: !1467, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !1993, line: 57, baseType: !463, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2020, file: !1993, line: 58, baseType: !207, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2020, file: !1993, line: 59, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !339, line: 94, baseType: !340)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2020, file: !1993, line: 60, baseType: !2026, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1992, file: !1993, line: 95, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 64, size: 256, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2029, file: !1993, line: 65, baseType: !149, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !1993, line: 77, baseType: !2033, size: 192, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !1993, line: 77, size: 192, elements: !2034)
!2034 = !{!2035, !2036, !2043}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2033, file: !1993, line: 82, baseType: !1213, size: 16)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2033, file: !1993, line: 88, baseType: !2037, size: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 84, size: 192, elements: !2038)
!2038 = !{!2039, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2037, file: !1993, line: 85, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !1338)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2037, file: !1993, line: 86, baseType: !149, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2037, file: !1993, line: 87, baseType: !149, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2033, file: !1993, line: 93, baseType: !2044, size: 96)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 90, size: 96, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2044, file: !1993, line: 91, baseType: !2040, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2044, file: !1993, line: 92, baseType: !222, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1992, file: !1993, line: 101, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 98, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2049, file: !1993, line: 99, baseType: !341, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2049, file: !1993, line: 100, baseType: !207, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1992, file: !1993, line: 108, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 104, size: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2054, file: !1993, line: 105, baseType: !149, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2054, file: !1993, line: 106, baseType: !207, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2054, file: !1993, line: 107, baseType: !7, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1225, file: !1226, line: 1067, baseType: !1844, offset: 11136)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1225, file: !1226, line: 1099, baseType: !2061, size: 64, offset: 11136)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1226, line: 56, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1225, file: !1226, line: 1103, baseType: !154, size: 128, offset: 11200)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1225, file: !1226, line: 1104, baseType: !2065, size: 64, offset: 11328)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1226, line: 46, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1225, file: !1226, line: 1105, baseType: !1197, size: 192, offset: 11392)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1225, file: !1226, line: 1106, baseType: !7, size: 32, offset: 11584)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1225, file: !1226, line: 1109, baseType: !2070, size: 128, offset: 11648)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 128, elements: !1576)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1226, line: 51, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1225, file: !1226, line: 1110, baseType: !1197, size: 192, offset: 11776)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1225, file: !1226, line: 1111, baseType: !154, size: 128, offset: 11968)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1225, file: !1226, line: 1173, baseType: !2076, size: 64, offset: 12096)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2078, line: 62, size: 256, align: 256, elements: !2079)
!2078 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2087}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2077, file: !2078, line: 75, baseType: !222, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2077, file: !2078, line: 90, baseType: !222, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2077, file: !2078, line: 124, baseType: !2083, size: 64, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2077, file: !2078, line: 109, size: 64, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2083, file: !2078, line: 110, baseType: !181, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2083, file: !2078, line: 112, baseType: !181, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2078, line: 144, baseType: !222, size: 32, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1225, file: !1226, line: 1174, baseType: !221, size: 32, offset: 12160)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1225, file: !1226, line: 1179, baseType: !190, size: 64, offset: 12224)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1225, file: !1226, line: 1182, baseType: !2091, size: 128, offset: 12288)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1177, line: 76, size: 128, elements: !2092)
!2092 = !{!2093, !2098, !2099}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2091, file: !1177, line: 85, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2095, line: 7, size: 64, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !{!2097}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2094, file: !2095, line: 12, baseType: !1375, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2091, file: !1177, line: 88, baseType: !512, size: 8, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2091, file: !1177, line: 95, baseType: !512, size: 8, offset: 72)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !1226, line: 1184, baseType: !2101, size: 128, offset: 12416)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !1226, line: 1184, size: 128, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2101, file: !1226, line: 1185, baseType: !1238, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2101, file: !1226, line: 1186, baseType: !395, size: 128, align: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1225, file: !1226, line: 1190, baseType: !2106, size: 64, offset: 12544)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1226, line: 53, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1225, file: !1226, line: 1192, baseType: !2109, size: 128, offset: 12608)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1177, line: 64, size: 128, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2109, file: !1177, line: 65, baseType: !746, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2109, file: !1177, line: 67, baseType: !222, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2109, file: !1177, line: 68, baseType: !222, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1225, file: !1226, line: 1206, baseType: !207, size: 32, offset: 12736)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1225, file: !1226, line: 1207, baseType: !207, size: 32, offset: 12768)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1225, file: !1226, line: 1209, baseType: !190, size: 64, offset: 12800)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1225, file: !1226, line: 1219, baseType: !179, size: 64, offset: 12864)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1225, file: !1226, line: 1220, baseType: !179, size: 64, offset: 12928)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1225, file: !1226, line: 1317, baseType: !207, size: 32, offset: 12992)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1225, file: !1226, line: 1319, baseType: !1224, size: 64, offset: 13056)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1225, file: !1226, line: 1322, baseType: !2122, size: 64, offset: 13120)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2124, line: 56, size: 512, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2123, file: !2124, line: 57, baseType: !2122, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2123, file: !2124, line: 58, baseType: !149, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2123, file: !2124, line: 59, baseType: !190, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2124, line: 60, baseType: !190, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2123, file: !2124, line: 61, baseType: !846, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2123, file: !2124, line: 62, baseType: !7, size: 32, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2123, file: !2124, line: 63, baseType: !178, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2123, file: !2124, line: 64, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1225, file: !1226, line: 1326, baseType: !1238, size: 32, offset: 13184)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1225, file: !1226, line: 1342, baseType: !149, size: 64, offset: 13248)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1225, file: !1226, line: 1343, baseType: !181, size: 64, offset: 13312)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1225, file: !1226, line: 1344, baseType: !179, size: 64, offset: 13376)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1225, file: !1226, line: 1345, baseType: !181, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1225, file: !1226, line: 1346, baseType: !181, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1225, file: !1226, line: 1347, baseType: !181, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1225, file: !1226, line: 1348, baseType: !395, size: 128, align: 64, offset: 13504)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1225, file: !1226, line: 1358, baseType: !2145, size: 34816, offset: 13824)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2146, line: 485, size: 34816, elements: !2147)
!2146 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2177, !2178, !2179, !2180, !2181, !2182, !2185, !2186, !2187}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2145, file: !2146, line: 487, baseType: !2149, size: 192)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2150, size: 192, elements: !307)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2151, line: 16, size: 64, elements: !2152)
!2151 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2150, file: !2151, line: 17, baseType: !885, size: 16)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2150, file: !2151, line: 18, baseType: !885, size: 16, offset: 16)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2150, file: !2151, line: 19, baseType: !885, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2150, file: !2151, line: 19, baseType: !885, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2150, file: !2151, line: 19, baseType: !885, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2150, file: !2151, line: 19, baseType: !885, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2150, file: !2151, line: 19, baseType: !885, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2150, file: !2151, line: 20, baseType: !885, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2150, file: !2151, line: 20, baseType: !885, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2150, file: !2151, line: 20, baseType: !885, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2150, file: !2151, line: 20, baseType: !885, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2150, file: !2151, line: 20, baseType: !885, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2150, file: !2151, line: 20, baseType: !885, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2145, file: !2146, line: 491, baseType: !190, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2145, file: !2146, line: 495, baseType: !245, size: 16, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2145, file: !2146, line: 496, baseType: !245, size: 16, offset: 272)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2145, file: !2146, line: 497, baseType: !245, size: 16, offset: 288)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2145, file: !2146, line: 498, baseType: !245, size: 16, offset: 304)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2145, file: !2146, line: 502, baseType: !190, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2145, file: !2146, line: 503, baseType: !190, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2145, file: !2146, line: 514, baseType: !2174, size: 256, offset: 448)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 256, elements: !195)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2146, line: 483, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2145, file: !2146, line: 516, baseType: !190, size: 64, offset: 704)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2145, file: !2146, line: 518, baseType: !190, size: 64, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2145, file: !2146, line: 520, baseType: !190, size: 64, offset: 832)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2145, file: !2146, line: 521, baseType: !190, size: 64, offset: 896)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2145, file: !2146, line: 522, baseType: !190, size: 64, offset: 960)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2145, file: !2146, line: 528, baseType: !2183, size: 64, offset: 1024)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2146, line: 10, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2145, file: !2146, line: 535, baseType: !190, size: 64, offset: 1088)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2145, file: !2146, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2145, file: !2146, line: 540, baseType: !2188, size: 33280, offset: 1536)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2189, line: 317, size: 33280, elements: !2190)
!2189 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2188, file: !2189, line: 330, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2188, file: !2189, line: 337, baseType: !190, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2188, file: !2189, line: 348, baseType: !2194, size: 32768, offset: 512)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2189, line: 304, size: 32768, elements: !2195)
!2195 = !{!2196, !2211, !2250, !2300, !2313}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2194, file: !2189, line: 305, baseType: !2197, size: 896)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2189, line: 12, size: 896, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2210}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2197, file: !2189, line: 13, baseType: !221, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2197, file: !2189, line: 14, baseType: !221, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2197, file: !2189, line: 15, baseType: !221, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2197, file: !2189, line: 16, baseType: !221, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2197, file: !2189, line: 17, baseType: !221, size: 32, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2197, file: !2189, line: 18, baseType: !221, size: 32, offset: 160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2197, file: !2189, line: 19, baseType: !221, size: 32, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2197, file: !2189, line: 22, baseType: !2207, size: 640, offset: 224)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 640, elements: !2208)
!2208 = !{!2209}
!2209 = !DISubrange(count: 20)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2197, file: !2189, line: 25, baseType: !221, size: 32, offset: 864)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2194, file: !2189, line: 306, baseType: !2212, size: 4096, align: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2189, line: 34, size: 4096, align: 128, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2233, !2234, !2235, !2239, !2241, !2245}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2212, file: !2189, line: 35, baseType: !885, size: 16)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2212, file: !2189, line: 36, baseType: !885, size: 16, offset: 16)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2212, file: !2189, line: 37, baseType: !885, size: 16, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2212, file: !2189, line: 38, baseType: !885, size: 16, offset: 48)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2189, line: 39, baseType: !2219, size: 128, offset: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !2189, line: 39, size: 128, elements: !2220)
!2220 = !{!2221, !2226}
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2189, line: 40, baseType: !2222, size: 128)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2189, line: 40, size: 128, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2222, file: !2189, line: 41, baseType: !179, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2222, file: !2189, line: 42, baseType: !179, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2189, line: 44, baseType: !2227, size: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2189, line: 44, size: 128, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2227, file: !2189, line: 45, baseType: !221, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2227, file: !2189, line: 46, baseType: !221, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2227, file: !2189, line: 47, baseType: !221, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2227, file: !2189, line: 48, baseType: !221, size: 32, offset: 96)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2212, file: !2189, line: 51, baseType: !221, size: 32, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2212, file: !2189, line: 52, baseType: !221, size: 32, offset: 224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2212, file: !2189, line: 55, baseType: !2236, size: 1024, offset: 256)
!2236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1024, elements: !2237)
!2237 = !{!2238}
!2238 = !DISubrange(count: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2212, file: !2189, line: 58, baseType: !2240, size: 2048, offset: 1280)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 2048, elements: !311)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2212, file: !2189, line: 60, baseType: !2242, size: 384, offset: 3328)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 384, elements: !2243)
!2243 = !{!2244}
!2244 = !DISubrange(count: 12)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2189, line: 62, baseType: !2246, size: 384, offset: 3712)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !2189, line: 62, size: 384, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2246, file: !2189, line: 63, baseType: !2242, size: 384)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2246, file: !2189, line: 64, baseType: !2242, size: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2194, file: !2189, line: 307, baseType: !2251, size: 1088)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2189, line: 79, size: 1088, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2299}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2251, file: !2189, line: 80, baseType: !221, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2251, file: !2189, line: 81, baseType: !221, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2251, file: !2189, line: 82, baseType: !221, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2251, file: !2189, line: 83, baseType: !221, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2251, file: !2189, line: 84, baseType: !221, size: 32, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2251, file: !2189, line: 85, baseType: !221, size: 32, offset: 160)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2251, file: !2189, line: 86, baseType: !221, size: 32, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2251, file: !2189, line: 88, baseType: !2207, size: 640, offset: 224)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2251, file: !2189, line: 89, baseType: !1360, size: 8, offset: 864)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2251, file: !2189, line: 90, baseType: !1360, size: 8, offset: 872)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2251, file: !2189, line: 91, baseType: !1360, size: 8, offset: 880)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2251, file: !2189, line: 92, baseType: !1360, size: 8, offset: 888)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2251, file: !2189, line: 93, baseType: !1360, size: 8, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2251, file: !2189, line: 94, baseType: !1360, size: 8, offset: 904)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2251, file: !2189, line: 95, baseType: !2268, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2270, line: 11, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2269, file: !2270, line: 12, baseType: !341, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2269, file: !2270, line: 13, baseType: !2274, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2276, line: 56, size: 1344, elements: !2277)
!2276 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2275, file: !2276, line: 61, baseType: !190, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2275, file: !2276, line: 62, baseType: !190, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2275, file: !2276, line: 63, baseType: !190, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2275, file: !2276, line: 64, baseType: !190, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2275, file: !2276, line: 65, baseType: !190, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2275, file: !2276, line: 66, baseType: !190, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2275, file: !2276, line: 68, baseType: !190, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2275, file: !2276, line: 69, baseType: !190, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2275, file: !2276, line: 70, baseType: !190, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2275, file: !2276, line: 71, baseType: !190, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2275, file: !2276, line: 72, baseType: !190, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2275, file: !2276, line: 73, baseType: !190, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2275, file: !2276, line: 74, baseType: !190, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2275, file: !2276, line: 75, baseType: !190, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2275, file: !2276, line: 76, baseType: !190, size: 64, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2275, file: !2276, line: 81, baseType: !190, size: 64, offset: 960)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2275, file: !2276, line: 83, baseType: !190, size: 64, offset: 1024)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2275, file: !2276, line: 84, baseType: !190, size: 64, offset: 1088)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !2276, line: 85, baseType: !190, size: 64, offset: 1152)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2275, file: !2276, line: 86, baseType: !190, size: 64, offset: 1216)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2275, file: !2276, line: 87, baseType: !190, size: 64, offset: 1280)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2251, file: !2189, line: 96, baseType: !221, size: 32, offset: 1024)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2194, file: !2189, line: 308, baseType: !2301, size: 4608, align: 512)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2189, line: 289, size: 4608, align: 512, elements: !2302)
!2302 = !{!2303, !2304, !2311}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2301, file: !2189, line: 290, baseType: !2212, size: 4096, align: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2301, file: !2189, line: 291, baseType: !2305, size: 512, offset: 4096)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2189, line: 268, size: 512, elements: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2305, file: !2189, line: 269, baseType: !179, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2305, file: !2189, line: 270, baseType: !179, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2305, file: !2189, line: 271, baseType: !2310, size: 384, offset: 128)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 384, elements: !1632)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2301, file: !2189, line: 292, baseType: !2312, offset: 4608)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, elements: !1730)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2194, file: !2189, line: 309, baseType: !2314, size: 32768)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 32768, elements: !2315)
!2315 = !{!2316}
!2316 = !DISubrange(count: 4096)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1221, file: !748, line: 378, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1217, file: !748, line: 384, baseType: !1509, size: 192, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1004, file: !748, line: 500, baseType: !265, offset: 6656)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1004, file: !748, line: 501, baseType: !2322, size: 64, offset: 6656)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !748, line: 387, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1004, file: !748, line: 516, baseType: !1720, size: 64, offset: 6720)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1004, file: !748, line: 519, baseType: !382, size: 64, offset: 6784)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1004, file: !748, line: 521, baseType: !2327, size: 64, offset: 6848)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !748, line: 521, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1004, file: !748, line: 545, baseType: !773, size: 32, offset: 6912)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1004, file: !748, line: 548, baseType: !512, size: 8, offset: 6944)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1004, file: !748, line: 550, baseType: !2332, offset: 6952)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2333, line: 142, elements: !279)
!2333 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1004, file: !748, line: 554, baseType: !1965, size: 256, offset: 6976)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1004, file: !748, line: 557, baseType: !221, size: 32, offset: 7232)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1001, file: !748, line: 565, baseType: !2337, offset: 7296)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !2338)
!2338 = !{!2339}
!2339 = !DISubrange(count: -1)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !997, file: !748, line: 151, baseType: !773, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !990, file: !748, line: 156, baseType: !265, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !748, line: 159, baseType: !2343, size: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !748, line: 159, size: 128, elements: !2344)
!2344 = !{!2345, !2409}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2343, file: !748, line: 161, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2348)
!2348 = !{!2349, !2359, !2380, !2381, !2382, !2383, !2384, !2396, !2397, !2398}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2347, file: !31, line: 111, baseType: !2350, size: 384)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2351)
!2351 = !{!2352, !2354, !2355, !2356, !2357, !2358}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2350, file: !31, line: 20, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2350, file: !31, line: 21, baseType: !2353, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2350, file: !31, line: 22, baseType: !2353, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2350, file: !31, line: 23, baseType: !190, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2350, file: !31, line: 24, baseType: !190, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2350, file: !31, line: 25, baseType: !190, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2347, file: !31, line: 112, baseType: !2360, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2362, line: 105, size: 128, elements: !2363)
!2362 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2361, file: !2362, line: 110, baseType: !190, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2361, file: !2362, line: 118, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2362, line: 95, size: 448, elements: !2368)
!2368 = !{!2369, !2370, !2375, !2376, !2377, !2378, !2379}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2367, file: !2362, line: 96, baseType: !797, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2367, file: !2362, line: 97, baseType: !2371, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2362, line: 60, baseType: !2373)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2360}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2367, file: !2362, line: 98, baseType: !2371, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2367, file: !2362, line: 99, baseType: !512, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2367, file: !2362, line: 100, baseType: !512, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2367, file: !2362, line: 101, baseType: !395, size: 128, align: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2367, file: !2362, line: 102, baseType: !2360, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2347, file: !31, line: 113, baseType: !2361, size: 128, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2347, file: !31, line: 114, baseType: !1509, size: 192, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2347, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2347, file: !31, line: 117, baseType: !2385, size: 64, offset: 832)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2388)
!2388 = !{!2389, !2390, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2387, file: !31, line: 73, baseType: !866, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2387, file: !31, line: 78, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2346}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2387, file: !31, line: 83, baseType: !2391, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2387, file: !31, line: 89, baseType: !1053, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2347, file: !31, line: 118, baseType: !149, size: 64, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2347, file: !31, line: 119, baseType: !207, size: 32, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !31, line: 120, baseType: !2399, size: 128, offset: 1024)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2347, file: !31, line: 120, size: 128, elements: !2400)
!2400 = !{!2401, !2407}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2399, file: !31, line: 121, baseType: !2402, size: 128)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2403, line: 6, size: 128, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2402, file: !2403, line: 7, baseType: !179, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2402, file: !2403, line: 8, baseType: !179, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2399, file: !31, line: 122, baseType: !2408)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2402, elements: !1730)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2343, file: !748, line: 162, baseType: !149, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !752, file: !748, line: 176, baseType: !395, size: 128, align: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !747, file: !748, line: 179, baseType: !2412, size: 32, offset: 384)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !747, file: !748, line: 179, size: 32, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2412, file: !748, line: 184, baseType: !773, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2412, file: !748, line: 192, baseType: !7, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2412, file: !748, line: 194, baseType: !7, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2412, file: !748, line: 195, baseType: !207, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !747, file: !748, line: 199, baseType: !773, size: 32, offset: 416)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !682, file: !44, line: 1964, baseType: !2420, size: 64, offset: 1344)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!341, !621, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2425, line: 12, size: 256, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !{!2427, !2428, !2429, !2430, !2431}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2424, file: !2425, line: 13, baseType: !769, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2424, file: !2425, line: 16, baseType: !207, size: 32, offset: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2424, file: !2425, line: 23, baseType: !190, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2424, file: !2425, line: 30, baseType: !190, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2424, file: !2425, line: 33, baseType: !2432, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !748, line: 27, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !682, file: !44, line: 1966, baseType: !2420, size: 64, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !622, file: !44, line: 1424, baseType: !2436, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2439)
!2439 = !{!2440, !2486, !2490, !2494, !2495, !2496, !2497, !2498, !2503, !2508, !2512}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2438, file: !38, line: 323, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!207, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2471, !2472, !2473}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2445, file: !38, line: 295, baseType: !664, size: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2445, file: !38, line: 296, baseType: !154, size: 128, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2445, file: !38, line: 297, baseType: !154, size: 128, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2445, file: !38, line: 298, baseType: !154, size: 128, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2445, file: !38, line: 299, baseType: !1197, size: 192, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2445, file: !38, line: 300, baseType: !265, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2445, file: !38, line: 301, baseType: !773, size: 32, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2445, file: !38, line: 302, baseType: !621, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2445, file: !38, line: 303, baseType: !2456, size: 64, offset: 832)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2457)
!2457 = !{!2458, !2470}
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !38, line: 69, baseType: !2459, size: 32)
!2459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !38, line: 69, size: 32, elements: !2460)
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2459, file: !38, line: 70, baseType: !457, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2459, file: !38, line: 71, baseType: !465, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2459, file: !38, line: 72, baseType: !2464, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2465, line: 24, baseType: !2466)
!2465 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2465, line: 22, size: 32, elements: !2467)
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2466, file: !2465, line: 23, baseType: !2469, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2465, line: 20, baseType: !463)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2456, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2445, file: !38, line: 304, baseType: !553, size: 64, offset: 896)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2445, file: !38, line: 305, baseType: !190, size: 64, offset: 960)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2445, file: !38, line: 306, baseType: !2474, size: 576, offset: 1024)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2475)
!2475 = !{!2476, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2474, file: !38, line: 206, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !555)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2474, file: !38, line: 207, baseType: !2477, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2474, file: !38, line: 208, baseType: !2477, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2474, file: !38, line: 209, baseType: !2477, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2474, file: !38, line: 210, baseType: !2477, size: 64, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2474, file: !38, line: 211, baseType: !2477, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2474, file: !38, line: 212, baseType: !2477, size: 64, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2474, file: !38, line: 213, baseType: !561, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2474, file: !38, line: 214, baseType: !561, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2438, file: !38, line: 324, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!2444, !621, !207}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2438, file: !38, line: 325, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2444}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2438, file: !38, line: 326, baseType: !2441, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2438, file: !38, line: 327, baseType: !2441, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2438, file: !38, line: 328, baseType: !2441, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2438, file: !38, line: 329, baseType: !710, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2438, file: !38, line: 332, baseType: !2499, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2502, !451}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2438, file: !38, line: 333, baseType: !2504, size: 64, offset: 512)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!207, !451, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2438, file: !38, line: 335, baseType: !2509, size: 64, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!207, !451, !2502}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2438, file: !38, line: 337, baseType: !2513, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!207, !621, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !622, file: !44, line: 1425, baseType: !2518, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2521)
!2521 = !{!2522, !2526, !2527, !2531, !2532, !2533, !2548, !2571, !2575, !2576, !2599}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2520, file: !38, line: 429, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!207, !621, !207, !207, !571}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2520, file: !38, line: 430, baseType: !710, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2520, file: !38, line: 431, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!207, !621, !7}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2520, file: !38, line: 432, baseType: !2528, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2520, file: !38, line: 433, baseType: !710, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2520, file: !38, line: 434, baseType: !2534, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!207, !621, !207, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2538, file: !38, line: 416, baseType: !207, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2538, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2538, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2538, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2538, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2538, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2538, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2538, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2520, file: !38, line: 435, baseType: !2549, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!207, !621, !2456, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2553, file: !38, line: 344, baseType: !207, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2553, file: !38, line: 345, baseType: !179, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2553, file: !38, line: 346, baseType: !179, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2553, file: !38, line: 347, baseType: !179, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2553, file: !38, line: 348, baseType: !179, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2553, file: !38, line: 349, baseType: !179, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2553, file: !38, line: 350, baseType: !179, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2553, file: !38, line: 351, baseType: !803, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2553, file: !38, line: 353, baseType: !803, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2553, file: !38, line: 354, baseType: !207, size: 32, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2553, file: !38, line: 355, baseType: !207, size: 32, offset: 608)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2553, file: !38, line: 356, baseType: !179, size: 64, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2553, file: !38, line: 357, baseType: !179, size: 64, offset: 704)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2553, file: !38, line: 358, baseType: !179, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2553, file: !38, line: 359, baseType: !803, size: 64, offset: 832)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2553, file: !38, line: 360, baseType: !207, size: 32, offset: 896)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2520, file: !38, line: 436, baseType: !2572, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!207, !621, !2516, !2552}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2520, file: !38, line: 438, baseType: !2549, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2520, file: !38, line: 439, baseType: !2577, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!207, !621, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2581, file: !38, line: 410, baseType: !7, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2581, file: !38, line: 411, baseType: !2585, size: 1344, offset: 64)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2586, size: 1344, elements: !307)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2598}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2586, file: !38, line: 396, baseType: !7, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2586, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2586, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2586, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2586, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2586, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2586, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2586, file: !38, line: 404, baseType: !183, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2586, file: !38, line: 405, baseType: !2597, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !155, line: 126, baseType: !179)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2586, file: !38, line: 406, baseType: !2597, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2520, file: !38, line: 440, baseType: !2528, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !622, file: !44, line: 1426, baseType: !2601, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !622, file: !44, line: 1427, baseType: !190, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !622, file: !44, line: 1428, baseType: !190, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !622, file: !44, line: 1429, baseType: !190, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !622, file: !44, line: 1430, baseType: !412, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !622, file: !44, line: 1431, baseType: !793, size: 256, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !622, file: !44, line: 1432, baseType: !207, size: 32, offset: 1152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !622, file: !44, line: 1433, baseType: !773, size: 32, offset: 1184)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !622, file: !44, line: 1437, baseType: !2612, size: 64, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2615)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !622, file: !44, line: 1449, baseType: !2617, size: 64, offset: 1280)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !428, line: 34, size: 64, elements: !2618)
!2618 = !{!2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2617, file: !428, line: 35, baseType: !431, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !622, file: !44, line: 1450, baseType: !154, size: 128, offset: 1344)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !622, file: !44, line: 1451, baseType: !2622, size: 64, offset: 1472)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !622, file: !44, line: 1452, baseType: !1931, size: 64, offset: 1536)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !622, file: !44, line: 1453, baseType: !2626, size: 64, offset: 1600)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !622, file: !44, line: 1454, baseType: !664, size: 128, offset: 1664)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !622, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !622, file: !44, line: 1456, baseType: !2631, size: 2432, offset: 1856)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2637, !2669}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2631, file: !38, line: 519, baseType: !7, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2631, file: !38, line: 520, baseType: !793, size: 256, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2631, file: !38, line: 521, baseType: !2636, size: 192, offset: 320)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 192, elements: !307)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2631, file: !38, line: 522, baseType: !2638, size: 1728, offset: 512)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2639, size: 1728, elements: !307)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2640)
!2640 = !{!2641, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2639, file: !38, line: 223, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2644)
!2644 = !{!2645, !2646, !2659, !2660}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2643, file: !38, line: 444, baseType: !207, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2643, file: !38, line: 445, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2649)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2650)
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2649, file: !38, line: 311, baseType: !710, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2649, file: !38, line: 312, baseType: !710, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2649, file: !38, line: 313, baseType: !710, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2649, file: !38, line: 314, baseType: !710, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2649, file: !38, line: 315, baseType: !2441, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2649, file: !38, line: 316, baseType: !2441, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2649, file: !38, line: 317, baseType: !2441, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2649, file: !38, line: 318, baseType: !2513, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2643, file: !38, line: 446, baseType: !655, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2643, file: !38, line: 447, baseType: !2642, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2639, file: !38, line: 224, baseType: !207, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2639, file: !38, line: 226, baseType: !154, size: 128, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2639, file: !38, line: 227, baseType: !190, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2639, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2639, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2639, file: !38, line: 230, baseType: !2477, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2639, file: !38, line: 231, baseType: !2477, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2639, file: !38, line: 232, baseType: !149, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2631, file: !38, line: 523, baseType: !2670, size: 192, offset: 2240)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2647, size: 192, elements: !307)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !622, file: !44, line: 1458, baseType: !2672, size: 2112, offset: 4288)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2673)
!2673 = !{!2674, !2675, !2676}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2672, file: !44, line: 1411, baseType: !207, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2672, file: !44, line: 1412, baseType: !1488, size: 128, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2672, file: !44, line: 1413, baseType: !2677, size: 1920, offset: 192)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 1920, elements: !307)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2679, line: 12, size: 640, elements: !2680)
!2679 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2680 = !{!2681, !2689, !2691, !2696, !2697}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2678, file: !2679, line: 13, baseType: !2682, size: 320)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2683, line: 17, size: 320, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2682, file: !2683, line: 18, baseType: !207, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2682, file: !2683, line: 19, baseType: !207, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2682, file: !2683, line: 20, baseType: !1488, size: 128, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2682, file: !2683, line: 22, baseType: !395, size: 128, align: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2678, file: !2679, line: 14, baseType: !2690, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2678, file: !2679, line: 15, baseType: !2692, size: 64, offset: 384)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2693, line: 16, size: 64, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2694 = !{!2695}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2692, file: !2693, line: 17, baseType: !1224, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2678, file: !2679, line: 16, baseType: !1488, size: 128, offset: 448)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2678, file: !2679, line: 17, baseType: !773, size: 32, offset: 576)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !622, file: !44, line: 1465, baseType: !149, size: 64, offset: 6400)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !622, file: !44, line: 1468, baseType: !221, size: 32, offset: 6464)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !622, file: !44, line: 1470, baseType: !561, size: 64, offset: 6528)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !622, file: !44, line: 1471, baseType: !561, size: 64, offset: 6592)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !622, file: !44, line: 1473, baseType: !222, size: 32, offset: 6656)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !622, file: !44, line: 1474, baseType: !2704, size: 64, offset: 6720)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !622, file: !44, line: 1477, baseType: !2707, size: 256, offset: 6784)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !2237)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !622, file: !44, line: 1478, baseType: !2709, size: 128, offset: 7040)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2710, line: 18, baseType: !2711)
!2710 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2710, line: 16, size: 128, elements: !2712)
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2711, file: !2710, line: 17, baseType: !2714, size: 128)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 128, elements: !1742)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !622, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !622, file: !44, line: 1481, baseType: !2717, size: 32, offset: 7200)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !155, line: 150, baseType: !7)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !622, file: !44, line: 1487, baseType: !1197, size: 192, offset: 7232)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !622, file: !44, line: 1493, baseType: !186, size: 64, offset: 7424)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !622, file: !44, line: 1495, baseType: !2721, size: 64, offset: 7488)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !410, line: 135, size: 1024, align: 512, elements: !2724)
!2724 = !{!2725, !2729, !2730, !2737, !2743, !2747, !2751, !2755, !2756, !2760, !2764, !2769, !2773}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2723, file: !410, line: 136, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!207, !412, !7}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2723, file: !410, line: 137, baseType: !2726, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2723, file: !410, line: 138, baseType: !2731, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!207, !2734, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2723, file: !410, line: 139, baseType: !2738, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!207, !2734, !7, !186, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2723, file: !410, line: 141, baseType: !2744, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!207, !2734}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2723, file: !410, line: 142, baseType: !2748, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!207, !412}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2723, file: !410, line: 143, baseType: !2752, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !412}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2723, file: !410, line: 144, baseType: !2752, size: 64, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2723, file: !410, line: 145, baseType: !2757, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !412, !451}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2723, file: !410, line: 146, baseType: !2761, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!306, !412, !306, !207}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2723, file: !410, line: 147, baseType: !2765, size: 64, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!408, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2723, file: !410, line: 148, baseType: !2770, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!207, !571, !512}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2723, file: !410, line: 149, baseType: !2774, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!412, !412, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !622, file: !44, line: 1500, baseType: !207, size: 32, offset: 7552)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !622, file: !44, line: 1502, baseType: !2781, size: 448, offset: 7616)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2425, line: 60, size: 448, elements: !2782)
!2782 = !{!2783, !2788, !2789, !2790, !2791, !2792, !2793}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2781, file: !2425, line: 61, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!190, !2787, !2423}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2781, file: !2425, line: 63, baseType: !2784, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2781, file: !2425, line: 66, baseType: !341, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2781, file: !2425, line: 67, baseType: !207, size: 32, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2781, file: !2425, line: 68, baseType: !7, size: 32, offset: 224)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2781, file: !2425, line: 71, baseType: !154, size: 128, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2781, file: !2425, line: 77, baseType: !2794, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !622, file: !44, line: 1505, baseType: !797, size: 64, offset: 8064)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !622, file: !44, line: 1508, baseType: !797, size: 64, offset: 8128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !622, file: !44, line: 1511, baseType: !207, size: 32, offset: 8192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !622, file: !44, line: 1514, baseType: !935, size: 32, offset: 8224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !622, file: !44, line: 1517, baseType: !2800, size: 64, offset: 8256)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1966, line: 18, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !622, file: !44, line: 1518, baseType: !660, size: 64, offset: 8320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !622, file: !44, line: 1525, baseType: !1720, size: 64, offset: 8384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !622, file: !44, line: 1532, baseType: !2805, size: 64, offset: 8448)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2806, line: 52, size: 64, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2805, file: !2806, line: 53, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2806, line: 40, size: 256, elements: !2811)
!2811 = !{!2812, !2813, !2818}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2810, file: !2806, line: 42, baseType: !265)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2810, file: !2806, line: 44, baseType: !2814, size: 192)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2806, line: 28, size: 192, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2814, file: !2806, line: 29, baseType: !154, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2814, file: !2806, line: 31, baseType: !341, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2810, file: !2806, line: 49, baseType: !341, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !622, file: !44, line: 1533, baseType: !2805, size: 64, offset: 8512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !622, file: !44, line: 1534, baseType: !395, size: 128, align: 64, offset: 8576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !622, file: !44, line: 1535, baseType: !1965, size: 256, offset: 8704)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !622, file: !44, line: 1537, baseType: !1197, size: 192, offset: 8960)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !622, file: !44, line: 1542, baseType: !207, size: 32, offset: 9152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !622, file: !44, line: 1545, baseType: !265, offset: 9184)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !622, file: !44, line: 1546, baseType: !154, size: 128, offset: 9216)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !622, file: !44, line: 1548, baseType: !265, offset: 9344)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !622, file: !44, line: 1549, baseType: !154, size: 128, offset: 9344)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !452, file: !44, line: 624, baseType: !759, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !452, file: !44, line: 631, baseType: !190, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 639, baseType: !2831, size: 32, offset: 384)
!2831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 639, size: 32, elements: !2832)
!2832 = !{!2833, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2831, file: !44, line: 640, baseType: !2834, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2831, file: !44, line: 641, baseType: !7, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !452, file: !44, line: 643, baseType: !535, size: 32, offset: 416)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !452, file: !44, line: 644, baseType: !553, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !452, file: !44, line: 645, baseType: !557, size: 128, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !452, file: !44, line: 646, baseType: !557, size: 128, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !452, file: !44, line: 647, baseType: !557, size: 128, offset: 768)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !452, file: !44, line: 648, baseType: !265, offset: 896)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !452, file: !44, line: 649, baseType: !245, size: 16, offset: 896)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !452, file: !44, line: 650, baseType: !1360, size: 8, offset: 912)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !452, file: !44, line: 651, baseType: !1360, size: 8, offset: 920)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !452, file: !44, line: 652, baseType: !2597, size: 64, offset: 960)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !452, file: !44, line: 659, baseType: !190, size: 64, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !452, file: !44, line: 660, baseType: !793, size: 256, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !452, file: !44, line: 662, baseType: !190, size: 64, offset: 1344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !452, file: !44, line: 663, baseType: !190, size: 64, offset: 1408)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !452, file: !44, line: 665, baseType: !664, size: 128, offset: 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !452, file: !44, line: 666, baseType: !154, size: 128, offset: 1600)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !452, file: !44, line: 675, baseType: !154, size: 128, offset: 1728)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !452, file: !44, line: 676, baseType: !154, size: 128, offset: 1856)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !452, file: !44, line: 677, baseType: !154, size: 128, offset: 1984)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 678, baseType: !2856, size: 128, offset: 2112)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 678, size: 128, elements: !2857)
!2857 = !{!2858, !2859}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2856, file: !44, line: 679, baseType: !660, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2856, file: !44, line: 680, baseType: !395, size: 128, align: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !452, file: !44, line: 682, baseType: !799, size: 64, offset: 2240)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !452, file: !44, line: 683, baseType: !799, size: 64, offset: 2304)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !452, file: !44, line: 684, baseType: !773, size: 32, offset: 2368)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !452, file: !44, line: 685, baseType: !773, size: 32, offset: 2400)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !452, file: !44, line: 686, baseType: !773, size: 32, offset: 2432)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !452, file: !44, line: 688, baseType: !773, size: 32, offset: 2464)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 690, baseType: !2867, size: 64, offset: 2496)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 690, size: 64, elements: !2868)
!2868 = !{!2869, !3092}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2867, file: !44, line: 691, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2873)
!2873 = !{!2874, !2875, !2879, !2884, !2888, !2889, !2890, !2894, !2907, !2908, !2916, !2920, !2921, !2925, !2926, !2930, !2935, !2936, !2940, !2944, !3052, !3056, !3057, !3061, !3062, !3066, !3070, !3075, !3079, !3083, !3087, !3091}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2872, file: !44, line: 1823, baseType: !655, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2872, file: !44, line: 1824, baseType: !2876, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!553, !382, !553, !207}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2872, file: !44, line: 1825, baseType: !2880, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!337, !382, !306, !352, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2872, file: !44, line: 1826, baseType: !2885, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!337, !382, !186, !352, !2883}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2872, file: !44, line: 1827, baseType: !870, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2872, file: !44, line: 1828, baseType: !870, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2872, file: !44, line: 1829, baseType: !2891, size: 64, offset: 384)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!207, !873, !512}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2872, file: !44, line: 1830, baseType: !2895, size: 64, offset: 448)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!207, !382, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2900)
!2900 = !{!2901, !2906}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2899, file: !44, line: 1777, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!207, !2898, !186, !207, !553, !179, !7}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2899, file: !44, line: 1778, baseType: !553, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2872, file: !44, line: 1831, baseType: !2895, size: 64, offset: 512)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2872, file: !44, line: 1832, baseType: !2909, size: 64, offset: 576)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!2912, !382, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2913, line: 52, baseType: !7)
!2913 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !641, line: 27, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2872, file: !44, line: 1833, baseType: !2917, size: 64, offset: 640)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!341, !382, !7, !190}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2872, file: !44, line: 1834, baseType: !2917, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2872, file: !44, line: 1835, baseType: !2922, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!207, !382, !1007}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2872, file: !44, line: 1836, baseType: !190, size: 64, offset: 832)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2872, file: !44, line: 1837, baseType: !2927, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!207, !451, !382}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2872, file: !44, line: 1838, baseType: !2931, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!207, !382, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !149)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2872, file: !44, line: 1839, baseType: !2927, size: 64, offset: 1024)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2872, file: !44, line: 1840, baseType: !2937, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!207, !382, !553, !553, !207}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2872, file: !44, line: 1841, baseType: !2941, size: 64, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!207, !207, !382, !207}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2872, file: !44, line: 1842, baseType: !2945, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!207, !382, !207, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2982, !2983, !2984, !2997, !3028}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2949, file: !44, line: 1063, baseType: !2948, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2949, file: !44, line: 1064, baseType: !154, size: 128, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2949, file: !44, line: 1065, baseType: !664, size: 128, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2949, file: !44, line: 1066, baseType: !154, size: 128, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2949, file: !44, line: 1069, baseType: !154, size: 128, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2949, file: !44, line: 1072, baseType: !2934, size: 64, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2949, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2949, file: !44, line: 1074, baseType: !236, size: 8, offset: 672)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2949, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2949, file: !44, line: 1076, baseType: !207, size: 32, offset: 736)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2949, file: !44, line: 1077, baseType: !1488, size: 128, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2949, file: !44, line: 1078, baseType: !382, size: 64, offset: 896)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2949, file: !44, line: 1079, baseType: !553, size: 64, offset: 960)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2949, file: !44, line: 1080, baseType: !553, size: 64, offset: 1024)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2949, file: !44, line: 1082, baseType: !2966, size: 64, offset: 1088)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2968)
!2968 = !{!2969, !2977, !2978, !2979, !2980, !2981}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2967, file: !44, line: 1315, baseType: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2971, line: 20, baseType: !2972)
!2971 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2971, line: 11, elements: !2973)
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2972, file: !2971, line: 12, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !277, line: 33, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 31, elements: !279)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2967, file: !44, line: 1316, baseType: !207, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2967, file: !44, line: 1317, baseType: !207, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2967, file: !44, line: 1318, baseType: !2966, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2967, file: !44, line: 1319, baseType: !382, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2967, file: !44, line: 1320, baseType: !395, size: 128, align: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2949, file: !44, line: 1084, baseType: !190, size: 64, offset: 1152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2949, file: !44, line: 1085, baseType: !190, size: 64, offset: 1216)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2949, file: !44, line: 1087, baseType: !2985, size: 64, offset: 1280)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2988)
!2988 = !{!2989, !2993}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2987, file: !44, line: 1012, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{null, !2948, !2948}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2987, file: !44, line: 1013, baseType: !2994, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2948}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2949, file: !44, line: 1088, baseType: !2998, size: 64, offset: 1344)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3001)
!3001 = !{!3002, !3006, !3010, !3011, !3015, !3019, !3023, !3027}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3000, file: !44, line: 1017, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!2934, !2934}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3000, file: !44, line: 1018, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2934}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3000, file: !44, line: 1019, baseType: !2994, size: 64, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3000, file: !44, line: 1020, baseType: !3012, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!207, !2948, !207}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3000, file: !44, line: 1021, baseType: !3016, size: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!512, !2948}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3000, file: !44, line: 1022, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!207, !2948, !207, !158}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3000, file: !44, line: 1023, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !2948, !847}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3000, file: !44, line: 1024, baseType: !3016, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2949, file: !44, line: 1097, baseType: !3029, size: 256, offset: 1408)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !44, line: 1089, size: 256, elements: !3030)
!3030 = !{!3031, !3040, !3046}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3029, file: !44, line: 1090, baseType: !3032, size: 256)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3033, line: 10, size: 256, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3034 = !{!3035, !3036, !3039}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3032, file: !3033, line: 11, baseType: !221, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3032, file: !3033, line: 12, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3033, line: 5, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3032, file: !3033, line: 13, baseType: !154, size: 128, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3029, file: !44, line: 1091, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3033, line: 17, size: 64, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3041, file: !3033, line: 18, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3033, line: 16, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3029, file: !44, line: 1096, baseType: !3047, size: 192)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3029, file: !44, line: 1092, size: 192, elements: !3048)
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3047, file: !44, line: 1093, baseType: !154, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3047, file: !44, line: 1094, baseType: !207, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3047, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2872, file: !44, line: 1843, baseType: !3053, size: 64, offset: 1280)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!337, !382, !746, !207, !352, !2883, !207}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2872, file: !44, line: 1844, baseType: !1127, size: 64, offset: 1344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2872, file: !44, line: 1845, baseType: !3058, size: 64, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!207, !207}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2872, file: !44, line: 1846, baseType: !2945, size: 64, offset: 1472)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2872, file: !44, line: 1847, baseType: !3063, size: 64, offset: 1536)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!337, !2106, !382, !2883, !352, !7}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2872, file: !44, line: 1848, baseType: !3067, size: 64, offset: 1600)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!337, !382, !2883, !2106, !352, !7}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2872, file: !44, line: 1849, baseType: !3071, size: 64, offset: 1664)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!207, !382, !341, !3074, !847}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2872, file: !44, line: 1850, baseType: !3076, size: 64, offset: 1728)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!341, !382, !207, !553, !553}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2872, file: !44, line: 1852, baseType: !3080, size: 64, offset: 1792)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !736, !382}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2872, file: !44, line: 1856, baseType: !3084, size: 64, offset: 1856)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!337, !382, !553, !382, !553, !352, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2872, file: !44, line: 1858, baseType: !3088, size: 64, offset: 1920)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!553, !382, !553, !382, !553, !553, !7}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2872, file: !44, line: 1861, baseType: !2937, size: 64, offset: 1984)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2867, file: !44, line: 692, baseType: !689, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !452, file: !44, line: 694, baseType: !3094, size: 64, offset: 2560)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3095, file: !44, line: 1101, baseType: !265)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3095, file: !44, line: 1102, baseType: !154, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3095, file: !44, line: 1103, baseType: !154, size: 128, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3095, file: !44, line: 1104, baseType: !154, size: 128, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !452, file: !44, line: 695, baseType: !760, size: 1216, align: 64, offset: 2624)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !452, file: !44, line: 696, baseType: !154, size: 128, offset: 3840)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !44, line: 697, baseType: !3104, size: 64, offset: 3968)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !44, line: 697, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3111, !3112}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3104, file: !44, line: 698, baseType: !2106, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3104, file: !44, line: 699, baseType: !2622, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3104, file: !44, line: 700, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3104, file: !44, line: 701, baseType: !306, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3104, file: !44, line: 702, baseType: !7, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !452, file: !44, line: 705, baseType: !222, size: 32, offset: 4032)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !452, file: !44, line: 708, baseType: !222, size: 32, offset: 4064)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !452, file: !44, line: 709, baseType: !2704, size: 64, offset: 4096)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !452, file: !44, line: 720, baseType: !149, size: 64, offset: 4160)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !413, file: !410, line: 98, baseType: !3118, size: 256, offset: 448)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 256, elements: !2237)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !413, file: !410, line: 101, baseType: !3120, size: 32, offset: 704)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3121, line: 25, size: 32, elements: !3122)
!3121 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3122 = !{!3123}
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3121, line: 26, baseType: !3124, size: 32)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !3121, line: 26, size: 32, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3121, line: 30, baseType: !3127, size: 32)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3121, line: 30, size: 32, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3127, file: !3121, line: 31, baseType: !265)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3127, file: !3121, line: 32, baseType: !207, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !413, file: !410, line: 102, baseType: !2721, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !413, file: !410, line: 103, baseType: !621, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !413, file: !410, line: 104, baseType: !190, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !413, file: !410, line: 105, baseType: !149, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !410, line: 107, baseType: !3136, size: 128, offset: 1024)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !410, line: 107, size: 128, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3136, file: !410, line: 108, baseType: !154, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3136, file: !410, line: 109, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !413, file: !410, line: 111, baseType: !154, size: 128, offset: 1152)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !413, file: !410, line: 112, baseType: !154, size: 128, offset: 1280)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !413, file: !410, line: 120, baseType: !3144, size: 128, offset: 1408)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !410, line: 116, size: 128, elements: !3145)
!3145 = !{!3146, !3147, !3148}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3144, file: !410, line: 117, baseType: !664, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3144, file: !410, line: 118, baseType: !427, size: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3144, file: !410, line: 119, baseType: !395, size: 128, align: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !383, file: !44, line: 922, baseType: !451, size: 64, offset: 256)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !383, file: !44, line: 923, baseType: !2870, size: 64, offset: 320)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !383, file: !44, line: 929, baseType: !265, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !383, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !383, file: !44, line: 931, baseType: !797, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !383, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !383, file: !44, line: 933, baseType: !2717, size: 32, offset: 544)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !383, file: !44, line: 934, baseType: !1197, size: 192, offset: 576)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !383, file: !44, line: 935, baseType: !553, size: 64, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !383, file: !44, line: 936, baseType: !3159, size: 192, offset: 832)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !44, line: 886, baseType: !2970)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3159, file: !44, line: 887, baseType: !1478, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3159, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3159, file: !44, line: 889, baseType: !457, size: 32, offset: 96)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3159, file: !44, line: 889, baseType: !457, size: 32, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3159, file: !44, line: 890, baseType: !207, size: 32, offset: 160)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !383, file: !44, line: 937, baseType: !1554, size: 64, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !383, file: !44, line: 938, baseType: !3169, size: 256, offset: 1088)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3169, file: !44, line: 897, baseType: !190, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3169, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3169, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3169, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3169, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3169, file: !44, line: 904, baseType: !553, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !383, file: !44, line: 940, baseType: !179, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !383, file: !44, line: 945, baseType: !149, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !383, file: !44, line: 949, baseType: !154, size: 128, offset: 1472)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !383, file: !44, line: 950, baseType: !154, size: 128, offset: 1600)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !383, file: !44, line: 952, baseType: !759, size: 64, offset: 1728)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !383, file: !44, line: 953, baseType: !935, size: 32, offset: 1792)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !383, file: !44, line: 954, baseType: !935, size: 32, offset: 1824)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !373, file: !331, line: 174, baseType: !379, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !373, file: !331, line: 176, baseType: !3186, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!207, !382, !258, !372, !1007}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !361, file: !331, line: 90, baseType: !356, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !361, file: !331, line: 91, baseType: !3191, size: 64, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !321, file: !106, line: 143, baseType: !3193, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!3196, !258}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3199)
!3199 = !{!3200, !3201, !3205, !3209, !3215, !3219}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3198, file: !61, line: 40, baseType: !60, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3198, file: !61, line: 41, baseType: !3202, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!512}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3198, file: !61, line: 42, baseType: !3206, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!149}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3198, file: !61, line: 43, baseType: !3210, size: 64, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!2134, !3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3198, file: !61, line: 44, baseType: !3216, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!2134}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3198, file: !61, line: 45, baseType: !490, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !321, file: !106, line: 144, baseType: !3221, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!2134, !258}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !321, file: !106, line: 145, baseType: !3225, size: 64, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !258, !3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !253, file: !106, line: 70, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !641, line: 123, size: 1024, elements: !3233)
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3362, !3363, !3364, !3365, !3366}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3232, file: !641, line: 124, baseType: !773, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3232, file: !641, line: 125, baseType: !773, size: 32, offset: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3232, file: !641, line: 135, baseType: !3231, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3232, file: !641, line: 136, baseType: !186, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3232, file: !641, line: 138, baseType: !786, size: 192, align: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3232, file: !641, line: 140, baseType: !2134, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3232, file: !641, line: 141, baseType: !7, size: 32, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !641, line: 142, baseType: !3242, size: 256, offset: 512)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !641, line: 142, size: 256, elements: !3243)
!3243 = !{!3244, !3290, !3294}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3242, file: !641, line: 143, baseType: !3245, size: 192)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !641, line: 91, size: 192, elements: !3246)
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3245, file: !641, line: 92, baseType: !190, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3245, file: !641, line: 94, baseType: !782, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3245, file: !641, line: 100, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !641, line: 180, size: 704, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3262, !3263, !3264, !3288, !3289}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3251, file: !641, line: 182, baseType: !3231, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3251, file: !641, line: 183, baseType: !7, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3251, file: !641, line: 186, baseType: !3256, size: 192, offset: 128)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3257, line: 19, size: 192, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3256, file: !3257, line: 20, baseType: !764, size: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3256, file: !3257, line: 21, baseType: !7, size: 32, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3256, file: !3257, line: 22, baseType: !7, size: 32, offset: 160)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3251, file: !641, line: 187, baseType: !221, size: 32, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3251, file: !641, line: 188, baseType: !221, size: 32, offset: 352)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3251, file: !641, line: 189, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !641, line: 168, size: 320, elements: !3267)
!3267 = !{!3268, !3272, !3276, !3280, !3284}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3266, file: !641, line: 169, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!207, !736, !3250}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3266, file: !641, line: 171, baseType: !3273, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!207, !3231, !186, !347}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3266, file: !641, line: 173, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!207, !3231}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3266, file: !641, line: 174, baseType: !3281, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!207, !3231, !3231, !186}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3266, file: !641, line: 176, baseType: !3285, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!207, !736, !3231, !3250}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3251, file: !641, line: 192, baseType: !154, size: 128, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3251, file: !641, line: 194, baseType: !1488, size: 128, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3242, file: !641, line: 144, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !641, line: 103, size: 64, elements: !3292)
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3291, file: !641, line: 104, baseType: !3231, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3242, file: !641, line: 145, baseType: !3295, size: 256)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !641, line: 107, size: 256, elements: !3296)
!3296 = !{!3297, !3357, !3360, !3361}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3295, file: !641, line: 108, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !641, line: 217, size: 768, elements: !3301)
!3301 = !{!3302, !3322, !3326, !3330, !3334, !3338, !3342, !3346, !3347, !3348, !3349, !3353}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3300, file: !641, line: 222, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!207, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !641, line: 197, size: 1088, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3307, file: !641, line: 199, baseType: !3231, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3307, file: !641, line: 200, baseType: !382, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3307, file: !641, line: 201, baseType: !736, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3307, file: !641, line: 202, baseType: !149, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3307, file: !641, line: 205, baseType: !1197, size: 192, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3307, file: !641, line: 206, baseType: !1197, size: 192, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3307, file: !641, line: 207, baseType: !207, size: 32, offset: 640)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3307, file: !641, line: 208, baseType: !154, size: 128, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3307, file: !641, line: 209, baseType: !306, size: 64, offset: 832)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3307, file: !641, line: 211, baseType: !352, size: 64, offset: 896)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3307, file: !641, line: 212, baseType: !512, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3307, file: !641, line: 213, baseType: !512, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3307, file: !641, line: 214, baseType: !1035, size: 64, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3300, file: !641, line: 223, baseType: !3323, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3306}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3300, file: !641, line: 236, baseType: !3327, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!207, !736, !149}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3300, file: !641, line: 238, baseType: !3331, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!149, !736, !2883}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3300, file: !641, line: 239, baseType: !3335, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!149, !736, !149, !2883}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3300, file: !641, line: 240, baseType: !3339, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !736, !149}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3300, file: !641, line: 242, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!337, !3306, !306, !352, !553}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3300, file: !641, line: 252, baseType: !352, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3300, file: !641, line: 259, baseType: !512, size: 8, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3300, file: !641, line: 260, baseType: !3343, size: 64, offset: 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3300, file: !641, line: 263, baseType: !3350, size: 64, offset: 640)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!2912, !3306, !2914}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3300, file: !641, line: 266, baseType: !3354, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!207, !3306, !1007}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3295, file: !641, line: 109, baseType: !3358, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !641, line: 31, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3295, file: !641, line: 110, baseType: !553, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3295, file: !641, line: 111, baseType: !3231, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3232, file: !641, line: 148, baseType: !149, size: 64, offset: 768)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3232, file: !641, line: 154, baseType: !179, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3232, file: !641, line: 156, baseType: !245, size: 16, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3232, file: !641, line: 157, baseType: !347, size: 16, offset: 912)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3232, file: !641, line: 158, baseType: !3367, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !641, line: 32, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !253, file: !106, line: 71, baseType: !3370, size: 32, offset: 448)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3371, line: 19, size: 32, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3370, file: !3371, line: 20, baseType: !1238, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !253, file: !106, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !253, file: !106, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !253, file: !106, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !253, file: !106, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !253, file: !106, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !250, file: !73, line: 463, baseType: !249, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !250, file: !73, line: 465, baseType: !3381, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !250, file: !73, line: 467, baseType: !186, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !250, file: !73, line: 468, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3395, !3400, !3404}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3387, file: !73, line: 88, baseType: !186, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3387, file: !73, line: 89, baseType: !358, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3387, file: !73, line: 90, baseType: !3392, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!207, !249, !301}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3387, file: !73, line: 91, baseType: !3396, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!306, !249, !3399, !3228, !3229}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3387, file: !73, line: 93, baseType: !3401, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !249}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3387, file: !73, line: 95, baseType: !3405, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3408)
!3408 = !{!3409, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3407, file: !80, line: 279, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!207, !249}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3407, file: !80, line: 280, baseType: !3401, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3407, file: !80, line: 281, baseType: !3410, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3407, file: !80, line: 282, baseType: !3410, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3407, file: !80, line: 283, baseType: !3410, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3407, file: !80, line: 284, baseType: !3410, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3407, file: !80, line: 285, baseType: !3410, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3407, file: !80, line: 286, baseType: !3410, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3407, file: !80, line: 287, baseType: !3410, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3407, file: !80, line: 288, baseType: !3410, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3407, file: !80, line: 289, baseType: !3410, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3407, file: !80, line: 290, baseType: !3410, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3407, file: !80, line: 291, baseType: !3410, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3407, file: !80, line: 292, baseType: !3410, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3407, file: !80, line: 293, baseType: !3410, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3407, file: !80, line: 294, baseType: !3410, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3407, file: !80, line: 295, baseType: !3410, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3407, file: !80, line: 296, baseType: !3410, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3407, file: !80, line: 297, baseType: !3410, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3407, file: !80, line: 298, baseType: !3410, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3407, file: !80, line: 299, baseType: !3410, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3407, file: !80, line: 300, baseType: !3410, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3407, file: !80, line: 301, baseType: !3410, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !250, file: !73, line: 470, baseType: !3436, size: 64, offset: 768)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3438, line: 82, size: 1408, elements: !3439)
!3438 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3521, !3524, !3525}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3437, file: !3438, line: 83, baseType: !186, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3437, file: !3438, line: 84, baseType: !186, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3437, file: !3438, line: 85, baseType: !249, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3437, file: !3438, line: 86, baseType: !358, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3437, file: !3438, line: 87, baseType: !358, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3437, file: !3438, line: 88, baseType: !358, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3437, file: !3438, line: 90, baseType: !3447, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!207, !249, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3472, !3485, !3486, !3487, !3488, !3489, !3497, !3498, !3499, !3500, !3501, !3502}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !67, line: 96, baseType: !186, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3451, file: !67, line: 97, baseType: !3436, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3451, file: !67, line: 99, baseType: !655, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3451, file: !67, line: 100, baseType: !186, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3451, file: !67, line: 102, baseType: !512, size: 8, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3451, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3451, file: !67, line: 105, baseType: !3460, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3463, line: 262, size: 1600, elements: !3464)
!3463 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3464 = !{!3465, !3466, !3467, !3471}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3462, file: !3463, line: 263, baseType: !2707, size: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3462, file: !3463, line: 264, baseType: !2707, size: 256, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3462, file: !3463, line: 265, baseType: !3468, size: 1024, offset: 512)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 1024, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3462, file: !3463, line: 266, baseType: !2134, size: 64, offset: 1536)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3451, file: !67, line: 106, baseType: !3473, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3463, line: 210, size: 256, elements: !3476)
!3476 = !{!3477, !3481, !3483, !3484}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3475, file: !3463, line: 211, baseType: !3478, size: 72)
!3478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 72, elements: !3479)
!3479 = !{!3480}
!3480 = !DISubrange(count: 9)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3475, file: !3463, line: 212, baseType: !3482, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3463, line: 14, baseType: !190)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3475, file: !3463, line: 213, baseType: !222, size: 32, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3475, file: !3463, line: 214, baseType: !222, size: 32, offset: 224)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3451, file: !67, line: 108, baseType: !3410, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3451, file: !67, line: 109, baseType: !3401, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3451, file: !67, line: 110, baseType: !3410, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3451, file: !67, line: 111, baseType: !3401, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3451, file: !67, line: 112, baseType: !3490, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!207, !249, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3494, file: !80, line: 51, baseType: !207, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3451, file: !67, line: 113, baseType: !3410, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3451, file: !67, line: 114, baseType: !358, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3451, file: !67, line: 115, baseType: !358, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !67, line: 117, baseType: !3405, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3451, file: !67, line: 118, baseType: !3401, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3451, file: !67, line: 120, baseType: !3503, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3437, file: !3438, line: 91, baseType: !3392, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3437, file: !3438, line: 92, baseType: !3410, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3437, file: !3438, line: 93, baseType: !3401, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3437, file: !3438, line: 94, baseType: !3410, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3437, file: !3438, line: 95, baseType: !3401, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3437, file: !3438, line: 97, baseType: !3410, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3437, file: !3438, line: 98, baseType: !3410, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3437, file: !3438, line: 100, baseType: !3490, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3437, file: !3438, line: 101, baseType: !3410, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3437, file: !3438, line: 103, baseType: !3410, size: 64, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3437, file: !3438, line: 105, baseType: !3410, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3437, file: !3438, line: 107, baseType: !3405, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3437, file: !3438, line: 109, baseType: !3518, size: 64, offset: 1216)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3438, line: 109, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3437, file: !3438, line: 111, baseType: !3522, size: 64, offset: 1280)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3438, line: 111, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3437, file: !3438, line: 112, baseType: !670, offset: 1344)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3437, file: !3438, line: 114, baseType: !512, size: 8, offset: 1344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !250, file: !73, line: 471, baseType: !3450, size: 64, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !250, file: !73, line: 473, baseType: !149, size: 64, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !250, file: !73, line: 475, baseType: !149, size: 64, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !250, file: !73, line: 480, baseType: !1197, size: 192, offset: 1024)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !250, file: !73, line: 484, baseType: !3531, size: 576, offset: 1216)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3531, file: !73, line: 362, baseType: !154, size: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3531, file: !73, line: 363, baseType: !154, size: 128, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3531, file: !73, line: 364, baseType: !154, size: 128, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3531, file: !73, line: 365, baseType: !154, size: 128, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3531, file: !73, line: 366, baseType: !512, size: 8, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3531, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !250, file: !73, line: 485, baseType: !3540, size: 2304, offset: 1792)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3637, !3641}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3540, file: !80, line: 566, baseType: !3493, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3540, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3540, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3540, file: !80, line: 569, baseType: !512, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3540, file: !80, line: 570, baseType: !512, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3540, file: !80, line: 571, baseType: !512, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3540, file: !80, line: 572, baseType: !512, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3540, file: !80, line: 573, baseType: !512, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3540, file: !80, line: 574, baseType: !512, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3540, file: !80, line: 575, baseType: !512, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3540, file: !80, line: 576, baseType: !512, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3540, file: !80, line: 577, baseType: !221, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3540, file: !80, line: 578, baseType: !265, offset: 96)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3540, file: !80, line: 580, baseType: !154, size: 128, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3540, file: !80, line: 581, baseType: !1509, size: 192, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3540, file: !80, line: 582, baseType: !3558, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3560, line: 43, size: 1472, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3569, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3559, file: !3560, line: 44, baseType: !186, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3559, file: !3560, line: 45, baseType: !207, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !3560, line: 46, baseType: !154, size: 128, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !3560, line: 47, baseType: !265, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3559, file: !3560, line: 48, baseType: !3567, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3559, file: !3560, line: 49, baseType: !3570, size: 320, offset: 320)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3571, line: 11, size: 320, elements: !3572)
!3571 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3572 = !{!3573, !3574, !3575, !3580}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3570, file: !3571, line: 16, baseType: !664, size: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3570, file: !3571, line: 17, baseType: !190, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3570, file: !3571, line: 18, baseType: !3576, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3570, file: !3571, line: 19, baseType: !221, size: 32, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3559, file: !3560, line: 50, baseType: !190, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3559, file: !3560, line: 51, baseType: !1308, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3559, file: !3560, line: 52, baseType: !1308, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3559, file: !3560, line: 53, baseType: !1308, size: 64, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3559, file: !3560, line: 54, baseType: !1308, size: 64, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3559, file: !3560, line: 55, baseType: !1308, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3559, file: !3560, line: 56, baseType: !190, size: 64, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3559, file: !3560, line: 57, baseType: !190, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3559, file: !3560, line: 58, baseType: !190, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3559, file: !3560, line: 59, baseType: !190, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3559, file: !3560, line: 60, baseType: !190, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3559, file: !3560, line: 61, baseType: !249, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3559, file: !3560, line: 62, baseType: !512, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3559, file: !3560, line: 63, baseType: !512, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3540, file: !80, line: 583, baseType: !512, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3540, file: !80, line: 584, baseType: !512, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3540, file: !80, line: 585, baseType: !512, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3540, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3540, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3540, file: !80, line: 592, baseType: !1300, size: 512, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3540, file: !80, line: 593, baseType: !179, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3540, file: !80, line: 594, baseType: !1965, size: 256, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3540, file: !80, line: 595, baseType: !1488, size: 128, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3540, file: !80, line: 596, baseType: !3567, size: 64, offset: 1536)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3540, file: !80, line: 597, baseType: !773, size: 32, offset: 1600)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3540, file: !80, line: 598, baseType: !773, size: 32, offset: 1632)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3540, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3540, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3540, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3540, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3540, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3540, file: !80, line: 604, baseType: !512, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3540, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3540, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3540, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3540, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3540, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3540, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3540, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3540, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3540, file: !80, line: 613, baseType: !207, size: 32, offset: 1792)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3540, file: !80, line: 614, baseType: !207, size: 32, offset: 1824)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3540, file: !80, line: 615, baseType: !179, size: 64, offset: 1856)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3540, file: !80, line: 616, baseType: !179, size: 64, offset: 1920)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3540, file: !80, line: 617, baseType: !179, size: 64, offset: 1984)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3540, file: !80, line: 618, baseType: !179, size: 64, offset: 2048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3540, file: !80, line: 620, baseType: !3628, size: 64, offset: 2112)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3629, file: !80, line: 537, baseType: !265)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3629, file: !80, line: 538, baseType: !7, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3629, file: !80, line: 540, baseType: !154, size: 128, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3629, file: !80, line: 543, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3540, file: !80, line: 621, baseType: !3638, size: 64, offset: 2176)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !249, !1451}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3540, file: !80, line: 622, baseType: !3642, size: 64, offset: 2240)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !250, file: !73, line: 486, baseType: !3645, size: 64, offset: 4096)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3654, !3655, !3656}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3646, file: !80, line: 643, baseType: !3407, size: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3646, file: !80, line: 644, baseType: !3410, size: 64, offset: 1472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3646, file: !80, line: 645, baseType: !3651, size: 64, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !249, !512}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3646, file: !80, line: 646, baseType: !3410, size: 64, offset: 1600)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3646, file: !80, line: 647, baseType: !3401, size: 64, offset: 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3646, file: !80, line: 648, baseType: !3401, size: 64, offset: 1728)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !250, file: !73, line: 493, baseType: !3658, size: 64, offset: 4160)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !250, file: !73, line: 499, baseType: !154, size: 128, offset: 4224)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !250, file: !73, line: 502, baseType: !3662, size: 64, offset: 4352)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !250, file: !73, line: 504, baseType: !3666, size: 64, offset: 4416)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !250, file: !73, line: 505, baseType: !179, size: 64, offset: 4480)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !250, file: !73, line: 510, baseType: !179, size: 64, offset: 4544)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !250, file: !73, line: 511, baseType: !3670, size: 64, offset: 4608)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !250, file: !73, line: 513, baseType: !3674, size: 64, offset: 4672)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3676)
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3675, file: !73, line: 293, baseType: !7, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3675, file: !73, line: 294, baseType: !190, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !250, file: !73, line: 515, baseType: !154, size: 128, offset: 4736)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !250, file: !73, line: 526, baseType: !3681, offset: 4864)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3682, line: 5, elements: !279)
!3682 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !250, file: !73, line: 528, baseType: !3684, size: 64, offset: 4864)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3686, line: 14, flags: DIFlagFwdDecl)
!3686 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !250, file: !73, line: 529, baseType: !3688, size: 64, offset: 4928)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3690, line: 17, size: 192, elements: !3691)
!3690 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3691 = !{!3692, !3693, !3776}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3689, file: !3690, line: 18, baseType: !3688, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3689, file: !3690, line: 19, baseType: !3694, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3696)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3690, line: 110, size: 1152, elements: !3697)
!3697 = !{!3698, !3702, !3706, !3712, !3718, !3722, !3726, !3731, !3735, !3736, !3740, !3744, !3748, !3759, !3760, !3761, !3762, !3772}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3696, file: !3690, line: 111, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!3688, !3688}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3696, file: !3690, line: 112, baseType: !3703, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3688}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3696, file: !3690, line: 113, baseType: !3707, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!512, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3696, file: !3690, line: 114, baseType: !3713, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!2134, !3710, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3696, file: !3690, line: 116, baseType: !3719, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!512, !3710, !186}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3696, file: !3690, line: 118, baseType: !3723, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!207, !3710, !186, !7, !149, !352}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3696, file: !3690, line: 123, baseType: !3727, size: 64, offset: 384)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!207, !3710, !186, !3730, !352}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3696, file: !3690, line: 126, baseType: !3732, size: 64, offset: 448)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!186, !3710}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3696, file: !3690, line: 127, baseType: !3732, size: 64, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3696, file: !3690, line: 128, baseType: !3737, size: 64, offset: 576)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3688, !3710}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3696, file: !3690, line: 130, baseType: !3741, size: 64, offset: 640)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3688, !3710, !3688}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3696, file: !3690, line: 133, baseType: !3745, size: 64, offset: 704)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3688, !3710, !186}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3696, file: !3690, line: 135, baseType: !3749, size: 64, offset: 768)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!207, !3710, !186, !186, !7, !7, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3690, line: 43, size: 640, elements: !3754)
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3753, file: !3690, line: 44, baseType: !3688, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3753, file: !3690, line: 45, baseType: !7, size: 32, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3753, file: !3690, line: 46, baseType: !3758, size: 512, offset: 128)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 512, elements: !1338)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3696, file: !3690, line: 140, baseType: !3741, size: 64, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3696, file: !3690, line: 143, baseType: !3737, size: 64, offset: 896)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3696, file: !3690, line: 145, baseType: !3699, size: 64, offset: 960)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3696, file: !3690, line: 146, baseType: !3763, size: 64, offset: 1024)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!207, !3710, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3690, line: 29, size: 128, elements: !3768)
!3768 = !{!3769, !3770, !3771}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3767, file: !3690, line: 30, baseType: !7, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3767, file: !3690, line: 31, baseType: !7, size: 32, offset: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3767, file: !3690, line: 32, baseType: !3710, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3696, file: !3690, line: 148, baseType: !3773, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!207, !3710, !249}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3689, file: !3690, line: 20, baseType: !249, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !250, file: !73, line: 534, baseType: !535, size: 32, offset: 4992)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !250, file: !73, line: 535, baseType: !221, size: 32, offset: 5024)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !250, file: !73, line: 537, baseType: !265, offset: 5056)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !250, file: !73, line: 538, baseType: !154, size: 128, offset: 5056)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !250, file: !73, line: 540, baseType: !3782, size: 64, offset: 5184)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3784, line: 54, size: 960, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3796, !3800, !3801, !3802, !3803, !3807, !3811, !3812}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3783, file: !3784, line: 55, baseType: !186, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3783, file: !3784, line: 56, baseType: !655, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3783, file: !3784, line: 58, baseType: !358, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3783, file: !3784, line: 59, baseType: !358, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3783, file: !3784, line: 60, baseType: !258, size: 64, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3783, file: !3784, line: 62, baseType: !3392, size: 64, offset: 320)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3783, file: !3784, line: 63, baseType: !3793, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!306, !249, !3399}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3783, file: !3784, line: 65, baseType: !3797, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{null, !3782}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3783, file: !3784, line: 66, baseType: !3401, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3783, file: !3784, line: 68, baseType: !3410, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3783, file: !3784, line: 70, baseType: !3196, size: 64, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3783, file: !3784, line: 71, baseType: !3804, size: 64, offset: 704)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!2134, !249}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3783, file: !3784, line: 73, baseType: !3808, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !249, !3228, !3229}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3783, file: !3784, line: 75, baseType: !3405, size: 64, offset: 832)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3783, file: !3784, line: 77, baseType: !3522, size: 64, offset: 896)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !250, file: !73, line: 541, baseType: !358, size: 64, offset: 5248)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !250, file: !73, line: 543, baseType: !3401, size: 64, offset: 5312)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !250, file: !73, line: 544, baseType: !3816, size: 64, offset: 5376)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !250, file: !73, line: 545, baseType: !3819, size: 64, offset: 5440)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !250, file: !73, line: 547, baseType: !512, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !250, file: !73, line: 548, baseType: !512, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !250, file: !73, line: 549, baseType: !512, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !250, file: !73, line: 550, baseType: !512, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !162, file: !94, line: 635, baseType: !250, size: 5568, offset: 2304)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !162, file: !94, line: 636, baseType: !372, size: 64, offset: 7872)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !162, file: !94, line: 637, baseType: !372, size: 64, offset: 7936)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !162, file: !94, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !151, file: !94, line: 312, baseType: !161, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !151, file: !94, line: 314, baseType: !149, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !151, file: !94, line: 315, baseType: !232, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !151, file: !94, line: 316, baseType: !3833, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !94, line: 69, size: 832, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3841, !3842}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3834, file: !94, line: 70, baseType: !161, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3834, file: !94, line: 71, baseType: !154, size: 128, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3834, file: !94, line: 72, baseType: !3839, size: 64, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !94, line: 72, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3834, file: !94, line: 73, baseType: !236, size: 8, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3834, file: !94, line: 74, baseType: !253, size: 512, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !151, file: !94, line: 318, baseType: !7, size: 32, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !151, file: !94, line: 319, baseType: !245, size: 16, offset: 480)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !151, file: !94, line: 320, baseType: !245, size: 16, offset: 496)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !151, file: !94, line: 321, baseType: !245, size: 16, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !151, file: !94, line: 322, baseType: !245, size: 16, offset: 528)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !151, file: !94, line: 323, baseType: !7, size: 32, offset: 544)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !151, file: !94, line: 324, baseType: !1360, size: 8, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !151, file: !94, line: 325, baseType: !1360, size: 8, offset: 584)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !151, file: !94, line: 330, baseType: !1360, size: 8, offset: 592)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !151, file: !94, line: 331, baseType: !1360, size: 8, offset: 600)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !151, file: !94, line: 332, baseType: !1360, size: 8, offset: 608)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !151, file: !94, line: 333, baseType: !1360, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !151, file: !94, line: 334, baseType: !1360, size: 8, offset: 624)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !151, file: !94, line: 335, baseType: !1360, size: 8, offset: 632)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !151, file: !94, line: 336, baseType: !885, size: 16, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !151, file: !94, line: 337, baseType: !3859, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !151, file: !94, line: 339, baseType: !3861, size: 64, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !94, line: 858, size: 2048, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3878, !3882, !3886, !3890, !3894, !3895, !3899, !3918, !3919, !3920}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3862, file: !94, line: 859, baseType: !154, size: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3862, file: !94, line: 860, baseType: !186, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3862, file: !94, line: 861, baseType: !3867, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3869)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3463, line: 38, size: 256, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3869, file: !3463, line: 39, baseType: !222, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3869, file: !3463, line: 39, baseType: !222, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3869, file: !3463, line: 40, baseType: !222, size: 32, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3869, file: !3463, line: 40, baseType: !222, size: 32, offset: 96)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3869, file: !3463, line: 41, baseType: !222, size: 32, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3869, file: !3463, line: 41, baseType: !222, size: 32, offset: 160)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3869, file: !3463, line: 42, baseType: !3482, size: 64, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3862, file: !94, line: 862, baseType: !3879, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!207, !150, !3867}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3862, file: !94, line: 863, baseType: !3883, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !150}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3862, file: !94, line: 864, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!207, !150, !3493}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3862, file: !94, line: 865, baseType: !3891, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!207, !150}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3862, file: !94, line: 866, baseType: !3883, size: 64, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3862, file: !94, line: 867, baseType: !3896, size: 64, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!207, !150, !207}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3862, file: !94, line: 868, baseType: !3900, size: 64, offset: 640)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !94, line: 795, size: 384, elements: !3903)
!3903 = !{!3904, !3910, !3914, !3915, !3916, !3917}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3902, file: !94, line: 797, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!3908, !150, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !94, line: 772, baseType: !7)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !94, line: 180, baseType: !7)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3902, file: !94, line: 801, baseType: !3911, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!3908, !150}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3902, file: !94, line: 804, baseType: !3911, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3902, file: !94, line: 807, baseType: !3883, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3902, file: !94, line: 808, baseType: !3883, size: 64, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3902, file: !94, line: 811, baseType: !3883, size: 64, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3862, file: !94, line: 869, baseType: !358, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3862, file: !94, line: 870, baseType: !3451, size: 1152, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3862, file: !94, line: 871, baseType: !3921, size: 128, offset: 1920)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !94, line: 759, size: 128, elements: !3922)
!3922 = !{!3923, !3924}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3921, file: !94, line: 760, baseType: !265)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3921, file: !94, line: 761, baseType: !154, size: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !151, file: !94, line: 340, baseType: !179, size: 64, offset: 832)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !151, file: !94, line: 346, baseType: !3675, size: 128, offset: 896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !151, file: !94, line: 348, baseType: !3928, size: 32, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !94, line: 155, baseType: !207)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !151, file: !94, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !151, file: !94, line: 352, baseType: !1360, size: 8, offset: 1064)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !151, file: !94, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !151, file: !94, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !151, file: !94, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !151, file: !94, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !151, file: !94, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !151, file: !94, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !151, file: !94, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !151, file: !94, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !151, file: !94, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !151, file: !94, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !151, file: !94, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !151, file: !94, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !151, file: !94, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !151, file: !94, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !151, file: !94, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !151, file: !94, line: 376, baseType: !7, size: 32, offset: 1120)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !151, file: !94, line: 377, baseType: !7, size: 32, offset: 1152)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !151, file: !94, line: 380, baseType: !3949, size: 64, offset: 1216)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !94, line: 303, flags: DIFlagFwdDecl)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !151, file: !94, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !151, file: !94, line: 383, baseType: !207, size: 32, offset: 1312)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !151, file: !94, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !151, file: !94, line: 387, baseType: !3909, size: 32, offset: 1376)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !151, file: !94, line: 388, baseType: !250, size: 5568, offset: 1408)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !151, file: !94, line: 390, baseType: !207, size: 32, offset: 6976)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !151, file: !94, line: 396, baseType: !7, size: 32, offset: 7008)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !151, file: !94, line: 397, baseType: !3959, size: 8704, offset: 7040)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 8704, elements: !3960)
!3960 = !{!3961}
!3961 = !DISubrange(count: 17)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !151, file: !94, line: 399, baseType: !512, size: 8, offset: 15744)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !151, file: !94, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !151, file: !94, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !151, file: !94, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !151, file: !94, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !151, file: !94, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !151, file: !94, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !151, file: !94, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !151, file: !94, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !151, file: !94, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !151, file: !94, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !151, file: !94, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !151, file: !94, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !151, file: !94, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !151, file: !94, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !151, file: !94, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !151, file: !94, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !151, file: !94, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !151, file: !94, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !151, file: !94, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !151, file: !94, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !151, file: !94, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !151, file: !94, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !151, file: !94, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !151, file: !94, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !151, file: !94, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !151, file: !94, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !151, file: !94, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !151, file: !94, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !151, file: !94, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !151, file: !94, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !151, file: !94, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !151, file: !94, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !151, file: !94, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !151, file: !94, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !151, file: !94, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !151, file: !94, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !151, file: !94, line: 450, baseType: !4000, size: 16, offset: 15792)
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !94, line: 206, baseType: !245)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !151, file: !94, line: 451, baseType: !773, size: 32, offset: 15808)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !151, file: !94, line: 453, baseType: !4003, size: 512, offset: 15840)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 512, elements: !1742)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !151, file: !94, line: 454, baseType: !660, size: 64, offset: 16384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !151, file: !94, line: 455, baseType: !372, size: 64, offset: 16448)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !151, file: !94, line: 456, baseType: !207, size: 32, offset: 16512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !151, file: !94, line: 457, baseType: !4008, size: 1088, offset: 16576)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1088, elements: !3960)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !151, file: !94, line: 458, baseType: !4008, size: 1088, offset: 17664)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !151, file: !94, line: 469, baseType: !358, size: 64, offset: 18752)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !151, file: !94, line: 471, baseType: !4012, size: 64, offset: 18816)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !94, line: 304, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !94, line: 478, baseType: !4015, size: 64, offset: 18880)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !94, line: 478, size: 64, elements: !4016)
!4016 = !{!4017, !4044}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4015, file: !94, line: 479, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !122, line: 323, size: 1024, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4043}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4019, file: !122, line: 324, baseType: !207, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4019, file: !122, line: 325, baseType: !207, size: 32, offset: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4019, file: !122, line: 326, baseType: !221, size: 32, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4019, file: !122, line: 327, baseType: !885, size: 16, offset: 96)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4019, file: !122, line: 328, baseType: !885, size: 16, offset: 112)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4019, file: !122, line: 329, baseType: !885, size: 16, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4019, file: !122, line: 330, baseType: !885, size: 16, offset: 144)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4019, file: !122, line: 331, baseType: !885, size: 16, offset: 160)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4019, file: !122, line: 332, baseType: !885, size: 16, offset: 176)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4019, file: !122, line: 333, baseType: !885, size: 16, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4019, file: !122, line: 334, baseType: !221, size: 32, offset: 224)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4019, file: !122, line: 335, baseType: !1360, size: 8, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4019, file: !122, line: 336, baseType: !1360, size: 8, offset: 264)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4019, file: !122, line: 337, baseType: !885, size: 16, offset: 272)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4019, file: !122, line: 338, baseType: !150, size: 64, offset: 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4019, file: !122, line: 339, baseType: !150, size: 64, offset: 384)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4019, file: !122, line: 340, baseType: !221, size: 32, offset: 448)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4019, file: !122, line: 341, baseType: !1360, size: 8, offset: 480)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4019, file: !122, line: 342, baseType: !885, size: 16, offset: 496)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4019, file: !122, line: 343, baseType: !885, size: 16, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4019, file: !122, line: 344, baseType: !4042, size: 384, offset: 576)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 384, elements: !1632)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4019, file: !122, line: 345, baseType: !512, size: 8, offset: 960)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4015, file: !94, line: 480, baseType: !150, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !151, file: !94, line: 482, baseType: !885, size: 16, offset: 18944)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !151, file: !94, line: 483, baseType: !1360, size: 8, offset: 18960)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !151, file: !94, line: 497, baseType: !885, size: 16, offset: 18976)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !151, file: !94, line: 498, baseType: !178, size: 64, offset: 19008)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !151, file: !94, line: 499, baseType: !352, size: 64, offset: 19072)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !151, file: !94, line: 500, baseType: !306, size: 64, offset: 19136)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !151, file: !94, line: 502, baseType: !190, size: 64, offset: 19200)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4054)
!4054 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!4055 = !{!4056, !0, !4058, !4072, !4074, !4076, !4078, !4080}
!4056 = !DIGlobalVariableExpression(var: !4057, expr: !DIExpression())
!4057 = distinct !DIGlobalVariable(name: "sriov_dev_attr_group", scope: !2, file: !3, line: 424, type: !360, isLocal: false, isDefinition: true)
!4058 = !DIGlobalVariableExpression(var: !4059, expr: !DIExpression())
!4059 = distinct !DIGlobalVariable(name: "dev_attr_sriov_totalvfs", scope: !2, file: !3, line: 396, type: !4060, isLocal: true, isDefinition: true)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !4061)
!4061 = !{!4062, !4063, !4068}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4060, file: !73, line: 100, baseType: !343, size: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4060, file: !73, line: 101, baseType: !4064, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!337, !249, !4067, !306}
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4060, file: !73, line: 103, baseType: !4069, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!337, !249, !4067, !186, !352}
!4072 = !DIGlobalVariableExpression(var: !4073, expr: !DIExpression())
!4073 = distinct !DIGlobalVariable(name: "dev_attr_sriov_numvfs", scope: !2, file: !3, line: 397, type: !4060, isLocal: true, isDefinition: true)
!4074 = !DIGlobalVariableExpression(var: !4075, expr: !DIExpression())
!4075 = distinct !DIGlobalVariable(name: "dev_attr_sriov_offset", scope: !2, file: !3, line: 398, type: !4060, isLocal: true, isDefinition: true)
!4076 = !DIGlobalVariableExpression(var: !4077, expr: !DIExpression())
!4077 = distinct !DIGlobalVariable(name: "dev_attr_sriov_stride", scope: !2, file: !3, line: 399, type: !4060, isLocal: true, isDefinition: true)
!4078 = !DIGlobalVariableExpression(var: !4079, expr: !DIExpression())
!4079 = distinct !DIGlobalVariable(name: "dev_attr_sriov_vf_device", scope: !2, file: !3, line: 400, type: !4060, isLocal: true, isDefinition: true)
!4080 = !DIGlobalVariableExpression(var: !4081, expr: !DIExpression())
!4081 = distinct !DIGlobalVariable(name: "dev_attr_sriov_drivers_autoprobe", scope: !2, file: !3, line: 401, type: !4060, isLocal: true, isDefinition: true)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 448, elements: !4083)
!4083 = !{!4084}
!4084 = !DISubrange(count: 7)
!4085 = !{i32 7, !"Dwarf Version", i32 4}
!4086 = !{i32 2, !"Debug Info Version", i32 3}
!4087 = !{i32 1, !"wchar_size", i32 2}
!4088 = !{i32 1, !"Code Model", i32 2}
!4089 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4090 = distinct !DISubprogram(name: "pci_iov_virtfn_bus", scope: !3, file: !3, line: 19, type: !3897, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4091 = !DILocalVariable(name: "dev", arg: 1, scope: !4090, file: !3, line: 19, type: !150)
!4092 = !DILocation(line: 19, column: 40, scope: !4090)
!4093 = !DILocalVariable(name: "vf_id", arg: 2, scope: !4090, file: !3, line: 19, type: !207)
!4094 = !DILocation(line: 19, column: 49, scope: !4090)
!4095 = !DILocation(line: 21, column: 7, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 21, column: 6)
!4097 = !DILocation(line: 21, column: 12, scope: !4096)
!4098 = !DILocation(line: 21, column: 6, scope: !4090)
!4099 = !DILocation(line: 22, column: 3, scope: !4096)
!4100 = !DILocation(line: 23, column: 9, scope: !4090)
!4101 = !DILocation(line: 23, column: 14, scope: !4090)
!4102 = !DILocation(line: 23, column: 19, scope: !4090)
!4103 = !DILocation(line: 23, column: 30, scope: !4090)
!4104 = !DILocation(line: 23, column: 35, scope: !4090)
!4105 = !DILocation(line: 23, column: 43, scope: !4090)
!4106 = !DILocation(line: 23, column: 48, scope: !4090)
!4107 = !DILocation(line: 23, column: 55, scope: !4090)
!4108 = !DILocation(line: 23, column: 41, scope: !4090)
!4109 = !DILocation(line: 24, column: 9, scope: !4090)
!4110 = !DILocation(line: 24, column: 14, scope: !4090)
!4111 = !DILocation(line: 24, column: 21, scope: !4090)
!4112 = !DILocation(line: 24, column: 30, scope: !4090)
!4113 = !DILocation(line: 24, column: 28, scope: !4090)
!4114 = !DILocation(line: 23, column: 62, scope: !4090)
!4115 = !DILocation(line: 24, column: 37, scope: !4090)
!4116 = !DILocation(line: 23, column: 26, scope: !4090)
!4117 = !DILocation(line: 23, column: 2, scope: !4090)
!4118 = !DILocation(line: 25, column: 1, scope: !4090)
!4119 = distinct !DISubprogram(name: "pci_iov_virtfn_devfn", scope: !3, file: !3, line: 27, type: !3897, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4120 = !DILocalVariable(name: "dev", arg: 1, scope: !4119, file: !3, line: 27, type: !150)
!4121 = !DILocation(line: 27, column: 42, scope: !4119)
!4122 = !DILocalVariable(name: "vf_id", arg: 2, scope: !4119, file: !3, line: 27, type: !207)
!4123 = !DILocation(line: 27, column: 51, scope: !4119)
!4124 = !DILocation(line: 29, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 29, column: 6)
!4126 = !DILocation(line: 29, column: 12, scope: !4125)
!4127 = !DILocation(line: 29, column: 6, scope: !4119)
!4128 = !DILocation(line: 30, column: 3, scope: !4125)
!4129 = !DILocation(line: 31, column: 10, scope: !4119)
!4130 = !DILocation(line: 31, column: 15, scope: !4119)
!4131 = !DILocation(line: 31, column: 23, scope: !4119)
!4132 = !DILocation(line: 31, column: 28, scope: !4119)
!4133 = !DILocation(line: 31, column: 35, scope: !4119)
!4134 = !DILocation(line: 31, column: 21, scope: !4119)
!4135 = !DILocation(line: 32, column: 3, scope: !4119)
!4136 = !DILocation(line: 32, column: 8, scope: !4119)
!4137 = !DILocation(line: 32, column: 15, scope: !4119)
!4138 = !DILocation(line: 32, column: 24, scope: !4119)
!4139 = !DILocation(line: 32, column: 22, scope: !4119)
!4140 = !DILocation(line: 31, column: 42, scope: !4119)
!4141 = !DILocation(line: 32, column: 31, scope: !4119)
!4142 = !DILocation(line: 31, column: 2, scope: !4119)
!4143 = !DILocation(line: 33, column: 1, scope: !4119)
!4144 = distinct !DISubprogram(name: "pci_iov_resource_size", scope: !3, file: !3, line: 105, type: !4145, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!177, !150, !207}
!4147 = !DILocalVariable(name: "dev", arg: 1, scope: !4144, file: !3, line: 105, type: !150)
!4148 = !DILocation(line: 105, column: 55, scope: !4144)
!4149 = !DILocalVariable(name: "resno", arg: 2, scope: !4144, file: !3, line: 105, type: !207)
!4150 = !DILocation(line: 105, column: 64, scope: !4144)
!4151 = !DILocation(line: 107, column: 7, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 107, column: 6)
!4153 = !DILocation(line: 107, column: 12, scope: !4152)
!4154 = !DILocation(line: 107, column: 6, scope: !4144)
!4155 = !DILocation(line: 108, column: 3, scope: !4152)
!4156 = !DILocation(line: 110, column: 9, scope: !4144)
!4157 = !DILocation(line: 110, column: 14, scope: !4144)
!4158 = !DILocation(line: 110, column: 21, scope: !4144)
!4159 = !DILocation(line: 110, column: 27, scope: !4144)
!4160 = !DILocation(line: 110, column: 33, scope: !4144)
!4161 = !DILocation(line: 110, column: 2, scope: !4144)
!4162 = !DILocation(line: 111, column: 1, scope: !4144)
!4163 = distinct !DISubprogram(name: "pci_iov_sysfs_link", scope: !3, file: !3, line: 136, type: !4164, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!207, !150, !150, !207}
!4166 = !DILocalVariable(name: "dev", arg: 1, scope: !4163, file: !3, line: 136, type: !150)
!4167 = !DILocation(line: 136, column: 40, scope: !4163)
!4168 = !DILocalVariable(name: "virtfn", arg: 2, scope: !4163, file: !3, line: 137, type: !150)
!4169 = !DILocation(line: 137, column: 19, scope: !4163)
!4170 = !DILocalVariable(name: "id", arg: 3, scope: !4163, file: !3, line: 137, type: !207)
!4171 = !DILocation(line: 137, column: 31, scope: !4163)
!4172 = !DILocalVariable(name: "buf", scope: !4163, file: !3, line: 139, type: !1741)
!4173 = !DILocation(line: 139, column: 7, scope: !4163)
!4174 = !DILocalVariable(name: "rc", scope: !4163, file: !3, line: 140, type: !207)
!4175 = !DILocation(line: 140, column: 6, scope: !4163)
!4176 = !DILocation(line: 142, column: 10, scope: !4163)
!4177 = !DILocation(line: 142, column: 27, scope: !4163)
!4178 = !DILocation(line: 142, column: 2, scope: !4163)
!4179 = !DILocation(line: 143, column: 26, scope: !4163)
!4180 = !DILocation(line: 143, column: 31, scope: !4163)
!4181 = !DILocation(line: 143, column: 35, scope: !4163)
!4182 = !DILocation(line: 143, column: 42, scope: !4163)
!4183 = !DILocation(line: 143, column: 50, scope: !4163)
!4184 = !DILocation(line: 143, column: 54, scope: !4163)
!4185 = !DILocation(line: 143, column: 60, scope: !4163)
!4186 = !DILocation(line: 143, column: 7, scope: !4163)
!4187 = !DILocation(line: 143, column: 5, scope: !4163)
!4188 = !DILocation(line: 144, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 144, column: 6)
!4190 = !DILocation(line: 144, column: 6, scope: !4163)
!4191 = !DILocation(line: 145, column: 3, scope: !4189)
!4192 = !DILocation(line: 146, column: 26, scope: !4163)
!4193 = !DILocation(line: 146, column: 34, scope: !4163)
!4194 = !DILocation(line: 146, column: 38, scope: !4163)
!4195 = !DILocation(line: 146, column: 45, scope: !4163)
!4196 = !DILocation(line: 146, column: 50, scope: !4163)
!4197 = !DILocation(line: 146, column: 54, scope: !4163)
!4198 = !DILocation(line: 146, column: 7, scope: !4163)
!4199 = !DILocation(line: 146, column: 5, scope: !4163)
!4200 = !DILocation(line: 147, column: 6, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 147, column: 6)
!4202 = !DILocation(line: 147, column: 6, scope: !4163)
!4203 = !DILocation(line: 148, column: 3, scope: !4201)
!4204 = !DILocation(line: 150, column: 18, scope: !4163)
!4205 = !DILocation(line: 150, column: 26, scope: !4163)
!4206 = !DILocation(line: 150, column: 30, scope: !4163)
!4207 = !DILocation(line: 150, column: 2, scope: !4163)
!4208 = !DILocation(line: 152, column: 2, scope: !4163)
!4209 = !DILabel(scope: !4163, name: "failed1", file: !3, line: 154)
!4210 = !DILocation(line: 154, column: 1, scope: !4163)
!4211 = !DILocation(line: 155, column: 21, scope: !4163)
!4212 = !DILocation(line: 155, column: 26, scope: !4163)
!4213 = !DILocation(line: 155, column: 30, scope: !4163)
!4214 = !DILocation(line: 155, column: 36, scope: !4163)
!4215 = !DILocation(line: 155, column: 2, scope: !4163)
!4216 = !DILabel(scope: !4163, name: "failed", file: !3, line: 156)
!4217 = !DILocation(line: 156, column: 1, scope: !4163)
!4218 = !DILocation(line: 157, column: 9, scope: !4163)
!4219 = !DILocation(line: 157, column: 2, scope: !4163)
!4220 = !DILocation(line: 158, column: 1, scope: !4163)
!4221 = distinct !DISubprogram(name: "pci_iov_add_virtfn", scope: !3, file: !3, line: 160, type: !3897, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4222 = !DILocalVariable(name: "dev", arg: 1, scope: !4221, file: !3, line: 160, type: !150)
!4223 = !DILocation(line: 160, column: 40, scope: !4221)
!4224 = !DILocalVariable(name: "id", arg: 2, scope: !4221, file: !3, line: 160, type: !207)
!4225 = !DILocation(line: 160, column: 49, scope: !4221)
!4226 = !DILocalVariable(name: "i", scope: !4221, file: !3, line: 162, type: !207)
!4227 = !DILocation(line: 162, column: 6, scope: !4221)
!4228 = !DILocalVariable(name: "rc", scope: !4221, file: !3, line: 163, type: !207)
!4229 = !DILocation(line: 163, column: 6, scope: !4221)
!4230 = !DILocalVariable(name: "size", scope: !4221, file: !3, line: 164, type: !179)
!4231 = !DILocation(line: 164, column: 6, scope: !4221)
!4232 = !DILocalVariable(name: "virtfn", scope: !4221, file: !3, line: 165, type: !150)
!4233 = !DILocation(line: 165, column: 18, scope: !4221)
!4234 = !DILocalVariable(name: "res", scope: !4221, file: !3, line: 166, type: !172)
!4235 = !DILocation(line: 166, column: 19, scope: !4221)
!4236 = !DILocalVariable(name: "iov", scope: !4221, file: !3, line: 167, type: !4018)
!4237 = !DILocation(line: 167, column: 20, scope: !4221)
!4238 = !DILocation(line: 167, column: 26, scope: !4221)
!4239 = !DILocation(line: 167, column: 31, scope: !4221)
!4240 = !DILocalVariable(name: "bus", scope: !4221, file: !3, line: 168, type: !161)
!4241 = !DILocation(line: 168, column: 18, scope: !4221)
!4242 = !DILocation(line: 170, column: 23, scope: !4221)
!4243 = !DILocation(line: 170, column: 28, scope: !4221)
!4244 = !DILocation(line: 170, column: 52, scope: !4221)
!4245 = !DILocation(line: 170, column: 57, scope: !4221)
!4246 = !DILocation(line: 170, column: 33, scope: !4221)
!4247 = !DILocation(line: 170, column: 8, scope: !4221)
!4248 = !DILocation(line: 170, column: 6, scope: !4221)
!4249 = !DILocation(line: 171, column: 7, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 171, column: 6)
!4251 = !DILocation(line: 171, column: 6, scope: !4221)
!4252 = !DILocation(line: 172, column: 3, scope: !4250)
!4253 = !DILocation(line: 174, column: 25, scope: !4221)
!4254 = !DILocation(line: 174, column: 11, scope: !4221)
!4255 = !DILocation(line: 174, column: 9, scope: !4221)
!4256 = !DILocation(line: 175, column: 7, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 175, column: 6)
!4258 = !DILocation(line: 175, column: 6, scope: !4221)
!4259 = !DILocation(line: 176, column: 3, scope: !4257)
!4260 = !DILocation(line: 178, column: 39, scope: !4221)
!4261 = !DILocation(line: 178, column: 44, scope: !4221)
!4262 = !DILocation(line: 178, column: 18, scope: !4221)
!4263 = !DILocation(line: 178, column: 2, scope: !4221)
!4264 = !DILocation(line: 178, column: 10, scope: !4221)
!4265 = !DILocation(line: 178, column: 16, scope: !4221)
!4266 = !DILocation(line: 179, column: 19, scope: !4221)
!4267 = !DILocation(line: 179, column: 24, scope: !4221)
!4268 = !DILocation(line: 179, column: 2, scope: !4221)
!4269 = !DILocation(line: 179, column: 10, scope: !4221)
!4270 = !DILocation(line: 179, column: 17, scope: !4221)
!4271 = !DILocation(line: 180, column: 19, scope: !4221)
!4272 = !DILocation(line: 180, column: 24, scope: !4221)
!4273 = !DILocation(line: 180, column: 2, scope: !4221)
!4274 = !DILocation(line: 180, column: 10, scope: !4221)
!4275 = !DILocation(line: 180, column: 17, scope: !4221)
!4276 = !DILocation(line: 181, column: 2, scope: !4221)
!4277 = !DILocation(line: 181, column: 10, scope: !4221)
!4278 = !DILocation(line: 181, column: 20, scope: !4221)
!4279 = !DILocation(line: 182, column: 31, scope: !4221)
!4280 = !DILocation(line: 182, column: 19, scope: !4221)
!4281 = !DILocation(line: 182, column: 2, scope: !4221)
!4282 = !DILocation(line: 182, column: 10, scope: !4221)
!4283 = !DILocation(line: 182, column: 17, scope: !4221)
!4284 = !DILocation(line: 183, column: 2, scope: !4221)
!4285 = !DILocation(line: 183, column: 10, scope: !4221)
!4286 = !DILocation(line: 183, column: 28, scope: !4221)
!4287 = !DILocation(line: 185, column: 6, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 185, column: 6)
!4289 = !DILocation(line: 185, column: 9, scope: !4288)
!4290 = !DILocation(line: 185, column: 6, scope: !4221)
!4291 = !DILocation(line: 186, column: 29, scope: !4288)
!4292 = !DILocation(line: 186, column: 3, scope: !4288)
!4293 = !DILocation(line: 188, column: 24, scope: !4221)
!4294 = !DILocation(line: 188, column: 7, scope: !4221)
!4295 = !DILocation(line: 188, column: 5, scope: !4221)
!4296 = !DILocation(line: 189, column: 6, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 189, column: 6)
!4298 = !DILocation(line: 189, column: 6, scope: !4221)
!4299 = !DILocation(line: 190, column: 3, scope: !4297)
!4300 = !DILocation(line: 192, column: 23, scope: !4221)
!4301 = !DILocation(line: 192, column: 28, scope: !4221)
!4302 = !DILocation(line: 192, column: 32, scope: !4221)
!4303 = !DILocation(line: 192, column: 2, scope: !4221)
!4304 = !DILocation(line: 192, column: 10, scope: !4221)
!4305 = !DILocation(line: 192, column: 14, scope: !4221)
!4306 = !DILocation(line: 192, column: 21, scope: !4221)
!4307 = !DILocation(line: 193, column: 2, scope: !4221)
!4308 = !DILocation(line: 193, column: 10, scope: !4221)
!4309 = !DILocation(line: 193, column: 24, scope: !4221)
!4310 = !DILocation(line: 195, column: 9, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 195, column: 2)
!4312 = !DILocation(line: 195, column: 7, scope: !4311)
!4313 = !DILocation(line: 195, column: 14, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 195, column: 2)
!4315 = !DILocation(line: 195, column: 16, scope: !4314)
!4316 = !DILocation(line: 195, column: 2, scope: !4311)
!4317 = !DILocation(line: 196, column: 10, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 195, column: 43)
!4319 = !DILocation(line: 196, column: 15, scope: !4318)
!4320 = !DILocation(line: 196, column: 24, scope: !4318)
!4321 = !DILocation(line: 196, column: 26, scope: !4318)
!4322 = !DILocation(line: 196, column: 7, scope: !4318)
!4323 = !DILocation(line: 197, column: 8, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 197, column: 7)
!4325 = !DILocation(line: 197, column: 13, scope: !4324)
!4326 = !DILocation(line: 197, column: 7, scope: !4318)
!4327 = !DILocation(line: 198, column: 4, scope: !4324)
!4328 = !DILocation(line: 199, column: 39, scope: !4318)
!4329 = !DILocation(line: 199, column: 30, scope: !4318)
!4330 = !DILocation(line: 199, column: 3, scope: !4318)
!4331 = !DILocation(line: 199, column: 11, scope: !4318)
!4332 = !DILocation(line: 199, column: 20, scope: !4318)
!4333 = !DILocation(line: 199, column: 23, scope: !4318)
!4334 = !DILocation(line: 199, column: 28, scope: !4318)
!4335 = !DILocation(line: 200, column: 31, scope: !4318)
!4336 = !DILocation(line: 200, column: 36, scope: !4318)
!4337 = !DILocation(line: 200, column: 3, scope: !4318)
!4338 = !DILocation(line: 200, column: 11, scope: !4318)
!4339 = !DILocation(line: 200, column: 20, scope: !4318)
!4340 = !DILocation(line: 200, column: 23, scope: !4318)
!4341 = !DILocation(line: 200, column: 29, scope: !4318)
!4342 = !DILocation(line: 201, column: 32, scope: !4318)
!4343 = !DILocation(line: 201, column: 37, scope: !4318)
!4344 = !DILocation(line: 201, column: 39, scope: !4318)
!4345 = !DILocation(line: 201, column: 10, scope: !4318)
!4346 = !DILocation(line: 201, column: 8, scope: !4318)
!4347 = !DILocation(line: 202, column: 31, scope: !4318)
!4348 = !DILocation(line: 202, column: 36, scope: !4318)
!4349 = !DILocation(line: 202, column: 44, scope: !4318)
!4350 = !DILocation(line: 202, column: 51, scope: !4318)
!4351 = !DILocation(line: 202, column: 49, scope: !4318)
!4352 = !DILocation(line: 202, column: 42, scope: !4318)
!4353 = !DILocation(line: 202, column: 3, scope: !4318)
!4354 = !DILocation(line: 202, column: 11, scope: !4318)
!4355 = !DILocation(line: 202, column: 20, scope: !4318)
!4356 = !DILocation(line: 202, column: 23, scope: !4318)
!4357 = !DILocation(line: 202, column: 29, scope: !4318)
!4358 = !DILocation(line: 203, column: 29, scope: !4318)
!4359 = !DILocation(line: 203, column: 37, scope: !4318)
!4360 = !DILocation(line: 203, column: 46, scope: !4318)
!4361 = !DILocation(line: 203, column: 49, scope: !4318)
!4362 = !DILocation(line: 203, column: 57, scope: !4318)
!4363 = !DILocation(line: 203, column: 55, scope: !4318)
!4364 = !DILocation(line: 203, column: 62, scope: !4318)
!4365 = !DILocation(line: 203, column: 3, scope: !4318)
!4366 = !DILocation(line: 203, column: 11, scope: !4318)
!4367 = !DILocation(line: 203, column: 20, scope: !4318)
!4368 = !DILocation(line: 203, column: 23, scope: !4318)
!4369 = !DILocation(line: 203, column: 27, scope: !4318)
!4370 = !DILocation(line: 204, column: 25, scope: !4318)
!4371 = !DILocation(line: 204, column: 31, scope: !4318)
!4372 = !DILocation(line: 204, column: 39, scope: !4318)
!4373 = !DILocation(line: 204, column: 48, scope: !4318)
!4374 = !DILocation(line: 204, column: 8, scope: !4318)
!4375 = !DILocation(line: 204, column: 6, scope: !4318)
!4376 = !DILocation(line: 205, column: 3, scope: !4318)
!4377 = !DILocation(line: 205, column: 3, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !3, line: 205, column: 3)
!4379 = distinct !DILexicalBlock(scope: !4318, file: !3, line: 205, column: 3)
!4380 = !DILocation(line: 205, column: 3, scope: !4379)
!4381 = !DILocation(line: 205, column: 3, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 205, column: 3)
!4383 = !DILocation(line: 205, column: 3, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 205, column: 3)
!4385 = !DILocation(line: 205, column: 3, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 205, column: 3)
!4387 = !{i32 -2141823633, i32 -2141823604, i32 -2141823558, i32 -2141823500, i32 -2141823446, i32 -2141823392, i32 -2141823337, i32 -2141823306}
!4388 = !DILocation(line: 205, column: 3, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 205, column: 3)
!4390 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 205, column: 3)
!4391 = !{i32 -2141822866, i32 -2141822859, i32 -2141822805, i32 -2141822774, i32 -2141822744}
!4392 = !DILocation(line: 205, column: 3, scope: !4390)
!4393 = !DILocation(line: 206, column: 2, scope: !4318)
!4394 = !DILocation(line: 195, column: 39, scope: !4314)
!4395 = !DILocation(line: 195, column: 2, scope: !4314)
!4396 = distinct !{!4396, !4316, !4397}
!4397 = !DILocation(line: 206, column: 2, scope: !4311)
!4398 = !DILocation(line: 208, column: 17, scope: !4221)
!4399 = !DILocation(line: 208, column: 25, scope: !4221)
!4400 = !DILocation(line: 208, column: 33, scope: !4221)
!4401 = !DILocation(line: 208, column: 2, scope: !4221)
!4402 = !DILocation(line: 209, column: 26, scope: !4221)
!4403 = !DILocation(line: 209, column: 31, scope: !4221)
!4404 = !DILocation(line: 209, column: 39, scope: !4221)
!4405 = !DILocation(line: 209, column: 7, scope: !4221)
!4406 = !DILocation(line: 209, column: 5, scope: !4221)
!4407 = !DILocation(line: 210, column: 6, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 210, column: 6)
!4409 = !DILocation(line: 210, column: 6, scope: !4221)
!4410 = !DILocation(line: 211, column: 3, scope: !4408)
!4411 = !DILocation(line: 213, column: 21, scope: !4221)
!4412 = !DILocation(line: 213, column: 2, scope: !4221)
!4413 = !DILocation(line: 215, column: 2, scope: !4221)
!4414 = !DILabel(scope: !4221, name: "failed1", file: !3, line: 217)
!4415 = !DILocation(line: 217, column: 1, scope: !4221)
!4416 = !DILocation(line: 218, column: 33, scope: !4221)
!4417 = !DILocation(line: 218, column: 2, scope: !4221)
!4418 = !DILocation(line: 219, column: 14, scope: !4221)
!4419 = !DILocation(line: 219, column: 2, scope: !4221)
!4420 = !DILabel(scope: !4221, name: "failed0", file: !3, line: 220)
!4421 = !DILocation(line: 220, column: 1, scope: !4221)
!4422 = !DILocation(line: 221, column: 20, scope: !4221)
!4423 = !DILocation(line: 221, column: 25, scope: !4221)
!4424 = !DILocation(line: 221, column: 30, scope: !4221)
!4425 = !DILocation(line: 221, column: 2, scope: !4221)
!4426 = !DILabel(scope: !4221, name: "failed", file: !3, line: 222)
!4427 = !DILocation(line: 222, column: 1, scope: !4221)
!4428 = !DILocation(line: 224, column: 9, scope: !4221)
!4429 = !DILocation(line: 224, column: 2, scope: !4221)
!4430 = !DILocation(line: 225, column: 1, scope: !4221)
!4431 = distinct !DISubprogram(name: "virtfn_add_bus", scope: !3, file: !3, line: 79, type: !4432, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!161, !161, !207}
!4434 = !DILocalVariable(name: "bus", arg: 1, scope: !4431, file: !3, line: 79, type: !161)
!4435 = !DILocation(line: 79, column: 55, scope: !4431)
!4436 = !DILocalVariable(name: "busnr", arg: 2, scope: !4431, file: !3, line: 79, type: !207)
!4437 = !DILocation(line: 79, column: 64, scope: !4431)
!4438 = !DILocalVariable(name: "child", scope: !4431, file: !3, line: 81, type: !161)
!4439 = !DILocation(line: 81, column: 18, scope: !4431)
!4440 = !DILocation(line: 83, column: 6, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 83, column: 6)
!4442 = !DILocation(line: 83, column: 11, scope: !4441)
!4443 = !DILocation(line: 83, column: 21, scope: !4441)
!4444 = !DILocation(line: 83, column: 18, scope: !4441)
!4445 = !DILocation(line: 83, column: 6, scope: !4431)
!4446 = !DILocation(line: 84, column: 10, scope: !4441)
!4447 = !DILocation(line: 84, column: 3, scope: !4441)
!4448 = !DILocation(line: 86, column: 37, scope: !4431)
!4449 = !DILocation(line: 86, column: 23, scope: !4431)
!4450 = !DILocation(line: 86, column: 43, scope: !4431)
!4451 = !DILocation(line: 86, column: 10, scope: !4431)
!4452 = !DILocation(line: 86, column: 8, scope: !4431)
!4453 = !DILocation(line: 87, column: 6, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 87, column: 6)
!4455 = !DILocation(line: 87, column: 6, scope: !4431)
!4456 = !DILocation(line: 88, column: 10, scope: !4454)
!4457 = !DILocation(line: 88, column: 3, scope: !4454)
!4458 = !DILocation(line: 90, column: 26, scope: !4431)
!4459 = !DILocation(line: 90, column: 37, scope: !4431)
!4460 = !DILocation(line: 90, column: 10, scope: !4431)
!4461 = !DILocation(line: 90, column: 8, scope: !4431)
!4462 = !DILocation(line: 91, column: 7, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 91, column: 6)
!4464 = !DILocation(line: 91, column: 6, scope: !4431)
!4465 = !DILocation(line: 92, column: 3, scope: !4463)
!4466 = !DILocation(line: 94, column: 26, scope: !4431)
!4467 = !DILocation(line: 94, column: 33, scope: !4431)
!4468 = !DILocation(line: 94, column: 40, scope: !4431)
!4469 = !DILocation(line: 94, column: 2, scope: !4431)
!4470 = !DILocation(line: 96, column: 9, scope: !4431)
!4471 = !DILocation(line: 96, column: 2, scope: !4431)
!4472 = !DILocation(line: 97, column: 1, scope: !4431)
!4473 = distinct !DISubprogram(name: "pci_read_vf_config_common", scope: !3, file: !3, line: 113, type: !3884, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4474 = !DILocalVariable(name: "virtfn", arg: 1, scope: !4473, file: !3, line: 113, type: !150)
!4475 = !DILocation(line: 113, column: 55, scope: !4473)
!4476 = !DILocalVariable(name: "physfn", scope: !4473, file: !3, line: 115, type: !150)
!4477 = !DILocation(line: 115, column: 18, scope: !4473)
!4478 = !DILocation(line: 115, column: 27, scope: !4473)
!4479 = !DILocation(line: 115, column: 35, scope: !4473)
!4480 = !DILocation(line: 126, column: 24, scope: !4473)
!4481 = !DILocation(line: 127, column: 11, scope: !4473)
!4482 = !DILocation(line: 127, column: 19, scope: !4473)
!4483 = !DILocation(line: 127, column: 26, scope: !4473)
!4484 = !DILocation(line: 126, column: 2, scope: !4473)
!4485 = !DILocation(line: 128, column: 23, scope: !4473)
!4486 = !DILocation(line: 129, column: 10, scope: !4473)
!4487 = !DILocation(line: 129, column: 18, scope: !4473)
!4488 = !DILocation(line: 129, column: 25, scope: !4473)
!4489 = !DILocation(line: 128, column: 2, scope: !4473)
!4490 = !DILocation(line: 130, column: 23, scope: !4473)
!4491 = !DILocation(line: 131, column: 10, scope: !4473)
!4492 = !DILocation(line: 131, column: 18, scope: !4473)
!4493 = !DILocation(line: 131, column: 25, scope: !4473)
!4494 = !DILocation(line: 130, column: 2, scope: !4473)
!4495 = !DILocation(line: 132, column: 23, scope: !4473)
!4496 = !DILocation(line: 133, column: 10, scope: !4473)
!4497 = !DILocation(line: 133, column: 18, scope: !4473)
!4498 = !DILocation(line: 133, column: 25, scope: !4473)
!4499 = !DILocation(line: 132, column: 2, scope: !4473)
!4500 = !DILocation(line: 134, column: 1, scope: !4473)
!4501 = distinct !DISubprogram(name: "pci_name", scope: !94, file: !94, line: 1875, type: !4502, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!186, !4504}
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!4506 = !DILocalVariable(name: "pdev", arg: 1, scope: !4501, file: !94, line: 1875, type: !4504)
!4507 = !DILocation(line: 1875, column: 58, scope: !4501)
!4508 = !DILocation(line: 1877, column: 19, scope: !4501)
!4509 = !DILocation(line: 1877, column: 25, scope: !4501)
!4510 = !DILocation(line: 1877, column: 9, scope: !4501)
!4511 = !DILocation(line: 1877, column: 2, scope: !4501)
!4512 = distinct !DISubprogram(name: "virtfn_remove_bus", scope: !3, file: !3, line: 99, type: !4513, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !161, !161}
!4515 = !DILocalVariable(name: "physbus", arg: 1, scope: !4512, file: !3, line: 99, type: !161)
!4516 = !DILocation(line: 99, column: 47, scope: !4512)
!4517 = !DILocalVariable(name: "virtbus", arg: 2, scope: !4512, file: !3, line: 99, type: !161)
!4518 = !DILocation(line: 99, column: 72, scope: !4512)
!4519 = !DILocation(line: 101, column: 6, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 101, column: 6)
!4521 = !DILocation(line: 101, column: 17, scope: !4520)
!4522 = !DILocation(line: 101, column: 14, scope: !4520)
!4523 = !DILocation(line: 101, column: 25, scope: !4520)
!4524 = !DILocation(line: 101, column: 40, scope: !4520)
!4525 = !DILocation(line: 101, column: 49, scope: !4520)
!4526 = !DILocation(line: 101, column: 28, scope: !4520)
!4527 = !DILocation(line: 101, column: 6, scope: !4512)
!4528 = !DILocation(line: 102, column: 18, scope: !4520)
!4529 = !DILocation(line: 102, column: 3, scope: !4520)
!4530 = !DILocation(line: 103, column: 1, scope: !4512)
!4531 = distinct !DISubprogram(name: "pci_iov_remove_virtfn", scope: !3, file: !3, line: 227, type: !4532, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{null, !150, !207}
!4534 = !DILocalVariable(name: "dev", arg: 1, scope: !4531, file: !3, line: 227, type: !150)
!4535 = !DILocation(line: 227, column: 44, scope: !4531)
!4536 = !DILocalVariable(name: "id", arg: 2, scope: !4531, file: !3, line: 227, type: !207)
!4537 = !DILocation(line: 227, column: 53, scope: !4531)
!4538 = !DILocalVariable(name: "buf", scope: !4531, file: !3, line: 229, type: !1741)
!4539 = !DILocation(line: 229, column: 7, scope: !4531)
!4540 = !DILocalVariable(name: "virtfn", scope: !4531, file: !3, line: 230, type: !150)
!4541 = !DILocation(line: 230, column: 18, scope: !4531)
!4542 = !DILocation(line: 232, column: 53, scope: !4531)
!4543 = !DILocation(line: 232, column: 58, scope: !4531)
!4544 = !DILocation(line: 232, column: 39, scope: !4531)
!4545 = !DILocation(line: 233, column: 30, scope: !4531)
!4546 = !DILocation(line: 233, column: 35, scope: !4531)
!4547 = !DILocation(line: 233, column: 11, scope: !4531)
!4548 = !DILocation(line: 234, column: 32, scope: !4531)
!4549 = !DILocation(line: 234, column: 37, scope: !4531)
!4550 = !DILocation(line: 234, column: 11, scope: !4531)
!4551 = !DILocation(line: 232, column: 11, scope: !4531)
!4552 = !DILocation(line: 232, column: 9, scope: !4531)
!4553 = !DILocation(line: 235, column: 7, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 235, column: 6)
!4555 = !DILocation(line: 235, column: 6, scope: !4531)
!4556 = !DILocation(line: 236, column: 3, scope: !4554)
!4557 = !DILocation(line: 238, column: 10, scope: !4531)
!4558 = !DILocation(line: 238, column: 27, scope: !4531)
!4559 = !DILocation(line: 238, column: 2, scope: !4531)
!4560 = !DILocation(line: 239, column: 21, scope: !4531)
!4561 = !DILocation(line: 239, column: 26, scope: !4531)
!4562 = !DILocation(line: 239, column: 30, scope: !4531)
!4563 = !DILocation(line: 239, column: 36, scope: !4531)
!4564 = !DILocation(line: 239, column: 2, scope: !4531)
!4565 = !DILocation(line: 245, column: 6, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 245, column: 6)
!4567 = !DILocation(line: 245, column: 14, scope: !4566)
!4568 = !DILocation(line: 245, column: 18, scope: !4566)
!4569 = !DILocation(line: 245, column: 23, scope: !4566)
!4570 = !DILocation(line: 245, column: 6, scope: !4531)
!4571 = !DILocation(line: 246, column: 22, scope: !4566)
!4572 = !DILocation(line: 246, column: 30, scope: !4566)
!4573 = !DILocation(line: 246, column: 34, scope: !4566)
!4574 = !DILocation(line: 246, column: 3, scope: !4566)
!4575 = !DILocation(line: 248, column: 33, scope: !4531)
!4576 = !DILocation(line: 248, column: 2, scope: !4531)
!4577 = !DILocation(line: 249, column: 20, scope: !4531)
!4578 = !DILocation(line: 249, column: 25, scope: !4531)
!4579 = !DILocation(line: 249, column: 30, scope: !4531)
!4580 = !DILocation(line: 249, column: 38, scope: !4531)
!4581 = !DILocation(line: 249, column: 2, scope: !4531)
!4582 = !DILocation(line: 252, column: 14, scope: !4531)
!4583 = !DILocation(line: 252, column: 2, scope: !4531)
!4584 = !DILocation(line: 253, column: 14, scope: !4531)
!4585 = !DILocation(line: 253, column: 2, scope: !4531)
!4586 = !DILocation(line: 254, column: 1, scope: !4531)
!4587 = distinct !DISubprogram(name: "pci_domain_nr", scope: !4588, file: !4588, line: 44, type: !205, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4588 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/lizy2001/genbc/linux")
!4589 = !DILocalVariable(name: "bus", arg: 1, scope: !4587, file: !4588, line: 44, type: !161)
!4590 = !DILocation(line: 44, column: 49, scope: !4587)
!4591 = !DILocation(line: 46, column: 24, scope: !4587)
!4592 = !DILocation(line: 46, column: 9, scope: !4587)
!4593 = !DILocation(line: 46, column: 30, scope: !4587)
!4594 = !DILocation(line: 46, column: 2, scope: !4587)
!4595 = distinct !DISubprogram(name: "sriov_attrs_are_visible", scope: !3, file: !3, line: 413, type: !366, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4596 = !DILocalVariable(name: "kobj", arg: 1, scope: !4595, file: !3, line: 413, type: !258)
!4597 = !DILocation(line: 413, column: 56, scope: !4595)
!4598 = !DILocalVariable(name: "a", arg: 2, scope: !4595, file: !3, line: 414, type: !342)
!4599 = !DILocation(line: 414, column: 30, scope: !4595)
!4600 = !DILocalVariable(name: "n", arg: 3, scope: !4595, file: !3, line: 414, type: !207)
!4601 = !DILocation(line: 414, column: 37, scope: !4595)
!4602 = !DILocalVariable(name: "dev", scope: !4595, file: !3, line: 416, type: !249)
!4603 = !DILocation(line: 416, column: 17, scope: !4595)
!4604 = !DILocation(line: 416, column: 35, scope: !4595)
!4605 = !DILocation(line: 416, column: 23, scope: !4595)
!4606 = !DILocation(line: 418, column: 7, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4595, file: !3, line: 418, column: 6)
!4608 = !DILocation(line: 418, column: 6, scope: !4595)
!4609 = !DILocalVariable(name: "__mptr", scope: !4610, file: !3, line: 418, type: !149)
!4610 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 418, column: 7)
!4611 = !DILocation(line: 418, column: 7, scope: !4610)
!4612 = !DILocation(line: 418, column: 7, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 418, column: 7)
!4614 = !DILocation(line: 419, column: 3, scope: !4607)
!4615 = !DILocation(line: 421, column: 9, scope: !4595)
!4616 = !DILocation(line: 421, column: 12, scope: !4595)
!4617 = !DILocation(line: 421, column: 2, scope: !4595)
!4618 = !DILocation(line: 422, column: 1, scope: !4595)
!4619 = distinct !DISubprogram(name: "pcibios_sriov_enable", scope: !3, file: !3, line: 429, type: !4620, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!207, !150, !885}
!4622 = !DILocalVariable(name: "pdev", arg: 1, scope: !4619, file: !3, line: 429, type: !150)
!4623 = !DILocation(line: 429, column: 49, scope: !4619)
!4624 = !DILocalVariable(name: "num_vfs", arg: 2, scope: !4619, file: !3, line: 429, type: !885)
!4625 = !DILocation(line: 429, column: 59, scope: !4619)
!4626 = !DILocation(line: 431, column: 2, scope: !4619)
!4627 = distinct !DISubprogram(name: "pcibios_sriov_disable", scope: !3, file: !3, line: 434, type: !3892, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4628 = !DILocalVariable(name: "pdev", arg: 1, scope: !4627, file: !3, line: 434, type: !150)
!4629 = !DILocation(line: 434, column: 50, scope: !4627)
!4630 = !DILocation(line: 436, column: 2, scope: !4627)
!4631 = distinct !DISubprogram(name: "pci_iov_init", scope: !3, file: !3, line: 759, type: !3892, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4632 = !DILocalVariable(name: "dev", arg: 1, scope: !4631, file: !3, line: 759, type: !150)
!4633 = !DILocation(line: 759, column: 34, scope: !4631)
!4634 = !DILocalVariable(name: "pos", scope: !4631, file: !3, line: 761, type: !207)
!4635 = !DILocation(line: 761, column: 6, scope: !4631)
!4636 = !DILocation(line: 763, column: 19, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 763, column: 6)
!4638 = !DILocation(line: 763, column: 7, scope: !4637)
!4639 = !DILocation(line: 763, column: 6, scope: !4631)
!4640 = !DILocation(line: 764, column: 3, scope: !4637)
!4641 = !DILocation(line: 766, column: 32, scope: !4631)
!4642 = !DILocation(line: 766, column: 8, scope: !4631)
!4643 = !DILocation(line: 766, column: 6, scope: !4631)
!4644 = !DILocation(line: 767, column: 6, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 767, column: 6)
!4646 = !DILocation(line: 767, column: 6, scope: !4631)
!4647 = !DILocation(line: 768, column: 21, scope: !4645)
!4648 = !DILocation(line: 768, column: 26, scope: !4645)
!4649 = !DILocation(line: 768, column: 10, scope: !4645)
!4650 = !DILocation(line: 768, column: 3, scope: !4645)
!4651 = !DILocation(line: 770, column: 2, scope: !4631)
!4652 = !DILocation(line: 771, column: 1, scope: !4631)
!4653 = distinct !DISubprogram(name: "pci_is_pcie", scope: !94, file: !94, line: 2139, type: !4654, scopeLine: 2140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!512, !150}
!4656 = !DILocalVariable(name: "dev", arg: 1, scope: !4653, file: !94, line: 2139, type: !150)
!4657 = !DILocation(line: 2139, column: 48, scope: !4653)
!4658 = !DILocation(line: 2141, column: 22, scope: !4653)
!4659 = !DILocation(line: 2141, column: 9, scope: !4653)
!4660 = !DILocation(line: 2141, column: 2, scope: !4653)
!4661 = distinct !DISubprogram(name: "sriov_init", scope: !3, file: !3, line: 602, type: !3897, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4662 = !DILocalVariable(name: "dev", arg: 1, scope: !4661, file: !3, line: 602, type: !150)
!4663 = !DILocation(line: 602, column: 39, scope: !4661)
!4664 = !DILocalVariable(name: "pos", arg: 2, scope: !4661, file: !3, line: 602, type: !207)
!4665 = !DILocation(line: 602, column: 48, scope: !4661)
!4666 = !DILocalVariable(name: "i", scope: !4661, file: !3, line: 604, type: !207)
!4667 = !DILocation(line: 604, column: 6, scope: !4661)
!4668 = !DILocalVariable(name: "bar64", scope: !4661, file: !3, line: 604, type: !207)
!4669 = !DILocation(line: 604, column: 9, scope: !4661)
!4670 = !DILocalVariable(name: "rc", scope: !4661, file: !3, line: 605, type: !207)
!4671 = !DILocation(line: 605, column: 6, scope: !4661)
!4672 = !DILocalVariable(name: "nres", scope: !4661, file: !3, line: 606, type: !207)
!4673 = !DILocation(line: 606, column: 6, scope: !4661)
!4674 = !DILocalVariable(name: "pgsz", scope: !4661, file: !3, line: 607, type: !221)
!4675 = !DILocation(line: 607, column: 6, scope: !4661)
!4676 = !DILocalVariable(name: "ctrl", scope: !4661, file: !3, line: 608, type: !885)
!4677 = !DILocation(line: 608, column: 6, scope: !4661)
!4678 = !DILocalVariable(name: "total", scope: !4661, file: !3, line: 608, type: !885)
!4679 = !DILocation(line: 608, column: 12, scope: !4661)
!4680 = !DILocalVariable(name: "iov", scope: !4661, file: !3, line: 609, type: !4018)
!4681 = !DILocation(line: 609, column: 20, scope: !4661)
!4682 = !DILocalVariable(name: "res", scope: !4661, file: !3, line: 610, type: !172)
!4683 = !DILocation(line: 610, column: 19, scope: !4661)
!4684 = !DILocalVariable(name: "pdev", scope: !4661, file: !3, line: 611, type: !150)
!4685 = !DILocation(line: 611, column: 18, scope: !4661)
!4686 = !DILocation(line: 613, column: 23, scope: !4661)
!4687 = !DILocation(line: 613, column: 28, scope: !4661)
!4688 = !DILocation(line: 613, column: 32, scope: !4661)
!4689 = !DILocation(line: 613, column: 2, scope: !4661)
!4690 = !DILocation(line: 614, column: 6, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 614, column: 6)
!4692 = !DILocation(line: 614, column: 11, scope: !4691)
!4693 = !DILocation(line: 614, column: 6, scope: !4661)
!4694 = !DILocation(line: 615, column: 25, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4691, file: !3, line: 614, column: 33)
!4696 = !DILocation(line: 615, column: 30, scope: !4695)
!4697 = !DILocation(line: 615, column: 34, scope: !4695)
!4698 = !DILocation(line: 615, column: 3, scope: !4695)
!4699 = !DILocation(line: 616, column: 3, scope: !4695)
!4700 = !DILocation(line: 617, column: 2, scope: !4695)
!4701 = !DILocation(line: 619, column: 7, scope: !4661)
!4702 = !DILocalVariable(name: "__mptr", scope: !4703, file: !3, line: 620, type: !149)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 620, column: 2)
!4704 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 620, column: 2)
!4705 = !DILocation(line: 620, column: 2, scope: !4703)
!4706 = !DILocation(line: 620, column: 2, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4703, file: !3, line: 620, column: 2)
!4708 = !DILocation(line: 620, column: 2, scope: !4704)
!4709 = !DILocation(line: 620, column: 2, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 620, column: 2)
!4711 = !DILocation(line: 621, column: 7, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 621, column: 7)
!4713 = !DILocation(line: 621, column: 13, scope: !4712)
!4714 = !DILocation(line: 621, column: 7, scope: !4710)
!4715 = !DILocation(line: 622, column: 4, scope: !4712)
!4716 = !DILocalVariable(name: "__mptr", scope: !4717, file: !3, line: 620, type: !149)
!4717 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 620, column: 2)
!4718 = !DILocation(line: 620, column: 2, scope: !4717)
!4719 = !DILocation(line: 620, column: 2, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 620, column: 2)
!4721 = distinct !{!4721, !4708, !4722}
!4722 = !DILocation(line: 622, column: 9, scope: !4704)
!4723 = !DILocation(line: 624, column: 7, scope: !4661)
!4724 = !DILocation(line: 625, column: 22, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 625, column: 6)
!4726 = !DILocation(line: 625, column: 27, scope: !4725)
!4727 = !DILocation(line: 625, column: 6, scope: !4725)
!4728 = !DILocation(line: 625, column: 6, scope: !4661)
!4729 = !DILocation(line: 626, column: 8, scope: !4725)
!4730 = !DILocation(line: 626, column: 3, scope: !4725)
!4731 = !DILocation(line: 625, column: 30, scope: !4725)
!4732 = !DILabel(scope: !4661, name: "found", file: !3, line: 628)
!4733 = !DILocation(line: 628, column: 1, scope: !4661)
!4734 = !DILocation(line: 629, column: 24, scope: !4661)
!4735 = !DILocation(line: 629, column: 29, scope: !4661)
!4736 = !DILocation(line: 629, column: 33, scope: !4661)
!4737 = !DILocation(line: 629, column: 51, scope: !4661)
!4738 = !DILocation(line: 629, column: 2, scope: !4661)
!4739 = !DILocation(line: 631, column: 23, scope: !4661)
!4740 = !DILocation(line: 631, column: 28, scope: !4661)
!4741 = !DILocation(line: 631, column: 32, scope: !4661)
!4742 = !DILocation(line: 631, column: 2, scope: !4661)
!4743 = !DILocation(line: 632, column: 7, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 632, column: 6)
!4745 = !DILocation(line: 632, column: 6, scope: !4661)
!4746 = !DILocation(line: 633, column: 3, scope: !4744)
!4747 = !DILocation(line: 635, column: 24, scope: !4661)
!4748 = !DILocation(line: 635, column: 29, scope: !4661)
!4749 = !DILocation(line: 635, column: 33, scope: !4661)
!4750 = !DILocation(line: 635, column: 2, scope: !4661)
!4751 = !DILocation(line: 636, column: 4, scope: !4661)
!4752 = !DILocation(line: 637, column: 18, scope: !4661)
!4753 = !DILocation(line: 637, column: 15, scope: !4661)
!4754 = !DILocation(line: 637, column: 21, scope: !4661)
!4755 = !DILocation(line: 637, column: 10, scope: !4661)
!4756 = !DILocation(line: 637, column: 7, scope: !4661)
!4757 = !DILocation(line: 638, column: 7, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 638, column: 6)
!4759 = !DILocation(line: 638, column: 6, scope: !4661)
!4760 = !DILocation(line: 639, column: 3, scope: !4758)
!4761 = !DILocation(line: 641, column: 12, scope: !4661)
!4762 = !DILocation(line: 641, column: 17, scope: !4661)
!4763 = !DILocation(line: 641, column: 10, scope: !4661)
!4764 = !DILocation(line: 641, column: 7, scope: !4661)
!4765 = !DILocation(line: 642, column: 25, scope: !4661)
!4766 = !DILocation(line: 642, column: 30, scope: !4661)
!4767 = !DILocation(line: 642, column: 34, scope: !4661)
!4768 = !DILocation(line: 642, column: 58, scope: !4661)
!4769 = !DILocation(line: 642, column: 2, scope: !4661)
!4770 = !DILocation(line: 644, column: 8, scope: !4661)
!4771 = !DILocation(line: 644, column: 6, scope: !4661)
!4772 = !DILocation(line: 645, column: 7, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 645, column: 6)
!4774 = !DILocation(line: 645, column: 6, scope: !4661)
!4775 = !DILocation(line: 646, column: 3, scope: !4773)
!4776 = !DILocation(line: 648, column: 7, scope: !4661)
!4777 = !DILocation(line: 649, column: 9, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 649, column: 2)
!4779 = !DILocation(line: 649, column: 7, scope: !4778)
!4780 = !DILocation(line: 649, column: 14, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 649, column: 2)
!4782 = !DILocation(line: 649, column: 16, scope: !4781)
!4783 = !DILocation(line: 649, column: 2, scope: !4778)
!4784 = !DILocation(line: 650, column: 10, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 649, column: 43)
!4786 = !DILocation(line: 650, column: 15, scope: !4785)
!4787 = !DILocation(line: 650, column: 24, scope: !4785)
!4788 = !DILocation(line: 650, column: 26, scope: !4785)
!4789 = !DILocation(line: 650, column: 7, scope: !4785)
!4790 = !DILocation(line: 655, column: 7, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 655, column: 7)
!4792 = !DILocation(line: 655, column: 12, scope: !4791)
!4793 = !DILocation(line: 655, column: 18, scope: !4791)
!4794 = !DILocation(line: 655, column: 7, scope: !4785)
!4795 = !DILocation(line: 656, column: 13, scope: !4791)
!4796 = !DILocation(line: 656, column: 18, scope: !4791)
!4797 = !DILocation(line: 656, column: 24, scope: !4791)
!4798 = !DILocation(line: 656, column: 12, scope: !4791)
!4799 = !DILocation(line: 656, column: 10, scope: !4791)
!4800 = !DILocation(line: 656, column: 4, scope: !4791)
!4801 = !DILocation(line: 658, column: 28, scope: !4791)
!4802 = !DILocation(line: 658, column: 50, scope: !4791)
!4803 = !DILocation(line: 659, column: 7, scope: !4791)
!4804 = !DILocation(line: 659, column: 11, scope: !4791)
!4805 = !DILocation(line: 659, column: 29, scope: !4791)
!4806 = !DILocation(line: 659, column: 31, scope: !4791)
!4807 = !DILocation(line: 659, column: 27, scope: !4791)
!4808 = !DILocation(line: 658, column: 12, scope: !4791)
!4809 = !DILocation(line: 658, column: 10, scope: !4791)
!4810 = !DILocation(line: 660, column: 8, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 660, column: 7)
!4812 = !DILocation(line: 660, column: 13, scope: !4811)
!4813 = !DILocation(line: 660, column: 7, scope: !4785)
!4814 = !DILocation(line: 661, column: 4, scope: !4811)
!4815 = !DILocation(line: 662, column: 21, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 662, column: 7)
!4817 = !DILocation(line: 662, column: 7, scope: !4816)
!4818 = !DILocation(line: 662, column: 26, scope: !4816)
!4819 = !DILocation(line: 662, column: 7, scope: !4785)
!4820 = !DILocation(line: 663, column: 7, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 662, column: 45)
!4822 = !DILocation(line: 664, column: 4, scope: !4821)
!4823 = !DILocation(line: 666, column: 33, scope: !4785)
!4824 = !DILocation(line: 666, column: 19, scope: !4785)
!4825 = !DILocation(line: 666, column: 3, scope: !4785)
!4826 = !DILocation(line: 666, column: 8, scope: !4785)
!4827 = !DILocation(line: 666, column: 14, scope: !4785)
!4828 = !DILocation(line: 666, column: 17, scope: !4785)
!4829 = !DILocation(line: 667, column: 14, scope: !4785)
!4830 = !DILocation(line: 667, column: 19, scope: !4785)
!4831 = !DILocation(line: 667, column: 41, scope: !4785)
!4832 = !DILocation(line: 667, column: 27, scope: !4785)
!4833 = !DILocation(line: 667, column: 48, scope: !4785)
!4834 = !DILocation(line: 667, column: 46, scope: !4785)
!4835 = !DILocation(line: 667, column: 25, scope: !4785)
!4836 = !DILocation(line: 667, column: 54, scope: !4785)
!4837 = !DILocation(line: 667, column: 3, scope: !4785)
!4838 = !DILocation(line: 667, column: 8, scope: !4785)
!4839 = !DILocation(line: 667, column: 12, scope: !4785)
!4840 = !DILocation(line: 668, column: 3, scope: !4785)
!4841 = !DILocation(line: 670, column: 8, scope: !4785)
!4842 = !DILocation(line: 670, column: 5, scope: !4785)
!4843 = !DILocation(line: 671, column: 7, scope: !4785)
!4844 = !DILocation(line: 672, column: 2, scope: !4785)
!4845 = !DILocation(line: 649, column: 39, scope: !4781)
!4846 = !DILocation(line: 649, column: 2, scope: !4781)
!4847 = distinct !{!4847, !4783, !4848}
!4848 = !DILocation(line: 672, column: 2, scope: !4778)
!4849 = !DILocation(line: 674, column: 13, scope: !4661)
!4850 = !DILocation(line: 674, column: 2, scope: !4661)
!4851 = !DILocation(line: 674, column: 7, scope: !4661)
!4852 = !DILocation(line: 674, column: 11, scope: !4661)
!4853 = !DILocation(line: 675, column: 14, scope: !4661)
!4854 = !DILocation(line: 675, column: 2, scope: !4661)
!4855 = !DILocation(line: 675, column: 7, scope: !4661)
!4856 = !DILocation(line: 675, column: 12, scope: !4661)
!4857 = !DILocation(line: 676, column: 14, scope: !4661)
!4858 = !DILocation(line: 676, column: 2, scope: !4661)
!4859 = !DILocation(line: 676, column: 7, scope: !4661)
!4860 = !DILocation(line: 676, column: 12, scope: !4661)
!4861 = !DILocation(line: 677, column: 19, scope: !4661)
!4862 = !DILocation(line: 677, column: 2, scope: !4661)
!4863 = !DILocation(line: 677, column: 7, scope: !4661)
!4864 = !DILocation(line: 677, column: 17, scope: !4661)
!4865 = !DILocation(line: 678, column: 24, scope: !4661)
!4866 = !DILocation(line: 678, column: 2, scope: !4661)
!4867 = !DILocation(line: 678, column: 7, scope: !4661)
!4868 = !DILocation(line: 678, column: 22, scope: !4661)
!4869 = !DILocation(line: 679, column: 23, scope: !4661)
!4870 = !DILocation(line: 679, column: 28, scope: !4661)
!4871 = !DILocation(line: 679, column: 32, scope: !4661)
!4872 = !DILocation(line: 679, column: 53, scope: !4661)
!4873 = !DILocation(line: 679, column: 58, scope: !4661)
!4874 = !DILocation(line: 679, column: 2, scope: !4661)
!4875 = !DILocation(line: 680, column: 14, scope: !4661)
!4876 = !DILocation(line: 680, column: 2, scope: !4661)
!4877 = !DILocation(line: 680, column: 7, scope: !4661)
!4878 = !DILocation(line: 680, column: 12, scope: !4661)
!4879 = !DILocation(line: 681, column: 14, scope: !4661)
!4880 = !DILocation(line: 681, column: 2, scope: !4661)
!4881 = !DILocation(line: 681, column: 7, scope: !4661)
!4882 = !DILocation(line: 681, column: 12, scope: !4661)
!4883 = !DILocation(line: 682, column: 2, scope: !4661)
!4884 = !DILocation(line: 682, column: 7, scope: !4661)
!4885 = !DILocation(line: 682, column: 25, scope: !4661)
!4886 = !DILocation(line: 683, column: 24, scope: !4661)
!4887 = !DILocation(line: 683, column: 29, scope: !4661)
!4888 = !DILocation(line: 683, column: 33, scope: !4661)
!4889 = !DILocation(line: 683, column: 51, scope: !4661)
!4890 = !DILocation(line: 683, column: 56, scope: !4661)
!4891 = !DILocation(line: 683, column: 2, scope: !4661)
!4892 = !DILocation(line: 684, column: 23, scope: !4661)
!4893 = !DILocation(line: 684, column: 28, scope: !4661)
!4894 = !DILocation(line: 684, column: 32, scope: !4661)
!4895 = !DILocation(line: 684, column: 56, scope: !4661)
!4896 = !DILocation(line: 684, column: 61, scope: !4661)
!4897 = !DILocation(line: 684, column: 2, scope: !4661)
!4898 = !DILocation(line: 685, column: 20, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 685, column: 6)
!4900 = !DILocation(line: 685, column: 6, scope: !4899)
!4901 = !DILocation(line: 685, column: 25, scope: !4899)
!4902 = !DILocation(line: 685, column: 6, scope: !4661)
!4903 = !DILocation(line: 686, column: 15, scope: !4899)
!4904 = !DILocation(line: 686, column: 3, scope: !4899)
!4905 = !DILocation(line: 686, column: 8, scope: !4899)
!4906 = !DILocation(line: 686, column: 13, scope: !4899)
!4907 = !DILocation(line: 688, column: 6, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 688, column: 6)
!4909 = !DILocation(line: 688, column: 6, scope: !4661)
!4910 = !DILocation(line: 689, column: 26, scope: !4908)
!4911 = !DILocation(line: 689, column: 14, scope: !4908)
!4912 = !DILocation(line: 689, column: 3, scope: !4908)
!4913 = !DILocation(line: 689, column: 8, scope: !4908)
!4914 = !DILocation(line: 689, column: 12, scope: !4908)
!4915 = !DILocation(line: 691, column: 14, scope: !4908)
!4916 = !DILocation(line: 691, column: 3, scope: !4908)
!4917 = !DILocation(line: 691, column: 8, scope: !4908)
!4918 = !DILocation(line: 691, column: 12, scope: !4908)
!4919 = !DILocation(line: 693, column: 15, scope: !4661)
!4920 = !DILocation(line: 693, column: 2, scope: !4661)
!4921 = !DILocation(line: 693, column: 7, scope: !4661)
!4922 = !DILocation(line: 693, column: 13, scope: !4661)
!4923 = !DILocation(line: 694, column: 2, scope: !4661)
!4924 = !DILocation(line: 694, column: 7, scope: !4661)
!4925 = !DILocation(line: 694, column: 17, scope: !4661)
!4926 = !DILocation(line: 695, column: 28, scope: !4661)
!4927 = !DILocation(line: 695, column: 7, scope: !4661)
!4928 = !DILocation(line: 695, column: 5, scope: !4661)
!4929 = !DILocation(line: 696, column: 6, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 696, column: 6)
!4931 = !DILocation(line: 696, column: 6, scope: !4661)
!4932 = !DILocation(line: 697, column: 3, scope: !4930)
!4933 = !DILocation(line: 699, column: 2, scope: !4661)
!4934 = !DILabel(scope: !4661, name: "fail_max_buses", file: !3, line: 701)
!4935 = !DILocation(line: 701, column: 1, scope: !4661)
!4936 = !DILocation(line: 702, column: 2, scope: !4661)
!4937 = !DILocation(line: 702, column: 7, scope: !4661)
!4938 = !DILocation(line: 702, column: 13, scope: !4661)
!4939 = !DILocation(line: 703, column: 2, scope: !4661)
!4940 = !DILocation(line: 703, column: 7, scope: !4661)
!4941 = !DILocation(line: 703, column: 17, scope: !4661)
!4942 = !DILabel(scope: !4661, name: "failed", file: !3, line: 704)
!4943 = !DILocation(line: 704, column: 1, scope: !4661)
!4944 = !DILocation(line: 705, column: 9, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 705, column: 2)
!4946 = !DILocation(line: 705, column: 7, scope: !4945)
!4947 = !DILocation(line: 705, column: 14, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 705, column: 2)
!4949 = !DILocation(line: 705, column: 16, scope: !4948)
!4950 = !DILocation(line: 705, column: 2, scope: !4945)
!4951 = !DILocation(line: 706, column: 10, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4948, file: !3, line: 705, column: 43)
!4953 = !DILocation(line: 706, column: 15, scope: !4952)
!4954 = !DILocation(line: 706, column: 24, scope: !4952)
!4955 = !DILocation(line: 706, column: 26, scope: !4952)
!4956 = !DILocation(line: 706, column: 7, scope: !4952)
!4957 = !DILocation(line: 707, column: 3, scope: !4952)
!4958 = !DILocation(line: 707, column: 8, scope: !4952)
!4959 = !DILocation(line: 707, column: 14, scope: !4952)
!4960 = !DILocation(line: 708, column: 2, scope: !4952)
!4961 = !DILocation(line: 705, column: 39, scope: !4948)
!4962 = !DILocation(line: 705, column: 2, scope: !4948)
!4963 = distinct !{!4963, !4950, !4964}
!4964 = !DILocation(line: 708, column: 2, scope: !4945)
!4965 = !DILocation(line: 710, column: 8, scope: !4661)
!4966 = !DILocation(line: 710, column: 2, scope: !4661)
!4967 = !DILocation(line: 711, column: 9, scope: !4661)
!4968 = !DILocation(line: 711, column: 2, scope: !4661)
!4969 = !DILocation(line: 712, column: 1, scope: !4661)
!4970 = distinct !DISubprogram(name: "pci_iov_release", scope: !3, file: !3, line: 777, type: !3884, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4971 = !DILocalVariable(name: "dev", arg: 1, scope: !4970, file: !3, line: 777, type: !150)
!4972 = !DILocation(line: 777, column: 38, scope: !4970)
!4973 = !DILocation(line: 779, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 779, column: 6)
!4975 = !DILocation(line: 779, column: 11, scope: !4974)
!4976 = !DILocation(line: 779, column: 6, scope: !4970)
!4977 = !DILocation(line: 780, column: 17, scope: !4974)
!4978 = !DILocation(line: 780, column: 3, scope: !4974)
!4979 = !DILocation(line: 781, column: 1, scope: !4970)
!4980 = distinct !DISubprogram(name: "sriov_release", scope: !3, file: !3, line: 714, type: !3884, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!4981 = !DILocalVariable(name: "dev", arg: 1, scope: !4980, file: !3, line: 714, type: !150)
!4982 = !DILocation(line: 714, column: 43, scope: !4980)
!4983 = !DILocation(line: 716, column: 2, scope: !4980)
!4984 = !DILocation(line: 716, column: 2, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 716, column: 2)
!4986 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 716, column: 2)
!4987 = !DILocation(line: 716, column: 2, scope: !4986)
!4988 = !DILocation(line: 716, column: 2, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 716, column: 2)
!4990 = !DILocation(line: 716, column: 2, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 716, column: 2)
!4992 = !DILocation(line: 716, column: 2, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 716, column: 2)
!4994 = !{i32 -2141798121, i32 -2141798092, i32 -2141798046, i32 -2141797988, i32 -2141797934, i32 -2141797880, i32 -2141797825, i32 -2141797794}
!4995 = !DILocation(line: 716, column: 2, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 716, column: 2)
!4997 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 716, column: 2)
!4998 = !{i32 -2141797354, i32 -2141797347, i32 -2141797293, i32 -2141797262, i32 -2141797232}
!4999 = !DILocation(line: 716, column: 2, scope: !4997)
!5000 = !DILocation(line: 718, column: 6, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 718, column: 6)
!5002 = !DILocation(line: 718, column: 13, scope: !5001)
!5003 = !DILocation(line: 718, column: 18, scope: !5001)
!5004 = !DILocation(line: 718, column: 25, scope: !5001)
!5005 = !DILocation(line: 718, column: 10, scope: !5001)
!5006 = !DILocation(line: 718, column: 6, scope: !4980)
!5007 = !DILocation(line: 719, column: 15, scope: !5001)
!5008 = !DILocation(line: 719, column: 20, scope: !5001)
!5009 = !DILocation(line: 719, column: 27, scope: !5001)
!5010 = !DILocation(line: 719, column: 3, scope: !5001)
!5011 = !DILocation(line: 721, column: 8, scope: !4980)
!5012 = !DILocation(line: 721, column: 13, scope: !4980)
!5013 = !DILocation(line: 721, column: 2, scope: !4980)
!5014 = !DILocation(line: 722, column: 2, scope: !4980)
!5015 = !DILocation(line: 722, column: 7, scope: !4980)
!5016 = !DILocation(line: 722, column: 13, scope: !4980)
!5017 = !DILocation(line: 723, column: 1, scope: !4980)
!5018 = distinct !DISubprogram(name: "pci_iov_remove", scope: !3, file: !3, line: 787, type: !3884, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5019 = !DILocalVariable(name: "dev", arg: 1, scope: !5018, file: !3, line: 787, type: !150)
!5020 = !DILocation(line: 787, column: 37, scope: !5018)
!5021 = !DILocalVariable(name: "iov", scope: !5018, file: !3, line: 789, type: !4018)
!5022 = !DILocation(line: 789, column: 20, scope: !5018)
!5023 = !DILocation(line: 789, column: 26, scope: !5018)
!5024 = !DILocation(line: 789, column: 31, scope: !5018)
!5025 = !DILocation(line: 791, column: 7, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 791, column: 6)
!5027 = !DILocation(line: 791, column: 12, scope: !5026)
!5028 = !DILocation(line: 791, column: 6, scope: !5018)
!5029 = !DILocation(line: 792, column: 3, scope: !5026)
!5030 = !DILocation(line: 794, column: 24, scope: !5018)
!5031 = !DILocation(line: 794, column: 29, scope: !5018)
!5032 = !DILocation(line: 794, column: 2, scope: !5018)
!5033 = !DILocation(line: 794, column: 7, scope: !5018)
!5034 = !DILocation(line: 794, column: 22, scope: !5018)
!5035 = !DILocation(line: 795, column: 6, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 795, column: 6)
!5037 = !DILocation(line: 795, column: 11, scope: !5036)
!5038 = !DILocation(line: 795, column: 6, scope: !5018)
!5039 = !DILocation(line: 796, column: 3, scope: !5036)
!5040 = !DILocation(line: 797, column: 1, scope: !5018)
!5041 = distinct !DISubprogram(name: "pci_iov_update_resource", scope: !3, file: !3, line: 806, type: !4532, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5042 = !DILocalVariable(name: "dev", arg: 1, scope: !5041, file: !3, line: 806, type: !150)
!5043 = !DILocation(line: 806, column: 46, scope: !5041)
!5044 = !DILocalVariable(name: "resno", arg: 2, scope: !5041, file: !3, line: 806, type: !207)
!5045 = !DILocation(line: 806, column: 55, scope: !5041)
!5046 = !DILocalVariable(name: "iov", scope: !5041, file: !3, line: 808, type: !4018)
!5047 = !DILocation(line: 808, column: 20, scope: !5041)
!5048 = !DILocation(line: 808, column: 26, scope: !5041)
!5049 = !DILocation(line: 808, column: 31, scope: !5041)
!5050 = !DILocation(line: 808, column: 43, scope: !5041)
!5051 = !DILocation(line: 808, column: 48, scope: !5041)
!5052 = !DILocalVariable(name: "res", scope: !5041, file: !3, line: 809, type: !172)
!5053 = !DILocation(line: 809, column: 19, scope: !5041)
!5054 = !DILocation(line: 809, column: 25, scope: !5041)
!5055 = !DILocation(line: 809, column: 30, scope: !5041)
!5056 = !DILocation(line: 809, column: 41, scope: !5041)
!5057 = !DILocation(line: 809, column: 39, scope: !5041)
!5058 = !DILocalVariable(name: "vf_bar", scope: !5041, file: !3, line: 810, type: !207)
!5059 = !DILocation(line: 810, column: 6, scope: !5041)
!5060 = !DILocation(line: 810, column: 15, scope: !5041)
!5061 = !DILocation(line: 810, column: 21, scope: !5041)
!5062 = !DILocalVariable(name: "region", scope: !5041, file: !3, line: 811, type: !5063)
!5063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !94, line: 754, size: 128, elements: !5064)
!5064 = !{!5065, !5067}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5063, file: !94, line: 755, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !94, line: 749, baseType: !179)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5063, file: !94, line: 756, baseType: !5066, size: 64, offset: 64)
!5068 = !DILocation(line: 811, column: 24, scope: !5041)
!5069 = !DILocalVariable(name: "cmd", scope: !5041, file: !3, line: 812, type: !885)
!5070 = !DILocation(line: 812, column: 6, scope: !5041)
!5071 = !DILocalVariable(name: "new", scope: !5041, file: !3, line: 813, type: !221)
!5072 = !DILocation(line: 813, column: 6, scope: !5041)
!5073 = !DILocalVariable(name: "reg", scope: !5041, file: !3, line: 814, type: !207)
!5074 = !DILocation(line: 814, column: 6, scope: !5041)
!5075 = !DILocation(line: 821, column: 7, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 821, column: 6)
!5077 = !DILocation(line: 821, column: 6, scope: !5041)
!5078 = !DILocation(line: 822, column: 3, scope: !5076)
!5079 = !DILocation(line: 824, column: 23, scope: !5041)
!5080 = !DILocation(line: 824, column: 28, scope: !5041)
!5081 = !DILocation(line: 824, column: 33, scope: !5041)
!5082 = !DILocation(line: 824, column: 37, scope: !5041)
!5083 = !DILocation(line: 824, column: 2, scope: !5041)
!5084 = !DILocation(line: 825, column: 7, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 825, column: 6)
!5086 = !DILocation(line: 825, column: 11, scope: !5085)
!5087 = !DILocation(line: 825, column: 33, scope: !5085)
!5088 = !DILocation(line: 825, column: 37, scope: !5085)
!5089 = !DILocation(line: 825, column: 41, scope: !5085)
!5090 = !DILocation(line: 825, column: 6, scope: !5041)
!5091 = !DILocalVariable(name: "__ret_warn_on", scope: !5092, file: !3, line: 826, type: !207)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 826, column: 3)
!5093 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 825, column: 64)
!5094 = !DILocation(line: 826, column: 3, scope: !5092)
!5095 = !DILocation(line: 826, column: 3, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 826, column: 3)
!5097 = !DILocation(line: 826, column: 3, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 826, column: 3)
!5099 = !DILocation(line: 826, column: 3, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 826, column: 3)
!5101 = !DILocation(line: 826, column: 3, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 826, column: 3)
!5103 = !DILocation(line: 826, column: 3, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 826, column: 3)
!5105 = !DILocation(line: 826, column: 3, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 826, column: 3)
!5107 = !{i32 -2141795807, i32 -2141795778, i32 -2141795732, i32 -2141795674, i32 -2141795620, i32 -2141795566, i32 -2141795511, i32 -2141795480}
!5108 = !DILocation(line: 826, column: 3, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 826, column: 3)
!5110 = !{i32 -2141795070, i32 -2141795063, i32 -2141795011, i32 -2141794980, i32 -2141794950}
!5111 = !DILocation(line: 826, column: 3, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 826, column: 3)
!5113 = !DILocation(line: 826, column: 3, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 826, column: 3)
!5115 = !DILocation(line: 828, column: 3, scope: !5093)
!5116 = !DILocation(line: 836, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 836, column: 6)
!5118 = !DILocation(line: 836, column: 12, scope: !5117)
!5119 = !DILocation(line: 836, column: 6, scope: !5041)
!5120 = !DILocation(line: 837, column: 3, scope: !5117)
!5121 = !DILocation(line: 839, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 839, column: 6)
!5123 = !DILocation(line: 839, column: 11, scope: !5122)
!5124 = !DILocation(line: 839, column: 17, scope: !5122)
!5125 = !DILocation(line: 839, column: 6, scope: !5041)
!5126 = !DILocation(line: 840, column: 3, scope: !5122)
!5127 = !DILocation(line: 842, column: 6, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 842, column: 6)
!5129 = !DILocation(line: 842, column: 11, scope: !5128)
!5130 = !DILocation(line: 842, column: 17, scope: !5128)
!5131 = !DILocation(line: 842, column: 6, scope: !5041)
!5132 = !DILocation(line: 843, column: 3, scope: !5128)
!5133 = !DILocation(line: 845, column: 26, scope: !5041)
!5134 = !DILocation(line: 845, column: 31, scope: !5041)
!5135 = !DILocation(line: 845, column: 45, scope: !5041)
!5136 = !DILocation(line: 845, column: 2, scope: !5041)
!5137 = !DILocation(line: 846, column: 15, scope: !5041)
!5138 = !DILocation(line: 846, column: 8, scope: !5041)
!5139 = !DILocation(line: 846, column: 6, scope: !5041)
!5140 = !DILocation(line: 847, column: 9, scope: !5041)
!5141 = !DILocation(line: 847, column: 14, scope: !5041)
!5142 = !DILocation(line: 847, column: 20, scope: !5041)
!5143 = !DILocation(line: 847, column: 6, scope: !5041)
!5144 = !DILocation(line: 849, column: 8, scope: !5041)
!5145 = !DILocation(line: 849, column: 13, scope: !5041)
!5146 = !DILocation(line: 849, column: 17, scope: !5041)
!5147 = !DILocation(line: 849, column: 39, scope: !5041)
!5148 = !DILocation(line: 849, column: 37, scope: !5041)
!5149 = !DILocation(line: 849, column: 33, scope: !5041)
!5150 = !DILocation(line: 849, column: 6, scope: !5041)
!5151 = !DILocation(line: 850, column: 25, scope: !5041)
!5152 = !DILocation(line: 850, column: 30, scope: !5041)
!5153 = !DILocation(line: 850, column: 35, scope: !5041)
!5154 = !DILocation(line: 850, column: 2, scope: !5041)
!5155 = !DILocation(line: 851, column: 6, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 851, column: 6)
!5157 = !DILocation(line: 851, column: 11, scope: !5156)
!5158 = !DILocation(line: 851, column: 17, scope: !5156)
!5159 = !DILocation(line: 851, column: 6, scope: !5041)
!5160 = !DILocation(line: 852, column: 16, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 851, column: 38)
!5162 = !DILocation(line: 852, column: 22, scope: !5161)
!5163 = !DILocation(line: 852, column: 28, scope: !5161)
!5164 = !DILocation(line: 852, column: 9, scope: !5161)
!5165 = !DILocation(line: 852, column: 7, scope: !5161)
!5166 = !DILocation(line: 853, column: 26, scope: !5161)
!5167 = !DILocation(line: 853, column: 31, scope: !5161)
!5168 = !DILocation(line: 853, column: 35, scope: !5161)
!5169 = !DILocation(line: 853, column: 40, scope: !5161)
!5170 = !DILocation(line: 853, column: 3, scope: !5161)
!5171 = !DILocation(line: 854, column: 2, scope: !5161)
!5172 = !DILocation(line: 855, column: 1, scope: !5041)
!5173 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !5174, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!186, !3716}
!5176 = !DILocalVariable(name: "dev", arg: 1, scope: !5173, file: !73, line: 609, type: !3716)
!5177 = !DILocation(line: 609, column: 57, scope: !5173)
!5178 = !DILocation(line: 612, column: 6, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5173, file: !73, line: 612, column: 6)
!5180 = !DILocation(line: 612, column: 11, scope: !5179)
!5181 = !DILocation(line: 612, column: 6, scope: !5173)
!5182 = !DILocation(line: 613, column: 10, scope: !5179)
!5183 = !DILocation(line: 613, column: 15, scope: !5179)
!5184 = !DILocation(line: 613, column: 3, scope: !5179)
!5185 = !DILocation(line: 615, column: 23, scope: !5173)
!5186 = !DILocation(line: 615, column: 28, scope: !5173)
!5187 = !DILocation(line: 615, column: 9, scope: !5173)
!5188 = !DILocation(line: 615, column: 2, scope: !5173)
!5189 = !DILocation(line: 616, column: 1, scope: !5173)
!5190 = distinct !DISubprogram(name: "pcibios_iov_resource_alignment", scope: !3, file: !3, line: 857, type: !4145, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5191 = !DILocalVariable(name: "dev", arg: 1, scope: !5190, file: !3, line: 857, type: !150)
!5192 = !DILocation(line: 857, column: 71, scope: !5190)
!5193 = !DILocalVariable(name: "resno", arg: 2, scope: !5190, file: !3, line: 858, type: !207)
!5194 = !DILocation(line: 858, column: 17, scope: !5190)
!5195 = !DILocation(line: 860, column: 31, scope: !5190)
!5196 = !DILocation(line: 860, column: 36, scope: !5190)
!5197 = !DILocation(line: 860, column: 9, scope: !5190)
!5198 = !DILocation(line: 860, column: 2, scope: !5190)
!5199 = distinct !DISubprogram(name: "pci_sriov_resource_alignment", scope: !3, file: !3, line: 873, type: !4145, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5200 = !DILocalVariable(name: "dev", arg: 1, scope: !5199, file: !3, line: 873, type: !150)
!5201 = !DILocation(line: 873, column: 62, scope: !5199)
!5202 = !DILocalVariable(name: "resno", arg: 2, scope: !5199, file: !3, line: 873, type: !207)
!5203 = !DILocation(line: 873, column: 71, scope: !5199)
!5204 = !DILocation(line: 875, column: 40, scope: !5199)
!5205 = !DILocation(line: 875, column: 45, scope: !5199)
!5206 = !DILocation(line: 875, column: 9, scope: !5199)
!5207 = !DILocation(line: 875, column: 2, scope: !5199)
!5208 = distinct !DISubprogram(name: "pci_restore_iov_state", scope: !3, file: !3, line: 882, type: !3884, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5209 = !DILocalVariable(name: "dev", arg: 1, scope: !5208, file: !3, line: 882, type: !150)
!5210 = !DILocation(line: 882, column: 44, scope: !5208)
!5211 = !DILocation(line: 884, column: 6, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 884, column: 6)
!5213 = !DILocation(line: 884, column: 11, scope: !5212)
!5214 = !DILocation(line: 884, column: 6, scope: !5208)
!5215 = !DILocation(line: 885, column: 23, scope: !5212)
!5216 = !DILocation(line: 885, column: 3, scope: !5212)
!5217 = !DILocation(line: 886, column: 1, scope: !5208)
!5218 = distinct !DISubprogram(name: "sriov_restore_state", scope: !3, file: !3, line: 725, type: !3884, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5219 = !DILocalVariable(name: "dev", arg: 1, scope: !5218, file: !3, line: 725, type: !150)
!5220 = !DILocation(line: 725, column: 49, scope: !5218)
!5221 = !DILocalVariable(name: "i", scope: !5218, file: !3, line: 727, type: !207)
!5222 = !DILocation(line: 727, column: 6, scope: !5218)
!5223 = !DILocalVariable(name: "ctrl", scope: !5218, file: !3, line: 728, type: !885)
!5224 = !DILocation(line: 728, column: 6, scope: !5218)
!5225 = !DILocalVariable(name: "iov", scope: !5218, file: !3, line: 729, type: !4018)
!5226 = !DILocation(line: 729, column: 20, scope: !5218)
!5227 = !DILocation(line: 729, column: 26, scope: !5218)
!5228 = !DILocation(line: 729, column: 31, scope: !5218)
!5229 = !DILocation(line: 731, column: 23, scope: !5218)
!5230 = !DILocation(line: 731, column: 28, scope: !5218)
!5231 = !DILocation(line: 731, column: 33, scope: !5218)
!5232 = !DILocation(line: 731, column: 37, scope: !5218)
!5233 = !DILocation(line: 731, column: 2, scope: !5218)
!5234 = !DILocation(line: 732, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 732, column: 6)
!5236 = !DILocation(line: 732, column: 11, scope: !5235)
!5237 = !DILocation(line: 732, column: 6, scope: !5218)
!5238 = !DILocation(line: 733, column: 3, scope: !5235)
!5239 = !DILocation(line: 739, column: 7, scope: !5218)
!5240 = !DILocation(line: 740, column: 10, scope: !5218)
!5241 = !DILocation(line: 740, column: 15, scope: !5218)
!5242 = !DILocation(line: 740, column: 20, scope: !5218)
!5243 = !DILocation(line: 740, column: 7, scope: !5218)
!5244 = !DILocation(line: 741, column: 24, scope: !5218)
!5245 = !DILocation(line: 741, column: 29, scope: !5218)
!5246 = !DILocation(line: 741, column: 34, scope: !5218)
!5247 = !DILocation(line: 741, column: 38, scope: !5218)
!5248 = !DILocation(line: 741, column: 56, scope: !5218)
!5249 = !DILocation(line: 741, column: 2, scope: !5218)
!5250 = !DILocation(line: 743, column: 9, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 743, column: 2)
!5252 = !DILocation(line: 743, column: 7, scope: !5251)
!5253 = !DILocation(line: 743, column: 14, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5251, file: !3, line: 743, column: 2)
!5255 = !DILocation(line: 743, column: 16, scope: !5254)
!5256 = !DILocation(line: 743, column: 2, scope: !5251)
!5257 = !DILocation(line: 744, column: 23, scope: !5254)
!5258 = !DILocation(line: 744, column: 28, scope: !5254)
!5259 = !DILocation(line: 744, column: 30, scope: !5254)
!5260 = !DILocation(line: 744, column: 3, scope: !5254)
!5261 = !DILocation(line: 743, column: 39, scope: !5254)
!5262 = !DILocation(line: 743, column: 2, scope: !5254)
!5263 = distinct !{!5263, !5256, !5264}
!5264 = !DILocation(line: 744, column: 49, scope: !5251)
!5265 = !DILocation(line: 746, column: 25, scope: !5218)
!5266 = !DILocation(line: 746, column: 30, scope: !5218)
!5267 = !DILocation(line: 746, column: 35, scope: !5218)
!5268 = !DILocation(line: 746, column: 39, scope: !5218)
!5269 = !DILocation(line: 746, column: 63, scope: !5218)
!5270 = !DILocation(line: 746, column: 68, scope: !5218)
!5271 = !DILocation(line: 746, column: 2, scope: !5218)
!5272 = !DILocation(line: 747, column: 21, scope: !5218)
!5273 = !DILocation(line: 747, column: 26, scope: !5218)
!5274 = !DILocation(line: 747, column: 31, scope: !5218)
!5275 = !DILocation(line: 747, column: 2, scope: !5218)
!5276 = !DILocation(line: 748, column: 24, scope: !5218)
!5277 = !DILocation(line: 748, column: 29, scope: !5218)
!5278 = !DILocation(line: 748, column: 34, scope: !5218)
!5279 = !DILocation(line: 748, column: 38, scope: !5218)
!5280 = !DILocation(line: 748, column: 56, scope: !5218)
!5281 = !DILocation(line: 748, column: 61, scope: !5218)
!5282 = !DILocation(line: 748, column: 2, scope: !5218)
!5283 = !DILocation(line: 749, column: 6, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 749, column: 6)
!5285 = !DILocation(line: 749, column: 11, scope: !5284)
!5286 = !DILocation(line: 749, column: 16, scope: !5284)
!5287 = !DILocation(line: 749, column: 6, scope: !5218)
!5288 = !DILocation(line: 750, column: 3, scope: !5284)
!5289 = !DILocation(line: 751, column: 1, scope: !5218)
!5290 = distinct !DISubprogram(name: "pci_vf_drivers_autoprobe", scope: !3, file: !3, line: 893, type: !5291, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{null, !150, !512}
!5293 = !DILocalVariable(name: "dev", arg: 1, scope: !5290, file: !3, line: 893, type: !150)
!5294 = !DILocation(line: 893, column: 47, scope: !5290)
!5295 = !DILocalVariable(name: "auto_probe", arg: 2, scope: !5290, file: !3, line: 893, type: !512)
!5296 = !DILocation(line: 893, column: 57, scope: !5290)
!5297 = !DILocation(line: 895, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 895, column: 6)
!5299 = !DILocation(line: 895, column: 11, scope: !5298)
!5300 = !DILocation(line: 895, column: 6, scope: !5290)
!5301 = !DILocation(line: 896, column: 35, scope: !5298)
!5302 = !DILocation(line: 896, column: 3, scope: !5298)
!5303 = !DILocation(line: 896, column: 8, scope: !5298)
!5304 = !DILocation(line: 896, column: 15, scope: !5298)
!5305 = !DILocation(line: 896, column: 33, scope: !5298)
!5306 = !DILocation(line: 897, column: 1, scope: !5290)
!5307 = distinct !DISubprogram(name: "pci_iov_bus_range", scope: !3, file: !3, line: 906, type: !205, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5308 = !DILocalVariable(name: "bus", arg: 1, scope: !5307, file: !3, line: 906, type: !161)
!5309 = !DILocation(line: 906, column: 39, scope: !5307)
!5310 = !DILocalVariable(name: "max", scope: !5307, file: !3, line: 908, type: !207)
!5311 = !DILocation(line: 908, column: 6, scope: !5307)
!5312 = !DILocalVariable(name: "dev", scope: !5307, file: !3, line: 909, type: !150)
!5313 = !DILocation(line: 909, column: 18, scope: !5307)
!5314 = !DILocalVariable(name: "__mptr", scope: !5315, file: !3, line: 911, type: !149)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 911, column: 2)
!5316 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 911, column: 2)
!5317 = !DILocation(line: 911, column: 2, scope: !5315)
!5318 = !DILocation(line: 911, column: 2, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 911, column: 2)
!5320 = !DILocation(line: 911, column: 2, scope: !5316)
!5321 = !DILocation(line: 911, column: 2, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 911, column: 2)
!5323 = !DILocation(line: 912, column: 8, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 912, column: 7)
!5325 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 911, column: 52)
!5326 = !DILocation(line: 912, column: 13, scope: !5324)
!5327 = !DILocation(line: 912, column: 7, scope: !5325)
!5328 = !DILocation(line: 913, column: 4, scope: !5324)
!5329 = !DILocation(line: 914, column: 7, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 914, column: 7)
!5331 = !DILocation(line: 914, column: 12, scope: !5330)
!5332 = !DILocation(line: 914, column: 19, scope: !5330)
!5333 = !DILocation(line: 914, column: 34, scope: !5330)
!5334 = !DILocation(line: 914, column: 32, scope: !5330)
!5335 = !DILocation(line: 914, column: 7, scope: !5325)
!5336 = !DILocation(line: 915, column: 10, scope: !5330)
!5337 = !DILocation(line: 915, column: 15, scope: !5330)
!5338 = !DILocation(line: 915, column: 22, scope: !5330)
!5339 = !DILocation(line: 915, column: 8, scope: !5330)
!5340 = !DILocation(line: 915, column: 4, scope: !5330)
!5341 = !DILocation(line: 916, column: 2, scope: !5325)
!5342 = !DILocalVariable(name: "__mptr", scope: !5343, file: !3, line: 911, type: !149)
!5343 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 911, column: 2)
!5344 = !DILocation(line: 911, column: 2, scope: !5343)
!5345 = !DILocation(line: 911, column: 2, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 911, column: 2)
!5347 = distinct !{!5347, !5320, !5348}
!5348 = !DILocation(line: 916, column: 2, scope: !5316)
!5349 = !DILocation(line: 918, column: 9, scope: !5307)
!5350 = !DILocation(line: 918, column: 15, scope: !5307)
!5351 = !DILocation(line: 918, column: 21, scope: !5307)
!5352 = !DILocation(line: 918, column: 26, scope: !5307)
!5353 = !DILocation(line: 918, column: 19, scope: !5307)
!5354 = !DILocation(line: 918, column: 2, scope: !5307)
!5355 = distinct !DISubprogram(name: "pci_enable_sriov", scope: !3, file: !3, line: 928, type: !3897, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5356 = !DILocalVariable(name: "dev", arg: 1, scope: !5355, file: !3, line: 928, type: !150)
!5357 = !DILocation(line: 928, column: 38, scope: !5355)
!5358 = !DILocalVariable(name: "nr_virtfn", arg: 2, scope: !5355, file: !3, line: 928, type: !207)
!5359 = !DILocation(line: 928, column: 47, scope: !5355)
!5360 = !DILocation(line: 930, column: 2, scope: !5355)
!5361 = !DILocation(line: 930, column: 2, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 930, column: 2)
!5363 = !DILocation(line: 930, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 930, column: 2)
!5365 = !DILocation(line: 932, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 932, column: 6)
!5367 = !DILocation(line: 932, column: 12, scope: !5366)
!5368 = !DILocation(line: 932, column: 6, scope: !5355)
!5369 = !DILocation(line: 933, column: 3, scope: !5366)
!5370 = !DILocation(line: 935, column: 22, scope: !5355)
!5371 = !DILocation(line: 935, column: 27, scope: !5355)
!5372 = !DILocation(line: 935, column: 9, scope: !5355)
!5373 = !DILocation(line: 935, column: 2, scope: !5355)
!5374 = !DILocation(line: 936, column: 1, scope: !5355)
!5375 = distinct !DISubprogram(name: "sriov_enable", scope: !3, file: !3, line: 460, type: !3897, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5376 = !DILocalVariable(name: "dev", arg: 1, scope: !5375, file: !3, line: 460, type: !150)
!5377 = !DILocation(line: 460, column: 41, scope: !5375)
!5378 = !DILocalVariable(name: "nr_virtfn", arg: 2, scope: !5375, file: !3, line: 460, type: !207)
!5379 = !DILocation(line: 460, column: 50, scope: !5375)
!5380 = !DILocalVariable(name: "rc", scope: !5375, file: !3, line: 462, type: !207)
!5381 = !DILocation(line: 462, column: 6, scope: !5375)
!5382 = !DILocalVariable(name: "i", scope: !5375, file: !3, line: 463, type: !207)
!5383 = !DILocation(line: 463, column: 6, scope: !5375)
!5384 = !DILocalVariable(name: "nres", scope: !5375, file: !3, line: 464, type: !207)
!5385 = !DILocation(line: 464, column: 6, scope: !5375)
!5386 = !DILocalVariable(name: "initial", scope: !5375, file: !3, line: 465, type: !885)
!5387 = !DILocation(line: 465, column: 6, scope: !5375)
!5388 = !DILocalVariable(name: "res", scope: !5375, file: !3, line: 466, type: !172)
!5389 = !DILocation(line: 466, column: 19, scope: !5375)
!5390 = !DILocalVariable(name: "pdev", scope: !5375, file: !3, line: 467, type: !150)
!5391 = !DILocation(line: 467, column: 18, scope: !5375)
!5392 = !DILocalVariable(name: "iov", scope: !5375, file: !3, line: 468, type: !4018)
!5393 = !DILocation(line: 468, column: 20, scope: !5375)
!5394 = !DILocation(line: 468, column: 26, scope: !5375)
!5395 = !DILocation(line: 468, column: 31, scope: !5375)
!5396 = !DILocalVariable(name: "bars", scope: !5375, file: !3, line: 469, type: !207)
!5397 = !DILocation(line: 469, column: 6, scope: !5375)
!5398 = !DILocalVariable(name: "bus", scope: !5375, file: !3, line: 470, type: !207)
!5399 = !DILocation(line: 470, column: 6, scope: !5375)
!5400 = !DILocation(line: 472, column: 7, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 472, column: 6)
!5402 = !DILocation(line: 472, column: 6, scope: !5375)
!5403 = !DILocation(line: 473, column: 3, scope: !5401)
!5404 = !DILocation(line: 475, column: 6, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 475, column: 6)
!5406 = !DILocation(line: 475, column: 11, scope: !5405)
!5407 = !DILocation(line: 475, column: 6, scope: !5375)
!5408 = !DILocation(line: 476, column: 3, scope: !5405)
!5409 = !DILocation(line: 478, column: 23, scope: !5375)
!5410 = !DILocation(line: 478, column: 28, scope: !5375)
!5411 = !DILocation(line: 478, column: 33, scope: !5375)
!5412 = !DILocation(line: 478, column: 37, scope: !5375)
!5413 = !DILocation(line: 478, column: 2, scope: !5375)
!5414 = !DILocation(line: 479, column: 6, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 479, column: 6)
!5416 = !DILocation(line: 479, column: 16, scope: !5415)
!5417 = !DILocation(line: 479, column: 21, scope: !5415)
!5418 = !DILocation(line: 479, column: 14, scope: !5415)
!5419 = !DILocation(line: 479, column: 31, scope: !5415)
!5420 = !DILocation(line: 480, column: 9, scope: !5415)
!5421 = !DILocation(line: 480, column: 14, scope: !5415)
!5422 = !DILocation(line: 480, column: 18, scope: !5415)
!5423 = !DILocation(line: 480, column: 39, scope: !5415)
!5424 = !DILocation(line: 480, column: 43, scope: !5415)
!5425 = !DILocation(line: 480, column: 54, scope: !5415)
!5426 = !DILocation(line: 480, column: 59, scope: !5415)
!5427 = !DILocation(line: 480, column: 51, scope: !5415)
!5428 = !DILocation(line: 479, column: 6, scope: !5375)
!5429 = !DILocation(line: 481, column: 3, scope: !5415)
!5430 = !DILocation(line: 483, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 483, column: 6)
!5432 = !DILocation(line: 483, column: 16, scope: !5431)
!5433 = !DILocation(line: 483, column: 20, scope: !5431)
!5434 = !DILocation(line: 483, column: 23, scope: !5431)
!5435 = !DILocation(line: 483, column: 35, scope: !5431)
!5436 = !DILocation(line: 483, column: 40, scope: !5431)
!5437 = !DILocation(line: 483, column: 33, scope: !5431)
!5438 = !DILocation(line: 483, column: 50, scope: !5431)
!5439 = !DILocation(line: 484, column: 9, scope: !5431)
!5440 = !DILocation(line: 484, column: 14, scope: !5431)
!5441 = !DILocation(line: 484, column: 18, scope: !5431)
!5442 = !DILocation(line: 484, column: 39, scope: !5431)
!5443 = !DILocation(line: 484, column: 43, scope: !5431)
!5444 = !DILocation(line: 484, column: 55, scope: !5431)
!5445 = !DILocation(line: 484, column: 53, scope: !5431)
!5446 = !DILocation(line: 483, column: 6, scope: !5375)
!5447 = !DILocation(line: 485, column: 3, scope: !5431)
!5448 = !DILocation(line: 487, column: 7, scope: !5375)
!5449 = !DILocation(line: 488, column: 9, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 488, column: 2)
!5451 = !DILocation(line: 488, column: 7, scope: !5450)
!5452 = !DILocation(line: 488, column: 14, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 488, column: 2)
!5454 = !DILocation(line: 488, column: 16, scope: !5453)
!5455 = !DILocation(line: 488, column: 2, scope: !5450)
!5456 = !DILocation(line: 489, column: 18, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 488, column: 43)
!5458 = !DILocation(line: 489, column: 20, scope: !5457)
!5459 = !DILocation(line: 489, column: 14, scope: !5457)
!5460 = !DILocation(line: 489, column: 8, scope: !5457)
!5461 = !DILocation(line: 490, column: 10, scope: !5457)
!5462 = !DILocation(line: 490, column: 15, scope: !5457)
!5463 = !DILocation(line: 490, column: 24, scope: !5457)
!5464 = !DILocation(line: 490, column: 26, scope: !5457)
!5465 = !DILocation(line: 490, column: 7, scope: !5457)
!5466 = !DILocation(line: 491, column: 7, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 491, column: 7)
!5468 = !DILocation(line: 491, column: 12, scope: !5467)
!5469 = !DILocation(line: 491, column: 7, scope: !5457)
!5470 = !DILocation(line: 492, column: 8, scope: !5467)
!5471 = !DILocation(line: 492, column: 4, scope: !5467)
!5472 = !DILocation(line: 493, column: 2, scope: !5457)
!5473 = !DILocation(line: 488, column: 39, scope: !5453)
!5474 = !DILocation(line: 488, column: 2, scope: !5453)
!5475 = distinct !{!5475, !5455, !5476}
!5476 = !DILocation(line: 493, column: 2, scope: !5450)
!5477 = !DILocation(line: 494, column: 6, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 494, column: 6)
!5479 = !DILocation(line: 494, column: 14, scope: !5478)
!5480 = !DILocation(line: 494, column: 19, scope: !5478)
!5481 = !DILocation(line: 494, column: 11, scope: !5478)
!5482 = !DILocation(line: 494, column: 6, scope: !5375)
!5483 = !DILocation(line: 495, column: 3, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 494, column: 25)
!5485 = !DILocation(line: 496, column: 3, scope: !5484)
!5486 = !DILocation(line: 499, column: 27, scope: !5375)
!5487 = !DILocation(line: 499, column: 32, scope: !5375)
!5488 = !DILocation(line: 499, column: 42, scope: !5375)
!5489 = !DILocation(line: 499, column: 8, scope: !5375)
!5490 = !DILocation(line: 499, column: 6, scope: !5375)
!5491 = !DILocation(line: 500, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 500, column: 6)
!5493 = !DILocation(line: 500, column: 12, scope: !5492)
!5494 = !DILocation(line: 500, column: 17, scope: !5492)
!5495 = !DILocation(line: 500, column: 22, scope: !5492)
!5496 = !DILocation(line: 500, column: 31, scope: !5492)
!5497 = !DILocation(line: 500, column: 10, scope: !5492)
!5498 = !DILocation(line: 500, column: 6, scope: !5375)
!5499 = !DILocation(line: 501, column: 3, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 500, column: 36)
!5501 = !DILocation(line: 503, column: 3, scope: !5500)
!5502 = !DILocation(line: 506, column: 27, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 506, column: 6)
!5504 = !DILocation(line: 506, column: 32, scope: !5503)
!5505 = !DILocation(line: 506, column: 6, scope: !5503)
!5506 = !DILocation(line: 506, column: 6, scope: !5375)
!5507 = !DILocation(line: 507, column: 3, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 506, column: 39)
!5509 = !DILocation(line: 508, column: 3, scope: !5508)
!5510 = !DILocation(line: 511, column: 6, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 511, column: 6)
!5512 = !DILocation(line: 511, column: 11, scope: !5511)
!5513 = !DILocation(line: 511, column: 19, scope: !5511)
!5514 = !DILocation(line: 511, column: 24, scope: !5511)
!5515 = !DILocation(line: 511, column: 16, scope: !5511)
!5516 = !DILocation(line: 511, column: 6, scope: !5375)
!5517 = !DILocation(line: 512, column: 23, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 511, column: 31)
!5519 = !DILocation(line: 512, column: 28, scope: !5518)
!5520 = !DILocation(line: 512, column: 33, scope: !5518)
!5521 = !DILocation(line: 512, column: 38, scope: !5518)
!5522 = !DILocation(line: 512, column: 10, scope: !5518)
!5523 = !DILocation(line: 512, column: 8, scope: !5518)
!5524 = !DILocation(line: 513, column: 8, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 513, column: 7)
!5526 = !DILocation(line: 513, column: 7, scope: !5518)
!5527 = !DILocation(line: 514, column: 4, scope: !5525)
!5528 = !DILocation(line: 516, column: 8, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 516, column: 7)
!5530 = !DILocation(line: 516, column: 14, scope: !5529)
!5531 = !DILocation(line: 516, column: 7, scope: !5518)
!5532 = !DILocation(line: 517, column: 16, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 516, column: 25)
!5534 = !DILocation(line: 517, column: 4, scope: !5533)
!5535 = !DILocation(line: 518, column: 4, scope: !5533)
!5536 = !DILocation(line: 521, column: 27, scope: !5518)
!5537 = !DILocation(line: 521, column: 32, scope: !5518)
!5538 = !DILocation(line: 521, column: 36, scope: !5518)
!5539 = !DILocation(line: 522, column: 7, scope: !5518)
!5540 = !DILocation(line: 522, column: 13, scope: !5518)
!5541 = !DILocation(line: 522, column: 17, scope: !5518)
!5542 = !DILocation(line: 521, column: 8, scope: !5518)
!5543 = !DILocation(line: 521, column: 6, scope: !5518)
!5544 = !DILocation(line: 523, column: 15, scope: !5518)
!5545 = !DILocation(line: 523, column: 3, scope: !5518)
!5546 = !DILocation(line: 524, column: 7, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 524, column: 7)
!5548 = !DILocation(line: 524, column: 7, scope: !5518)
!5549 = !DILocation(line: 525, column: 11, scope: !5547)
!5550 = !DILocation(line: 525, column: 4, scope: !5547)
!5551 = !DILocation(line: 526, column: 2, scope: !5518)
!5552 = !DILocation(line: 528, column: 21, scope: !5375)
!5553 = !DILocation(line: 528, column: 2, scope: !5375)
!5554 = !DILocation(line: 528, column: 7, scope: !5375)
!5555 = !DILocation(line: 528, column: 19, scope: !5375)
!5556 = !DILocation(line: 529, column: 6, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 529, column: 6)
!5558 = !DILocation(line: 529, column: 18, scope: !5557)
!5559 = !DILocation(line: 529, column: 16, scope: !5557)
!5560 = !DILocation(line: 529, column: 6, scope: !5375)
!5561 = !DILocation(line: 530, column: 13, scope: !5557)
!5562 = !DILocation(line: 530, column: 11, scope: !5557)
!5563 = !DILocation(line: 530, column: 3, scope: !5557)
!5564 = !DILocation(line: 532, column: 28, scope: !5375)
!5565 = !DILocation(line: 532, column: 33, scope: !5375)
!5566 = !DILocation(line: 532, column: 7, scope: !5375)
!5567 = !DILocation(line: 532, column: 5, scope: !5375)
!5568 = !DILocation(line: 533, column: 6, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 533, column: 6)
!5570 = !DILocation(line: 533, column: 6, scope: !5375)
!5571 = !DILocation(line: 534, column: 3, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 533, column: 10)
!5573 = !DILocation(line: 535, column: 3, scope: !5572)
!5574 = !DILocation(line: 538, column: 21, scope: !5375)
!5575 = !DILocation(line: 538, column: 26, scope: !5375)
!5576 = !DILocation(line: 538, column: 2, scope: !5375)
!5577 = !DILocation(line: 539, column: 2, scope: !5375)
!5578 = !DILocation(line: 539, column: 7, scope: !5375)
!5579 = !DILocation(line: 539, column: 12, scope: !5375)
!5580 = !DILocation(line: 540, column: 22, scope: !5375)
!5581 = !DILocation(line: 540, column: 2, scope: !5375)
!5582 = !DILocation(line: 541, column: 24, scope: !5375)
!5583 = !DILocation(line: 541, column: 29, scope: !5375)
!5584 = !DILocation(line: 541, column: 34, scope: !5375)
!5585 = !DILocation(line: 541, column: 38, scope: !5375)
!5586 = !DILocation(line: 541, column: 56, scope: !5375)
!5587 = !DILocation(line: 541, column: 61, scope: !5375)
!5588 = !DILocation(line: 541, column: 2, scope: !5375)
!5589 = !DILocation(line: 542, column: 2, scope: !5375)
!5590 = !DILocation(line: 543, column: 24, scope: !5375)
!5591 = !DILocation(line: 543, column: 2, scope: !5375)
!5592 = !DILocation(line: 545, column: 21, scope: !5375)
!5593 = !DILocation(line: 545, column: 26, scope: !5375)
!5594 = !DILocation(line: 545, column: 7, scope: !5375)
!5595 = !DILocation(line: 545, column: 5, scope: !5375)
!5596 = !DILocation(line: 546, column: 6, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 546, column: 6)
!5598 = !DILocation(line: 546, column: 6, scope: !5375)
!5599 = !DILocation(line: 547, column: 3, scope: !5597)
!5600 = !DILocation(line: 549, column: 18, scope: !5375)
!5601 = !DILocation(line: 549, column: 23, scope: !5375)
!5602 = !DILocation(line: 549, column: 27, scope: !5375)
!5603 = !DILocation(line: 549, column: 2, scope: !5375)
!5604 = !DILocation(line: 550, column: 17, scope: !5375)
!5605 = !DILocation(line: 550, column: 2, scope: !5375)
!5606 = !DILocation(line: 550, column: 7, scope: !5375)
!5607 = !DILocation(line: 550, column: 15, scope: !5375)
!5608 = !DILocation(line: 552, column: 2, scope: !5375)
!5609 = !DILabel(scope: !5375, name: "err_pcibios", file: !3, line: 554)
!5610 = !DILocation(line: 554, column: 1, scope: !5375)
!5611 = !DILocation(line: 555, column: 2, scope: !5375)
!5612 = !DILocation(line: 555, column: 7, scope: !5375)
!5613 = !DILocation(line: 555, column: 12, scope: !5375)
!5614 = !DILocation(line: 556, column: 22, scope: !5375)
!5615 = !DILocation(line: 556, column: 2, scope: !5375)
!5616 = !DILocation(line: 557, column: 24, scope: !5375)
!5617 = !DILocation(line: 557, column: 29, scope: !5375)
!5618 = !DILocation(line: 557, column: 34, scope: !5375)
!5619 = !DILocation(line: 557, column: 38, scope: !5375)
!5620 = !DILocation(line: 557, column: 56, scope: !5375)
!5621 = !DILocation(line: 557, column: 61, scope: !5375)
!5622 = !DILocation(line: 557, column: 2, scope: !5375)
!5623 = !DILocation(line: 558, column: 2, scope: !5375)
!5624 = !DILocation(line: 559, column: 24, scope: !5375)
!5625 = !DILocation(line: 559, column: 2, scope: !5375)
!5626 = !DILocation(line: 561, column: 24, scope: !5375)
!5627 = !DILocation(line: 561, column: 2, scope: !5375)
!5628 = !DILocation(line: 563, column: 6, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 563, column: 6)
!5630 = !DILocation(line: 563, column: 11, scope: !5629)
!5631 = !DILocation(line: 563, column: 19, scope: !5629)
!5632 = !DILocation(line: 563, column: 24, scope: !5629)
!5633 = !DILocation(line: 563, column: 16, scope: !5629)
!5634 = !DILocation(line: 563, column: 6, scope: !5375)
!5635 = !DILocation(line: 564, column: 22, scope: !5629)
!5636 = !DILocation(line: 564, column: 27, scope: !5629)
!5637 = !DILocation(line: 564, column: 31, scope: !5629)
!5638 = !DILocation(line: 564, column: 3, scope: !5629)
!5639 = !DILocation(line: 566, column: 21, scope: !5375)
!5640 = !DILocation(line: 566, column: 2, scope: !5375)
!5641 = !DILocation(line: 567, column: 9, scope: !5375)
!5642 = !DILocation(line: 567, column: 2, scope: !5375)
!5643 = !DILocation(line: 568, column: 1, scope: !5375)
!5644 = distinct !DISubprogram(name: "pci_disable_sriov", scope: !3, file: !3, line: 943, type: !3884, scopeLine: 944, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5645 = !DILocalVariable(name: "dev", arg: 1, scope: !5644, file: !3, line: 943, type: !150)
!5646 = !DILocation(line: 943, column: 40, scope: !5644)
!5647 = !DILocation(line: 945, column: 2, scope: !5644)
!5648 = !DILocation(line: 945, column: 2, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 945, column: 2)
!5650 = !DILocation(line: 945, column: 2, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 945, column: 2)
!5652 = !DILocation(line: 947, column: 7, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 947, column: 6)
!5654 = !DILocation(line: 947, column: 12, scope: !5653)
!5655 = !DILocation(line: 947, column: 6, scope: !5644)
!5656 = !DILocation(line: 948, column: 3, scope: !5653)
!5657 = !DILocation(line: 950, column: 16, scope: !5644)
!5658 = !DILocation(line: 950, column: 2, scope: !5644)
!5659 = !DILocation(line: 951, column: 1, scope: !5644)
!5660 = distinct !DISubprogram(name: "sriov_disable", scope: !3, file: !3, line: 579, type: !3884, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5661 = !DILocalVariable(name: "dev", arg: 1, scope: !5660, file: !3, line: 579, type: !150)
!5662 = !DILocation(line: 579, column: 43, scope: !5660)
!5663 = !DILocalVariable(name: "iov", scope: !5660, file: !3, line: 581, type: !4018)
!5664 = !DILocation(line: 581, column: 20, scope: !5660)
!5665 = !DILocation(line: 581, column: 26, scope: !5660)
!5666 = !DILocation(line: 581, column: 31, scope: !5660)
!5667 = !DILocation(line: 583, column: 7, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 583, column: 6)
!5669 = !DILocation(line: 583, column: 12, scope: !5668)
!5670 = !DILocation(line: 583, column: 6, scope: !5660)
!5671 = !DILocation(line: 584, column: 3, scope: !5668)
!5672 = !DILocation(line: 586, column: 16, scope: !5660)
!5673 = !DILocation(line: 586, column: 2, scope: !5660)
!5674 = !DILocation(line: 587, column: 2, scope: !5660)
!5675 = !DILocation(line: 587, column: 7, scope: !5660)
!5676 = !DILocation(line: 587, column: 12, scope: !5660)
!5677 = !DILocation(line: 588, column: 22, scope: !5660)
!5678 = !DILocation(line: 588, column: 2, scope: !5660)
!5679 = !DILocation(line: 589, column: 24, scope: !5660)
!5680 = !DILocation(line: 589, column: 29, scope: !5660)
!5681 = !DILocation(line: 589, column: 34, scope: !5660)
!5682 = !DILocation(line: 589, column: 38, scope: !5660)
!5683 = !DILocation(line: 589, column: 56, scope: !5660)
!5684 = !DILocation(line: 589, column: 61, scope: !5660)
!5685 = !DILocation(line: 589, column: 2, scope: !5660)
!5686 = !DILocation(line: 590, column: 2, scope: !5660)
!5687 = !DILocation(line: 591, column: 24, scope: !5660)
!5688 = !DILocation(line: 591, column: 2, scope: !5660)
!5689 = !DILocation(line: 593, column: 24, scope: !5660)
!5690 = !DILocation(line: 593, column: 2, scope: !5660)
!5691 = !DILocation(line: 595, column: 6, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 595, column: 6)
!5693 = !DILocation(line: 595, column: 11, scope: !5692)
!5694 = !DILocation(line: 595, column: 19, scope: !5692)
!5695 = !DILocation(line: 595, column: 24, scope: !5692)
!5696 = !DILocation(line: 595, column: 16, scope: !5692)
!5697 = !DILocation(line: 595, column: 6, scope: !5660)
!5698 = !DILocation(line: 596, column: 22, scope: !5692)
!5699 = !DILocation(line: 596, column: 27, scope: !5692)
!5700 = !DILocation(line: 596, column: 31, scope: !5692)
!5701 = !DILocation(line: 596, column: 3, scope: !5692)
!5702 = !DILocation(line: 598, column: 2, scope: !5660)
!5703 = !DILocation(line: 598, column: 7, scope: !5660)
!5704 = !DILocation(line: 598, column: 15, scope: !5660)
!5705 = !DILocation(line: 599, column: 21, scope: !5660)
!5706 = !DILocation(line: 599, column: 2, scope: !5660)
!5707 = !DILocation(line: 600, column: 1, scope: !5660)
!5708 = distinct !DISubprogram(name: "pci_num_vf", scope: !3, file: !3, line: 960, type: !3892, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5709 = !DILocalVariable(name: "dev", arg: 1, scope: !5708, file: !3, line: 960, type: !150)
!5710 = !DILocation(line: 960, column: 32, scope: !5708)
!5711 = !DILocation(line: 962, column: 7, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 962, column: 6)
!5713 = !DILocation(line: 962, column: 12, scope: !5712)
!5714 = !DILocation(line: 962, column: 6, scope: !5708)
!5715 = !DILocation(line: 963, column: 3, scope: !5712)
!5716 = !DILocation(line: 965, column: 9, scope: !5708)
!5717 = !DILocation(line: 965, column: 14, scope: !5708)
!5718 = !DILocation(line: 965, column: 21, scope: !5708)
!5719 = !DILocation(line: 965, column: 2, scope: !5708)
!5720 = !DILocation(line: 966, column: 1, scope: !5708)
!5721 = distinct !DISubprogram(name: "pci_vfs_assigned", scope: !3, file: !3, line: 976, type: !3892, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5722 = !DILocalVariable(name: "dev", arg: 1, scope: !5721, file: !3, line: 976, type: !150)
!5723 = !DILocation(line: 976, column: 38, scope: !5721)
!5724 = !DILocalVariable(name: "vfdev", scope: !5721, file: !3, line: 978, type: !150)
!5725 = !DILocation(line: 978, column: 18, scope: !5721)
!5726 = !DILocalVariable(name: "vfs_assigned", scope: !5721, file: !3, line: 979, type: !7)
!5727 = !DILocation(line: 979, column: 15, scope: !5721)
!5728 = !DILocalVariable(name: "dev_id", scope: !5721, file: !3, line: 980, type: !245)
!5729 = !DILocation(line: 980, column: 17, scope: !5721)
!5730 = !DILocation(line: 983, column: 7, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 983, column: 6)
!5732 = !DILocation(line: 983, column: 12, scope: !5731)
!5733 = !DILocation(line: 983, column: 6, scope: !5721)
!5734 = !DILocation(line: 984, column: 3, scope: !5731)
!5735 = !DILocation(line: 990, column: 11, scope: !5721)
!5736 = !DILocation(line: 990, column: 16, scope: !5721)
!5737 = !DILocation(line: 990, column: 23, scope: !5721)
!5738 = !DILocation(line: 990, column: 9, scope: !5721)
!5739 = !DILocation(line: 993, column: 25, scope: !5721)
!5740 = !DILocation(line: 993, column: 30, scope: !5721)
!5741 = !DILocation(line: 993, column: 38, scope: !5721)
!5742 = !DILocation(line: 993, column: 10, scope: !5721)
!5743 = !DILocation(line: 993, column: 8, scope: !5721)
!5744 = !DILocation(line: 994, column: 2, scope: !5721)
!5745 = !DILocation(line: 994, column: 9, scope: !5721)
!5746 = !DILocation(line: 999, column: 7, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 999, column: 7)
!5748 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 994, column: 16)
!5749 = !DILocation(line: 999, column: 14, scope: !5747)
!5750 = !DILocation(line: 999, column: 24, scope: !5747)
!5751 = !DILocation(line: 999, column: 28, scope: !5747)
!5752 = !DILocation(line: 999, column: 35, scope: !5747)
!5753 = !DILocation(line: 999, column: 45, scope: !5747)
!5754 = !DILocation(line: 999, column: 42, scope: !5747)
!5755 = !DILocation(line: 999, column: 50, scope: !5747)
!5756 = !DILocation(line: 1000, column: 24, scope: !5747)
!5757 = !DILocation(line: 1000, column: 4, scope: !5747)
!5758 = !DILocation(line: 999, column: 7, scope: !5748)
!5759 = !DILocation(line: 1001, column: 16, scope: !5747)
!5760 = !DILocation(line: 1001, column: 4, scope: !5747)
!5761 = !DILocation(line: 1003, column: 26, scope: !5748)
!5762 = !DILocation(line: 1003, column: 31, scope: !5748)
!5763 = !DILocation(line: 1003, column: 39, scope: !5748)
!5764 = !DILocation(line: 1003, column: 47, scope: !5748)
!5765 = !DILocation(line: 1003, column: 11, scope: !5748)
!5766 = !DILocation(line: 1003, column: 9, scope: !5748)
!5767 = distinct !{!5767, !5744, !5768}
!5768 = !DILocation(line: 1004, column: 2, scope: !5721)
!5769 = !DILocation(line: 1006, column: 9, scope: !5721)
!5770 = !DILocation(line: 1006, column: 2, scope: !5721)
!5771 = !DILocation(line: 1007, column: 1, scope: !5721)
!5772 = distinct !DISubprogram(name: "pci_is_dev_assigned", scope: !94, file: !94, line: 2358, type: !4654, scopeLine: 2359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5773 = !DILocalVariable(name: "pdev", arg: 1, scope: !5772, file: !94, line: 2358, type: !150)
!5774 = !DILocation(line: 2358, column: 56, scope: !5772)
!5775 = !DILocation(line: 2360, column: 10, scope: !5772)
!5776 = !DILocation(line: 2360, column: 16, scope: !5772)
!5777 = !DILocation(line: 2360, column: 26, scope: !5772)
!5778 = !DILocation(line: 2360, column: 52, scope: !5772)
!5779 = !DILocation(line: 2360, column: 2, scope: !5772)
!5780 = distinct !DISubprogram(name: "pci_sriov_set_totalvfs", scope: !3, file: !3, line: 1023, type: !4620, scopeLine: 1024, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5781 = !DILocalVariable(name: "dev", arg: 1, scope: !5780, file: !3, line: 1023, type: !150)
!5782 = !DILocation(line: 1023, column: 44, scope: !5780)
!5783 = !DILocalVariable(name: "numvfs", arg: 2, scope: !5780, file: !3, line: 1023, type: !885)
!5784 = !DILocation(line: 1023, column: 53, scope: !5780)
!5785 = !DILocation(line: 1025, column: 7, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 1025, column: 6)
!5787 = !DILocation(line: 1025, column: 12, scope: !5786)
!5788 = !DILocation(line: 1025, column: 6, scope: !5780)
!5789 = !DILocation(line: 1026, column: 3, scope: !5786)
!5790 = !DILocation(line: 1028, column: 6, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 1028, column: 6)
!5792 = !DILocation(line: 1028, column: 15, scope: !5791)
!5793 = !DILocation(line: 1028, column: 20, scope: !5791)
!5794 = !DILocation(line: 1028, column: 27, scope: !5791)
!5795 = !DILocation(line: 1028, column: 13, scope: !5791)
!5796 = !DILocation(line: 1028, column: 6, scope: !5780)
!5797 = !DILocation(line: 1029, column: 3, scope: !5791)
!5798 = !DILocation(line: 1032, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 1032, column: 6)
!5800 = !DILocation(line: 1032, column: 11, scope: !5799)
!5801 = !DILocation(line: 1032, column: 18, scope: !5799)
!5802 = !DILocation(line: 1032, column: 23, scope: !5799)
!5803 = !DILocation(line: 1032, column: 6, scope: !5780)
!5804 = !DILocation(line: 1033, column: 3, scope: !5799)
!5805 = !DILocation(line: 1035, column: 31, scope: !5780)
!5806 = !DILocation(line: 1035, column: 2, scope: !5780)
!5807 = !DILocation(line: 1035, column: 7, scope: !5780)
!5808 = !DILocation(line: 1035, column: 14, scope: !5780)
!5809 = !DILocation(line: 1035, column: 29, scope: !5780)
!5810 = !DILocation(line: 1036, column: 2, scope: !5780)
!5811 = !DILocation(line: 1037, column: 1, scope: !5780)
!5812 = distinct !DISubprogram(name: "pci_sriov_get_totalvfs", scope: !3, file: !3, line: 1048, type: !3892, scopeLine: 1049, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5813 = !DILocalVariable(name: "dev", arg: 1, scope: !5812, file: !3, line: 1048, type: !150)
!5814 = !DILocation(line: 1048, column: 44, scope: !5812)
!5815 = !DILocation(line: 1050, column: 7, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 1050, column: 6)
!5817 = !DILocation(line: 1050, column: 12, scope: !5816)
!5818 = !DILocation(line: 1050, column: 6, scope: !5812)
!5819 = !DILocation(line: 1051, column: 3, scope: !5816)
!5820 = !DILocation(line: 1053, column: 9, scope: !5812)
!5821 = !DILocation(line: 1053, column: 14, scope: !5812)
!5822 = !DILocation(line: 1053, column: 21, scope: !5812)
!5823 = !DILocation(line: 1053, column: 2, scope: !5812)
!5824 = !DILocation(line: 1054, column: 1, scope: !5812)
!5825 = distinct !DISubprogram(name: "pci_sriov_configure_simple", scope: !3, file: !3, line: 1066, type: !3897, scopeLine: 1067, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5826 = !DILocalVariable(name: "dev", arg: 1, scope: !5825, file: !3, line: 1066, type: !150)
!5827 = !DILocation(line: 1066, column: 48, scope: !5825)
!5828 = !DILocalVariable(name: "nr_virtfn", arg: 2, scope: !5825, file: !3, line: 1066, type: !207)
!5829 = !DILocation(line: 1066, column: 57, scope: !5825)
!5830 = !DILocalVariable(name: "rc", scope: !5825, file: !3, line: 1068, type: !207)
!5831 = !DILocation(line: 1068, column: 6, scope: !5825)
!5832 = !DILocation(line: 1070, column: 2, scope: !5825)
!5833 = !DILocation(line: 1070, column: 2, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 1070, column: 2)
!5835 = !DILocation(line: 1070, column: 2, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5834, file: !3, line: 1070, column: 2)
!5837 = !DILocation(line: 1072, column: 7, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 1072, column: 6)
!5839 = !DILocation(line: 1072, column: 12, scope: !5838)
!5840 = !DILocation(line: 1072, column: 6, scope: !5825)
!5841 = !DILocation(line: 1073, column: 3, scope: !5838)
!5842 = !DILocation(line: 1075, column: 23, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 1075, column: 6)
!5844 = !DILocation(line: 1075, column: 6, scope: !5843)
!5845 = !DILocation(line: 1075, column: 6, scope: !5825)
!5846 = !DILocation(line: 1076, column: 3, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 1075, column: 29)
!5848 = !DILocation(line: 1077, column: 3, scope: !5847)
!5849 = !DILocation(line: 1080, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 1080, column: 6)
!5851 = !DILocation(line: 1080, column: 16, scope: !5850)
!5852 = !DILocation(line: 1080, column: 6, scope: !5825)
!5853 = !DILocation(line: 1081, column: 17, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5850, file: !3, line: 1080, column: 22)
!5855 = !DILocation(line: 1081, column: 3, scope: !5854)
!5856 = !DILocation(line: 1082, column: 3, scope: !5854)
!5857 = !DILocation(line: 1085, column: 20, scope: !5825)
!5858 = !DILocation(line: 1085, column: 25, scope: !5825)
!5859 = !DILocation(line: 1085, column: 7, scope: !5825)
!5860 = !DILocation(line: 1085, column: 5, scope: !5825)
!5861 = !DILocation(line: 1086, column: 6, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 1086, column: 6)
!5863 = !DILocation(line: 1086, column: 9, scope: !5862)
!5864 = !DILocation(line: 1086, column: 6, scope: !5825)
!5865 = !DILocation(line: 1087, column: 10, scope: !5862)
!5866 = !DILocation(line: 1087, column: 3, scope: !5862)
!5867 = !DILocation(line: 1089, column: 9, scope: !5825)
!5868 = !DILocation(line: 1089, column: 2, scope: !5825)
!5869 = !DILocation(line: 1090, column: 1, scope: !5825)
!5870 = distinct !DISubprogram(name: "list_empty", scope: !5871, file: !5871, line: 280, type: !5872, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5871 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5872 = !DISubroutineType(types: !5873)
!5873 = !{!207, !5874}
!5874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5875, size: 64)
!5875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!5876 = !DILocalVariable(name: "head", arg: 1, scope: !5870, file: !5871, line: 280, type: !5874)
!5877 = !DILocation(line: 280, column: 54, scope: !5870)
!5878 = !DILocation(line: 282, column: 9, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5870, file: !5871, line: 282, column: 9)
!5880 = !DILocation(line: 282, column: 9, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5879, file: !5871, line: 282, column: 9)
!5882 = !DILocation(line: 282, column: 34, scope: !5870)
!5883 = !DILocation(line: 282, column: 31, scope: !5870)
!5884 = !DILocation(line: 282, column: 2, scope: !5870)
!5885 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !4588, file: !4588, line: 36, type: !5886, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{!5888, !5899}
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5889, size: 64)
!5889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !4588, line: 15, size: 320, elements: !5890)
!5890 = !{!5891, !5892, !5893, !5896, !5897, !5898}
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5889, file: !4588, line: 16, baseType: !207, size: 32)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5889, file: !4588, line: 17, baseType: !207, size: 32, offset: 32)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !5889, file: !4588, line: 19, baseType: !5894, size: 64, offset: 64)
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5895, size: 64)
!5895 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !3438, line: 228, flags: DIFlagFwdDecl)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5889, file: !4588, line: 22, baseType: !149, size: 64, offset: 128)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5889, file: !4588, line: 25, baseType: !149, size: 64, offset: 192)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "vmd_dev", scope: !5889, file: !4588, line: 28, baseType: !150, size: 64, offset: 256)
!5899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5900, size: 64)
!5900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!5901 = !DILocalVariable(name: "bus", arg: 1, scope: !5885, file: !4588, line: 36, type: !5899)
!5902 = !DILocation(line: 36, column: 72, scope: !5885)
!5903 = !DILocation(line: 38, column: 9, scope: !5885)
!5904 = !DILocation(line: 38, column: 14, scope: !5885)
!5905 = !DILocation(line: 38, column: 2, scope: !5885)
!5906 = distinct !DISubprogram(name: "kobj_to_dev", scope: !73, file: !73, line: 591, type: !5907, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5907 = !DISubroutineType(types: !5908)
!5908 = !{!249, !258}
!5909 = !DILocalVariable(name: "kobj", arg: 1, scope: !5906, file: !73, line: 591, type: !258)
!5910 = !DILocation(line: 591, column: 58, scope: !5906)
!5911 = !DILocalVariable(name: "__mptr", scope: !5912, file: !73, line: 593, type: !149)
!5912 = distinct !DILexicalBlock(scope: !5906, file: !73, line: 593, column: 9)
!5913 = !DILocation(line: 593, column: 9, scope: !5912)
!5914 = !DILocation(line: 593, column: 9, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5912, file: !73, line: 593, column: 9)
!5916 = !DILocation(line: 593, column: 2, scope: !5906)
!5917 = distinct !DISubprogram(name: "sriov_totalvfs_show", scope: !3, file: !3, line: 256, type: !4065, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5918 = !DILocalVariable(name: "dev", arg: 1, scope: !5917, file: !3, line: 256, type: !249)
!5919 = !DILocation(line: 256, column: 51, scope: !5917)
!5920 = !DILocalVariable(name: "attr", arg: 2, scope: !5917, file: !3, line: 257, type: !4067)
!5921 = !DILocation(line: 257, column: 33, scope: !5917)
!5922 = !DILocalVariable(name: "buf", arg: 3, scope: !5917, file: !3, line: 258, type: !306)
!5923 = !DILocation(line: 258, column: 14, scope: !5917)
!5924 = !DILocalVariable(name: "pdev", scope: !5917, file: !3, line: 260, type: !150)
!5925 = !DILocation(line: 260, column: 18, scope: !5917)
!5926 = !DILocalVariable(name: "__mptr", scope: !5927, file: !3, line: 260, type: !149)
!5927 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 260, column: 25)
!5928 = !DILocation(line: 260, column: 25, scope: !5927)
!5929 = !DILocation(line: 260, column: 25, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5927, file: !3, line: 260, column: 25)
!5931 = !DILocation(line: 262, column: 17, scope: !5917)
!5932 = !DILocation(line: 262, column: 53, scope: !5917)
!5933 = !DILocation(line: 262, column: 30, scope: !5917)
!5934 = !DILocation(line: 262, column: 9, scope: !5917)
!5935 = !DILocation(line: 262, column: 2, scope: !5917)
!5936 = distinct !DISubprogram(name: "sriov_numvfs_show", scope: !3, file: !3, line: 265, type: !4065, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5937 = !DILocalVariable(name: "dev", arg: 1, scope: !5936, file: !3, line: 265, type: !249)
!5938 = !DILocation(line: 265, column: 49, scope: !5936)
!5939 = !DILocalVariable(name: "attr", arg: 2, scope: !5936, file: !3, line: 266, type: !4067)
!5940 = !DILocation(line: 266, column: 31, scope: !5936)
!5941 = !DILocalVariable(name: "buf", arg: 3, scope: !5936, file: !3, line: 267, type: !306)
!5942 = !DILocation(line: 267, column: 12, scope: !5936)
!5943 = !DILocalVariable(name: "pdev", scope: !5936, file: !3, line: 269, type: !150)
!5944 = !DILocation(line: 269, column: 18, scope: !5936)
!5945 = !DILocalVariable(name: "__mptr", scope: !5946, file: !3, line: 269, type: !149)
!5946 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 269, column: 25)
!5947 = !DILocation(line: 269, column: 25, scope: !5946)
!5948 = !DILocation(line: 269, column: 25, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 269, column: 25)
!5950 = !DILocalVariable(name: "num_vfs", scope: !5936, file: !3, line: 270, type: !885)
!5951 = !DILocation(line: 270, column: 6, scope: !5936)
!5952 = !DILocation(line: 273, column: 15, scope: !5936)
!5953 = !DILocation(line: 273, column: 21, scope: !5936)
!5954 = !DILocation(line: 273, column: 2, scope: !5936)
!5955 = !DILocation(line: 274, column: 12, scope: !5936)
!5956 = !DILocation(line: 274, column: 18, scope: !5936)
!5957 = !DILocation(line: 274, column: 25, scope: !5936)
!5958 = !DILocation(line: 274, column: 10, scope: !5936)
!5959 = !DILocation(line: 275, column: 17, scope: !5936)
!5960 = !DILocation(line: 275, column: 23, scope: !5936)
!5961 = !DILocation(line: 275, column: 2, scope: !5936)
!5962 = !DILocation(line: 277, column: 17, scope: !5936)
!5963 = !DILocation(line: 277, column: 30, scope: !5936)
!5964 = !DILocation(line: 277, column: 9, scope: !5936)
!5965 = !DILocation(line: 277, column: 2, scope: !5936)
!5966 = distinct !DISubprogram(name: "sriov_numvfs_store", scope: !3, file: !3, line: 287, type: !4070, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!5967 = !DILocalVariable(name: "dev", arg: 1, scope: !5966, file: !3, line: 287, type: !249)
!5968 = !DILocation(line: 287, column: 50, scope: !5966)
!5969 = !DILocalVariable(name: "attr", arg: 2, scope: !5966, file: !3, line: 288, type: !4067)
!5970 = !DILocation(line: 288, column: 32, scope: !5966)
!5971 = !DILocalVariable(name: "buf", arg: 3, scope: !5966, file: !3, line: 289, type: !186)
!5972 = !DILocation(line: 289, column: 19, scope: !5966)
!5973 = !DILocalVariable(name: "count", arg: 4, scope: !5966, file: !3, line: 289, type: !352)
!5974 = !DILocation(line: 289, column: 31, scope: !5966)
!5975 = !DILocalVariable(name: "pdev", scope: !5966, file: !3, line: 291, type: !150)
!5976 = !DILocation(line: 291, column: 18, scope: !5966)
!5977 = !DILocalVariable(name: "__mptr", scope: !5978, file: !3, line: 291, type: !149)
!5978 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 291, column: 25)
!5979 = !DILocation(line: 291, column: 25, scope: !5978)
!5980 = !DILocation(line: 291, column: 25, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 291, column: 25)
!5982 = !DILocalVariable(name: "ret", scope: !5966, file: !3, line: 292, type: !207)
!5983 = !DILocation(line: 292, column: 6, scope: !5966)
!5984 = !DILocalVariable(name: "num_vfs", scope: !5966, file: !3, line: 293, type: !885)
!5985 = !DILocation(line: 293, column: 6, scope: !5966)
!5986 = !DILocation(line: 295, column: 18, scope: !5966)
!5987 = !DILocation(line: 295, column: 8, scope: !5966)
!5988 = !DILocation(line: 295, column: 6, scope: !5966)
!5989 = !DILocation(line: 296, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 296, column: 6)
!5991 = !DILocation(line: 296, column: 10, scope: !5990)
!5992 = !DILocation(line: 296, column: 6, scope: !5966)
!5993 = !DILocation(line: 297, column: 10, scope: !5990)
!5994 = !DILocation(line: 297, column: 3, scope: !5990)
!5995 = !DILocation(line: 299, column: 6, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 299, column: 6)
!5997 = !DILocation(line: 299, column: 39, scope: !5996)
!5998 = !DILocation(line: 299, column: 16, scope: !5996)
!5999 = !DILocation(line: 299, column: 14, scope: !5996)
!6000 = !DILocation(line: 299, column: 6, scope: !5966)
!6001 = !DILocation(line: 300, column: 3, scope: !5996)
!6002 = !DILocation(line: 302, column: 15, scope: !5966)
!6003 = !DILocation(line: 302, column: 21, scope: !5966)
!6004 = !DILocation(line: 302, column: 2, scope: !5966)
!6005 = !DILocation(line: 304, column: 6, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 304, column: 6)
!6007 = !DILocation(line: 304, column: 17, scope: !6006)
!6008 = !DILocation(line: 304, column: 23, scope: !6006)
!6009 = !DILocation(line: 304, column: 30, scope: !6006)
!6010 = !DILocation(line: 304, column: 14, scope: !6006)
!6011 = !DILocation(line: 304, column: 6, scope: !5966)
!6012 = !DILocation(line: 305, column: 3, scope: !6006)
!6013 = !DILocation(line: 308, column: 7, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 308, column: 6)
!6015 = !DILocation(line: 308, column: 13, scope: !6014)
!6016 = !DILocation(line: 308, column: 20, scope: !6014)
!6017 = !DILocation(line: 308, column: 24, scope: !6014)
!6018 = !DILocation(line: 308, column: 30, scope: !6014)
!6019 = !DILocation(line: 308, column: 38, scope: !6014)
!6020 = !DILocation(line: 308, column: 6, scope: !5966)
!6021 = !DILocation(line: 309, column: 3, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 308, column: 55)
!6023 = !DILocation(line: 310, column: 7, scope: !6022)
!6024 = !DILocation(line: 311, column: 3, scope: !6022)
!6025 = !DILocation(line: 314, column: 6, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 314, column: 6)
!6027 = !DILocation(line: 314, column: 14, scope: !6026)
!6028 = !DILocation(line: 314, column: 6, scope: !5966)
!6029 = !DILocation(line: 316, column: 9, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 314, column: 20)
!6031 = !DILocation(line: 316, column: 15, scope: !6030)
!6032 = !DILocation(line: 316, column: 23, scope: !6030)
!6033 = !DILocation(line: 316, column: 39, scope: !6030)
!6034 = !DILocation(line: 316, column: 7, scope: !6030)
!6035 = !DILocation(line: 317, column: 3, scope: !6030)
!6036 = !DILocation(line: 321, column: 6, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 321, column: 6)
!6038 = !DILocation(line: 321, column: 12, scope: !6037)
!6039 = !DILocation(line: 321, column: 19, scope: !6037)
!6040 = !DILocation(line: 321, column: 6, scope: !5966)
!6041 = !DILocation(line: 322, column: 3, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 321, column: 28)
!6043 = !DILocation(line: 324, column: 7, scope: !6042)
!6044 = !DILocation(line: 325, column: 3, scope: !6042)
!6045 = !DILocation(line: 328, column: 8, scope: !5966)
!6046 = !DILocation(line: 328, column: 14, scope: !5966)
!6047 = !DILocation(line: 328, column: 22, scope: !5966)
!6048 = !DILocation(line: 328, column: 38, scope: !5966)
!6049 = !DILocation(line: 328, column: 44, scope: !5966)
!6050 = !DILocation(line: 328, column: 6, scope: !5966)
!6051 = !DILocation(line: 329, column: 6, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 329, column: 6)
!6053 = !DILocation(line: 329, column: 10, scope: !6052)
!6054 = !DILocation(line: 329, column: 6, scope: !5966)
!6055 = !DILocation(line: 330, column: 3, scope: !6052)
!6056 = !DILocation(line: 332, column: 6, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 332, column: 6)
!6058 = !DILocation(line: 332, column: 13, scope: !6057)
!6059 = !DILocation(line: 332, column: 10, scope: !6057)
!6060 = !DILocation(line: 332, column: 6, scope: !5966)
!6061 = !DILocation(line: 333, column: 3, scope: !6057)
!6062 = !DILabel(scope: !5966, name: "exit", file: !3, line: 336)
!6063 = !DILocation(line: 336, column: 1, scope: !5966)
!6064 = !DILocation(line: 337, column: 17, scope: !5966)
!6065 = !DILocation(line: 337, column: 23, scope: !5966)
!6066 = !DILocation(line: 337, column: 2, scope: !5966)
!6067 = !DILocation(line: 339, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 339, column: 6)
!6069 = !DILocation(line: 339, column: 10, scope: !6068)
!6070 = !DILocation(line: 339, column: 6, scope: !5966)
!6071 = !DILocation(line: 340, column: 10, scope: !6068)
!6072 = !DILocation(line: 340, column: 3, scope: !6068)
!6073 = !DILocation(line: 342, column: 9, scope: !5966)
!6074 = !DILocation(line: 342, column: 2, scope: !5966)
!6075 = !DILocation(line: 343, column: 1, scope: !5966)
!6076 = distinct !DISubprogram(name: "device_lock", scope: !73, file: !73, line: 729, type: !3402, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6077 = !DILocalVariable(name: "dev", arg: 1, scope: !6076, file: !73, line: 729, type: !249)
!6078 = !DILocation(line: 729, column: 47, scope: !6076)
!6079 = !DILocation(line: 731, column: 14, scope: !6076)
!6080 = !DILocation(line: 731, column: 19, scope: !6076)
!6081 = !DILocation(line: 731, column: 2, scope: !6076)
!6082 = !DILocation(line: 732, column: 1, scope: !6076)
!6083 = distinct !DISubprogram(name: "device_unlock", scope: !73, file: !73, line: 744, type: !3402, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6084 = !DILocalVariable(name: "dev", arg: 1, scope: !6083, file: !73, line: 744, type: !249)
!6085 = !DILocation(line: 744, column: 49, scope: !6083)
!6086 = !DILocation(line: 746, column: 16, scope: !6083)
!6087 = !DILocation(line: 746, column: 21, scope: !6083)
!6088 = !DILocation(line: 746, column: 2, scope: !6083)
!6089 = !DILocation(line: 747, column: 1, scope: !6083)
!6090 = distinct !DISubprogram(name: "sriov_offset_show", scope: !3, file: !3, line: 345, type: !4065, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6091 = !DILocalVariable(name: "dev", arg: 1, scope: !6090, file: !3, line: 345, type: !249)
!6092 = !DILocation(line: 345, column: 49, scope: !6090)
!6093 = !DILocalVariable(name: "attr", arg: 2, scope: !6090, file: !3, line: 346, type: !4067)
!6094 = !DILocation(line: 346, column: 31, scope: !6090)
!6095 = !DILocalVariable(name: "buf", arg: 3, scope: !6090, file: !3, line: 347, type: !306)
!6096 = !DILocation(line: 347, column: 12, scope: !6090)
!6097 = !DILocalVariable(name: "pdev", scope: !6090, file: !3, line: 349, type: !150)
!6098 = !DILocation(line: 349, column: 18, scope: !6090)
!6099 = !DILocalVariable(name: "__mptr", scope: !6100, file: !3, line: 349, type: !149)
!6100 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 349, column: 25)
!6101 = !DILocation(line: 349, column: 25, scope: !6100)
!6102 = !DILocation(line: 349, column: 25, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6100, file: !3, line: 349, column: 25)
!6104 = !DILocation(line: 351, column: 17, scope: !6090)
!6105 = !DILocation(line: 351, column: 30, scope: !6090)
!6106 = !DILocation(line: 351, column: 36, scope: !6090)
!6107 = !DILocation(line: 351, column: 43, scope: !6090)
!6108 = !DILocation(line: 351, column: 9, scope: !6090)
!6109 = !DILocation(line: 351, column: 2, scope: !6090)
!6110 = distinct !DISubprogram(name: "sriov_stride_show", scope: !3, file: !3, line: 354, type: !4065, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6111 = !DILocalVariable(name: "dev", arg: 1, scope: !6110, file: !3, line: 354, type: !249)
!6112 = !DILocation(line: 354, column: 49, scope: !6110)
!6113 = !DILocalVariable(name: "attr", arg: 2, scope: !6110, file: !3, line: 355, type: !4067)
!6114 = !DILocation(line: 355, column: 31, scope: !6110)
!6115 = !DILocalVariable(name: "buf", arg: 3, scope: !6110, file: !3, line: 356, type: !306)
!6116 = !DILocation(line: 356, column: 12, scope: !6110)
!6117 = !DILocalVariable(name: "pdev", scope: !6110, file: !3, line: 358, type: !150)
!6118 = !DILocation(line: 358, column: 18, scope: !6110)
!6119 = !DILocalVariable(name: "__mptr", scope: !6120, file: !3, line: 358, type: !149)
!6120 = distinct !DILexicalBlock(scope: !6110, file: !3, line: 358, column: 25)
!6121 = !DILocation(line: 358, column: 25, scope: !6120)
!6122 = !DILocation(line: 358, column: 25, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6120, file: !3, line: 358, column: 25)
!6124 = !DILocation(line: 360, column: 17, scope: !6110)
!6125 = !DILocation(line: 360, column: 30, scope: !6110)
!6126 = !DILocation(line: 360, column: 36, scope: !6110)
!6127 = !DILocation(line: 360, column: 43, scope: !6110)
!6128 = !DILocation(line: 360, column: 9, scope: !6110)
!6129 = !DILocation(line: 360, column: 2, scope: !6110)
!6130 = distinct !DISubprogram(name: "sriov_vf_device_show", scope: !3, file: !3, line: 363, type: !4065, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6131 = !DILocalVariable(name: "dev", arg: 1, scope: !6130, file: !3, line: 363, type: !249)
!6132 = !DILocation(line: 363, column: 52, scope: !6130)
!6133 = !DILocalVariable(name: "attr", arg: 2, scope: !6130, file: !3, line: 364, type: !4067)
!6134 = !DILocation(line: 364, column: 34, scope: !6130)
!6135 = !DILocalVariable(name: "buf", arg: 3, scope: !6130, file: !3, line: 365, type: !306)
!6136 = !DILocation(line: 365, column: 15, scope: !6130)
!6137 = !DILocalVariable(name: "pdev", scope: !6130, file: !3, line: 367, type: !150)
!6138 = !DILocation(line: 367, column: 18, scope: !6130)
!6139 = !DILocalVariable(name: "__mptr", scope: !6140, file: !3, line: 367, type: !149)
!6140 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 367, column: 25)
!6141 = !DILocation(line: 367, column: 25, scope: !6140)
!6142 = !DILocation(line: 367, column: 25, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 367, column: 25)
!6144 = !DILocation(line: 369, column: 17, scope: !6130)
!6145 = !DILocation(line: 369, column: 30, scope: !6130)
!6146 = !DILocation(line: 369, column: 36, scope: !6130)
!6147 = !DILocation(line: 369, column: 43, scope: !6130)
!6148 = !DILocation(line: 369, column: 9, scope: !6130)
!6149 = !DILocation(line: 369, column: 2, scope: !6130)
!6150 = distinct !DISubprogram(name: "sriov_drivers_autoprobe_show", scope: !3, file: !3, line: 372, type: !4065, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6151 = !DILocalVariable(name: "dev", arg: 1, scope: !6150, file: !3, line: 372, type: !249)
!6152 = !DILocation(line: 372, column: 60, scope: !6150)
!6153 = !DILocalVariable(name: "attr", arg: 2, scope: !6150, file: !3, line: 373, type: !4067)
!6154 = !DILocation(line: 373, column: 35, scope: !6150)
!6155 = !DILocalVariable(name: "buf", arg: 3, scope: !6150, file: !3, line: 374, type: !306)
!6156 = !DILocation(line: 374, column: 16, scope: !6150)
!6157 = !DILocalVariable(name: "pdev", scope: !6150, file: !3, line: 376, type: !150)
!6158 = !DILocation(line: 376, column: 18, scope: !6150)
!6159 = !DILocalVariable(name: "__mptr", scope: !6160, file: !3, line: 376, type: !149)
!6160 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 376, column: 25)
!6161 = !DILocation(line: 376, column: 25, scope: !6160)
!6162 = !DILocation(line: 376, column: 25, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 376, column: 25)
!6164 = !DILocation(line: 378, column: 17, scope: !6150)
!6165 = !DILocation(line: 378, column: 30, scope: !6150)
!6166 = !DILocation(line: 378, column: 36, scope: !6150)
!6167 = !DILocation(line: 378, column: 43, scope: !6150)
!6168 = !DILocation(line: 378, column: 9, scope: !6150)
!6169 = !DILocation(line: 378, column: 2, scope: !6150)
!6170 = distinct !DISubprogram(name: "sriov_drivers_autoprobe_store", scope: !3, file: !3, line: 381, type: !4070, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6171 = !DILocalVariable(name: "dev", arg: 1, scope: !6170, file: !3, line: 381, type: !249)
!6172 = !DILocation(line: 381, column: 61, scope: !6170)
!6173 = !DILocalVariable(name: "attr", arg: 2, scope: !6170, file: !3, line: 382, type: !4067)
!6174 = !DILocation(line: 382, column: 36, scope: !6170)
!6175 = !DILocalVariable(name: "buf", arg: 3, scope: !6170, file: !3, line: 383, type: !186)
!6176 = !DILocation(line: 383, column: 23, scope: !6170)
!6177 = !DILocalVariable(name: "count", arg: 4, scope: !6170, file: !3, line: 383, type: !352)
!6178 = !DILocation(line: 383, column: 35, scope: !6170)
!6179 = !DILocalVariable(name: "pdev", scope: !6170, file: !3, line: 385, type: !150)
!6180 = !DILocation(line: 385, column: 18, scope: !6170)
!6181 = !DILocalVariable(name: "__mptr", scope: !6182, file: !3, line: 385, type: !149)
!6182 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 385, column: 25)
!6183 = !DILocation(line: 385, column: 25, scope: !6182)
!6184 = !DILocation(line: 385, column: 25, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6182, file: !3, line: 385, column: 25)
!6186 = !DILocalVariable(name: "drivers_autoprobe", scope: !6170, file: !3, line: 386, type: !512)
!6187 = !DILocation(line: 386, column: 7, scope: !6170)
!6188 = !DILocation(line: 388, column: 17, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 388, column: 6)
!6190 = !DILocation(line: 388, column: 6, scope: !6189)
!6191 = !DILocation(line: 388, column: 42, scope: !6189)
!6192 = !DILocation(line: 388, column: 6, scope: !6170)
!6193 = !DILocation(line: 389, column: 3, scope: !6189)
!6194 = !DILocation(line: 391, column: 35, scope: !6170)
!6195 = !DILocation(line: 391, column: 2, scope: !6170)
!6196 = !DILocation(line: 391, column: 8, scope: !6170)
!6197 = !DILocation(line: 391, column: 15, scope: !6170)
!6198 = !DILocation(line: 391, column: 33, scope: !6170)
!6199 = !DILocation(line: 393, column: 9, scope: !6170)
!6200 = !DILocation(line: 393, column: 2, scope: !6170)
!6201 = !DILocation(line: 394, column: 1, scope: !6170)
!6202 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !94, file: !94, line: 2128, type: !3892, scopeLine: 2129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6203 = !DILocalVariable(name: "dev", arg: 1, scope: !6202, file: !94, line: 2128, type: !150)
!6204 = !DILocation(line: 2128, column: 48, scope: !6202)
!6205 = !DILocation(line: 2130, column: 9, scope: !6202)
!6206 = !DILocation(line: 2130, column: 14, scope: !6202)
!6207 = !DILocation(line: 2130, column: 2, scope: !6202)
!6208 = distinct !DISubprogram(name: "ssleep", scope: !6209, file: !6209, line: 63, type: !6210, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6209 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/lizy2001/genbc/linux")
!6210 = !DISubroutineType(types: !6211)
!6211 = !{null, !7}
!6212 = !DILocalVariable(name: "seconds", arg: 1, scope: !6208, file: !6209, line: 63, type: !7)
!6213 = !DILocation(line: 63, column: 40, scope: !6208)
!6214 = !DILocation(line: 65, column: 9, scope: !6208)
!6215 = !DILocation(line: 65, column: 17, scope: !6208)
!6216 = !DILocation(line: 65, column: 2, scope: !6208)
!6217 = !DILocation(line: 66, column: 1, scope: !6208)
!6218 = distinct !DISubprogram(name: "pci_ari_enabled", scope: !94, file: !94, line: 2369, type: !6219, scopeLine: 2370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6219 = !DISubroutineType(types: !6220)
!6220 = !{!512, !161}
!6221 = !DILocalVariable(name: "bus", arg: 1, scope: !6218, file: !94, line: 2369, type: !161)
!6222 = !DILocation(line: 2369, column: 52, scope: !6218)
!6223 = !DILocation(line: 2371, column: 9, scope: !6218)
!6224 = !DILocation(line: 2371, column: 14, scope: !6218)
!6225 = !DILocation(line: 2371, column: 19, scope: !6218)
!6226 = !DILocation(line: 2371, column: 22, scope: !6218)
!6227 = !DILocation(line: 2371, column: 27, scope: !6218)
!6228 = !DILocation(line: 2371, column: 33, scope: !6218)
!6229 = !DILocation(line: 0, scope: !6218)
!6230 = !DILocation(line: 2371, column: 2, scope: !6218)
!6231 = distinct !DISubprogram(name: "kzalloc", scope: !129, file: !129, line: 662, type: !6232, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6232 = !DISubroutineType(types: !6233)
!6233 = !{!149, !352, !769}
!6234 = !DILocalVariable(name: "s", arg: 1, scope: !6235, file: !129, line: 445, type: !961)
!6235 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !129, file: !129, line: 445, type: !6236, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!149, !961, !769, !352}
!6238 = !DILocation(line: 445, column: 72, scope: !6235, inlinedAt: !6239)
!6239 = distinct !DILocation(line: 552, column: 10, scope: !6240, inlinedAt: !6243)
!6240 = distinct !DILexicalBlock(scope: !6241, file: !129, line: 540, column: 34)
!6241 = distinct !DILexicalBlock(scope: !6242, file: !129, line: 540, column: 6)
!6242 = distinct !DISubprogram(name: "kmalloc", scope: !129, file: !129, line: 538, type: !6232, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6243 = distinct !DILocation(line: 664, column: 9, scope: !6231)
!6244 = !DILocalVariable(name: "flags", arg: 2, scope: !6235, file: !129, line: 446, type: !769)
!6245 = !DILocation(line: 446, column: 9, scope: !6235, inlinedAt: !6239)
!6246 = !DILocalVariable(name: "size", arg: 3, scope: !6235, file: !129, line: 446, type: !352)
!6247 = !DILocation(line: 446, column: 23, scope: !6235, inlinedAt: !6239)
!6248 = !DILocalVariable(name: "ret", scope: !6235, file: !129, line: 448, type: !149)
!6249 = !DILocation(line: 448, column: 8, scope: !6235, inlinedAt: !6239)
!6250 = !DILocalVariable(name: "flags", arg: 1, scope: !6251, file: !129, line: 318, type: !769)
!6251 = distinct !DISubprogram(name: "kmalloc_type", scope: !129, file: !129, line: 318, type: !6252, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6252 = !DISubroutineType(types: !6253)
!6253 = !{!128, !769}
!6254 = !DILocation(line: 318, column: 67, scope: !6251, inlinedAt: !6255)
!6255 = distinct !DILocation(line: 553, column: 20, scope: !6240, inlinedAt: !6243)
!6256 = !DILocalVariable(name: "size", arg: 1, scope: !6257, file: !129, line: 346, type: !352)
!6257 = distinct !DISubprogram(name: "kmalloc_index", scope: !129, file: !129, line: 346, type: !6258, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6258 = !DISubroutineType(types: !6259)
!6259 = !{!7, !352}
!6260 = !DILocation(line: 346, column: 58, scope: !6257, inlinedAt: !6261)
!6261 = distinct !DILocation(line: 547, column: 11, scope: !6240, inlinedAt: !6243)
!6262 = !DILocalVariable(name: "size", arg: 1, scope: !6263, file: !129, line: 472, type: !352)
!6263 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !129, file: !129, line: 472, type: !6264, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!149, !352, !769, !7}
!6266 = !DILocation(line: 472, column: 28, scope: !6263, inlinedAt: !6267)
!6267 = distinct !DILocation(line: 481, column: 9, scope: !6268, inlinedAt: !6269)
!6268 = distinct !DISubprogram(name: "kmalloc_large", scope: !129, file: !129, line: 478, type: !6232, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6269 = distinct !DILocation(line: 545, column: 11, scope: !6270, inlinedAt: !6243)
!6270 = distinct !DILexicalBlock(scope: !6240, file: !129, line: 544, column: 7)
!6271 = !DILocalVariable(name: "flags", arg: 2, scope: !6263, file: !129, line: 472, type: !769)
!6272 = !DILocation(line: 472, column: 40, scope: !6263, inlinedAt: !6267)
!6273 = !DILocalVariable(name: "order", arg: 3, scope: !6263, file: !129, line: 472, type: !7)
!6274 = !DILocation(line: 472, column: 60, scope: !6263, inlinedAt: !6267)
!6275 = !DILocalVariable(name: "size", arg: 1, scope: !6268, file: !129, line: 478, type: !352)
!6276 = !DILocation(line: 478, column: 51, scope: !6268, inlinedAt: !6269)
!6277 = !DILocalVariable(name: "flags", arg: 2, scope: !6268, file: !129, line: 478, type: !769)
!6278 = !DILocation(line: 478, column: 63, scope: !6268, inlinedAt: !6269)
!6279 = !DILocalVariable(name: "order", scope: !6268, file: !129, line: 480, type: !7)
!6280 = !DILocation(line: 480, column: 15, scope: !6268, inlinedAt: !6269)
!6281 = !DILocalVariable(name: "size", arg: 1, scope: !6242, file: !129, line: 538, type: !352)
!6282 = !DILocation(line: 538, column: 45, scope: !6242, inlinedAt: !6243)
!6283 = !DILocalVariable(name: "flags", arg: 2, scope: !6242, file: !129, line: 538, type: !769)
!6284 = !DILocation(line: 538, column: 57, scope: !6242, inlinedAt: !6243)
!6285 = !DILocalVariable(name: "index", scope: !6240, file: !129, line: 542, type: !7)
!6286 = !DILocation(line: 542, column: 16, scope: !6240, inlinedAt: !6243)
!6287 = !DILocalVariable(name: "size", arg: 1, scope: !6231, file: !129, line: 662, type: !352)
!6288 = !DILocation(line: 662, column: 36, scope: !6231)
!6289 = !DILocalVariable(name: "flags", arg: 2, scope: !6231, file: !129, line: 662, type: !769)
!6290 = !DILocation(line: 662, column: 48, scope: !6231)
!6291 = !DILocation(line: 664, column: 17, scope: !6231)
!6292 = !DILocation(line: 664, column: 23, scope: !6231)
!6293 = !DILocation(line: 664, column: 29, scope: !6231)
!6294 = !DILocation(line: 540, column: 27, scope: !6241, inlinedAt: !6243)
!6295 = !DILocation(line: 540, column: 6, scope: !6241, inlinedAt: !6243)
!6296 = !DILocation(line: 540, column: 6, scope: !6242, inlinedAt: !6243)
!6297 = !DILocation(line: 544, column: 7, scope: !6270, inlinedAt: !6243)
!6298 = !DILocation(line: 544, column: 12, scope: !6270, inlinedAt: !6243)
!6299 = !DILocation(line: 544, column: 7, scope: !6240, inlinedAt: !6243)
!6300 = !DILocation(line: 545, column: 25, scope: !6270, inlinedAt: !6243)
!6301 = !DILocation(line: 545, column: 31, scope: !6270, inlinedAt: !6243)
!6302 = !DILocation(line: 480, column: 33, scope: !6268, inlinedAt: !6269)
!6303 = !DILocation(line: 480, column: 23, scope: !6268, inlinedAt: !6269)
!6304 = !DILocation(line: 481, column: 29, scope: !6268, inlinedAt: !6269)
!6305 = !DILocation(line: 481, column: 35, scope: !6268, inlinedAt: !6269)
!6306 = !DILocation(line: 481, column: 42, scope: !6268, inlinedAt: !6269)
!6307 = !DILocation(line: 474, column: 23, scope: !6263, inlinedAt: !6267)
!6308 = !DILocation(line: 474, column: 29, scope: !6263, inlinedAt: !6267)
!6309 = !DILocation(line: 474, column: 36, scope: !6263, inlinedAt: !6267)
!6310 = !DILocation(line: 474, column: 9, scope: !6263, inlinedAt: !6267)
!6311 = !DILocation(line: 545, column: 4, scope: !6270, inlinedAt: !6243)
!6312 = !DILocation(line: 547, column: 25, scope: !6240, inlinedAt: !6243)
!6313 = !DILocation(line: 348, column: 7, scope: !6314, inlinedAt: !6261)
!6314 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 348, column: 6)
!6315 = !DILocation(line: 348, column: 6, scope: !6257, inlinedAt: !6261)
!6316 = !DILocation(line: 349, column: 3, scope: !6314, inlinedAt: !6261)
!6317 = !DILocation(line: 351, column: 6, scope: !6318, inlinedAt: !6261)
!6318 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 351, column: 6)
!6319 = !DILocation(line: 351, column: 11, scope: !6318, inlinedAt: !6261)
!6320 = !DILocation(line: 351, column: 6, scope: !6257, inlinedAt: !6261)
!6321 = !DILocation(line: 352, column: 3, scope: !6318, inlinedAt: !6261)
!6322 = !DILocation(line: 354, column: 32, scope: !6323, inlinedAt: !6261)
!6323 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 354, column: 6)
!6324 = !DILocation(line: 354, column: 37, scope: !6323, inlinedAt: !6261)
!6325 = !DILocation(line: 354, column: 42, scope: !6323, inlinedAt: !6261)
!6326 = !DILocation(line: 354, column: 45, scope: !6323, inlinedAt: !6261)
!6327 = !DILocation(line: 354, column: 50, scope: !6323, inlinedAt: !6261)
!6328 = !DILocation(line: 354, column: 6, scope: !6257, inlinedAt: !6261)
!6329 = !DILocation(line: 355, column: 3, scope: !6323, inlinedAt: !6261)
!6330 = !DILocation(line: 356, column: 32, scope: !6331, inlinedAt: !6261)
!6331 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 356, column: 6)
!6332 = !DILocation(line: 356, column: 37, scope: !6331, inlinedAt: !6261)
!6333 = !DILocation(line: 356, column: 43, scope: !6331, inlinedAt: !6261)
!6334 = !DILocation(line: 356, column: 46, scope: !6331, inlinedAt: !6261)
!6335 = !DILocation(line: 356, column: 51, scope: !6331, inlinedAt: !6261)
!6336 = !DILocation(line: 356, column: 6, scope: !6257, inlinedAt: !6261)
!6337 = !DILocation(line: 357, column: 3, scope: !6331, inlinedAt: !6261)
!6338 = !DILocation(line: 358, column: 6, scope: !6339, inlinedAt: !6261)
!6339 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 358, column: 6)
!6340 = !DILocation(line: 358, column: 11, scope: !6339, inlinedAt: !6261)
!6341 = !DILocation(line: 358, column: 6, scope: !6257, inlinedAt: !6261)
!6342 = !DILocation(line: 358, column: 26, scope: !6339, inlinedAt: !6261)
!6343 = !DILocation(line: 359, column: 6, scope: !6344, inlinedAt: !6261)
!6344 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 359, column: 6)
!6345 = !DILocation(line: 359, column: 11, scope: !6344, inlinedAt: !6261)
!6346 = !DILocation(line: 359, column: 6, scope: !6257, inlinedAt: !6261)
!6347 = !DILocation(line: 359, column: 26, scope: !6344, inlinedAt: !6261)
!6348 = !DILocation(line: 360, column: 6, scope: !6349, inlinedAt: !6261)
!6349 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 360, column: 6)
!6350 = !DILocation(line: 360, column: 11, scope: !6349, inlinedAt: !6261)
!6351 = !DILocation(line: 360, column: 6, scope: !6257, inlinedAt: !6261)
!6352 = !DILocation(line: 360, column: 26, scope: !6349, inlinedAt: !6261)
!6353 = !DILocation(line: 361, column: 6, scope: !6354, inlinedAt: !6261)
!6354 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 361, column: 6)
!6355 = !DILocation(line: 361, column: 11, scope: !6354, inlinedAt: !6261)
!6356 = !DILocation(line: 361, column: 6, scope: !6257, inlinedAt: !6261)
!6357 = !DILocation(line: 361, column: 26, scope: !6354, inlinedAt: !6261)
!6358 = !DILocation(line: 362, column: 6, scope: !6359, inlinedAt: !6261)
!6359 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 362, column: 6)
!6360 = !DILocation(line: 362, column: 11, scope: !6359, inlinedAt: !6261)
!6361 = !DILocation(line: 362, column: 6, scope: !6257, inlinedAt: !6261)
!6362 = !DILocation(line: 362, column: 26, scope: !6359, inlinedAt: !6261)
!6363 = !DILocation(line: 363, column: 6, scope: !6364, inlinedAt: !6261)
!6364 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 363, column: 6)
!6365 = !DILocation(line: 363, column: 11, scope: !6364, inlinedAt: !6261)
!6366 = !DILocation(line: 363, column: 6, scope: !6257, inlinedAt: !6261)
!6367 = !DILocation(line: 363, column: 26, scope: !6364, inlinedAt: !6261)
!6368 = !DILocation(line: 364, column: 6, scope: !6369, inlinedAt: !6261)
!6369 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 364, column: 6)
!6370 = !DILocation(line: 364, column: 11, scope: !6369, inlinedAt: !6261)
!6371 = !DILocation(line: 364, column: 6, scope: !6257, inlinedAt: !6261)
!6372 = !DILocation(line: 364, column: 26, scope: !6369, inlinedAt: !6261)
!6373 = !DILocation(line: 365, column: 6, scope: !6374, inlinedAt: !6261)
!6374 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 365, column: 6)
!6375 = !DILocation(line: 365, column: 11, scope: !6374, inlinedAt: !6261)
!6376 = !DILocation(line: 365, column: 6, scope: !6257, inlinedAt: !6261)
!6377 = !DILocation(line: 365, column: 26, scope: !6374, inlinedAt: !6261)
!6378 = !DILocation(line: 366, column: 6, scope: !6379, inlinedAt: !6261)
!6379 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 366, column: 6)
!6380 = !DILocation(line: 366, column: 11, scope: !6379, inlinedAt: !6261)
!6381 = !DILocation(line: 366, column: 6, scope: !6257, inlinedAt: !6261)
!6382 = !DILocation(line: 366, column: 26, scope: !6379, inlinedAt: !6261)
!6383 = !DILocation(line: 367, column: 6, scope: !6384, inlinedAt: !6261)
!6384 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 367, column: 6)
!6385 = !DILocation(line: 367, column: 11, scope: !6384, inlinedAt: !6261)
!6386 = !DILocation(line: 367, column: 6, scope: !6257, inlinedAt: !6261)
!6387 = !DILocation(line: 367, column: 26, scope: !6384, inlinedAt: !6261)
!6388 = !DILocation(line: 368, column: 6, scope: !6389, inlinedAt: !6261)
!6389 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 368, column: 6)
!6390 = !DILocation(line: 368, column: 11, scope: !6389, inlinedAt: !6261)
!6391 = !DILocation(line: 368, column: 6, scope: !6257, inlinedAt: !6261)
!6392 = !DILocation(line: 368, column: 26, scope: !6389, inlinedAt: !6261)
!6393 = !DILocation(line: 369, column: 6, scope: !6394, inlinedAt: !6261)
!6394 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 369, column: 6)
!6395 = !DILocation(line: 369, column: 11, scope: !6394, inlinedAt: !6261)
!6396 = !DILocation(line: 369, column: 6, scope: !6257, inlinedAt: !6261)
!6397 = !DILocation(line: 369, column: 26, scope: !6394, inlinedAt: !6261)
!6398 = !DILocation(line: 370, column: 6, scope: !6399, inlinedAt: !6261)
!6399 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 370, column: 6)
!6400 = !DILocation(line: 370, column: 11, scope: !6399, inlinedAt: !6261)
!6401 = !DILocation(line: 370, column: 6, scope: !6257, inlinedAt: !6261)
!6402 = !DILocation(line: 370, column: 26, scope: !6399, inlinedAt: !6261)
!6403 = !DILocation(line: 371, column: 6, scope: !6404, inlinedAt: !6261)
!6404 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 371, column: 6)
!6405 = !DILocation(line: 371, column: 11, scope: !6404, inlinedAt: !6261)
!6406 = !DILocation(line: 371, column: 6, scope: !6257, inlinedAt: !6261)
!6407 = !DILocation(line: 371, column: 26, scope: !6404, inlinedAt: !6261)
!6408 = !DILocation(line: 372, column: 6, scope: !6409, inlinedAt: !6261)
!6409 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 372, column: 6)
!6410 = !DILocation(line: 372, column: 11, scope: !6409, inlinedAt: !6261)
!6411 = !DILocation(line: 372, column: 6, scope: !6257, inlinedAt: !6261)
!6412 = !DILocation(line: 372, column: 26, scope: !6409, inlinedAt: !6261)
!6413 = !DILocation(line: 373, column: 6, scope: !6414, inlinedAt: !6261)
!6414 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 373, column: 6)
!6415 = !DILocation(line: 373, column: 11, scope: !6414, inlinedAt: !6261)
!6416 = !DILocation(line: 373, column: 6, scope: !6257, inlinedAt: !6261)
!6417 = !DILocation(line: 373, column: 26, scope: !6414, inlinedAt: !6261)
!6418 = !DILocation(line: 374, column: 6, scope: !6419, inlinedAt: !6261)
!6419 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 374, column: 6)
!6420 = !DILocation(line: 374, column: 11, scope: !6419, inlinedAt: !6261)
!6421 = !DILocation(line: 374, column: 6, scope: !6257, inlinedAt: !6261)
!6422 = !DILocation(line: 374, column: 26, scope: !6419, inlinedAt: !6261)
!6423 = !DILocation(line: 375, column: 6, scope: !6424, inlinedAt: !6261)
!6424 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 375, column: 6)
!6425 = !DILocation(line: 375, column: 11, scope: !6424, inlinedAt: !6261)
!6426 = !DILocation(line: 375, column: 6, scope: !6257, inlinedAt: !6261)
!6427 = !DILocation(line: 375, column: 27, scope: !6424, inlinedAt: !6261)
!6428 = !DILocation(line: 376, column: 6, scope: !6429, inlinedAt: !6261)
!6429 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 376, column: 6)
!6430 = !DILocation(line: 376, column: 11, scope: !6429, inlinedAt: !6261)
!6431 = !DILocation(line: 376, column: 6, scope: !6257, inlinedAt: !6261)
!6432 = !DILocation(line: 376, column: 32, scope: !6429, inlinedAt: !6261)
!6433 = !DILocation(line: 377, column: 6, scope: !6434, inlinedAt: !6261)
!6434 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 377, column: 6)
!6435 = !DILocation(line: 377, column: 11, scope: !6434, inlinedAt: !6261)
!6436 = !DILocation(line: 377, column: 6, scope: !6257, inlinedAt: !6261)
!6437 = !DILocation(line: 377, column: 32, scope: !6434, inlinedAt: !6261)
!6438 = !DILocation(line: 378, column: 6, scope: !6439, inlinedAt: !6261)
!6439 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 378, column: 6)
!6440 = !DILocation(line: 378, column: 11, scope: !6439, inlinedAt: !6261)
!6441 = !DILocation(line: 378, column: 6, scope: !6257, inlinedAt: !6261)
!6442 = !DILocation(line: 378, column: 32, scope: !6439, inlinedAt: !6261)
!6443 = !DILocation(line: 379, column: 6, scope: !6444, inlinedAt: !6261)
!6444 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 379, column: 6)
!6445 = !DILocation(line: 379, column: 11, scope: !6444, inlinedAt: !6261)
!6446 = !DILocation(line: 379, column: 6, scope: !6257, inlinedAt: !6261)
!6447 = !DILocation(line: 379, column: 33, scope: !6444, inlinedAt: !6261)
!6448 = !DILocation(line: 380, column: 6, scope: !6449, inlinedAt: !6261)
!6449 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 380, column: 6)
!6450 = !DILocation(line: 380, column: 11, scope: !6449, inlinedAt: !6261)
!6451 = !DILocation(line: 380, column: 6, scope: !6257, inlinedAt: !6261)
!6452 = !DILocation(line: 380, column: 33, scope: !6449, inlinedAt: !6261)
!6453 = !DILocation(line: 381, column: 6, scope: !6454, inlinedAt: !6261)
!6454 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 381, column: 6)
!6455 = !DILocation(line: 381, column: 11, scope: !6454, inlinedAt: !6261)
!6456 = !DILocation(line: 381, column: 6, scope: !6257, inlinedAt: !6261)
!6457 = !DILocation(line: 381, column: 33, scope: !6454, inlinedAt: !6261)
!6458 = !DILocation(line: 382, column: 2, scope: !6459, inlinedAt: !6261)
!6459 = distinct !DILexicalBlock(scope: !6460, file: !129, line: 382, column: 2)
!6460 = distinct !DILexicalBlock(scope: !6257, file: !129, line: 382, column: 2)
!6461 = !{i32 -2143425094, i32 -2143425065, i32 -2143425019, i32 -2143424961, i32 -2143424907, i32 -2143424853, i32 -2143424798, i32 -2143424767}
!6462 = !DILocation(line: 382, column: 2, scope: !6463, inlinedAt: !6261)
!6463 = distinct !DILexicalBlock(scope: !6464, file: !129, line: 382, column: 2)
!6464 = distinct !DILexicalBlock(scope: !6460, file: !129, line: 382, column: 2)
!6465 = !{i32 -2143424324, i32 -2143424317, i32 -2143424263, i32 -2143424232, i32 -2143424202}
!6466 = !DILocation(line: 382, column: 2, scope: !6464, inlinedAt: !6261)
!6467 = !DILocation(line: 386, column: 1, scope: !6257, inlinedAt: !6261)
!6468 = !DILocation(line: 547, column: 9, scope: !6240, inlinedAt: !6243)
!6469 = !DILocation(line: 549, column: 8, scope: !6470, inlinedAt: !6243)
!6470 = distinct !DILexicalBlock(scope: !6240, file: !129, line: 549, column: 7)
!6471 = !DILocation(line: 549, column: 7, scope: !6240, inlinedAt: !6243)
!6472 = !DILocation(line: 550, column: 4, scope: !6470, inlinedAt: !6243)
!6473 = !DILocation(line: 553, column: 33, scope: !6240, inlinedAt: !6243)
!6474 = !DILocation(line: 325, column: 6, scope: !6475, inlinedAt: !6255)
!6475 = distinct !DILexicalBlock(scope: !6251, file: !129, line: 325, column: 6)
!6476 = !DILocation(line: 325, column: 6, scope: !6251, inlinedAt: !6255)
!6477 = !DILocation(line: 326, column: 3, scope: !6475, inlinedAt: !6255)
!6478 = !DILocation(line: 332, column: 9, scope: !6251, inlinedAt: !6255)
!6479 = !DILocation(line: 332, column: 15, scope: !6251, inlinedAt: !6255)
!6480 = !DILocation(line: 332, column: 2, scope: !6251, inlinedAt: !6255)
!6481 = !DILocation(line: 336, column: 1, scope: !6251, inlinedAt: !6255)
!6482 = !DILocation(line: 553, column: 5, scope: !6240, inlinedAt: !6243)
!6483 = !DILocation(line: 553, column: 41, scope: !6240, inlinedAt: !6243)
!6484 = !DILocation(line: 554, column: 5, scope: !6240, inlinedAt: !6243)
!6485 = !DILocation(line: 554, column: 12, scope: !6240, inlinedAt: !6243)
!6486 = !DILocation(line: 448, column: 31, scope: !6235, inlinedAt: !6239)
!6487 = !DILocation(line: 448, column: 34, scope: !6235, inlinedAt: !6239)
!6488 = !DILocation(line: 448, column: 14, scope: !6235, inlinedAt: !6239)
!6489 = !DILocation(line: 450, column: 22, scope: !6235, inlinedAt: !6239)
!6490 = !DILocation(line: 450, column: 25, scope: !6235, inlinedAt: !6239)
!6491 = !DILocation(line: 450, column: 30, scope: !6235, inlinedAt: !6239)
!6492 = !DILocation(line: 450, column: 36, scope: !6235, inlinedAt: !6239)
!6493 = !DILocation(line: 450, column: 8, scope: !6235, inlinedAt: !6239)
!6494 = !DILocation(line: 450, column: 6, scope: !6235, inlinedAt: !6239)
!6495 = !DILocation(line: 451, column: 9, scope: !6235, inlinedAt: !6239)
!6496 = !DILocation(line: 552, column: 3, scope: !6240, inlinedAt: !6243)
!6497 = !DILocation(line: 557, column: 19, scope: !6242, inlinedAt: !6243)
!6498 = !DILocation(line: 557, column: 25, scope: !6242, inlinedAt: !6243)
!6499 = !DILocation(line: 557, column: 9, scope: !6242, inlinedAt: !6243)
!6500 = !DILocation(line: 557, column: 2, scope: !6242, inlinedAt: !6243)
!6501 = !DILocation(line: 558, column: 1, scope: !6242, inlinedAt: !6243)
!6502 = !DILocation(line: 664, column: 2, scope: !6231)
!6503 = distinct !DISubprogram(name: "resource_size", scope: !174, file: !174, line: 210, type: !6504, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!177, !6506}
!6506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6507, size: 64)
!6507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!6508 = !DILocalVariable(name: "res", arg: 1, scope: !6503, file: !174, line: 210, type: !6506)
!6509 = !DILocation(line: 210, column: 68, scope: !6503)
!6510 = !DILocation(line: 212, column: 9, scope: !6503)
!6511 = !DILocation(line: 212, column: 14, scope: !6503)
!6512 = !DILocation(line: 212, column: 20, scope: !6503)
!6513 = !DILocation(line: 212, column: 25, scope: !6503)
!6514 = !DILocation(line: 212, column: 18, scope: !6503)
!6515 = !DILocation(line: 212, column: 31, scope: !6503)
!6516 = !DILocation(line: 212, column: 2, scope: !6503)
!6517 = distinct !DISubprogram(name: "pci_pcie_type", scope: !94, file: !94, line: 2157, type: !6518, scopeLine: 2158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6518 = !DISubroutineType(types: !6519)
!6519 = !{!207, !4504}
!6520 = !DILocalVariable(name: "dev", arg: 1, scope: !6517, file: !94, line: 2157, type: !4504)
!6521 = !DILocation(line: 2157, column: 55, scope: !6517)
!6522 = !DILocation(line: 2159, column: 24, scope: !6517)
!6523 = !DILocation(line: 2159, column: 10, scope: !6517)
!6524 = !DILocation(line: 2159, column: 29, scope: !6517)
!6525 = !DILocation(line: 2159, column: 51, scope: !6517)
!6526 = !DILocation(line: 2159, column: 2, scope: !6517)
!6527 = distinct !DISubprogram(name: "compute_max_vf_buses", scope: !3, file: !3, line: 57, type: !3892, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6528 = !DILocalVariable(name: "dev", arg: 1, scope: !6527, file: !3, line: 57, type: !150)
!6529 = !DILocation(line: 57, column: 49, scope: !6527)
!6530 = !DILocalVariable(name: "iov", scope: !6527, file: !3, line: 59, type: !4018)
!6531 = !DILocation(line: 59, column: 20, scope: !6527)
!6532 = !DILocation(line: 59, column: 26, scope: !6527)
!6533 = !DILocation(line: 59, column: 31, scope: !6527)
!6534 = !DILocalVariable(name: "nr_virtfn", scope: !6527, file: !3, line: 60, type: !207)
!6535 = !DILocation(line: 60, column: 6, scope: !6527)
!6536 = !DILocalVariable(name: "busnr", scope: !6527, file: !3, line: 60, type: !207)
!6537 = !DILocation(line: 60, column: 17, scope: !6527)
!6538 = !DILocalVariable(name: "rc", scope: !6527, file: !3, line: 60, type: !207)
!6539 = !DILocation(line: 60, column: 24, scope: !6527)
!6540 = !DILocation(line: 62, column: 19, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 62, column: 2)
!6542 = !DILocation(line: 62, column: 24, scope: !6541)
!6543 = !DILocation(line: 62, column: 17, scope: !6541)
!6544 = !DILocation(line: 62, column: 7, scope: !6541)
!6545 = !DILocation(line: 62, column: 35, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6541, file: !3, line: 62, column: 2)
!6547 = !DILocation(line: 62, column: 2, scope: !6541)
!6548 = !DILocation(line: 63, column: 22, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6546, file: !3, line: 62, column: 59)
!6550 = !DILocation(line: 63, column: 27, scope: !6549)
!6551 = !DILocation(line: 63, column: 3, scope: !6549)
!6552 = !DILocation(line: 64, column: 8, scope: !6553)
!6553 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 64, column: 7)
!6554 = !DILocation(line: 64, column: 13, scope: !6553)
!6555 = !DILocation(line: 64, column: 20, scope: !6553)
!6556 = !DILocation(line: 64, column: 24, scope: !6553)
!6557 = !DILocation(line: 64, column: 34, scope: !6553)
!6558 = !DILocation(line: 64, column: 38, scope: !6553)
!6559 = !DILocation(line: 64, column: 42, scope: !6553)
!6560 = !DILocation(line: 64, column: 47, scope: !6553)
!6561 = !DILocation(line: 64, column: 7, scope: !6549)
!6562 = !DILocation(line: 65, column: 7, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6553, file: !3, line: 64, column: 56)
!6564 = !DILocation(line: 66, column: 4, scope: !6563)
!6565 = !DILocation(line: 69, column: 30, scope: !6549)
!6566 = !DILocation(line: 69, column: 35, scope: !6549)
!6567 = !DILocation(line: 69, column: 45, scope: !6549)
!6568 = !DILocation(line: 69, column: 11, scope: !6549)
!6569 = !DILocation(line: 69, column: 9, scope: !6549)
!6570 = !DILocation(line: 70, column: 7, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 70, column: 7)
!6572 = !DILocation(line: 70, column: 15, scope: !6571)
!6573 = !DILocation(line: 70, column: 20, scope: !6571)
!6574 = !DILocation(line: 70, column: 13, scope: !6571)
!6575 = !DILocation(line: 70, column: 7, scope: !6549)
!6576 = !DILocation(line: 71, column: 24, scope: !6571)
!6577 = !DILocation(line: 71, column: 4, scope: !6571)
!6578 = !DILocation(line: 71, column: 9, scope: !6571)
!6579 = !DILocation(line: 71, column: 22, scope: !6571)
!6580 = !DILocation(line: 72, column: 2, scope: !6549)
!6581 = !DILocation(line: 62, column: 55, scope: !6546)
!6582 = !DILocation(line: 62, column: 2, scope: !6546)
!6583 = distinct !{!6583, !6547, !6584}
!6584 = !DILocation(line: 72, column: 2, scope: !6541)
!6585 = !DILabel(scope: !6527, name: "out", file: !3, line: 74)
!6586 = !DILocation(line: 74, column: 1, scope: !6527)
!6587 = !DILocation(line: 75, column: 21, scope: !6527)
!6588 = !DILocation(line: 75, column: 2, scope: !6527)
!6589 = !DILocation(line: 76, column: 9, scope: !6527)
!6590 = !DILocation(line: 76, column: 2, scope: !6527)
!6591 = distinct !DISubprogram(name: "get_order", scope: !6592, file: !6592, line: 29, type: !6593, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6592 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6593 = !DISubroutineType(types: !6594)
!6594 = !{!207, !190}
!6595 = !DILocalVariable(name: "x", arg: 1, scope: !6596, file: !6597, line: 366, type: !181)
!6596 = distinct !DISubprogram(name: "fls64", scope: !6597, file: !6597, line: 366, type: !6598, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6597 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6598 = !DISubroutineType(types: !6599)
!6599 = !{!207, !181}
!6600 = !DILocation(line: 366, column: 40, scope: !6596, inlinedAt: !6601)
!6601 = distinct !DILocation(line: 46, column: 9, scope: !6591)
!6602 = !DILocalVariable(name: "bitpos", scope: !6596, file: !6597, line: 368, type: !207)
!6603 = !DILocation(line: 368, column: 6, scope: !6596, inlinedAt: !6601)
!6604 = !DILocalVariable(name: "size", arg: 1, scope: !6591, file: !6592, line: 29, type: !190)
!6605 = !DILocation(line: 29, column: 63, scope: !6591)
!6606 = !DILocation(line: 31, column: 27, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6591, file: !6592, line: 31, column: 6)
!6608 = !DILocation(line: 31, column: 6, scope: !6607)
!6609 = !DILocation(line: 31, column: 6, scope: !6591)
!6610 = !DILocation(line: 32, column: 8, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6612, file: !6592, line: 32, column: 7)
!6612 = distinct !DILexicalBlock(scope: !6607, file: !6592, line: 31, column: 34)
!6613 = !DILocation(line: 32, column: 7, scope: !6612)
!6614 = !DILocation(line: 33, column: 4, scope: !6611)
!6615 = !DILocation(line: 35, column: 7, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6612, file: !6592, line: 35, column: 7)
!6617 = !DILocation(line: 35, column: 12, scope: !6616)
!6618 = !DILocation(line: 35, column: 7, scope: !6612)
!6619 = !DILocation(line: 36, column: 4, scope: !6616)
!6620 = !DILocation(line: 38, column: 10, scope: !6612)
!6621 = !DILocation(line: 38, column: 28, scope: !6612)
!6622 = !DILocation(line: 38, column: 41, scope: !6612)
!6623 = !DILocation(line: 38, column: 3, scope: !6612)
!6624 = !DILocation(line: 41, column: 6, scope: !6591)
!6625 = !DILocation(line: 42, column: 7, scope: !6591)
!6626 = !DILocation(line: 46, column: 15, scope: !6591)
!6627 = !DILocation(line: 374, column: 2, scope: !6596, inlinedAt: !6601)
!6628 = !DILocation(line: 376, column: 14, scope: !6596, inlinedAt: !6601)
!6629 = !{i32 772288}
!6630 = !DILocation(line: 377, column: 9, scope: !6596, inlinedAt: !6601)
!6631 = !DILocation(line: 377, column: 16, scope: !6596, inlinedAt: !6601)
!6632 = !DILocation(line: 46, column: 2, scope: !6591)
!6633 = !DILocation(line: 48, column: 1, scope: !6591)
!6634 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6635, file: !6635, line: 30, type: !6636, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6635 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6636 = !DISubroutineType(types: !6637)
!6637 = !{!207, !179}
!6638 = !DILocation(line: 366, column: 40, scope: !6596, inlinedAt: !6639)
!6639 = distinct !DILocation(line: 32, column: 9, scope: !6634)
!6640 = !DILocation(line: 368, column: 6, scope: !6596, inlinedAt: !6639)
!6641 = !DILocalVariable(name: "n", arg: 1, scope: !6634, file: !6635, line: 30, type: !179)
!6642 = !DILocation(line: 30, column: 21, scope: !6634)
!6643 = !DILocation(line: 32, column: 15, scope: !6634)
!6644 = !DILocation(line: 374, column: 2, scope: !6596, inlinedAt: !6639)
!6645 = !DILocation(line: 376, column: 14, scope: !6596, inlinedAt: !6639)
!6646 = !DILocation(line: 377, column: 9, scope: !6596, inlinedAt: !6639)
!6647 = !DILocation(line: 377, column: 16, scope: !6596, inlinedAt: !6639)
!6648 = !DILocation(line: 32, column: 18, scope: !6634)
!6649 = !DILocation(line: 32, column: 2, scope: !6634)
!6650 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6651, file: !6651, line: 137, type: !6652, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6651 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6652 = !DISubroutineType(types: !6653)
!6653 = !{!149, !961, !2134, !352, !769}
!6654 = !DILocalVariable(name: "s", arg: 1, scope: !6650, file: !6651, line: 137, type: !961)
!6655 = !DILocation(line: 137, column: 54, scope: !6650)
!6656 = !DILocalVariable(name: "object", arg: 2, scope: !6650, file: !6651, line: 137, type: !2134)
!6657 = !DILocation(line: 137, column: 69, scope: !6650)
!6658 = !DILocalVariable(name: "size", arg: 3, scope: !6650, file: !6651, line: 138, type: !352)
!6659 = !DILocation(line: 138, column: 12, scope: !6650)
!6660 = !DILocalVariable(name: "flags", arg: 4, scope: !6650, file: !6651, line: 138, type: !769)
!6661 = !DILocation(line: 138, column: 24, scope: !6650)
!6662 = !DILocation(line: 140, column: 17, scope: !6650)
!6663 = !DILocation(line: 140, column: 2, scope: !6650)
!6664 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !94, file: !94, line: 2148, type: !6665, scopeLine: 2149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!885, !4504}
!6667 = !DILocalVariable(name: "dev", arg: 1, scope: !6664, file: !94, line: 2148, type: !4504)
!6668 = !DILocation(line: 2148, column: 55, scope: !6664)
!6669 = !DILocation(line: 2150, column: 9, scope: !6664)
!6670 = !DILocation(line: 2150, column: 14, scope: !6664)
!6671 = !DILocation(line: 2150, column: 2, scope: !6664)
!6672 = distinct !DISubprogram(name: "pci_iov_set_numvfs", scope: !3, file: !3, line: 41, type: !4532, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6673 = !DILocalVariable(name: "dev", arg: 1, scope: !6672, file: !3, line: 41, type: !150)
!6674 = !DILocation(line: 41, column: 55, scope: !6672)
!6675 = !DILocalVariable(name: "nr_virtfn", arg: 2, scope: !6672, file: !3, line: 41, type: !207)
!6676 = !DILocation(line: 41, column: 64, scope: !6672)
!6677 = !DILocalVariable(name: "iov", scope: !6672, file: !3, line: 43, type: !4018)
!6678 = !DILocation(line: 43, column: 20, scope: !6672)
!6679 = !DILocation(line: 43, column: 26, scope: !6672)
!6680 = !DILocation(line: 43, column: 31, scope: !6672)
!6681 = !DILocation(line: 45, column: 24, scope: !6672)
!6682 = !DILocation(line: 45, column: 29, scope: !6672)
!6683 = !DILocation(line: 45, column: 34, scope: !6672)
!6684 = !DILocation(line: 45, column: 38, scope: !6672)
!6685 = !DILocation(line: 45, column: 58, scope: !6672)
!6686 = !DILocation(line: 45, column: 2, scope: !6672)
!6687 = !DILocation(line: 46, column: 23, scope: !6672)
!6688 = !DILocation(line: 46, column: 28, scope: !6672)
!6689 = !DILocation(line: 46, column: 33, scope: !6672)
!6690 = !DILocation(line: 46, column: 37, scope: !6672)
!6691 = !DILocation(line: 46, column: 61, scope: !6672)
!6692 = !DILocation(line: 46, column: 66, scope: !6672)
!6693 = !DILocation(line: 46, column: 2, scope: !6672)
!6694 = !DILocation(line: 47, column: 23, scope: !6672)
!6695 = !DILocation(line: 47, column: 28, scope: !6672)
!6696 = !DILocation(line: 47, column: 33, scope: !6672)
!6697 = !DILocation(line: 47, column: 37, scope: !6672)
!6698 = !DILocation(line: 47, column: 61, scope: !6672)
!6699 = !DILocation(line: 47, column: 66, scope: !6672)
!6700 = !DILocation(line: 47, column: 2, scope: !6672)
!6701 = !DILocation(line: 48, column: 1, scope: !6672)
!6702 = distinct !DISubprogram(name: "kobject_name", scope: !106, file: !106, line: 88, type: !6703, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6703 = !DISubroutineType(types: !6704)
!6704 = !{!186, !6705}
!6705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6706, size: 64)
!6706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!6707 = !DILocalVariable(name: "kobj", arg: 1, scope: !6702, file: !106, line: 88, type: !6705)
!6708 = !DILocation(line: 88, column: 62, scope: !6702)
!6709 = !DILocation(line: 90, column: 9, scope: !6702)
!6710 = !DILocation(line: 90, column: 15, scope: !6702)
!6711 = !DILocation(line: 90, column: 2, scope: !6702)
!6712 = distinct !DISubprogram(name: "sriov_add_vfs", scope: !3, file: !3, line: 439, type: !4620, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6713 = !DILocalVariable(name: "dev", arg: 1, scope: !6712, file: !3, line: 439, type: !150)
!6714 = !DILocation(line: 439, column: 42, scope: !6712)
!6715 = !DILocalVariable(name: "num_vfs", arg: 2, scope: !6712, file: !3, line: 439, type: !885)
!6716 = !DILocation(line: 439, column: 51, scope: !6712)
!6717 = !DILocalVariable(name: "i", scope: !6712, file: !3, line: 441, type: !7)
!6718 = !DILocation(line: 441, column: 15, scope: !6712)
!6719 = !DILocalVariable(name: "rc", scope: !6712, file: !3, line: 442, type: !207)
!6720 = !DILocation(line: 442, column: 6, scope: !6712)
!6721 = !DILocation(line: 444, column: 6, scope: !6722)
!6722 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 444, column: 6)
!6723 = !DILocation(line: 444, column: 11, scope: !6722)
!6724 = !DILocation(line: 444, column: 6, scope: !6712)
!6725 = !DILocation(line: 445, column: 3, scope: !6722)
!6726 = !DILocation(line: 447, column: 9, scope: !6727)
!6727 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 447, column: 2)
!6728 = !DILocation(line: 447, column: 7, scope: !6727)
!6729 = !DILocation(line: 447, column: 14, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6727, file: !3, line: 447, column: 2)
!6731 = !DILocation(line: 447, column: 18, scope: !6730)
!6732 = !DILocation(line: 447, column: 16, scope: !6730)
!6733 = !DILocation(line: 447, column: 2, scope: !6727)
!6734 = !DILocation(line: 448, column: 27, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 447, column: 32)
!6736 = !DILocation(line: 448, column: 32, scope: !6735)
!6737 = !DILocation(line: 448, column: 8, scope: !6735)
!6738 = !DILocation(line: 448, column: 6, scope: !6735)
!6739 = !DILocation(line: 449, column: 7, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6735, file: !3, line: 449, column: 7)
!6741 = !DILocation(line: 449, column: 7, scope: !6735)
!6742 = !DILocation(line: 450, column: 4, scope: !6740)
!6743 = !DILocation(line: 451, column: 2, scope: !6735)
!6744 = !DILocation(line: 447, column: 28, scope: !6730)
!6745 = !DILocation(line: 447, column: 2, scope: !6730)
!6746 = distinct !{!6746, !6733, !6747}
!6747 = !DILocation(line: 451, column: 2, scope: !6727)
!6748 = !DILocation(line: 452, column: 2, scope: !6712)
!6749 = !DILabel(scope: !6712, name: "failed", file: !3, line: 453)
!6750 = !DILocation(line: 453, column: 1, scope: !6712)
!6751 = !DILocation(line: 454, column: 2, scope: !6712)
!6752 = !DILocation(line: 454, column: 10, scope: !6712)
!6753 = !DILocation(line: 455, column: 25, scope: !6712)
!6754 = !DILocation(line: 455, column: 30, scope: !6712)
!6755 = !DILocation(line: 455, column: 3, scope: !6712)
!6756 = distinct !{!6756, !6751, !6757}
!6757 = !DILocation(line: 455, column: 31, scope: !6712)
!6758 = !DILocation(line: 457, column: 9, scope: !6712)
!6759 = !DILocation(line: 457, column: 2, scope: !6712)
!6760 = !DILocation(line: 458, column: 1, scope: !6712)
!6761 = distinct !DISubprogram(name: "sriov_del_vfs", scope: !3, file: !3, line: 570, type: !3884, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !279)
!6762 = !DILocalVariable(name: "dev", arg: 1, scope: !6761, file: !3, line: 570, type: !150)
!6763 = !DILocation(line: 570, column: 43, scope: !6761)
!6764 = !DILocalVariable(name: "iov", scope: !6761, file: !3, line: 572, type: !4018)
!6765 = !DILocation(line: 572, column: 20, scope: !6761)
!6766 = !DILocation(line: 572, column: 26, scope: !6761)
!6767 = !DILocation(line: 572, column: 31, scope: !6761)
!6768 = !DILocalVariable(name: "i", scope: !6761, file: !3, line: 573, type: !207)
!6769 = !DILocation(line: 573, column: 6, scope: !6761)
!6770 = !DILocation(line: 575, column: 9, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6761, file: !3, line: 575, column: 2)
!6772 = !DILocation(line: 575, column: 7, scope: !6771)
!6773 = !DILocation(line: 575, column: 14, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 575, column: 2)
!6775 = !DILocation(line: 575, column: 18, scope: !6774)
!6776 = !DILocation(line: 575, column: 23, scope: !6774)
!6777 = !DILocation(line: 575, column: 16, scope: !6774)
!6778 = !DILocation(line: 575, column: 2, scope: !6771)
!6779 = !DILocation(line: 576, column: 25, scope: !6774)
!6780 = !DILocation(line: 576, column: 30, scope: !6774)
!6781 = !DILocation(line: 576, column: 3, scope: !6774)
!6782 = !DILocation(line: 575, column: 33, scope: !6774)
!6783 = !DILocation(line: 575, column: 2, scope: !6774)
!6784 = distinct !{!6784, !6778, !6785}
!6785 = !DILocation(line: 576, column: 31, scope: !6771)
!6786 = !DILocation(line: 577, column: 1, scope: !6761)
