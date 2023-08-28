; ModuleID = '../bcout/drivers/greybus/control.llvm.bc'
source_filename = "drivers/greybus/control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
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
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.gb_control = type { %struct.device, %struct.gb_interface*, %struct.gb_connection*, i8, i8, i8, i8, i8*, i8* }
%struct.gb_interface = type { %struct.device, %struct.gb_control*, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, %struct.gb_host_device*, %struct.gb_module*, i64, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_host_device = type { %struct.device, i32, %struct.gb_hd_driver*, %struct.list_head, %struct.list_head, %struct.ida, i64, i64, %struct.gb_svc*, [0 x i64] }
%struct.gb_hd_driver = type { i64, i32 (%struct.gb_host_device*, i32, i64)*, void (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i64)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i8, i32)*, i32 (%struct.gb_host_device*, i16, i64, i32)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, %struct.gb_message*, i32)*, void (%struct.gb_message*)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i8*, i16, i8, i1)* }
%struct.gb_message = type { %struct.gb_operation*, %struct.gb_operation_msg_hdr*, i8*, i64, i8*, i8* }
%struct.gb_operation = type { %struct.gb_connection*, %struct.gb_message*, %struct.gb_message*, i64, i8, i16, i32, %struct.work_struct, void (%struct.gb_operation*)*, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, i8* }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.ida = type { %struct.xarray }
%struct.gb_svc = type { %struct.device, %struct.gb_host_device*, %struct.gb_connection*, i32, %struct.ida, %struct.workqueue_struct*, i16, i8, i8, i8, %struct.gb_svc_watchdog*, i32, %struct.dentry*, %struct.svc_debugfs_pwrmon_rail* }
%struct.gb_svc_watchdog = type opaque
%struct.svc_debugfs_pwrmon_rail = type { i8, %struct.gb_svc* }
%struct.gb_module = type { %struct.device, %struct.gb_host_device*, %struct.list_head, i8, i64, i8, [0 x %struct.gb_interface*] }
%struct.gb_connection = type { %struct.gb_host_device*, %struct.gb_interface*, %struct.gb_bundle*, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, i32 (%struct.gb_operation*)*, i64, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], %struct.workqueue_struct*, %struct.atomic_t, i8*, i8 }
%struct.gb_bundle = type { %struct.device, %struct.gb_interface*, i8, i8, i8, i8, i64, %struct.greybus_descriptor_cport*, %struct.list_head, i8*, %struct.list_head }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_control_bundle_version_request = type { i8 }
%struct.gb_control_bundle_version_response = type { i8, i8 }
%struct.gb_control_get_manifest_size_response = type { i16 }
%struct.gb_control_connected_request = type { i16 }
%struct.gb_control_disconnected_request = type { i16 }
%struct.gb_control_disconnecting_request = type { i16 }
%struct.gb_control_bundle_pm_request = type { i8 }
%struct.gb_control_bundle_pm_response = type { i8 }
%struct.gb_control_intf_pm_response = type { i8 }
%struct.gb_control_version_request = type { i8, i8 }
%struct.gb_control_version_response = type { i8, i8 }

@.str = private unnamed_addr constant [33 x i8] c"failed to get manifest size: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to send disconnecting: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to send mode switch: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to send bundle %u suspend: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to suspend bundle %u: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to send bundle %u resume: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to resume bundle %u: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"failed to send bundle %u deactivate: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to deactivate bundle %u: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"failed to send bundle %u activate: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to activate bundle %u: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"failed to send interface suspend prepare: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"interface error while preparing suspend: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"failed to send interface deactivate prepare: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"interface error while preparing deactivate: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"failed to send interface aborting hibernate: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"interface error while aborting hibernate: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"greybus_control\00", align 1
@greybus_control_type = dso_local global %struct.device_type { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @gb_control_release, %struct.dev_pm_ops* null }, align 8, !dbg !0
@.str.18 = private unnamed_addr constant [42 x i8] c"failed to create control connection: %ld\0A\00", align 1
@greybus_bus_type = external dso_local global %struct.bus_type, align 8
@control_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @control_group, %struct.attribute_group* null], align 16, !dbg !3987
@.str.19 = private unnamed_addr constant [8 x i8] c"%s.ctrl\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"failed to enable control connection: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"failed to register control device: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"failed to get bundle %u class version: %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.23 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@control_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @control_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3990
@control_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_vendor_string, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_product_string, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3992
@dev_attr_vendor_string = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @vendor_string_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3995
@dev_attr_product_string = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @product_string_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4009
@.str.24 = private unnamed_addr constant [14 x i8] c"vendor_string\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"product_string\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"failed to get control-protocol version: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"unsupported major control-protocol version (%u > %u)\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_get_bundle_versions(%struct.gb_control* %control) #0 !dbg !4016 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %intf = alloca %struct.gb_interface*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_bundle*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp11 = alloca %struct.gb_bundle*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4019, metadata !DIExpression()), !dbg !4020
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !4021, metadata !DIExpression()), !dbg !4022
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4023
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !4024
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4024
  %intf1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 1, !dbg !4025
  %2 = load %struct.gb_interface*, %struct.gb_interface** %intf1, align 8, !dbg !4025
  store %struct.gb_interface* %2, %struct.gb_interface** %intf, align 8, !dbg !4022
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4028, metadata !DIExpression()), !dbg !4029
  %3 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4030
  %has_bundle_version = getelementptr inbounds %struct.gb_control, %struct.gb_control* %3, i32 0, i32 6, !dbg !4032
  %4 = load i8, i8* %has_bundle_version, align 1, !dbg !4032
  %tobool = trunc i8 %4 to i1, !dbg !4032
  br i1 %tobool, label %if.end, label %if.then, !dbg !4033

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4034
  br label %return, !dbg !4034

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4035, metadata !DIExpression()), !dbg !4038
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4038
  %bundles = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 2, !dbg !4038
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %bundles, i32 0, i32 0, !dbg !4038
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4038
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4038
  store i8* %7, i8** %__mptr, align 8, !dbg !4038
  br label %do.body, !dbg !4038

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4039

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !4038
  %add.ptr = getelementptr i8, i8* %8, i64 -752, !dbg !4038
  %9 = bitcast i8* %add.ptr to %struct.gb_bundle*, !dbg !4038
  store %struct.gb_bundle* %9, %struct.gb_bundle** %tmp, align 8, !dbg !4039
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp, align 8, !dbg !4038
  store %struct.gb_bundle* %10, %struct.gb_bundle** %bundle, align 8, !dbg !4041
  br label %for.cond, !dbg !4041

for.cond:                                         ; preds = %do.end10, %do.end
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4042
  %links = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 10, !dbg !4042
  %12 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4042
  %bundles2 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %12, i32 0, i32 2, !dbg !4042
  %cmp = icmp eq %struct.list_head* %links, %bundles2, !dbg !4042
  %lnot = xor i1 %cmp, true, !dbg !4042
  br i1 %lnot, label %for.body, label %for.end, !dbg !4041

for.body:                                         ; preds = %for.cond
  %13 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4044
  %14 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4046
  %call = call i32 @gb_control_get_bundle_version(%struct.gb_control* %13, %struct.gb_bundle* %14) #7, !dbg !4047
  store i32 %call, i32* %ret, align 4, !dbg !4048
  %15 = load i32, i32* %ret, align 4, !dbg !4049
  %tobool3 = icmp ne i32 %15, 0, !dbg !4049
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4051

if.then4:                                         ; preds = %for.body
  %16 = load i32, i32* %ret, align 4, !dbg !4052
  store i32 %16, i32* %retval, align 4, !dbg !4053
  br label %return, !dbg !4053

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !4054

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !4055, metadata !DIExpression()), !dbg !4057
  %17 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4057
  %links7 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %17, i32 0, i32 10, !dbg !4057
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %links7, i32 0, i32 0, !dbg !4057
  %18 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !4057
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4057
  store i8* %19, i8** %__mptr6, align 8, !dbg !4057
  br label %do.body9, !dbg !4057

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !4058

do.end10:                                         ; preds = %do.body9
  %20 = load i8*, i8** %__mptr6, align 8, !dbg !4057
  %add.ptr12 = getelementptr i8, i8* %20, i64 -752, !dbg !4057
  %21 = bitcast i8* %add.ptr12 to %struct.gb_bundle*, !dbg !4057
  store %struct.gb_bundle* %21, %struct.gb_bundle** %tmp11, align 8, !dbg !4058
  %22 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp11, align 8, !dbg !4057
  store %struct.gb_bundle* %22, %struct.gb_bundle** %bundle, align 8, !dbg !4042
  br label %for.cond, !dbg !4042, !llvm.loop !4060

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4062
  br label %return, !dbg !4062

return:                                           ; preds = %for.end, %if.then4, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4063
  ret i32 %23, !dbg !4063
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_control_get_bundle_version(%struct.gb_control* %control, %struct.gb_bundle* %bundle) #0 !dbg !4064 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %intf = alloca %struct.gb_interface*, align 8
  %request = alloca %struct.gb_control_bundle_version_request, align 1
  %response = alloca %struct.gb_control_bundle_version_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4067, metadata !DIExpression()), !dbg !4068
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !4071, metadata !DIExpression()), !dbg !4072
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4073
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !4074
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4074
  %intf1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 1, !dbg !4075
  %2 = load %struct.gb_interface*, %struct.gb_interface** %intf1, align 8, !dbg !4075
  store %struct.gb_interface* %2, %struct.gb_interface** %intf, align 8, !dbg !4072
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_version_request* %request, metadata !4076, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_version_response* %response, metadata !4081, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4087, metadata !DIExpression()), !dbg !4088
  %3 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4089
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %3, i32 0, i32 2, !dbg !4090
  %4 = load i8, i8* %id, align 8, !dbg !4090
  %bundle_id = getelementptr inbounds %struct.gb_control_bundle_version_request, %struct.gb_control_bundle_version_request* %request, i32 0, i32 0, !dbg !4091
  store i8 %4, i8* %bundle_id, align 1, !dbg !4092
  %5 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4093
  %connection2 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %5, i32 0, i32 2, !dbg !4094
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection2, align 8, !dbg !4094
  %7 = bitcast %struct.gb_control_bundle_version_request* %request to i8*, !dbg !4095
  %8 = bitcast %struct.gb_control_bundle_version_response* %response to i8*, !dbg !4096
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %6, i32 11, i8* %7, i32 1, i8* %8, i32 2) #7, !dbg !4097
  store i32 %call, i32* %ret, align 4, !dbg !4098
  %9 = load i32, i32* %ret, align 4, !dbg !4099
  %tobool = icmp ne i32 %9, 0, !dbg !4099
  br i1 %tobool, label %if.then, label %if.end, !dbg !4101

if.then:                                          ; preds = %entry
  %10 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4102
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %10, i32 0, i32 0, !dbg !4102
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4102
  %id3 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 2, !dbg !4102
  %12 = load i8, i8* %id3, align 8, !dbg !4102
  %conv = zext i8 %12 to i32, !dbg !4102
  %13 = load i32, i32* %ret, align 4, !dbg !4102
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 %conv, i32 %13) #8, !dbg !4102
  %14 = load i32, i32* %ret, align 4, !dbg !4104
  store i32 %14, i32* %retval, align 4, !dbg !4105
  br label %return, !dbg !4105

if.end:                                           ; preds = %entry
  %major = getelementptr inbounds %struct.gb_control_bundle_version_response, %struct.gb_control_bundle_version_response* %response, i32 0, i32 0, !dbg !4106
  %15 = load i8, i8* %major, align 1, !dbg !4106
  %16 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4107
  %class_major = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %16, i32 0, i32 4, !dbg !4108
  store i8 %15, i8* %class_major, align 2, !dbg !4109
  %minor = getelementptr inbounds %struct.gb_control_bundle_version_response, %struct.gb_control_bundle_version_response* %response, i32 0, i32 1, !dbg !4110
  %17 = load i8, i8* %minor, align 1, !dbg !4110
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4111
  %class_minor = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %18, i32 0, i32 5, !dbg !4112
  store i8 %17, i8* %class_minor, align 1, !dbg !4113
  store i32 0, i32* %retval, align 4, !dbg !4114
  br label %return, !dbg !4114

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !4115
  ret i32 %19, !dbg !4115
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_get_manifest_size_operation(%struct.gb_interface* %intf) #0 !dbg !4116 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.gb_interface*, align 8
  %response = alloca %struct.gb_control_get_manifest_size_response, align 1
  %connection = alloca %struct.gb_connection*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4119, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.declare(metadata %struct.gb_control_get_manifest_size_response* %response, metadata !4121, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4126, metadata !DIExpression()), !dbg !4127
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4128
  %control = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 1, !dbg !4129
  %1 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4129
  %connection1 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 2, !dbg !4130
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection1, align 8, !dbg !4130
  store %struct.gb_connection* %2, %struct.gb_connection** %connection, align 8, !dbg !4127
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4131, metadata !DIExpression()), !dbg !4132
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4133
  %4 = bitcast %struct.gb_control_get_manifest_size_response* %response to i8*, !dbg !4134
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %3, i32 3, i8* null, i32 0, i8* %4, i32 2) #7, !dbg !4135
  store i32 %call, i32* %ret, align 4, !dbg !4136
  %5 = load i32, i32* %ret, align 4, !dbg !4137
  %tobool = icmp ne i32 %5, 0, !dbg !4137
  br i1 %tobool, label %if.then, label %if.end, !dbg !4139

if.then:                                          ; preds = %entry
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4140
  %intf2 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 1, !dbg !4140
  %7 = load %struct.gb_interface*, %struct.gb_interface** %intf2, align 8, !dbg !4140
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %7, i32 0, i32 0, !dbg !4140
  %8 = load i32, i32* %ret, align 4, !dbg !4140
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %8) #8, !dbg !4140
  %9 = load i32, i32* %ret, align 4, !dbg !4142
  store i32 %9, i32* %retval, align 4, !dbg !4143
  br label %return, !dbg !4143

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.gb_control_get_manifest_size_response, %struct.gb_control_get_manifest_size_response* %response, i32 0, i32 0, !dbg !4144
  %10 = load i16, i16* %size, align 1, !dbg !4144
  %conv = zext i16 %10 to i32, !dbg !4144
  store i32 %conv, i32* %retval, align 4, !dbg !4145
  br label %return, !dbg !4145

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4146
  ret i32 %11, !dbg !4146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_operation_sync(%struct.gb_connection* %connection, i32 %type, i8* %request, i32 %request_size, i8* %response, i32 %response_size) #0 !dbg !4147 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %type.addr = alloca i32, align 4
  %request.addr = alloca i8*, align 8
  %request_size.addr = alloca i32, align 4
  %response.addr = alloca i8*, align 8
  %response_size.addr = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4150, metadata !DIExpression()), !dbg !4151
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  store i8* %request, i8** %request.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %request.addr, metadata !4154, metadata !DIExpression()), !dbg !4155
  store i32 %request_size, i32* %request_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %request_size.addr, metadata !4156, metadata !DIExpression()), !dbg !4157
  store i8* %response, i8** %response.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %response.addr, metadata !4158, metadata !DIExpression()), !dbg !4159
  store i32 %response_size, i32* %response_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %response_size.addr, metadata !4160, metadata !DIExpression()), !dbg !4161
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4162
  %1 = load i32, i32* %type.addr, align 4, !dbg !4163
  %2 = load i8*, i8** %request.addr, align 8, !dbg !4164
  %3 = load i32, i32* %request_size.addr, align 4, !dbg !4165
  %4 = load i8*, i8** %response.addr, align 8, !dbg !4166
  %5 = load i32, i32* %response_size.addr, align 4, !dbg !4167
  %call = call i32 @gb_operation_sync_timeout(%struct.gb_connection* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 1000) #7, !dbg !4168
  ret i32 %call, !dbg !4169
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_get_manifest_operation(%struct.gb_interface* %intf, i8* %manifest, i64 %size) #0 !dbg !4170 {
entry:
  %intf.addr = alloca %struct.gb_interface*, align 8
  %manifest.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %connection = alloca %struct.gb_connection*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4173, metadata !DIExpression()), !dbg !4174
  store i8* %manifest, i8** %manifest.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %manifest.addr, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4177, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4179, metadata !DIExpression()), !dbg !4180
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4181
  %control = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 1, !dbg !4182
  %1 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4182
  %connection1 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 2, !dbg !4183
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection1, align 8, !dbg !4183
  store %struct.gb_connection* %2, %struct.gb_connection** %connection, align 8, !dbg !4180
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4184
  %4 = load i8*, i8** %manifest.addr, align 8, !dbg !4185
  %5 = load i64, i64* %size.addr, align 8, !dbg !4186
  %conv = trunc i64 %5 to i32, !dbg !4186
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %3, i32 4, i8* null, i32 0, i8* %4, i32 %conv) #7, !dbg !4187
  ret i32 %call, !dbg !4188
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_connected_operation(%struct.gb_control* %control, i16 zeroext %cport_id) #0 !dbg !4189 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  %cport_id.addr = alloca i16, align 2
  %request = alloca %struct.gb_control_connected_request, align 1
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4194, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.declare(metadata %struct.gb_control_connected_request* %request, metadata !4196, metadata !DIExpression()), !dbg !4200
  %0 = load i16, i16* %cport_id.addr, align 2, !dbg !4201
  %cport_id1 = getelementptr inbounds %struct.gb_control_connected_request, %struct.gb_control_connected_request* %request, i32 0, i32 0, !dbg !4202
  store i16 %0, i16* %cport_id1, align 1, !dbg !4203
  %1 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4204
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 2, !dbg !4205
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4205
  %3 = bitcast %struct.gb_control_connected_request* %request to i8*, !dbg !4206
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %2, i32 5, i8* %3, i32 2, i8* null, i32 0) #7, !dbg !4207
  ret i32 %call, !dbg !4208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_disconnected_operation(%struct.gb_control* %control, i16 zeroext %cport_id) #0 !dbg !4209 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  %cport_id.addr = alloca i16, align 2
  %request = alloca %struct.gb_control_disconnected_request, align 1
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4210, metadata !DIExpression()), !dbg !4211
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata %struct.gb_control_disconnected_request* %request, metadata !4214, metadata !DIExpression()), !dbg !4218
  %0 = load i16, i16* %cport_id.addr, align 2, !dbg !4219
  %cport_id1 = getelementptr inbounds %struct.gb_control_disconnected_request, %struct.gb_control_disconnected_request* %request, i32 0, i32 0, !dbg !4220
  store i16 %0, i16* %cport_id1, align 1, !dbg !4221
  %1 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4222
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 2, !dbg !4223
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4223
  %3 = bitcast %struct.gb_control_disconnected_request* %request to i8*, !dbg !4224
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %2, i32 6, i8* %3, i32 2, i8* null, i32 0) #7, !dbg !4225
  ret i32 %call, !dbg !4226
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_disconnecting_operation(%struct.gb_control* %control, i16 zeroext %cport_id) #0 !dbg !4227 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %cport_id.addr = alloca i16, align 2
  %request = alloca %struct.gb_control_disconnecting_request*, align 8
  %operation = alloca %struct.gb_operation*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.declare(metadata %struct.gb_control_disconnecting_request** %request, metadata !4232, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4240, metadata !DIExpression()), !dbg !4241
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4242
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !4243
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4243
  %call = call %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection* %1, i8 zeroext 12, i64 2, i64 0, i64 0, i32 3264) #7, !dbg !4244
  store %struct.gb_operation* %call, %struct.gb_operation** %operation, align 8, !dbg !4245
  %2 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4246
  %tobool = icmp ne %struct.gb_operation* %2, null, !dbg !4246
  br i1 %tobool, label %if.end, label %if.then, !dbg !4248

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4249
  br label %return, !dbg !4249

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4250
  %request1 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %3, i32 0, i32 1, !dbg !4251
  %4 = load %struct.gb_message*, %struct.gb_message** %request1, align 8, !dbg !4251
  %payload = getelementptr inbounds %struct.gb_message, %struct.gb_message* %4, i32 0, i32 2, !dbg !4252
  %5 = load i8*, i8** %payload, align 8, !dbg !4252
  %6 = bitcast i8* %5 to %struct.gb_control_disconnecting_request*, !dbg !4250
  store %struct.gb_control_disconnecting_request* %6, %struct.gb_control_disconnecting_request** %request, align 8, !dbg !4253
  %7 = load i16, i16* %cport_id.addr, align 2, !dbg !4254
  %8 = load %struct.gb_control_disconnecting_request*, %struct.gb_control_disconnecting_request** %request, align 8, !dbg !4255
  %cport_id2 = getelementptr inbounds %struct.gb_control_disconnecting_request, %struct.gb_control_disconnecting_request* %8, i32 0, i32 0, !dbg !4256
  store i16 %7, i16* %cport_id2, align 1, !dbg !4257
  %9 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4258
  %call3 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %9) #7, !dbg !4259
  store i32 %call3, i32* %ret, align 4, !dbg !4260
  %10 = load i32, i32* %ret, align 4, !dbg !4261
  %tobool4 = icmp ne i32 %10, 0, !dbg !4261
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4263

if.then5:                                         ; preds = %if.end
  %11 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4264
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %11, i32 0, i32 0, !dbg !4264
  %12 = load i32, i32* %ret, align 4, !dbg !4264
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %12) #8, !dbg !4264
  br label %if.end6, !dbg !4266

if.end6:                                          ; preds = %if.then5, %if.end
  %13 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4267
  call void @gb_operation_put(%struct.gb_operation* %13) #7, !dbg !4268
  %14 = load i32, i32* %ret, align 4, !dbg !4269
  store i32 %14, i32* %retval, align 4, !dbg !4270
  br label %return, !dbg !4270

return:                                           ; preds = %if.end6, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4271
  ret i32 %15, !dbg !4271
}

; Function Attrs: noredzone
declare dso_local %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection*, i8 zeroext, i64, i64, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_operation_request_send_sync(%struct.gb_operation* %operation) #0 !dbg !4272 {
entry:
  %operation.addr = alloca %struct.gb_operation*, align 8
  store %struct.gb_operation* %operation, %struct.gb_operation** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  %0 = load %struct.gb_operation*, %struct.gb_operation** %operation.addr, align 8, !dbg !4275
  %call = call i32 @gb_operation_request_send_sync_timeout(%struct.gb_operation* %0, i32 1000) #7, !dbg !4276
  ret i32 %call, !dbg !4277
}

; Function Attrs: noredzone
declare dso_local void @gb_operation_put(%struct.gb_operation*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_mode_switch_operation(%struct.gb_control* %control) #0 !dbg !4278 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %operation = alloca %struct.gb_operation*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4283, metadata !DIExpression()), !dbg !4284
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4285
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !4286
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4286
  %call = call %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection* %1, i8 zeroext 14, i64 0, i64 0, i64 2, i32 3264) #7, !dbg !4287
  store %struct.gb_operation* %call, %struct.gb_operation** %operation, align 8, !dbg !4288
  %2 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4289
  %tobool = icmp ne %struct.gb_operation* %2, null, !dbg !4289
  br i1 %tobool, label %if.end, label %if.then, !dbg !4291

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4292
  br label %return, !dbg !4292

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4293
  %call1 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %3) #7, !dbg !4294
  store i32 %call1, i32* %ret, align 4, !dbg !4295
  %4 = load i32, i32* %ret, align 4, !dbg !4296
  %tobool2 = icmp ne i32 %4, 0, !dbg !4296
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4298

if.then3:                                         ; preds = %if.end
  %5 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4299
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %5, i32 0, i32 0, !dbg !4299
  %6 = load i32, i32* %ret, align 4, !dbg !4299
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %6) #8, !dbg !4299
  br label %if.end4, !dbg !4299

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4300
  call void @gb_operation_put(%struct.gb_operation* %7) #7, !dbg !4301
  %8 = load i32, i32* %ret, align 4, !dbg !4302
  store i32 %8, i32* %retval, align 4, !dbg !4303
  br label %return, !dbg !4303

return:                                           ; preds = %if.end4, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4304
  ret i32 %9, !dbg !4304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_bundle_suspend(%struct.gb_control* %control, i8 zeroext %bundle_id) #0 !dbg !4305 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %bundle_id.addr = alloca i8, align 1
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  store i8 %bundle_id, i8* %bundle_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bundle_id.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_request* %request, metadata !4312, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_response* %response, metadata !4317, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4322, metadata !DIExpression()), !dbg !4323
  %0 = load i8, i8* %bundle_id.addr, align 1, !dbg !4324
  %bundle_id1 = getelementptr inbounds %struct.gb_control_bundle_pm_request, %struct.gb_control_bundle_pm_request* %request, i32 0, i32 0, !dbg !4325
  store i8 %0, i8* %bundle_id1, align 1, !dbg !4326
  %1 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4327
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 2, !dbg !4328
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4328
  %3 = bitcast %struct.gb_control_bundle_pm_request* %request to i8*, !dbg !4329
  %4 = bitcast %struct.gb_control_bundle_pm_response* %response to i8*, !dbg !4330
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %2, i32 15, i8* %3, i32 1, i8* %4, i32 1) #7, !dbg !4331
  store i32 %call, i32* %ret, align 4, !dbg !4332
  %5 = load i32, i32* %ret, align 4, !dbg !4333
  %tobool = icmp ne i32 %5, 0, !dbg !4333
  br i1 %tobool, label %if.then, label %if.end, !dbg !4335

if.then:                                          ; preds = %entry
  %6 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4336
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 0, !dbg !4336
  %7 = load i8, i8* %bundle_id.addr, align 1, !dbg !4336
  %conv = zext i8 %7 to i32, !dbg !4336
  %8 = load i32, i32* %ret, align 4, !dbg !4336
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %conv, i32 %8) #8, !dbg !4336
  %9 = load i32, i32* %ret, align 4, !dbg !4338
  store i32 %9, i32* %retval, align 4, !dbg !4339
  br label %return, !dbg !4339

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4340
  %10 = load i8, i8* %status, align 1, !dbg !4340
  %conv2 = zext i8 %10 to i32, !dbg !4342
  %cmp = icmp ne i32 %conv2, 0, !dbg !4343
  br i1 %cmp, label %if.then4, label %if.end11, !dbg !4344

if.then4:                                         ; preds = %if.end
  %11 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4345
  %dev5 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %11, i32 0, i32 0, !dbg !4345
  %12 = load i8, i8* %bundle_id.addr, align 1, !dbg !4345
  %conv6 = zext i8 %12 to i32, !dbg !4345
  %status7 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4345
  %13 = load i8, i8* %status7, align 1, !dbg !4345
  %conv8 = zext i8 %13 to i32, !dbg !4345
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %conv6, i32 %conv8) #8, !dbg !4345
  %status9 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4347
  %14 = load i8, i8* %status9, align 1, !dbg !4347
  %call10 = call i32 @gb_control_bundle_pm_status_map(i8 zeroext %14) #7, !dbg !4348
  store i32 %call10, i32* %retval, align 4, !dbg !4349
  br label %return, !dbg !4349

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4350
  br label %return, !dbg !4350

return:                                           ; preds = %if.end11, %if.then4, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4351
  ret i32 %15, !dbg !4351
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_control_bundle_pm_status_map(i8 zeroext %status) #0 !dbg !4352 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i8, align 1
  store i8 %status, i8* %status.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %status.addr, metadata !4355, metadata !DIExpression()), !dbg !4356
  %0 = load i8, i8* %status.addr, align 1, !dbg !4357
  %conv = zext i8 %0 to i32, !dbg !4357
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4358

sw.bb:                                            ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4359
  br label %return, !dbg !4359

sw.bb1:                                           ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4361
  br label %return, !dbg !4361

sw.bb2:                                           ; preds = %entry
  store i32 -42, i32* %retval, align 4, !dbg !4362
  br label %return, !dbg !4362

sw.bb3:                                           ; preds = %entry
  br label %sw.default, !dbg !4362

sw.default:                                       ; preds = %entry, %sw.bb3
  store i32 -121, i32* %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !4364
  ret i32 %1, !dbg !4364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_bundle_resume(%struct.gb_control* %control, i8 zeroext %bundle_id) #0 !dbg !4365 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %bundle_id.addr = alloca i8, align 1
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4366, metadata !DIExpression()), !dbg !4367
  store i8 %bundle_id, i8* %bundle_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bundle_id.addr, metadata !4368, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_request* %request, metadata !4370, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_response* %response, metadata !4372, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4374, metadata !DIExpression()), !dbg !4375
  %0 = load i8, i8* %bundle_id.addr, align 1, !dbg !4376
  %bundle_id1 = getelementptr inbounds %struct.gb_control_bundle_pm_request, %struct.gb_control_bundle_pm_request* %request, i32 0, i32 0, !dbg !4377
  store i8 %0, i8* %bundle_id1, align 1, !dbg !4378
  %1 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4379
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 2, !dbg !4380
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4380
  %3 = bitcast %struct.gb_control_bundle_pm_request* %request to i8*, !dbg !4381
  %4 = bitcast %struct.gb_control_bundle_pm_response* %response to i8*, !dbg !4382
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %2, i32 16, i8* %3, i32 1, i8* %4, i32 1) #7, !dbg !4383
  store i32 %call, i32* %ret, align 4, !dbg !4384
  %5 = load i32, i32* %ret, align 4, !dbg !4385
  %tobool = icmp ne i32 %5, 0, !dbg !4385
  br i1 %tobool, label %if.then, label %if.end, !dbg !4387

if.then:                                          ; preds = %entry
  %6 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4388
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 0, !dbg !4388
  %7 = load i8, i8* %bundle_id.addr, align 1, !dbg !4388
  %conv = zext i8 %7 to i32, !dbg !4388
  %8 = load i32, i32* %ret, align 4, !dbg !4388
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %conv, i32 %8) #8, !dbg !4388
  %9 = load i32, i32* %ret, align 4, !dbg !4390
  store i32 %9, i32* %retval, align 4, !dbg !4391
  br label %return, !dbg !4391

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4392
  %10 = load i8, i8* %status, align 1, !dbg !4392
  %conv2 = zext i8 %10 to i32, !dbg !4394
  %cmp = icmp ne i32 %conv2, 0, !dbg !4395
  br i1 %cmp, label %if.then4, label %if.end11, !dbg !4396

if.then4:                                         ; preds = %if.end
  %11 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4397
  %dev5 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %11, i32 0, i32 0, !dbg !4397
  %12 = load i8, i8* %bundle_id.addr, align 1, !dbg !4397
  %conv6 = zext i8 %12 to i32, !dbg !4397
  %status7 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4397
  %13 = load i8, i8* %status7, align 1, !dbg !4397
  %conv8 = zext i8 %13 to i32, !dbg !4397
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %conv6, i32 %conv8) #8, !dbg !4397
  %status9 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4399
  %14 = load i8, i8* %status9, align 1, !dbg !4399
  %call10 = call i32 @gb_control_bundle_pm_status_map(i8 zeroext %14) #7, !dbg !4400
  store i32 %call10, i32* %retval, align 4, !dbg !4401
  br label %return, !dbg !4401

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4402
  br label %return, !dbg !4402

return:                                           ; preds = %if.end11, %if.then4, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4403
  ret i32 %15, !dbg !4403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_bundle_deactivate(%struct.gb_control* %control, i8 zeroext %bundle_id) #0 !dbg !4404 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %bundle_id.addr = alloca i8, align 1
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i8 %bundle_id, i8* %bundle_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bundle_id.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_request* %request, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_response* %response, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4413, metadata !DIExpression()), !dbg !4414
  %0 = load i8, i8* %bundle_id.addr, align 1, !dbg !4415
  %bundle_id1 = getelementptr inbounds %struct.gb_control_bundle_pm_request, %struct.gb_control_bundle_pm_request* %request, i32 0, i32 0, !dbg !4416
  store i8 %0, i8* %bundle_id1, align 1, !dbg !4417
  %1 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4418
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 2, !dbg !4419
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4419
  %3 = bitcast %struct.gb_control_bundle_pm_request* %request to i8*, !dbg !4420
  %4 = bitcast %struct.gb_control_bundle_pm_response* %response to i8*, !dbg !4421
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %2, i32 17, i8* %3, i32 1, i8* %4, i32 1) #7, !dbg !4422
  store i32 %call, i32* %ret, align 4, !dbg !4423
  %5 = load i32, i32* %ret, align 4, !dbg !4424
  %tobool = icmp ne i32 %5, 0, !dbg !4424
  br i1 %tobool, label %if.then, label %if.end, !dbg !4426

if.then:                                          ; preds = %entry
  %6 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4427
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 0, !dbg !4427
  %7 = load i8, i8* %bundle_id.addr, align 1, !dbg !4427
  %conv = zext i8 %7 to i32, !dbg !4427
  %8 = load i32, i32* %ret, align 4, !dbg !4427
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %conv, i32 %8) #8, !dbg !4427
  %9 = load i32, i32* %ret, align 4, !dbg !4429
  store i32 %9, i32* %retval, align 4, !dbg !4430
  br label %return, !dbg !4430

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4431
  %10 = load i8, i8* %status, align 1, !dbg !4431
  %conv2 = zext i8 %10 to i32, !dbg !4433
  %cmp = icmp ne i32 %conv2, 0, !dbg !4434
  br i1 %cmp, label %if.then4, label %if.end11, !dbg !4435

if.then4:                                         ; preds = %if.end
  %11 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4436
  %dev5 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %11, i32 0, i32 0, !dbg !4436
  %12 = load i8, i8* %bundle_id.addr, align 1, !dbg !4436
  %conv6 = zext i8 %12 to i32, !dbg !4436
  %status7 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4436
  %13 = load i8, i8* %status7, align 1, !dbg !4436
  %conv8 = zext i8 %13 to i32, !dbg !4436
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %conv6, i32 %conv8) #8, !dbg !4436
  %status9 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4438
  %14 = load i8, i8* %status9, align 1, !dbg !4438
  %call10 = call i32 @gb_control_bundle_pm_status_map(i8 zeroext %14) #7, !dbg !4439
  store i32 %call10, i32* %retval, align 4, !dbg !4440
  br label %return, !dbg !4440

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4441
  br label %return, !dbg !4441

return:                                           ; preds = %if.end11, %if.then4, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4442
  ret i32 %15, !dbg !4442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_bundle_activate(%struct.gb_control* %control, i8 zeroext %bundle_id) #0 !dbg !4443 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %bundle_id.addr = alloca i8, align 1
  %request = alloca %struct.gb_control_bundle_pm_request, align 1
  %response = alloca %struct.gb_control_bundle_pm_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  store i8 %bundle_id, i8* %bundle_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %bundle_id.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_request* %request, metadata !4448, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.declare(metadata %struct.gb_control_bundle_pm_response* %response, metadata !4450, metadata !DIExpression()), !dbg !4451
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4452, metadata !DIExpression()), !dbg !4453
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4454
  %has_bundle_activate = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 5, !dbg !4456
  %1 = load i8, i8* %has_bundle_activate, align 2, !dbg !4456
  %tobool = trunc i8 %1 to i1, !dbg !4456
  br i1 %tobool, label %if.end, label %if.then, !dbg !4457

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4458
  br label %return, !dbg !4458

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %bundle_id.addr, align 1, !dbg !4459
  %bundle_id1 = getelementptr inbounds %struct.gb_control_bundle_pm_request, %struct.gb_control_bundle_pm_request* %request, i32 0, i32 0, !dbg !4460
  store i8 %2, i8* %bundle_id1, align 1, !dbg !4461
  %3 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4462
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %3, i32 0, i32 2, !dbg !4463
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4463
  %5 = bitcast %struct.gb_control_bundle_pm_request* %request to i8*, !dbg !4464
  %6 = bitcast %struct.gb_control_bundle_pm_response* %response to i8*, !dbg !4465
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %4, i32 18, i8* %5, i32 1, i8* %6, i32 1) #7, !dbg !4466
  store i32 %call, i32* %ret, align 4, !dbg !4467
  %7 = load i32, i32* %ret, align 4, !dbg !4468
  %tobool2 = icmp ne i32 %7, 0, !dbg !4468
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4470

if.then3:                                         ; preds = %if.end
  %8 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4471
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %8, i32 0, i32 0, !dbg !4471
  %9 = load i8, i8* %bundle_id.addr, align 1, !dbg !4471
  %conv = zext i8 %9 to i32, !dbg !4471
  %10 = load i32, i32* %ret, align 4, !dbg !4471
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %conv, i32 %10) #8, !dbg !4471
  %11 = load i32, i32* %ret, align 4, !dbg !4473
  store i32 %11, i32* %retval, align 4, !dbg !4474
  br label %return, !dbg !4474

if.end4:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4475
  %12 = load i8, i8* %status, align 1, !dbg !4475
  %conv5 = zext i8 %12 to i32, !dbg !4477
  %cmp = icmp ne i32 %conv5, 0, !dbg !4478
  br i1 %cmp, label %if.then7, label %if.end14, !dbg !4479

if.then7:                                         ; preds = %if.end4
  %13 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4480
  %dev8 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %13, i32 0, i32 0, !dbg !4480
  %14 = load i8, i8* %bundle_id.addr, align 1, !dbg !4480
  %conv9 = zext i8 %14 to i32, !dbg !4480
  %status10 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4480
  %15 = load i8, i8* %status10, align 1, !dbg !4480
  %conv11 = zext i8 %15 to i32, !dbg !4480
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %conv9, i32 %conv11) #8, !dbg !4480
  %status12 = getelementptr inbounds %struct.gb_control_bundle_pm_response, %struct.gb_control_bundle_pm_response* %response, i32 0, i32 0, !dbg !4482
  %16 = load i8, i8* %status12, align 1, !dbg !4482
  %call13 = call i32 @gb_control_bundle_pm_status_map(i8 zeroext %16) #7, !dbg !4483
  store i32 %call13, i32* %retval, align 4, !dbg !4484
  br label %return, !dbg !4484

if.end14:                                         ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !4485
  br label %return, !dbg !4485

return:                                           ; preds = %if.end14, %if.then7, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !4486
  ret i32 %17, !dbg !4486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_interface_suspend_prepare(%struct.gb_control* %control) #0 !dbg !4487 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %response = alloca %struct.gb_control_intf_pm_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4488, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.declare(metadata %struct.gb_control_intf_pm_response* %response, metadata !4490, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4495, metadata !DIExpression()), !dbg !4496
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4497
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !4498
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4498
  %2 = bitcast %struct.gb_control_intf_pm_response* %response to i8*, !dbg !4499
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %1, i32 19, i8* null, i32 0, i8* %2, i32 1) #7, !dbg !4500
  store i32 %call, i32* %ret, align 4, !dbg !4501
  %3 = load i32, i32* %ret, align 4, !dbg !4502
  %tobool = icmp ne i32 %3, 0, !dbg !4502
  br i1 %tobool, label %if.then, label %if.end, !dbg !4504

if.then:                                          ; preds = %entry
  %4 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4505
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %4, i32 0, i32 0, !dbg !4505
  %5 = load i32, i32* %ret, align 4, !dbg !4505
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %5) #8, !dbg !4505
  %6 = load i32, i32* %ret, align 4, !dbg !4507
  store i32 %6, i32* %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4509
  %7 = load i8, i8* %status, align 1, !dbg !4509
  %conv = zext i8 %7 to i32, !dbg !4511
  %cmp = icmp ne i32 %conv, 0, !dbg !4512
  br i1 %cmp, label %if.then2, label %if.end8, !dbg !4513

if.then2:                                         ; preds = %if.end
  %8 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4514
  %dev3 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %8, i32 0, i32 0, !dbg !4514
  %status4 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4514
  %9 = load i8, i8* %status4, align 1, !dbg !4514
  %conv5 = zext i8 %9 to i32, !dbg !4514
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %conv5) #8, !dbg !4514
  %status6 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4516
  %10 = load i8, i8* %status6, align 1, !dbg !4516
  %call7 = call i32 @gb_control_interface_pm_status_map(i8 zeroext %10) #7, !dbg !4517
  store i32 %call7, i32* %retval, align 4, !dbg !4518
  br label %return, !dbg !4518

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4519
  br label %return, !dbg !4519

return:                                           ; preds = %if.end8, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4520
  ret i32 %11, !dbg !4520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_control_interface_pm_status_map(i8 zeroext %status) #0 !dbg !4521 {
entry:
  %retval = alloca i32, align 4
  %status.addr = alloca i8, align 1
  store i8 %status, i8* %status.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %status.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  %0 = load i8, i8* %status.addr, align 1, !dbg !4524
  %conv = zext i8 %0 to i32, !dbg !4524
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !4525

sw.bb:                                            ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4526
  br label %return, !dbg !4526

sw.bb1:                                           ; preds = %entry
  store i32 -42, i32* %retval, align 4, !dbg !4528
  br label %return, !dbg !4528

sw.default:                                       ; preds = %entry
  store i32 -121, i32* %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !4530
  ret i32 %1, !dbg !4530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_interface_deactivate_prepare(%struct.gb_control* %control) #0 !dbg !4531 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %response = alloca %struct.gb_control_intf_pm_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata %struct.gb_control_intf_pm_response* %response, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4536, metadata !DIExpression()), !dbg !4537
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4538
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !4539
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4539
  %2 = bitcast %struct.gb_control_intf_pm_response* %response to i8*, !dbg !4540
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %1, i32 20, i8* null, i32 0, i8* %2, i32 1) #7, !dbg !4541
  store i32 %call, i32* %ret, align 4, !dbg !4542
  %3 = load i32, i32* %ret, align 4, !dbg !4543
  %tobool = icmp ne i32 %3, 0, !dbg !4543
  br i1 %tobool, label %if.then, label %if.end, !dbg !4545

if.then:                                          ; preds = %entry
  %4 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4546
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %4, i32 0, i32 0, !dbg !4546
  %5 = load i32, i32* %ret, align 4, !dbg !4546
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0), i32 %5) #8, !dbg !4546
  %6 = load i32, i32* %ret, align 4, !dbg !4548
  store i32 %6, i32* %retval, align 4, !dbg !4549
  br label %return, !dbg !4549

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4550
  %7 = load i8, i8* %status, align 1, !dbg !4550
  %conv = zext i8 %7 to i32, !dbg !4552
  %cmp = icmp ne i32 %conv, 0, !dbg !4553
  br i1 %cmp, label %if.then2, label %if.end8, !dbg !4554

if.then2:                                         ; preds = %if.end
  %8 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4555
  %dev3 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %8, i32 0, i32 0, !dbg !4555
  %status4 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4555
  %9 = load i8, i8* %status4, align 1, !dbg !4555
  %conv5 = zext i8 %9 to i32, !dbg !4555
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i32 %conv5) #8, !dbg !4555
  %status6 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4557
  %10 = load i8, i8* %status6, align 1, !dbg !4557
  %call7 = call i32 @gb_control_interface_pm_status_map(i8 zeroext %10) #7, !dbg !4558
  store i32 %call7, i32* %retval, align 4, !dbg !4559
  br label %return, !dbg !4559

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4560
  br label %return, !dbg !4560

return:                                           ; preds = %if.end8, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4561
  ret i32 %11, !dbg !4561
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_interface_hibernate_abort(%struct.gb_control* %control) #0 !dbg !4562 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %response = alloca %struct.gb_control_intf_pm_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.declare(metadata %struct.gb_control_intf_pm_response* %response, metadata !4565, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4567, metadata !DIExpression()), !dbg !4568
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4569
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !4570
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4570
  %2 = bitcast %struct.gb_control_intf_pm_response* %response to i8*, !dbg !4571
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %1, i32 21, i8* null, i32 0, i8* %2, i32 1) #7, !dbg !4572
  store i32 %call, i32* %ret, align 4, !dbg !4573
  %3 = load i32, i32* %ret, align 4, !dbg !4574
  %tobool = icmp ne i32 %3, 0, !dbg !4574
  br i1 %tobool, label %if.then, label %if.end, !dbg !4576

if.then:                                          ; preds = %entry
  %4 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4577
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %4, i32 0, i32 0, !dbg !4577
  %5 = load i32, i32* %ret, align 4, !dbg !4577
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %5) #8, !dbg !4577
  %6 = load i32, i32* %ret, align 4, !dbg !4579
  store i32 %6, i32* %retval, align 4, !dbg !4580
  br label %return, !dbg !4580

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4581
  %7 = load i8, i8* %status, align 1, !dbg !4581
  %conv = zext i8 %7 to i32, !dbg !4583
  %cmp = icmp ne i32 %conv, 0, !dbg !4584
  br i1 %cmp, label %if.then2, label %if.end8, !dbg !4585

if.then2:                                         ; preds = %if.end
  %8 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !4586
  %dev3 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %8, i32 0, i32 0, !dbg !4586
  %status4 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4586
  %9 = load i8, i8* %status4, align 1, !dbg !4586
  %conv5 = zext i8 %9 to i32, !dbg !4586
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0), i32 %conv5) #8, !dbg !4586
  %status6 = getelementptr inbounds %struct.gb_control_intf_pm_response, %struct.gb_control_intf_pm_response* %response, i32 0, i32 0, !dbg !4588
  %10 = load i8, i8* %status6, align 1, !dbg !4588
  %call7 = call i32 @gb_control_interface_pm_status_map(i8 zeroext %10) #7, !dbg !4589
  store i32 %call7, i32* %retval, align 4, !dbg !4590
  br label %return, !dbg !4590

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4591
  br label %return, !dbg !4591

return:                                           ; preds = %if.end8, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4592
  ret i32 %11, !dbg !4592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_control_release(%struct.device* %dev) #0 !dbg !4593 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %control = alloca %struct.gb_control*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_control*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !4596, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4598, metadata !DIExpression()), !dbg !4600
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4600
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4600
  store i8* %1, i8** %__mptr, align 8, !dbg !4600
  br label %do.body, !dbg !4600

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4601

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4600
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4600
  %3 = bitcast i8* %add.ptr to %struct.gb_control*, !dbg !4600
  store %struct.gb_control* %3, %struct.gb_control** %tmp, align 8, !dbg !4601
  %4 = load %struct.gb_control*, %struct.gb_control** %tmp, align 8, !dbg !4600
  store %struct.gb_control* %4, %struct.gb_control** %control, align 8, !dbg !4597
  %5 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4603
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %5, i32 0, i32 2, !dbg !4604
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4604
  call void @gb_connection_destroy(%struct.gb_connection* %6) #7, !dbg !4605
  %7 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4606
  %vendor_string = getelementptr inbounds %struct.gb_control, %struct.gb_control* %7, i32 0, i32 7, !dbg !4607
  %8 = load i8*, i8** %vendor_string, align 8, !dbg !4607
  call void @kfree(i8* %8) #7, !dbg !4608
  %9 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4609
  %product_string = getelementptr inbounds %struct.gb_control, %struct.gb_control* %9, i32 0, i32 8, !dbg !4610
  %10 = load i8*, i8** %product_string, align 8, !dbg !4610
  call void @kfree(i8* %10) #7, !dbg !4611
  %11 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4612
  %12 = bitcast %struct.gb_control* %11 to i8*, !dbg !4612
  call void @kfree(i8* %12) #7, !dbg !4613
  ret void, !dbg !4614
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_control* @gb_control_create(%struct.gb_interface* %intf) #0 !dbg !4615 {
entry:
  %retval = alloca %struct.gb_control*, align 8
  %intf.addr = alloca %struct.gb_interface*, align 8
  %connection = alloca %struct.gb_connection*, align 8
  %control = alloca %struct.gb_control*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4620, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !4622, metadata !DIExpression()), !dbg !4623
  %call = call i8* @kzalloc(i64 736, i32 3264) #7, !dbg !4624
  %0 = bitcast i8* %call to %struct.gb_control*, !dbg !4624
  store %struct.gb_control* %0, %struct.gb_control** %control, align 8, !dbg !4625
  %1 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4626
  %tobool = icmp ne %struct.gb_control* %1, null, !dbg !4626
  br i1 %tobool, label %if.end, label %if.then, !dbg !4628

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !4629
  %2 = bitcast i8* %call1 to %struct.gb_control*, !dbg !4629
  store %struct.gb_control* %2, %struct.gb_control** %retval, align 8, !dbg !4630
  br label %return, !dbg !4630

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4631
  %4 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4632
  %intf2 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %4, i32 0, i32 1, !dbg !4633
  store %struct.gb_interface* %3, %struct.gb_interface** %intf2, align 8, !dbg !4634
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4635
  %call3 = call %struct.gb_connection* @gb_connection_create_control(%struct.gb_interface* %5) #7, !dbg !4636
  store %struct.gb_connection* %call3, %struct.gb_connection** %connection, align 8, !dbg !4637
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4638
  %7 = bitcast %struct.gb_connection* %6 to i8*, !dbg !4638
  %call4 = call zeroext i1 @IS_ERR(i8* %7) #7, !dbg !4640
  br i1 %call4, label %if.then5, label %if.end8, !dbg !4641

if.then5:                                         ; preds = %if.end
  %8 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4642
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %8, i32 0, i32 0, !dbg !4642
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4642
  %10 = bitcast %struct.gb_connection* %9 to i8*, !dbg !4642
  %call6 = call i64 @PTR_ERR(i8* %10) #7, !dbg !4642
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i64 %call6) #8, !dbg !4642
  %11 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4644
  %12 = bitcast %struct.gb_control* %11 to i8*, !dbg !4644
  call void @kfree(i8* %12) #7, !dbg !4645
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4646
  %14 = bitcast %struct.gb_connection* %13 to i8*, !dbg !4646
  %call7 = call i8* @ERR_CAST(i8* %14) #7, !dbg !4647
  %15 = bitcast i8* %call7 to %struct.gb_control*, !dbg !4647
  store %struct.gb_control* %15, %struct.gb_control** %retval, align 8, !dbg !4648
  br label %return, !dbg !4648

if.end8:                                          ; preds = %if.end
  %16 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4649
  %17 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4650
  %connection9 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %17, i32 0, i32 2, !dbg !4651
  store %struct.gb_connection* %16, %struct.gb_connection** %connection9, align 8, !dbg !4652
  %18 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4653
  %dev10 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %18, i32 0, i32 0, !dbg !4654
  %19 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4655
  %dev11 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %19, i32 0, i32 0, !dbg !4656
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 1, !dbg !4657
  store %struct.device* %dev10, %struct.device** %parent, align 8, !dbg !4658
  %20 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4659
  %dev12 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %20, i32 0, i32 0, !dbg !4660
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 5, !dbg !4661
  store %struct.bus_type* @greybus_bus_type, %struct.bus_type** %bus, align 8, !dbg !4662
  %21 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4663
  %dev13 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %21, i32 0, i32 0, !dbg !4664
  %type = getelementptr inbounds %struct.device, %struct.device* %dev13, i32 0, i32 4, !dbg !4665
  store %struct.device_type* @greybus_control_type, %struct.device_type** %type, align 8, !dbg !4666
  %22 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4667
  %dev14 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %22, i32 0, i32 0, !dbg !4668
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev14, i32 0, i32 30, !dbg !4669
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @control_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !4670
  %23 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4671
  %dev15 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %23, i32 0, i32 0, !dbg !4672
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 16, !dbg !4673
  %24 = load i64*, i64** %dma_mask, align 8, !dbg !4673
  %25 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4674
  %dev16 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %25, i32 0, i32 0, !dbg !4675
  %dma_mask17 = getelementptr inbounds %struct.device, %struct.device* %dev16, i32 0, i32 16, !dbg !4676
  store i64* %24, i64** %dma_mask17, align 8, !dbg !4677
  %26 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4678
  %dev18 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %26, i32 0, i32 0, !dbg !4679
  call void @device_initialize(%struct.device* %dev18) #7, !dbg !4680
  %27 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4681
  %dev19 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %27, i32 0, i32 0, !dbg !4682
  %28 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4683
  %dev20 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %28, i32 0, i32 0, !dbg !4684
  %call21 = call i8* @dev_name(%struct.device* %dev20) #7, !dbg !4685
  %call22 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* %call21) #7, !dbg !4686
  %29 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4687
  %connection23 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %29, i32 0, i32 2, !dbg !4688
  %30 = load %struct.gb_connection*, %struct.gb_connection** %connection23, align 8, !dbg !4688
  %31 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4689
  %32 = bitcast %struct.gb_control* %31 to i8*, !dbg !4689
  call void @gb_connection_set_data(%struct.gb_connection* %30, i8* %32) #7, !dbg !4690
  %33 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4691
  store %struct.gb_control* %33, %struct.gb_control** %retval, align 8, !dbg !4692
  br label %return, !dbg !4692

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %34 = load %struct.gb_control*, %struct.gb_control** %retval, align 8, !dbg !4693
  ret %struct.gb_control* %34, !dbg !4693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4694 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4697, metadata !DIExpression()), !dbg !4701
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4707, metadata !DIExpression()), !dbg !4708
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4709, metadata !DIExpression()), !dbg !4710
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4711, metadata !DIExpression()), !dbg !4712
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4713, metadata !DIExpression()), !dbg !4717
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4719, metadata !DIExpression()), !dbg !4723
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4725, metadata !DIExpression()), !dbg !4729
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4734, metadata !DIExpression()), !dbg !4735
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4736, metadata !DIExpression()), !dbg !4737
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4738, metadata !DIExpression()), !dbg !4739
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4740, metadata !DIExpression()), !dbg !4741
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4742, metadata !DIExpression()), !dbg !4743
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4744, metadata !DIExpression()), !dbg !4745
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4746, metadata !DIExpression()), !dbg !4747
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4748, metadata !DIExpression()), !dbg !4749
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4750, metadata !DIExpression()), !dbg !4751
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  %0 = load i64, i64* %size.addr, align 8, !dbg !4754
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4755
  %or = or i32 %1, 256, !dbg !4756
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4757
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4758
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4759

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4760
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4761
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4762

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4763
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4764
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4765
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4766
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4743
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4767
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4768
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4769
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4770
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4771
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4772
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4773
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4773
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4773
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4773
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4773
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4774
  br label %kmalloc.exit, !dbg !4774

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4775
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4776
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4776
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4778

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4779
  br label %kmalloc_index.exit.i, !dbg !4779

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4780
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4782
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4783

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4784
  br label %kmalloc_index.exit.i, !dbg !4784

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4785
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4787
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4788

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4789
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4790
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4791

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4795
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4796

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4797
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4798
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4799

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4800
  br label %kmalloc_index.exit.i, !dbg !4800

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4801
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4803
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4804

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4805
  br label %kmalloc_index.exit.i, !dbg !4805

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4806
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4808
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4809

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4810
  br label %kmalloc_index.exit.i, !dbg !4810

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4811
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4813
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4814

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4815
  br label %kmalloc_index.exit.i, !dbg !4815

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4816
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4818
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4819

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4820
  br label %kmalloc_index.exit.i, !dbg !4820

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4821
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4823
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4824

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4825
  br label %kmalloc_index.exit.i, !dbg !4825

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4826
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4828
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4829

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4830
  br label %kmalloc_index.exit.i, !dbg !4830

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4831
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4833
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4834

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4835
  br label %kmalloc_index.exit.i, !dbg !4835

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4836
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4838
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4839

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4840
  br label %kmalloc_index.exit.i, !dbg !4840

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4841
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4843
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4844

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4845
  br label %kmalloc_index.exit.i, !dbg !4845

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4846
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4848
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4849

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4850
  br label %kmalloc_index.exit.i, !dbg !4850

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4851
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4853
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4854

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4855
  br label %kmalloc_index.exit.i, !dbg !4855

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4856
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4858
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4859

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4860
  br label %kmalloc_index.exit.i, !dbg !4860

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4861
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4863
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4864

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4865
  br label %kmalloc_index.exit.i, !dbg !4865

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4866
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4868
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4869

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4870
  br label %kmalloc_index.exit.i, !dbg !4870

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4871
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4873
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4874

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4875
  br label %kmalloc_index.exit.i, !dbg !4875

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4876
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4878
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4879

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4880
  br label %kmalloc_index.exit.i, !dbg !4880

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4881
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4883
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4884

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4885
  br label %kmalloc_index.exit.i, !dbg !4885

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4886
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4888
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4889

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4890
  br label %kmalloc_index.exit.i, !dbg !4890

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4891
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4893
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4894

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4895
  br label %kmalloc_index.exit.i, !dbg !4895

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4896
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4898
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4899

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4900
  br label %kmalloc_index.exit.i, !dbg !4900

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4901
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4903
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4904

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4905
  br label %kmalloc_index.exit.i, !dbg !4905

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4906
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4908
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4909

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4910
  br label %kmalloc_index.exit.i, !dbg !4910

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4911
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4913
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4914

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4915
  br label %kmalloc_index.exit.i, !dbg !4915

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4916
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4918
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4919

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4920
  br label %kmalloc_index.exit.i, !dbg !4920

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4921, !srcloc !4924
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4925, !srcloc !4928
  unreachable, !dbg !4929

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4930
  store i32 %45, i32* %index.i, align 4, !dbg !4931
  %46 = load i32, i32* %index.i, align 4, !dbg !4932
  %tobool.i = icmp ne i32 %46, 0, !dbg !4932
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4934

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4935
  br label %kmalloc.exit, !dbg !4935

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4936
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4937
  %and.i.i = and i32 %48, 17, !dbg !4937
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4937
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4937
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4937
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4937
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4939

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4940
  br label %kmalloc_type.exit.i, !dbg !4940

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4941
  %and2.i.i = and i32 %49, 1, !dbg !4942
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4941
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4941
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4941
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4943
  br label %kmalloc_type.exit.i, !dbg !4943

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4944
  %idxprom.i = zext i32 %51 to i64, !dbg !4945
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4945
  %52 = load i32, i32* %index.i, align 4, !dbg !4946
  %idxprom6.i = zext i32 %52 to i64, !dbg !4945
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4945
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4945
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4947
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4948
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4949
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4950
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4951
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4951
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4951
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4951
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4951
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4712
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4952
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4953
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4954
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4955
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4956
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4957
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4958
  store i8* %62, i8** %retval.i, align 8, !dbg !4959
  br label %kmalloc.exit, !dbg !4959

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4960
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4961
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4962
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4962
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4962
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4962
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4962
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4963
  br label %kmalloc.exit, !dbg !4963

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4964
  ret i8* %65, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4966 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  %0 = load i64, i64* %error.addr, align 8, !dbg !4972
  %1 = inttoptr i64 %0 to i8*, !dbg !4973
  ret i8* %1, !dbg !4974
}

; Function Attrs: noredzone
declare dso_local %struct.gb_connection* @gb_connection_create_control(%struct.gb_interface*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4975 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4978, metadata !DIExpression()), !dbg !4979
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4980
  %1 = ptrtoint i8* %0 to i64, !dbg !4980
  %2 = inttoptr i64 %1 to i8*, !dbg !4980
  %3 = ptrtoint i8* %2 to i64, !dbg !4980
  %cmp = icmp uge i64 %3, -4095, !dbg !4980
  %lnot = xor i1 %cmp, true, !dbg !4980
  %lnot1 = xor i1 %lnot, true, !dbg !4980
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4980
  %conv = sext i32 %lnot.ext to i64, !dbg !4980
  %tobool = icmp ne i64 %conv, 0, !dbg !4980
  ret i1 %tobool, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4982 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4987
  %1 = ptrtoint i8* %0 to i64, !dbg !4988
  ret i64 %1, !dbg !4989
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !4990 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4995
  ret i8* %0, !dbg !4996
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4997 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5002
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !5004
  %1 = load i8*, i8** %init_name, align 8, !dbg !5004
  %tobool = icmp ne i8* %1, null, !dbg !5002
  br i1 %tobool, label %if.then, label %if.end, !dbg !5005

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5006
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !5007
  %3 = load i8*, i8** %init_name1, align 8, !dbg !5007
  store i8* %3, i8** %retval, align 8, !dbg !5008
  br label %return, !dbg !5008

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5009
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !5010
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !5011
  store i8* %call, i8** %retval, align 8, !dbg !5012
  br label %return, !dbg !5012

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !5013
  ret i8* %5, !dbg !5013
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_set_data(%struct.gb_connection* %connection, i8* %data) #0 !dbg !5014 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5021
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5022
  %private = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 17, !dbg !5023
  store i8* %0, i8** %private, align 8, !dbg !5024
  ret void, !dbg !5025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_enable(%struct.gb_control* %control) #0 !dbg !5026 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5027, metadata !DIExpression()), !dbg !5028
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5029, metadata !DIExpression()), !dbg !5030
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5031
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !5032
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5032
  %call = call i32 @gb_connection_enable_tx(%struct.gb_connection* %1) #7, !dbg !5033
  store i32 %call, i32* %ret, align 4, !dbg !5034
  %2 = load i32, i32* %ret, align 4, !dbg !5035
  %tobool = icmp ne i32 %2, 0, !dbg !5035
  br i1 %tobool, label %if.then, label %if.end, !dbg !5037

if.then:                                          ; preds = %entry
  %3 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5038
  %connection1 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %3, i32 0, i32 2, !dbg !5038
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection1, align 8, !dbg !5038
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 1, !dbg !5038
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5038
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 0, !dbg !5038
  %6 = load i32, i32* %ret, align 4, !dbg !5038
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %6) #8, !dbg !5038
  %7 = load i32, i32* %ret, align 4, !dbg !5040
  store i32 %7, i32* %retval, align 4, !dbg !5041
  br label %return, !dbg !5041

if.end:                                           ; preds = %entry
  %8 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5042
  %call2 = call i32 @gb_control_get_version(%struct.gb_control* %8) #7, !dbg !5043
  store i32 %call2, i32* %ret, align 4, !dbg !5044
  %9 = load i32, i32* %ret, align 4, !dbg !5045
  %tobool3 = icmp ne i32 %9, 0, !dbg !5045
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5047

if.then4:                                         ; preds = %if.end
  br label %err_disable_connection, !dbg !5048

if.end5:                                          ; preds = %if.end
  %10 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5049
  %protocol_major = getelementptr inbounds %struct.gb_control, %struct.gb_control* %10, i32 0, i32 3, !dbg !5051
  %11 = load i8, i8* %protocol_major, align 8, !dbg !5051
  %conv = zext i8 %11 to i32, !dbg !5049
  %cmp = icmp sgt i32 %conv, 0, !dbg !5052
  br i1 %cmp, label %if.then10, label %lor.lhs.false, !dbg !5053

lor.lhs.false:                                    ; preds = %if.end5
  %12 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5054
  %protocol_minor = getelementptr inbounds %struct.gb_control, %struct.gb_control* %12, i32 0, i32 4, !dbg !5055
  %13 = load i8, i8* %protocol_minor, align 1, !dbg !5055
  %conv7 = zext i8 %13 to i32, !dbg !5054
  %cmp8 = icmp sgt i32 %conv7, 1, !dbg !5056
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5057

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  %14 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5058
  %has_bundle_version = getelementptr inbounds %struct.gb_control, %struct.gb_control* %14, i32 0, i32 6, !dbg !5059
  store i8 1, i8* %has_bundle_version, align 1, !dbg !5060
  br label %if.end11, !dbg !5058

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %15 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5061
  %intf12 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %15, i32 0, i32 1, !dbg !5063
  %16 = load %struct.gb_interface*, %struct.gb_interface** %intf12, align 8, !dbg !5063
  %quirks = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %16, i32 0, i32 16, !dbg !5064
  %17 = load i64, i64* %quirks, align 8, !dbg !5064
  %and = and i64 %17, 32, !dbg !5065
  %tobool13 = icmp ne i64 %and, 0, !dbg !5065
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5066

if.then14:                                        ; preds = %if.end11
  %18 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5067
  %has_bundle_activate = getelementptr inbounds %struct.gb_control, %struct.gb_control* %18, i32 0, i32 5, !dbg !5068
  store i8 1, i8* %has_bundle_activate, align 2, !dbg !5069
  br label %if.end15, !dbg !5067

if.end15:                                         ; preds = %if.then14, %if.end11
  store i32 0, i32* %retval, align 4, !dbg !5070
  br label %return, !dbg !5070

err_disable_connection:                           ; preds = %if.then4
  call void @llvm.dbg.label(metadata !5071), !dbg !5072
  %19 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5073
  %connection16 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %19, i32 0, i32 2, !dbg !5074
  %20 = load %struct.gb_connection*, %struct.gb_connection** %connection16, align 8, !dbg !5074
  call void @gb_connection_disable(%struct.gb_connection* %20) #7, !dbg !5075
  %21 = load i32, i32* %ret, align 4, !dbg !5076
  store i32 %21, i32* %retval, align 4, !dbg !5077
  br label %return, !dbg !5077

return:                                           ; preds = %err_disable_connection, %if.end15, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !5078
  ret i32 %22, !dbg !5078
}

; Function Attrs: noredzone
declare dso_local i32 @gb_connection_enable_tx(%struct.gb_connection*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_control_get_version(%struct.gb_control* %control) #0 !dbg !5079 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %intf = alloca %struct.gb_interface*, align 8
  %request = alloca %struct.gb_control_version_request, align 1
  %response = alloca %struct.gb_control_version_response, align 1
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !5082, metadata !DIExpression()), !dbg !5083
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5084
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !5085
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5085
  %intf1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 1, !dbg !5086
  %2 = load %struct.gb_interface*, %struct.gb_interface** %intf1, align 8, !dbg !5086
  store %struct.gb_interface* %2, %struct.gb_interface** %intf, align 8, !dbg !5083
  call void @llvm.dbg.declare(metadata %struct.gb_control_version_request* %request, metadata !5087, metadata !DIExpression()), !dbg !5092
  call void @llvm.dbg.declare(metadata %struct.gb_control_version_response* %response, metadata !5093, metadata !DIExpression()), !dbg !5098
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5099, metadata !DIExpression()), !dbg !5100
  %major = getelementptr inbounds %struct.gb_control_version_request, %struct.gb_control_version_request* %request, i32 0, i32 0, !dbg !5101
  store i8 0, i8* %major, align 1, !dbg !5102
  %minor = getelementptr inbounds %struct.gb_control_version_request, %struct.gb_control_version_request* %request, i32 0, i32 1, !dbg !5103
  store i8 1, i8* %minor, align 1, !dbg !5104
  %3 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5105
  %connection2 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %3, i32 0, i32 2, !dbg !5106
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection2, align 8, !dbg !5106
  %5 = bitcast %struct.gb_control_version_request* %request to i8*, !dbg !5107
  %6 = bitcast %struct.gb_control_version_response* %response to i8*, !dbg !5108
  %call = call i32 @gb_operation_sync(%struct.gb_connection* %4, i32 1, i8* %5, i32 2, i8* %6, i32 2) #7, !dbg !5109
  store i32 %call, i32* %ret, align 4, !dbg !5110
  %7 = load i32, i32* %ret, align 4, !dbg !5111
  %tobool = icmp ne i32 %7, 0, !dbg !5111
  br i1 %tobool, label %if.then, label %if.end, !dbg !5113

if.then:                                          ; preds = %entry
  %8 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5114
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %8, i32 0, i32 0, !dbg !5114
  %9 = load i32, i32* %ret, align 4, !dbg !5114
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i64 0, i64 0), i32 %9) #8, !dbg !5114
  %10 = load i32, i32* %ret, align 4, !dbg !5116
  store i32 %10, i32* %retval, align 4, !dbg !5117
  br label %return, !dbg !5117

if.end:                                           ; preds = %entry
  %major3 = getelementptr inbounds %struct.gb_control_version_response, %struct.gb_control_version_response* %response, i32 0, i32 0, !dbg !5118
  %11 = load i8, i8* %major3, align 1, !dbg !5118
  %conv = zext i8 %11 to i32, !dbg !5120
  %major4 = getelementptr inbounds %struct.gb_control_version_request, %struct.gb_control_version_request* %request, i32 0, i32 0, !dbg !5121
  %12 = load i8, i8* %major4, align 1, !dbg !5121
  %conv5 = zext i8 %12 to i32, !dbg !5122
  %cmp = icmp sgt i32 %conv, %conv5, !dbg !5123
  br i1 %cmp, label %if.then7, label %if.end13, !dbg !5124

if.then7:                                         ; preds = %if.end
  %13 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5125
  %dev8 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 0, !dbg !5125
  %major9 = getelementptr inbounds %struct.gb_control_version_response, %struct.gb_control_version_response* %response, i32 0, i32 0, !dbg !5125
  %14 = load i8, i8* %major9, align 1, !dbg !5125
  %conv10 = zext i8 %14 to i32, !dbg !5125
  %major11 = getelementptr inbounds %struct.gb_control_version_request, %struct.gb_control_version_request* %request, i32 0, i32 0, !dbg !5125
  %15 = load i8, i8* %major11, align 1, !dbg !5125
  %conv12 = zext i8 %15 to i32, !dbg !5125
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i64 0, i64 0), i32 %conv10, i32 %conv12) #8, !dbg !5125
  store i32 -524, i32* %retval, align 4, !dbg !5127
  br label %return, !dbg !5127

if.end13:                                         ; preds = %if.end
  %major14 = getelementptr inbounds %struct.gb_control_version_response, %struct.gb_control_version_response* %response, i32 0, i32 0, !dbg !5128
  %16 = load i8, i8* %major14, align 1, !dbg !5128
  %17 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5129
  %protocol_major = getelementptr inbounds %struct.gb_control, %struct.gb_control* %17, i32 0, i32 3, !dbg !5130
  store i8 %16, i8* %protocol_major, align 8, !dbg !5131
  %minor15 = getelementptr inbounds %struct.gb_control_version_response, %struct.gb_control_version_response* %response, i32 0, i32 1, !dbg !5132
  %18 = load i8, i8* %minor15, align 1, !dbg !5132
  %19 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5133
  %protocol_minor = getelementptr inbounds %struct.gb_control, %struct.gb_control* %19, i32 0, i32 4, !dbg !5134
  store i8 %18, i8* %protocol_minor, align 1, !dbg !5135
  store i32 0, i32* %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

return:                                           ; preds = %if.end13, %if.then7, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5137
  ret i32 %20, !dbg !5137
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @gb_connection_disable(%struct.gb_connection*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_control_disable(%struct.gb_control* %control) #0 !dbg !5138 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5143
  %intf = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 1, !dbg !5145
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5145
  %disconnected = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %1, i32 0, i32 18, !dbg !5146
  %2 = load i8, i8* %disconnected, align 8, !dbg !5146
  %tobool = trunc i8 %2 to i1, !dbg !5146
  br i1 %tobool, label %if.then, label %if.else, !dbg !5147

if.then:                                          ; preds = %entry
  %3 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5148
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %3, i32 0, i32 2, !dbg !5149
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5149
  call void @gb_connection_disable_forced(%struct.gb_connection* %4) #7, !dbg !5150
  br label %if.end, !dbg !5150

if.else:                                          ; preds = %entry
  %5 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5151
  %connection1 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %5, i32 0, i32 2, !dbg !5152
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection1, align 8, !dbg !5152
  call void @gb_connection_disable(%struct.gb_connection* %6) #7, !dbg !5153
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5154
}

; Function Attrs: noredzone
declare dso_local void @gb_connection_disable_forced(%struct.gb_connection*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_suspend(%struct.gb_control* %control) #0 !dbg !5155 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5158
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !5159
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5159
  call void @gb_connection_disable(%struct.gb_connection* %1) #7, !dbg !5160
  ret i32 0, !dbg !5161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_resume(%struct.gb_control* %control) #0 !dbg !5162 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5165, metadata !DIExpression()), !dbg !5166
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5167
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !5168
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5168
  %call = call i32 @gb_connection_enable_tx(%struct.gb_connection* %1) #7, !dbg !5169
  store i32 %call, i32* %ret, align 4, !dbg !5170
  %2 = load i32, i32* %ret, align 4, !dbg !5171
  %tobool = icmp ne i32 %2, 0, !dbg !5171
  br i1 %tobool, label %if.then, label %if.end, !dbg !5173

if.then:                                          ; preds = %entry
  %3 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5174
  %connection1 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %3, i32 0, i32 2, !dbg !5174
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection1, align 8, !dbg !5174
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 1, !dbg !5174
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5174
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 0, !dbg !5174
  %6 = load i32, i32* %ret, align 4, !dbg !5174
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i32 %6) #8, !dbg !5174
  %7 = load i32, i32* %ret, align 4, !dbg !5176
  store i32 %7, i32* %retval, align 4, !dbg !5177
  br label %return, !dbg !5177

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5178
  br label %return, !dbg !5178

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5179
  ret i32 %8, !dbg !5179
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_control_add(%struct.gb_control* %control) #0 !dbg !5180 {
entry:
  %retval = alloca i32, align 4
  %control.addr = alloca %struct.gb_control*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5181, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5185
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 0, !dbg !5186
  %call = call i32 @device_add(%struct.device* %dev) #7, !dbg !5187
  store i32 %call, i32* %ret, align 4, !dbg !5188
  %1 = load i32, i32* %ret, align 4, !dbg !5189
  %tobool = icmp ne i32 %1, 0, !dbg !5189
  br i1 %tobool, label %if.then, label %if.end, !dbg !5191

if.then:                                          ; preds = %entry
  %2 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5192
  %dev1 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %2, i32 0, i32 0, !dbg !5192
  %3 = load i32, i32* %ret, align 4, !dbg !5192
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i32 %3) #8, !dbg !5192
  %4 = load i32, i32* %ret, align 4, !dbg !5194
  store i32 %4, i32* %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5196
  br label %return, !dbg !5196

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5197
  ret i32 %5, !dbg !5197
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_control_del(%struct.gb_control* %control) #0 !dbg !5198 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5199, metadata !DIExpression()), !dbg !5200
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5201
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 0, !dbg !5203
  %call = call i32 @device_is_registered(%struct.device* %dev) #7, !dbg !5204
  %tobool = icmp ne i32 %call, 0, !dbg !5204
  br i1 %tobool, label %if.then, label %if.end, !dbg !5205

if.then:                                          ; preds = %entry
  %1 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5206
  %dev1 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %1, i32 0, i32 0, !dbg !5207
  call void @device_del(%struct.device* %dev1) #7, !dbg !5208
  br label %if.end, !dbg !5208

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_is_registered(%struct.device* %dev) #0 !dbg !5210 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5213
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !5214
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 7, !dbg !5215
  %bf.load = load i8, i8* %state_in_sysfs, align 4, !dbg !5215
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5215
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5215
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5215
  ret i32 %bf.cast, !dbg !5216
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_control* @gb_control_get(%struct.gb_control* %control) #0 !dbg !5217 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5222
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 0, !dbg !5223
  %call = call %struct.device* @get_device(%struct.device* %dev) #7, !dbg !5224
  %1 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5225
  ret %struct.gb_control* %1, !dbg !5226
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_control_put(%struct.gb_control* %control) #0 !dbg !5227 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5230
  %dev = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 0, !dbg !5231
  call void @put_device(%struct.device* %dev) #7, !dbg !5232
  ret void, !dbg !5233
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_control_mode_switch_prepare(%struct.gb_control* %control) #0 !dbg !5234 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5237
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !5238
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5238
  call void @gb_connection_mode_switch_prepare(%struct.gb_connection* %1) #7, !dbg !5239
  ret void, !dbg !5240
}

; Function Attrs: noredzone
declare dso_local void @gb_connection_mode_switch_prepare(%struct.gb_connection*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_control_mode_switch_complete(%struct.gb_control* %control) #0 !dbg !5241 {
entry:
  %control.addr = alloca %struct.gb_control*, align 8
  store %struct.gb_control* %control, %struct.gb_control** %control.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  %0 = load %struct.gb_control*, %struct.gb_control** %control.addr, align 8, !dbg !5244
  %connection = getelementptr inbounds %struct.gb_control, %struct.gb_control* %0, i32 0, i32 2, !dbg !5245
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5245
  call void @gb_connection_mode_switch_complete(%struct.gb_connection* %1) #7, !dbg !5246
  ret void, !dbg !5247
}

; Function Attrs: noredzone
declare dso_local void @gb_connection_mode_switch_complete(%struct.gb_connection*) #3

; Function Attrs: noredzone
declare dso_local i32 @gb_operation_sync_timeout(%struct.gb_connection*, i32, i8*, i32, i8*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @gb_operation_request_send_sync_timeout(%struct.gb_operation*, i32) #3

; Function Attrs: noredzone
declare dso_local void @gb_connection_destroy(%struct.gb_connection*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5248 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5252, metadata !DIExpression()), !dbg !5257
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5259, metadata !DIExpression()), !dbg !5260
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  %0 = load i64, i64* %size.addr, align 8, !dbg !5263
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5265
  br i1 %1, label %if.then, label %if.end447, !dbg !5266

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5267
  %tobool = icmp ne i64 %2, 0, !dbg !5267
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5270

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5271
  br label %return, !dbg !5271

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5272
  %cmp = icmp ult i64 %3, 4096, !dbg !5274
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5275

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5276
  br label %return, !dbg !5276

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub = sub i64 %4, 1, !dbg !5277
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5277
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5277

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub4 = sub i64 %6, 1, !dbg !5277
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5277
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5277

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub6 = sub i64 %8, 1, !dbg !5277
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5277
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5277

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5277

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub9 = sub i64 %9, 1, !dbg !5277
  %and = and i64 %sub9, -9223372036854775808, !dbg !5277
  %tobool10 = icmp ne i64 %and, 0, !dbg !5277
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5277

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5277

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub13 = sub i64 %10, 1, !dbg !5277
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5277
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5277
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5277

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5277

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub18 = sub i64 %11, 1, !dbg !5277
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5277
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5277
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5277

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5277

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub23 = sub i64 %12, 1, !dbg !5277
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5277
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5277
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5277

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5277

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub28 = sub i64 %13, 1, !dbg !5277
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5277
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5277
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5277

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5277

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub33 = sub i64 %14, 1, !dbg !5277
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5277
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5277
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5277

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5277

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub38 = sub i64 %15, 1, !dbg !5277
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5277
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5277
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5277

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5277

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub43 = sub i64 %16, 1, !dbg !5277
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5277
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5277
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5277

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5277

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub48 = sub i64 %17, 1, !dbg !5277
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5277
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5277
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5277

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5277

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub53 = sub i64 %18, 1, !dbg !5277
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5277
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5277
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5277

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5277

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub58 = sub i64 %19, 1, !dbg !5277
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5277
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5277
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5277

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5277

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub63 = sub i64 %20, 1, !dbg !5277
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5277
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5277
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5277

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5277

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub68 = sub i64 %21, 1, !dbg !5277
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5277
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5277
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5277

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5277

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub73 = sub i64 %22, 1, !dbg !5277
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5277
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5277
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5277

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5277

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub78 = sub i64 %23, 1, !dbg !5277
  %and79 = and i64 %sub78, 562949953421312, !dbg !5277
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5277
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5277

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5277

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub83 = sub i64 %24, 1, !dbg !5277
  %and84 = and i64 %sub83, 281474976710656, !dbg !5277
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5277
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5277

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5277

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub88 = sub i64 %25, 1, !dbg !5277
  %and89 = and i64 %sub88, 140737488355328, !dbg !5277
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5277
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5277

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5277

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub93 = sub i64 %26, 1, !dbg !5277
  %and94 = and i64 %sub93, 70368744177664, !dbg !5277
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5277
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5277

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5277

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub98 = sub i64 %27, 1, !dbg !5277
  %and99 = and i64 %sub98, 35184372088832, !dbg !5277
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5277
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5277

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5277

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub103 = sub i64 %28, 1, !dbg !5277
  %and104 = and i64 %sub103, 17592186044416, !dbg !5277
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5277
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5277

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5277

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub108 = sub i64 %29, 1, !dbg !5277
  %and109 = and i64 %sub108, 8796093022208, !dbg !5277
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5277
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5277

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5277

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub113 = sub i64 %30, 1, !dbg !5277
  %and114 = and i64 %sub113, 4398046511104, !dbg !5277
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5277
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5277

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5277

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub118 = sub i64 %31, 1, !dbg !5277
  %and119 = and i64 %sub118, 2199023255552, !dbg !5277
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5277
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5277

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5277

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub123 = sub i64 %32, 1, !dbg !5277
  %and124 = and i64 %sub123, 1099511627776, !dbg !5277
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5277
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5277

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5277

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub128 = sub i64 %33, 1, !dbg !5277
  %and129 = and i64 %sub128, 549755813888, !dbg !5277
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5277
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5277

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5277

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub133 = sub i64 %34, 1, !dbg !5277
  %and134 = and i64 %sub133, 274877906944, !dbg !5277
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5277
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5277

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5277

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub138 = sub i64 %35, 1, !dbg !5277
  %and139 = and i64 %sub138, 137438953472, !dbg !5277
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5277
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5277

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5277

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub143 = sub i64 %36, 1, !dbg !5277
  %and144 = and i64 %sub143, 68719476736, !dbg !5277
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5277
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5277

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5277

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub148 = sub i64 %37, 1, !dbg !5277
  %and149 = and i64 %sub148, 34359738368, !dbg !5277
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5277
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5277

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5277

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub153 = sub i64 %38, 1, !dbg !5277
  %and154 = and i64 %sub153, 17179869184, !dbg !5277
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5277
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5277

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5277

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub158 = sub i64 %39, 1, !dbg !5277
  %and159 = and i64 %sub158, 8589934592, !dbg !5277
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5277
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5277

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5277

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub163 = sub i64 %40, 1, !dbg !5277
  %and164 = and i64 %sub163, 4294967296, !dbg !5277
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5277
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5277

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5277

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub168 = sub i64 %41, 1, !dbg !5277
  %and169 = and i64 %sub168, 2147483648, !dbg !5277
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5277
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5277

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5277

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub173 = sub i64 %42, 1, !dbg !5277
  %and174 = and i64 %sub173, 1073741824, !dbg !5277
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5277
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5277

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5277

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub178 = sub i64 %43, 1, !dbg !5277
  %and179 = and i64 %sub178, 536870912, !dbg !5277
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5277
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5277

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5277

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub183 = sub i64 %44, 1, !dbg !5277
  %and184 = and i64 %sub183, 268435456, !dbg !5277
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5277
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5277

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5277

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub188 = sub i64 %45, 1, !dbg !5277
  %and189 = and i64 %sub188, 134217728, !dbg !5277
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5277
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5277

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5277

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub193 = sub i64 %46, 1, !dbg !5277
  %and194 = and i64 %sub193, 67108864, !dbg !5277
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5277
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5277

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5277

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub198 = sub i64 %47, 1, !dbg !5277
  %and199 = and i64 %sub198, 33554432, !dbg !5277
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5277
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5277

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5277

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub203 = sub i64 %48, 1, !dbg !5277
  %and204 = and i64 %sub203, 16777216, !dbg !5277
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5277
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5277

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5277

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub208 = sub i64 %49, 1, !dbg !5277
  %and209 = and i64 %sub208, 8388608, !dbg !5277
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5277
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5277

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5277

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub213 = sub i64 %50, 1, !dbg !5277
  %and214 = and i64 %sub213, 4194304, !dbg !5277
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5277
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5277

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5277

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub218 = sub i64 %51, 1, !dbg !5277
  %and219 = and i64 %sub218, 2097152, !dbg !5277
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5277
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5277

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5277

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub223 = sub i64 %52, 1, !dbg !5277
  %and224 = and i64 %sub223, 1048576, !dbg !5277
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5277
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5277

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5277

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub228 = sub i64 %53, 1, !dbg !5277
  %and229 = and i64 %sub228, 524288, !dbg !5277
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5277
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5277

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5277

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub233 = sub i64 %54, 1, !dbg !5277
  %and234 = and i64 %sub233, 262144, !dbg !5277
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5277
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5277

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5277

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub238 = sub i64 %55, 1, !dbg !5277
  %and239 = and i64 %sub238, 131072, !dbg !5277
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5277
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5277

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5277

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub243 = sub i64 %56, 1, !dbg !5277
  %and244 = and i64 %sub243, 65536, !dbg !5277
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5277
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5277

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5277

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub248 = sub i64 %57, 1, !dbg !5277
  %and249 = and i64 %sub248, 32768, !dbg !5277
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5277
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5277

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5277

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub253 = sub i64 %58, 1, !dbg !5277
  %and254 = and i64 %sub253, 16384, !dbg !5277
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5277
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5277

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5277

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub258 = sub i64 %59, 1, !dbg !5277
  %and259 = and i64 %sub258, 8192, !dbg !5277
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5277
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5277

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5277

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub263 = sub i64 %60, 1, !dbg !5277
  %and264 = and i64 %sub263, 4096, !dbg !5277
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5277
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5277

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5277

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub268 = sub i64 %61, 1, !dbg !5277
  %and269 = and i64 %sub268, 2048, !dbg !5277
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5277
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5277

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5277

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub273 = sub i64 %62, 1, !dbg !5277
  %and274 = and i64 %sub273, 1024, !dbg !5277
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5277
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5277

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5277

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub278 = sub i64 %63, 1, !dbg !5277
  %and279 = and i64 %sub278, 512, !dbg !5277
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5277
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5277

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5277

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub283 = sub i64 %64, 1, !dbg !5277
  %and284 = and i64 %sub283, 256, !dbg !5277
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5277
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5277

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5277

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub288 = sub i64 %65, 1, !dbg !5277
  %and289 = and i64 %sub288, 128, !dbg !5277
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5277
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5277

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5277

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub293 = sub i64 %66, 1, !dbg !5277
  %and294 = and i64 %sub293, 64, !dbg !5277
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5277
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5277

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5277

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub298 = sub i64 %67, 1, !dbg !5277
  %and299 = and i64 %sub298, 32, !dbg !5277
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5277
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5277

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5277

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub303 = sub i64 %68, 1, !dbg !5277
  %and304 = and i64 %sub303, 16, !dbg !5277
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5277
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5277

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5277

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub308 = sub i64 %69, 1, !dbg !5277
  %and309 = and i64 %sub308, 8, !dbg !5277
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5277
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5277

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5277

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub313 = sub i64 %70, 1, !dbg !5277
  %and314 = and i64 %sub313, 4, !dbg !5277
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5277
  %71 = zext i1 %tobool315 to i64, !dbg !5277
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5277
  br label %cond.end, !dbg !5277

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5277
  br label %cond.end317, !dbg !5277

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5277
  br label %cond.end319, !dbg !5277

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5277
  br label %cond.end321, !dbg !5277

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5277
  br label %cond.end323, !dbg !5277

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5277
  br label %cond.end325, !dbg !5277

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5277
  br label %cond.end327, !dbg !5277

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5277
  br label %cond.end329, !dbg !5277

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5277
  br label %cond.end331, !dbg !5277

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5277
  br label %cond.end333, !dbg !5277

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5277
  br label %cond.end335, !dbg !5277

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5277
  br label %cond.end337, !dbg !5277

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5277
  br label %cond.end339, !dbg !5277

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5277
  br label %cond.end341, !dbg !5277

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5277
  br label %cond.end343, !dbg !5277

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5277
  br label %cond.end345, !dbg !5277

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5277
  br label %cond.end347, !dbg !5277

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5277
  br label %cond.end349, !dbg !5277

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5277
  br label %cond.end351, !dbg !5277

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5277
  br label %cond.end353, !dbg !5277

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5277
  br label %cond.end355, !dbg !5277

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5277
  br label %cond.end357, !dbg !5277

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5277
  br label %cond.end359, !dbg !5277

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5277
  br label %cond.end361, !dbg !5277

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5277
  br label %cond.end363, !dbg !5277

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5277
  br label %cond.end365, !dbg !5277

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5277
  br label %cond.end367, !dbg !5277

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5277
  br label %cond.end369, !dbg !5277

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5277
  br label %cond.end371, !dbg !5277

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5277
  br label %cond.end373, !dbg !5277

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5277
  br label %cond.end375, !dbg !5277

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5277
  br label %cond.end377, !dbg !5277

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5277
  br label %cond.end379, !dbg !5277

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5277
  br label %cond.end381, !dbg !5277

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5277
  br label %cond.end383, !dbg !5277

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5277
  br label %cond.end385, !dbg !5277

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5277
  br label %cond.end387, !dbg !5277

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5277
  br label %cond.end389, !dbg !5277

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5277
  br label %cond.end391, !dbg !5277

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5277
  br label %cond.end393, !dbg !5277

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5277
  br label %cond.end395, !dbg !5277

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5277
  br label %cond.end397, !dbg !5277

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5277
  br label %cond.end399, !dbg !5277

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5277
  br label %cond.end401, !dbg !5277

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5277
  br label %cond.end403, !dbg !5277

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5277
  br label %cond.end405, !dbg !5277

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5277
  br label %cond.end407, !dbg !5277

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5277
  br label %cond.end409, !dbg !5277

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5277
  br label %cond.end411, !dbg !5277

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5277
  br label %cond.end413, !dbg !5277

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5277
  br label %cond.end415, !dbg !5277

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5277
  br label %cond.end417, !dbg !5277

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5277
  br label %cond.end419, !dbg !5277

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5277
  br label %cond.end421, !dbg !5277

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5277
  br label %cond.end423, !dbg !5277

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5277
  br label %cond.end425, !dbg !5277

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5277
  br label %cond.end427, !dbg !5277

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5277
  br label %cond.end429, !dbg !5277

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5277
  br label %cond.end431, !dbg !5277

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5277
  br label %cond.end433, !dbg !5277

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5277
  br label %cond.end435, !dbg !5277

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5277
  br label %cond.end437, !dbg !5277

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5277
  br label %cond.end440, !dbg !5277

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5277

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5277
  br label %cond.end444, !dbg !5277

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5277
  %sub443 = sub i64 %72, 1, !dbg !5277
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5277
  br label %cond.end444, !dbg !5277

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5277
  %sub446 = sub i32 %cond445, 12, !dbg !5278
  %add = add i32 %sub446, 1, !dbg !5279
  store i32 %add, i32* %retval, align 4, !dbg !5280
  br label %return, !dbg !5280

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5281
  %dec = add i64 %73, -1, !dbg !5281
  store i64 %dec, i64* %size.addr, align 8, !dbg !5281
  %74 = load i64, i64* %size.addr, align 8, !dbg !5282
  %shr = lshr i64 %74, 12, !dbg !5282
  store i64 %shr, i64* %size.addr, align 8, !dbg !5282
  %75 = load i64, i64* %size.addr, align 8, !dbg !5283
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5260
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5284
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5285
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !5284, !srcloc !5286
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5284
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5287
  %add.i = add i32 %79, 1, !dbg !5288
  store i32 %add.i, i32* %retval, align 4, !dbg !5289
  br label %return, !dbg !5289

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5290
  ret i32 %80, !dbg !5290
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5291 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5252, metadata !DIExpression()), !dbg !5295
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5259, metadata !DIExpression()), !dbg !5297
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5298, metadata !DIExpression()), !dbg !5299
  %0 = load i64, i64* %n.addr, align 8, !dbg !5300
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5297
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5301
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5302
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !5301, !srcloc !5286
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5301
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5303
  %add.i = add i32 %4, 1, !dbg !5304
  %sub = sub i32 %add.i, 1, !dbg !5305
  ret i32 %sub, !dbg !5306
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5307 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5319
  ret i8* %0, !dbg !5320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @vendor_string_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5321 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %control = alloca %struct.gb_control*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_control*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !5328, metadata !DIExpression()), !dbg !5329
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5330, metadata !DIExpression()), !dbg !5332
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5332
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5332
  store i8* %1, i8** %__mptr, align 8, !dbg !5332
  br label %do.body, !dbg !5332

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5333

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5332
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5332
  %3 = bitcast i8* %add.ptr to %struct.gb_control*, !dbg !5332
  store %struct.gb_control* %3, %struct.gb_control** %tmp, align 8, !dbg !5333
  %4 = load %struct.gb_control*, %struct.gb_control** %tmp, align 8, !dbg !5332
  store %struct.gb_control* %4, %struct.gb_control** %control, align 8, !dbg !5329
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5335
  %6 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !5336
  %vendor_string = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 7, !dbg !5337
  %7 = load i8*, i8** %vendor_string, align 8, !dbg !5337
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %5, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %7) #7, !dbg !5338
  %conv = sext i32 %call to i64, !dbg !5338
  ret i64 %conv, !dbg !5339
}

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @product_string_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5340 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %control = alloca %struct.gb_control*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_control*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5341, metadata !DIExpression()), !dbg !5342
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5343, metadata !DIExpression()), !dbg !5344
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5345, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !5347, metadata !DIExpression()), !dbg !5348
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5349, metadata !DIExpression()), !dbg !5351
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5351
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5351
  store i8* %1, i8** %__mptr, align 8, !dbg !5351
  br label %do.body, !dbg !5351

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5352

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5351
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5351
  %3 = bitcast i8* %add.ptr to %struct.gb_control*, !dbg !5351
  store %struct.gb_control* %3, %struct.gb_control** %tmp, align 8, !dbg !5352
  %4 = load %struct.gb_control*, %struct.gb_control** %tmp, align 8, !dbg !5351
  store %struct.gb_control* %4, %struct.gb_control** %control, align 8, !dbg !5348
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !5354
  %6 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !5355
  %product_string = getelementptr inbounds %struct.gb_control, %struct.gb_control* %6, i32 0, i32 8, !dbg !5356
  %7 = load i8*, i8** %product_string, align 8, !dbg !5356
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %5, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %7) #7, !dbg !5357
  %conv = sext i32 %call to i64, !dbg !5357
  ret i64 %conv, !dbg !5358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5359 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5366
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5367
  %1 = load i8*, i8** %name, align 8, !dbg !5367
  ret i8* %1, !dbg !5368
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4011, !4012, !4013, !4014}
!llvm.ident = !{!4015}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "greybus_control_type", scope: !2, file: !3, line: 439, type: !3317, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !3986, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/greybus/control.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !101, !108, !114, !118, !123}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_interface_type", file: !94, line: 15, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/greybus/interface.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "GB_INTERFACE_TYPE_INVALID", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNKNOWN", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "GB_INTERFACE_TYPE_DUMMY", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNIPRO", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "GB_INTERFACE_TYPE_GREYBUS", value: 4, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_connection_state", file: !102, line: 27, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/greybus/connection.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISABLED", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED_TX", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISCONNECTING", value: 3, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_state", file: !109, line: 21, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/greybus/svc.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "GB_SVC_STATE_RESET", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "GB_SVC_STATE_PROTOCOL_VERSION", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "GB_SVC_STATE_SVC_HELLO", value: 2, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_watchdog_bite", file: !109, line: 27, baseType: !7, size: 32, elements: !115)
!115 = !{!116, !117}
!116 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_RESET_UNIPRO", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_PANIC_KERNEL", value: 1, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 10, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !124, line: 305, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!130 = !{!131, !132, !794, !3849, !677, !3761, !254, !239}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_bundle", file: !134, line: 20, size: 6144, elements: !135)
!134 = !DIFile(filename: "./include/linux/greybus/bundle.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !3755, !3969, !3970, !3971, !3972, !3973, !3974, !3982, !3983, !3985}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !133, file: !134, line: 21, baseType: !137, size: 5568)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !138)
!138 = !{!139, !3308, !3310, !3313, !3314, !3365, !3456, !3457, !3458, !3459, !3460, !3469, !3574, !3587, !3590, !3591, !3595, !3597, !3598, !3599, !3603, !3609, !3610, !3613, !3617, !3707, !3708, !3709, !3710, !3711, !3743, !3744, !3745, !3748, !3751, !3752, !3753, !3754}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !137, file: !73, line: 462, baseType: !140, size: 512)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !141, line: 64, size: 512, elements: !142)
!141 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !147, !154, !156, !217, !3159, !3298, !3303, !3304, !3305, !3306, !3307}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 65, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !140, file: !141, line: 66, baseType: !148, size: 128, offset: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !149, line: 178, size: 128, elements: !150)
!149 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !149, line: 179, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !149, line: 179, baseType: !152, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !140, file: !141, line: 67, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !140, file: !141, line: 68, baseType: !157, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !141, line: 192, size: 704, elements: !159)
!159 = !{!160, !161, !177, !178}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !158, file: !141, line: 193, baseType: !148, size: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !158, file: !141, line: 194, baseType: !162, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !163, line: 83, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !163, line: 71, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !163, line: 72, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !163, line: 72, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !167, file: !163, line: 73, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !163, line: 20, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !170, file: !163, line: 21, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !174, line: 25, baseType: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 25, elements: !176)
!176 = !{}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !158, file: !141, line: 195, baseType: !140, size: 512, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !158, file: !141, line: 196, baseType: !179, size: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !141, line: 156, size: 192, elements: !182)
!182 = !{!183, !189, !194}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !181, file: !141, line: 157, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !157, !155}
!188 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !141, line: 158, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!144, !157, !155}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !181, file: !141, line: 159, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!188, !157, !155, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !141, line: 148, size: 20736, elements: !201)
!201 = !{!202, !207, !211, !212, !216}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !200, file: !141, line: 149, baseType: !203, size: 192)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 192, elements: !205)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!205 = !{!206}
!206 = !DISubrange(count: 3)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !200, file: !141, line: 150, baseType: !208, size: 4096, offset: 192)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 4096, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !200, file: !141, line: 151, baseType: !188, size: 32, offset: 4288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !200, file: !141, line: 152, baseType: !213, size: 16384, offset: 4320)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 16384, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 2048)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !200, file: !141, line: 153, baseType: !188, size: 32, offset: 20704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !140, file: !141, line: 69, baseType: !218, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !141, line: 138, size: 448, elements: !220)
!220 = !{!221, !225, !255, !257, !3121, !3149, !3153}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !219, file: !141, line: 139, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !155}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !219, file: !141, line: 140, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !229, line: 230, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !247}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !228, file: !229, line: 231, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !155, !240, !204}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !149, line: 60, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !237, line: 73, baseType: !238)
!237 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !237, line: 15, baseType: !239)
!239 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !229, line: 30, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !229, line: 31, baseType: !144, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !241, file: !229, line: 32, baseType: !245, size: 16, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !149, line: 19, baseType: !246)
!246 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !228, file: !229, line: 232, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!235, !155, !240, !144, !251}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 55, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !237, line: 72, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !237, line: 16, baseType: !254)
!254 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !219, file: !141, line: 141, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !219, file: !141, line: 142, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !229, line: 84, size: 320, elements: !262)
!262 = !{!263, !264, !268, !3118, !3119}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !229, line: 85, baseType: !144, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !261, file: !229, line: 86, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!245, !155, !240, !188}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !261, file: !229, line: 88, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!245, !155, !272, !188}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !229, line: 168, size: 448, elements: !274)
!274 = !{!275, !276, !277, !278, !3113, !3114}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !273, file: !229, line: 169, baseType: !241, size: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !229, line: 170, baseType: !251, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !273, file: !229, line: 171, baseType: !131, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !273, file: !229, line: 172, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!235, !282, !155, !272, !204, !461, !251}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !284)
!284 = !{!285, !303, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3096, !3097, !3106, !3107, !3108, !3109, !3110, !3111, !3112}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !283, file: !44, line: 920, baseType: !286, size: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !44, line: 917, size: 128, elements: !287)
!287 = !{!288, !294}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !286, file: !44, line: 918, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !290, line: 58, size: 64, elements: !291)
!290 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !290, line: 59, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !286, file: !44, line: 919, baseType: !295, size: 128, align: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !149, line: 216, size: 128, align: 64, elements: !296)
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !149, line: 217, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !295, file: !149, line: 218, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !298}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !283, file: !44, line: 921, baseType: !304, size: 128, offset: 128)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !305, line: 8, size: 128, elements: !306)
!305 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !304, file: !305, line: 9, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !310, line: 18, flags: DIFlagFwdDecl)
!310 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !304, file: !305, line: 10, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !310, line: 89, size: 1536, elements: !314)
!314 = !{!315, !316, !326, !334, !335, !358, !3046, !3048, !3060, !3061, !3062, !3063, !3064, !3070, !3071, !3072}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !313, file: !310, line: 91, baseType: !7, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !313, file: !310, line: 92, baseType: !317, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !318, line: 277, baseType: !319)
!318 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !318, line: 277, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !319, file: !318, line: 277, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !318, line: 70, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !318, line: 65, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !323, file: !318, line: 66, baseType: !7, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !313, file: !310, line: 93, baseType: !327, size: 128, offset: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !328, line: 38, size: 128, elements: !329)
!328 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!329 = !{!330, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !328, line: 39, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !327, file: !328, line: 39, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !313, file: !310, line: 94, baseType: !312, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !313, file: !310, line: 95, baseType: !336, size: 128, offset: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !310, line: 47, size: 128, elements: !337)
!337 = !{!338, !354}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !310, line: 48, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !310, line: 48, size: 64, elements: !340)
!340 = !{!341, !350}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !310, line: 49, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !310, line: 49, size: 64, elements: !343)
!343 = !{!344, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !342, file: !310, line: 50, baseType: !345, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !346, line: 21, baseType: !347)
!346 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !348, line: 27, baseType: !7)
!348 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !342, file: !310, line: 50, baseType: !345, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !339, file: !310, line: 52, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !346, line: 23, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !348, line: 31, baseType: !353)
!353 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !310, line: 54, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !313, file: !310, line: 96, baseType: !359, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !361)
!361 = !{!362, !363, !364, !372, !379, !380, !528, !2757, !2758, !2759, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !3022, !3030, !3031, !3032, !3042, !3043, !3044, !3045}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !360, file: !44, line: 611, baseType: !245, size: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !360, file: !44, line: 612, baseType: !246, size: 16, offset: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !360, file: !44, line: 613, baseType: !365, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !366, line: 23, baseType: !367)
!366 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 21, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !367, file: !366, line: 22, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !149, line: 32, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !237, line: 49, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !360, file: !44, line: 614, baseType: !373, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !366, line: 28, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 26, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !374, file: !366, line: 27, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !149, line: 33, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !237, line: 50, baseType: !7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !360, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !360, file: !44, line: 622, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !384)
!384 = !{!385, !389, !402, !406, !412, !416, !422, !426, !430, !434, !438, !439, !445, !449, !475, !504, !508, !514, !519, !523, !524}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !383, file: !44, line: 1865, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!312, !359, !312, !7}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !383, file: !44, line: 1866, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!144, !312, !359, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !395, line: 10, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !394, file: !395, line: 11, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !131}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !394, file: !395, line: 12, baseType: !131, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !383, file: !44, line: 1867, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!188, !359, !188}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !383, file: !44, line: 1868, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !359, !188}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !383, file: !44, line: 1870, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!188, !312, !204, !188}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !383, file: !44, line: 1872, baseType: !417, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!188, !359, !312, !245, !420}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !149, line: 30, baseType: !421)
!421 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !383, file: !44, line: 1873, baseType: !423, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!188, !312, !359, !312}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !383, file: !44, line: 1874, baseType: !427, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!188, !359, !312}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !383, file: !44, line: 1875, baseType: !431, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!188, !359, !312, !144}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !383, file: !44, line: 1876, baseType: !435, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!188, !359, !312, !245}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !383, file: !44, line: 1877, baseType: !427, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !383, file: !44, line: 1878, baseType: !440, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!188, !359, !312, !245, !443}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !149, line: 16, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !149, line: 13, baseType: !345)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !383, file: !44, line: 1879, baseType: !446, size: 64, offset: 768)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!188, !359, !312, !359, !312, !7}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !383, file: !44, line: 1881, baseType: !450, size: 64, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!188, !312, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !464, !472, !473, !474}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !454, file: !44, line: 220, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !454, file: !44, line: 221, baseType: !245, size: 16, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !454, file: !44, line: 222, baseType: !365, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !454, file: !44, line: 223, baseType: !373, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !454, file: !44, line: 224, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !149, line: 46, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !237, line: 88, baseType: !463)
!463 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !454, file: !44, line: 225, baseType: !465, size: 128, offset: 192)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !466, line: 13, size: 128, elements: !467)
!466 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!467 = !{!468, !471}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !465, file: !466, line: 14, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !466, line: 8, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !348, line: 30, baseType: !463)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !465, file: !466, line: 15, baseType: !239, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !454, file: !44, line: 226, baseType: !465, size: 128, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !454, file: !44, line: 227, baseType: !465, size: 128, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !454, file: !44, line: 234, baseType: !282, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !383, file: !44, line: 1882, baseType: !476, size: 64, offset: 896)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!188, !479, !481, !345, !7}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !483, line: 22, size: 1152, elements: !484)
!483 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!484 = !{!485, !486, !487, !488, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !482, file: !483, line: 23, baseType: !345, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !482, file: !483, line: 24, baseType: !245, size: 16, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !482, file: !483, line: 25, baseType: !7, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !482, file: !483, line: 26, baseType: !489, size: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !149, line: 104, baseType: !345)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !482, file: !483, line: 27, baseType: !351, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !482, file: !483, line: 28, baseType: !351, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !482, file: !483, line: 37, baseType: !351, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !482, file: !483, line: 38, baseType: !443, size: 32, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !482, file: !483, line: 39, baseType: !443, size: 32, offset: 352)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !482, file: !483, line: 40, baseType: !365, size: 32, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !482, file: !483, line: 41, baseType: !373, size: 32, offset: 416)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !482, file: !483, line: 42, baseType: !461, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !482, file: !483, line: 43, baseType: !465, size: 128, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !482, file: !483, line: 44, baseType: !465, size: 128, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !482, file: !483, line: 45, baseType: !465, size: 128, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !482, file: !483, line: 46, baseType: !465, size: 128, offset: 896)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !482, file: !483, line: 47, baseType: !351, size: 64, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !482, file: !483, line: 48, baseType: !351, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !383, file: !44, line: 1883, baseType: !505, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!235, !312, !204, !251}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !383, file: !44, line: 1884, baseType: !509, size: 64, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!188, !359, !512, !351, !351}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !383, file: !44, line: 1886, baseType: !515, size: 64, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!188, !359, !518, !188}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !383, file: !44, line: 1887, baseType: !520, size: 64, offset: 1152)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!188, !359, !312, !282, !7, !245}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !383, file: !44, line: 1890, baseType: !435, size: 64, offset: 1216)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !383, file: !44, line: 1891, baseType: !525, size: 64, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!188, !359, !410, !188}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !360, file: !44, line: 623, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !587, !2364, !2446, !2529, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2545, !2549, !2550, !2553, !2554, !2557, !2558, !2559, !2600, !2627, !2628, !2629, !2630, !2631, !2632, !2635, !2637, !2644, !2645, !2647, !2648, !2649, !2708, !2709, !2724, !2725, !2726, !2727, !2728, !2731, !2732, !2733, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !530, file: !44, line: 1417, baseType: !148, size: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !530, file: !44, line: 1418, baseType: !443, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !530, file: !44, line: 1419, baseType: !357, size: 8, offset: 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !530, file: !44, line: 1420, baseType: !254, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !530, file: !44, line: 1421, baseType: !461, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !530, file: !44, line: 1422, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !540)
!540 = !{!541, !542, !543, !550, !554, !558, !562, !566, !567, !577, !580, !581, !582, !584, !585, !586}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !539, file: !44, line: 2229, baseType: !144, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !539, file: !44, line: 2230, baseType: !188, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !539, file: !44, line: 2238, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!188, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !549, line: 28, flags: DIFlagFwdDecl)
!549 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !539, file: !44, line: 2239, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !539, file: !44, line: 2240, baseType: !555, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!312, !538, !188, !144, !131}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !539, file: !44, line: 2242, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !529}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !539, file: !44, line: 2243, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !565, line: 76, flags: DIFlagFwdDecl)
!565 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !44, line: 2244, baseType: !538, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !539, file: !44, line: 2245, baseType: !568, size: 64, offset: 512)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !149, line: 182, size: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !568, file: !149, line: 183, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !149, line: 186, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !572, file: !149, line: 187, baseType: !571, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !572, file: !149, line: 187, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !539, file: !44, line: 2247, baseType: !578, offset: 576)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !579, line: 187, elements: !176)
!579 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !539, file: !44, line: 2248, baseType: !578, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !539, file: !44, line: 2249, baseType: !578, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !539, file: !44, line: 2250, baseType: !583, offset: 576)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, elements: !205)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !539, file: !44, line: 2252, baseType: !578, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !539, file: !44, line: 2253, baseType: !578, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !539, file: !44, line: 2254, baseType: !578, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !530, file: !44, line: 1423, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !591)
!591 = !{!592, !596, !600, !601, !605, !611, !615, !616, !617, !621, !625, !626, !627, !628, !634, !639, !640, !647, !648, !649, !650, !2348, !2363}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !590, file: !44, line: 1936, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!359, !529}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !590, file: !44, line: 1937, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !359}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !590, file: !44, line: 1938, baseType: !597, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !590, file: !44, line: 1940, baseType: !602, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !359, !188}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !590, file: !44, line: 1941, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!188, !359, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !590, file: !44, line: 1942, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!188, !359}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !590, file: !44, line: 1943, baseType: !597, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !590, file: !44, line: 1944, baseType: !559, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !590, file: !44, line: 1945, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!188, !529, !188}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !590, file: !44, line: 1946, baseType: !622, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!188, !529}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !590, file: !44, line: 1947, baseType: !622, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !590, file: !44, line: 1948, baseType: !622, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !590, file: !44, line: 1949, baseType: !622, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !590, file: !44, line: 1950, baseType: !629, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!188, !312, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !590, file: !44, line: 1951, baseType: !635, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!188, !529, !638, !204}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !590, file: !44, line: 1952, baseType: !559, size: 64, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !590, file: !44, line: 1954, baseType: !641, size: 64, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!188, !644, !312}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !646, line: 539, flags: DIFlagFwdDecl)
!646 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !590, file: !44, line: 1955, baseType: !641, size: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !590, file: !44, line: 1956, baseType: !641, size: 64, offset: 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !590, file: !44, line: 1957, baseType: !641, size: 64, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !590, file: !44, line: 1963, baseType: !651, size: 64, offset: 1280)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!188, !529, !654, !677}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !656, line: 68, size: 512, align: 128, elements: !657)
!656 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!657 = !{!658, !659, !2340, !2347}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !656, line: 69, baseType: !254, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 77, baseType: !660, size: 320, offset: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 77, size: 320, elements: !661)
!661 = !{!662, !850, !855, !883, !891, !897, !2271, !2339}
!662 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 78, baseType: !663, size: 320)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 78, size: 320, elements: !664)
!664 = !{!665, !666, !848, !849}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !663, file: !656, line: 84, baseType: !148, size: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !663, file: !656, line: 86, baseType: !667, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !669)
!669 = !{!670, !671, !679, !680, !685, !700, !716, !717, !718, !719, !841, !842, !845, !846, !847}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !668, file: !44, line: 452, baseType: !359, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !668, file: !44, line: 453, baseType: !672, size: 128, offset: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !673, line: 292, size: 128, elements: !674)
!673 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!674 = !{!675, !676, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !672, file: !673, line: 293, baseType: !162)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !672, file: !673, line: 295, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !149, line: 148, baseType: !7)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !672, file: !673, line: 296, baseType: !131, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !668, file: !44, line: 454, baseType: !677, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !668, file: !44, line: 455, baseType: !681, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !149, line: 168, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 166, size: 32, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !682, file: !149, line: 167, baseType: !188, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !668, file: !44, line: 460, baseType: !686, size: 128, offset: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !687, line: 125, size: 128, elements: !688)
!687 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !699}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !686, file: !687, line: 126, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !687, line: 31, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !690, file: !687, line: 32, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !687, line: 24, size: 192, align: 64, elements: !695)
!695 = !{!696, !697, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !694, file: !687, line: 25, baseType: !254, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !694, file: !687, line: 26, baseType: !693, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !694, file: !687, line: 27, baseType: !693, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !686, file: !687, line: 127, baseType: !693, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !668, file: !44, line: 461, baseType: !701, size: 256, offset: 384)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !702, line: 35, size: 256, elements: !703)
!702 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!703 = !{!704, !712, !713, !715}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !701, file: !702, line: 36, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !706, line: 13, baseType: !707)
!706 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !149, line: 175, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 173, size: 64, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !708, file: !149, line: 174, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !346, line: 22, baseType: !470)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !701, file: !702, line: 42, baseType: !705, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !701, file: !702, line: 46, baseType: !714, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !163, line: 29, baseType: !170)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !701, file: !702, line: 47, baseType: !148, size: 128, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !668, file: !44, line: 462, baseType: !254, size: 64, offset: 640)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !668, file: !44, line: 463, baseType: !254, size: 64, offset: 704)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !668, file: !44, line: 464, baseType: !254, size: 64, offset: 768)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !668, file: !44, line: 465, baseType: !720, size: 64, offset: 832)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !723)
!723 = !{!724, !728, !732, !736, !740, !744, !750, !756, !760, !765, !769, !773, !777, !805, !809, !815, !816, !817, !821, !826, !830, !837}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !722, file: !44, line: 368, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!188, !654, !609}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !722, file: !44, line: 369, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!188, !282, !654}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !722, file: !44, line: 372, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!188, !667, !609}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !722, file: !44, line: 375, baseType: !737, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!188, !654}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !722, file: !44, line: 381, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!188, !282, !667, !152, !7}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !722, file: !44, line: 383, baseType: !745, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !722, file: !44, line: 385, baseType: !751, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!188, !282, !667, !461, !7, !7, !754, !755}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !722, file: !44, line: 388, baseType: !757, size: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!188, !282, !667, !461, !7, !7, !654, !131}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !722, file: !44, line: 393, baseType: !761, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!764, !667, !764}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !149, line: 125, baseType: !351)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !722, file: !44, line: 394, baseType: !766, size: 64, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !654, !7, !7}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !722, file: !44, line: 395, baseType: !770, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!188, !654, !677}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !722, file: !44, line: 396, baseType: !774, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !654}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !722, file: !44, line: 397, baseType: !778, size: 64, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!235, !781, !803}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !783)
!783 = !{!784, !785, !786, !790, !791, !792, !795, !796}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !782, file: !44, line: 321, baseType: !282, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !782, file: !44, line: 326, baseType: !461, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !782, file: !44, line: 327, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !781, !239, !239}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !782, file: !44, line: 328, baseType: !131, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !782, file: !44, line: 329, baseType: !188, size: 32, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !782, file: !44, line: 330, baseType: !793, size: 16, offset: 288)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !346, line: 19, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !348, line: 24, baseType: !246)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !782, file: !44, line: 331, baseType: !793, size: 16, offset: 304)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !44, line: 332, baseType: !797, size: 64, offset: 320)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !44, line: 332, size: 64, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !797, file: !44, line: 333, baseType: !7, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !797, file: !44, line: 334, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !722, file: !44, line: 402, baseType: !806, size: 64, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!188, !667, !654, !654, !5}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !722, file: !44, line: 404, baseType: !810, size: 64, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!420, !654, !813}
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !814, line: 305, baseType: !7)
!814 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!815 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !722, file: !44, line: 405, baseType: !774, size: 64, offset: 960)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !722, file: !44, line: 406, baseType: !737, size: 64, offset: 1024)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !722, file: !44, line: 407, baseType: !818, size: 64, offset: 1088)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!188, !654, !254, !254}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !722, file: !44, line: 409, baseType: !822, size: 64, offset: 1152)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !654, !825, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !722, file: !44, line: 410, baseType: !827, size: 64, offset: 1216)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!188, !667, !654}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !722, file: !44, line: 413, baseType: !831, size: 64, offset: 1280)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!188, !834, !282, !836}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !722, file: !44, line: 415, baseType: !838, size: 64, offset: 1344)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{null, !282}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !44, line: 466, baseType: !254, size: 64, offset: 896)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !668, file: !44, line: 467, baseType: !843, size: 32, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !844, line: 8, baseType: !345)
!844 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !668, file: !44, line: 468, baseType: !162, offset: 992)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !668, file: !44, line: 469, baseType: !148, size: 128, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !668, file: !44, line: 470, baseType: !131, size: 64, offset: 1152)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !663, file: !656, line: 87, baseType: !254, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !663, file: !656, line: 94, baseType: !254, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 96, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 96, size: 64, elements: !852)
!852 = !{!853}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !851, file: !656, line: 101, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !149, line: 143, baseType: !351)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 103, baseType: !856, size: 320)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 103, size: 320, elements: !857)
!857 = !{!858, !868, !871, !872}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !656, line: 104, baseType: !859, size: 128)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !656, line: 104, size: 128, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !859, file: !656, line: 105, baseType: !148, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !656, line: 106, baseType: !863, size: 128)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !656, line: 106, size: 128, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !863, file: !656, line: 107, baseType: !654, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !863, file: !656, line: 109, baseType: !188, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !863, file: !656, line: 110, baseType: !188, size: 32, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !856, file: !656, line: 117, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !656, line: 117, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !856, file: !656, line: 119, baseType: !131, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !656, line: 120, baseType: !873, size: 64, offset: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !656, line: 120, size: 64, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !873, file: !656, line: 121, baseType: !131, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !873, file: !656, line: 122, baseType: !254, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !656, line: 123, baseType: !878, size: 32)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !656, line: 123, size: 32, elements: !879)
!879 = !{!880, !881, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !878, file: !656, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !878, file: !656, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !878, file: !656, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 130, baseType: !884, size: 192)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 130, size: 192, elements: !885)
!885 = !{!886, !887, !888, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !884, file: !656, line: 131, baseType: !254, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !884, file: !656, line: 134, baseType: !357, size: 8, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !884, file: !656, line: 135, baseType: !357, size: 8, offset: 72)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !884, file: !656, line: 136, baseType: !681, size: 32, offset: 96)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !884, file: !656, line: 137, baseType: !7, size: 32, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 139, baseType: !892, size: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 139, size: 256, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !892, file: !656, line: 140, baseType: !254, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !892, file: !656, line: 141, baseType: !681, size: 32, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !892, file: !656, line: 143, baseType: !148, size: 128, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 145, baseType: !898, size: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 145, size: 256, elements: !899)
!899 = !{!900, !901, !903, !904, !2270}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !898, file: !656, line: 146, baseType: !254, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !898, file: !656, line: 147, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !646, line: 509, baseType: !654)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !898, file: !656, line: 148, baseType: !254, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !656, line: 149, baseType: !905, size: 64, offset: 192)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !656, line: 149, size: 64, elements: !906)
!906 = !{!907, !2269}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !905, file: !656, line: 150, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !656, line: 388, size: 7296, elements: !910)
!910 = !{!911, !2265}
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !656, line: 389, baseType: !912, size: 7296)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !656, line: 389, size: 7296, elements: !913)
!913 = !{!914, !1032, !1033, !1034, !1038, !1039, !1040, !1041, !1042, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1083, !1091, !1094, !1140, !1141, !2249, !2250, !2253, !2254, !2255, !2258, !2259, !2260, !2263, !2264}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !912, file: !656, line: 390, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !656, line: 305, size: 1472, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925, !932, !933, !938, !939, !942, !1026, !1027, !1028, !1029, !1030}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !916, file: !656, line: 308, baseType: !254, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !916, file: !656, line: 309, baseType: !254, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !916, file: !656, line: 313, baseType: !915, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !916, file: !656, line: 313, baseType: !915, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !916, file: !656, line: 315, baseType: !694, size: 192, align: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !916, file: !656, line: 323, baseType: !254, size: 64, offset: 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !916, file: !656, line: 327, baseType: !908, size: 64, offset: 512)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !916, file: !656, line: 333, baseType: !926, size: 64, offset: 576)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !646, line: 284, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !646, line: 284, size: 64, elements: !928)
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !927, file: !646, line: 284, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !931, line: 19, baseType: !254)
!931 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !916, file: !656, line: 334, baseType: !254, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !916, file: !656, line: 343, baseType: !934, size: 256, offset: 704)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !916, file: !656, line: 340, size: 256, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !934, file: !656, line: 341, baseType: !694, size: 192, align: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !934, file: !656, line: 342, baseType: !254, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !916, file: !656, line: 351, baseType: !148, size: 128, offset: 960)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !916, file: !656, line: 353, baseType: !940, size: 64, offset: 1088)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !656, line: 353, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !916, file: !656, line: 356, baseType: !943, size: 64, offset: 1152)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !946)
!946 = !{!947, !951, !952, !956, !960, !1000, !1004, !1008, !1012, !1013, !1014, !1018, !1022}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !945, file: !14, line: 558, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !915}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !945, file: !14, line: 559, baseType: !948, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !945, file: !14, line: 560, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!188, !915, !254}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !945, file: !14, line: 561, baseType: !957, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!188, !915}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !945, file: !14, line: 562, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !656, line: 682, baseType: !7)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !980, !987, !993, !994, !995, !997, !999}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !966, file: !14, line: 509, baseType: !915, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !966, file: !14, line: 511, baseType: !677, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !966, file: !14, line: 512, baseType: !254, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !966, file: !14, line: 513, baseType: !254, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !966, file: !14, line: 514, baseType: !974, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !646, line: 385, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 385, size: 64, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !976, file: !646, line: 385, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !931, line: 15, baseType: !254)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !966, file: !14, line: 516, baseType: !981, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !646, line: 359, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 359, size: 64, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !983, file: !646, line: 359, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !931, line: 16, baseType: !254)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !966, file: !14, line: 519, baseType: !988, size: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !931, line: 21, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !931, line: 21, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !989, file: !931, line: 21, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !931, line: 14, baseType: !254)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !966, file: !14, line: 521, baseType: !654, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !966, file: !14, line: 522, baseType: !654, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !966, file: !14, line: 528, baseType: !996, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !966, file: !14, line: 532, baseType: !998, size: 64, offset: 640)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !966, file: !14, line: 536, baseType: !902, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !945, file: !14, line: 563, baseType: !1001, size: 64, offset: 320)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!964, !965, !13}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !945, file: !14, line: 565, baseType: !1005, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !965, !254, !254}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !945, file: !14, line: 567, baseType: !1009, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!254, !915}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !945, file: !14, line: 571, baseType: !961, size: 64, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !945, file: !14, line: 574, baseType: !961, size: 64, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !945, file: !14, line: 579, baseType: !1015, size: 64, offset: 640)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!188, !915, !254, !131, !188, !188}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !945, file: !14, line: 585, baseType: !1019, size: 64, offset: 704)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!144, !915}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !945, file: !14, line: 615, baseType: !1023, size: 64, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!654, !915, !254}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !916, file: !656, line: 359, baseType: !254, size: 64, offset: 1216)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !916, file: !656, line: 361, baseType: !282, size: 64, offset: 1280)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !916, file: !656, line: 362, baseType: !131, size: 64, offset: 1344)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !916, file: !656, line: 365, baseType: !705, size: 64, offset: 1408)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !916, file: !656, line: 373, baseType: !1031, offset: 1472)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !656, line: 296, elements: !176)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !912, file: !656, line: 391, baseType: !690, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !912, file: !656, line: 392, baseType: !351, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !912, file: !656, line: 394, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!254, !282, !254, !254, !254, !254}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !912, file: !656, line: 398, baseType: !254, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !912, file: !656, line: 399, baseType: !254, size: 64, offset: 320)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !912, file: !656, line: 405, baseType: !254, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !912, file: !656, line: 406, baseType: !254, size: 64, offset: 448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !912, file: !656, line: 407, baseType: !1043, size: 64, offset: 512)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !646, line: 286, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !646, line: 286, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1045, file: !646, line: 286, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !931, line: 18, baseType: !254)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !912, file: !656, line: 416, baseType: !681, size: 32, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !912, file: !656, line: 428, baseType: !681, size: 32, offset: 608)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !912, file: !656, line: 437, baseType: !681, size: 32, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !912, file: !656, line: 447, baseType: !681, size: 32, offset: 672)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !912, file: !656, line: 450, baseType: !705, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !912, file: !656, line: 452, baseType: !188, size: 32, offset: 768)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !912, file: !656, line: 454, baseType: !162, offset: 800)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !912, file: !656, line: 457, baseType: !701, size: 256, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !912, file: !656, line: 459, baseType: !148, size: 128, offset: 1088)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !912, file: !656, line: 466, baseType: !254, size: 64, offset: 1216)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !912, file: !656, line: 467, baseType: !254, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !912, file: !656, line: 469, baseType: !254, size: 64, offset: 1344)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !912, file: !656, line: 470, baseType: !254, size: 64, offset: 1408)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !912, file: !656, line: 471, baseType: !707, size: 64, offset: 1472)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !912, file: !656, line: 472, baseType: !254, size: 64, offset: 1536)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !912, file: !656, line: 473, baseType: !254, size: 64, offset: 1600)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !912, file: !656, line: 474, baseType: !254, size: 64, offset: 1664)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !912, file: !656, line: 475, baseType: !254, size: 64, offset: 1728)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !912, file: !656, line: 477, baseType: !162, offset: 1792)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !912, file: !656, line: 478, baseType: !254, size: 64, offset: 1792)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !912, file: !656, line: 478, baseType: !254, size: 64, offset: 1856)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !912, file: !656, line: 478, baseType: !254, size: 64, offset: 1920)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !912, file: !656, line: 478, baseType: !254, size: 64, offset: 1984)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !912, file: !656, line: 479, baseType: !254, size: 64, offset: 2048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !912, file: !656, line: 479, baseType: !254, size: 64, offset: 2112)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !912, file: !656, line: 479, baseType: !254, size: 64, offset: 2176)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !912, file: !656, line: 480, baseType: !254, size: 64, offset: 2240)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !912, file: !656, line: 480, baseType: !254, size: 64, offset: 2304)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !912, file: !656, line: 480, baseType: !254, size: 64, offset: 2368)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !912, file: !656, line: 480, baseType: !254, size: 64, offset: 2432)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !912, file: !656, line: 482, baseType: !1080, size: 2816, offset: 2496)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 2816, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 44)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !912, file: !656, line: 488, baseType: !1084, size: 256, offset: 5312)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1085, line: 60, size: 256, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1084, file: !1085, line: 61, baseType: !1088, size: 256)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 256, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 4)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !912, file: !656, line: 490, baseType: !1092, size: 64, offset: 5568)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !656, line: 490, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !912, file: !656, line: 493, baseType: !1095, size: 896, offset: 5632)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1096, line: 53, baseType: !1097)
!1096 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 13, size: 896, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1105, !1106, !1113, !1114, !1134, !1135, !1136}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1097, file: !1096, line: 18, baseType: !351, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1097, file: !1096, line: 28, baseType: !707, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1097, file: !1096, line: 31, baseType: !701, size: 256, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1097, file: !1096, line: 32, baseType: !1103, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1096, line: 32, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1097, file: !1096, line: 37, baseType: !246, size: 16, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1097, file: !1096, line: 40, baseType: !1107, size: 192, offset: 512)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1108, line: 53, size: 192, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1107, file: !1108, line: 54, baseType: !705, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1107, file: !1108, line: 55, baseType: !162, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1107, file: !1108, line: 59, baseType: !148, size: 128, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1097, file: !1096, line: 41, baseType: !131, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1097, file: !1096, line: 42, baseType: !1115, size: 64, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1118, line: 13, size: 896, elements: !1119)
!1118 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1117, file: !1118, line: 14, baseType: !131, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1117, file: !1118, line: 15, baseType: !254, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1117, file: !1118, line: 17, baseType: !254, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1117, file: !1118, line: 17, baseType: !254, size: 64, offset: 192)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1117, file: !1118, line: 19, baseType: !239, size: 64, offset: 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1117, file: !1118, line: 21, baseType: !239, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1117, file: !1118, line: 22, baseType: !239, size: 64, offset: 384)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1117, file: !1118, line: 23, baseType: !239, size: 64, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1117, file: !1118, line: 24, baseType: !239, size: 64, offset: 512)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1117, file: !1118, line: 25, baseType: !239, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1117, file: !1118, line: 26, baseType: !239, size: 64, offset: 640)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1117, file: !1118, line: 27, baseType: !239, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1117, file: !1118, line: 28, baseType: !239, size: 64, offset: 768)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1117, file: !1118, line: 29, baseType: !239, size: 64, offset: 832)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1097, file: !1096, line: 44, baseType: !681, size: 32, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1097, file: !1096, line: 50, baseType: !793, size: 16, offset: 864)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1097, file: !1096, line: 51, baseType: !1137, size: 16, offset: 880)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !346, line: 18, baseType: !1138)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !348, line: 23, baseType: !1139)
!1139 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !912, file: !656, line: 495, baseType: !254, size: 64, offset: 6528)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !912, file: !656, line: 497, baseType: !1142, size: 64, offset: 6592)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !656, line: 381, size: 384, elements: !1144)
!1144 = !{!1145, !1146, !2248}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1143, file: !656, line: 382, baseType: !681, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1143, file: !656, line: 383, baseType: !1147, size: 128, offset: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !656, line: 376, size: 128, elements: !1148)
!1148 = !{!1149, !2246}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1147, file: !656, line: 377, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1152, line: 640, size: 48640, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1153 = !{!1154, !1160, !1162, !1163, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1180, !1198, !1209, !1294, !1295, !1296, !1307, !1308, !1310, !1311, !1312, !1313, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1392, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1430, !1432, !1433, !1434, !1446, !1447, !1448, !1449, !1450, !1451, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1475, !1480, !1664, !1665, !1666, !1667, !1671, !1674, !1677, !1680, !1683, !1687, !1788, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1834, !1835, !1836, !1837, !1838, !1843, !1844, !1845, !1848, !1849, !1852, !1855, !1858, !1861, !1904, !1907, !1908, !1987, !1988, !1991, !1992, !1995, !1996, !1997, !2001, !2002, !2003, !2016, !2017, !2018, !2028, !2033, !2036, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1151, file: !1152, line: 646, baseType: !1155, size: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1156, line: 56, size: 128, elements: !1157)
!1156 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1155, file: !1156, line: 57, baseType: !254, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1155, file: !1156, line: 58, baseType: !345, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1151, file: !1152, line: 649, baseType: !1161, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !239)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1151, file: !1152, line: 657, baseType: !131, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1151, file: !1152, line: 658, baseType: !1164, size: 32, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1165, line: 113, baseType: !1166)
!1165 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1165, line: 111, size: 32, elements: !1167)
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1166, file: !1165, line: 112, baseType: !681, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1151, file: !1152, line: 660, baseType: !7, size: 32, offset: 288)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1151, file: !1152, line: 661, baseType: !7, size: 32, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1151, file: !1152, line: 684, baseType: !188, size: 32, offset: 352)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1151, file: !1152, line: 686, baseType: !188, size: 32, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1151, file: !1152, line: 687, baseType: !188, size: 32, offset: 416)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1151, file: !1152, line: 688, baseType: !188, size: 32, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1151, file: !1152, line: 689, baseType: !7, size: 32, offset: 480)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1151, file: !1152, line: 691, baseType: !1177, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1152, line: 691, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1151, file: !1152, line: 692, baseType: !1181, size: 832, offset: 576)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1152, line: 451, size: 832, elements: !1182)
!1182 = !{!1183, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1181, file: !1152, line: 453, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1152, line: 325, size: 128, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1184, file: !1152, line: 326, baseType: !254, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1184, file: !1152, line: 327, baseType: !345, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1181, file: !1152, line: 454, baseType: !694, size: 192, align: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1181, file: !1152, line: 455, baseType: !148, size: 128, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1181, file: !1152, line: 456, baseType: !7, size: 32, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1181, file: !1152, line: 458, baseType: !351, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1181, file: !1152, line: 459, baseType: !351, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1181, file: !1152, line: 460, baseType: !351, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1181, file: !1152, line: 461, baseType: !351, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1181, file: !1152, line: 463, baseType: !351, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1181, file: !1152, line: 465, baseType: !1197, offset: 832)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1152, line: 415, elements: !176)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1151, file: !1152, line: 693, baseType: !1199, size: 384, offset: 1408)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1152, line: 489, size: 384, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1199, file: !1152, line: 490, baseType: !148, size: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1199, file: !1152, line: 491, baseType: !254, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1199, file: !1152, line: 492, baseType: !254, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1199, file: !1152, line: 493, baseType: !7, size: 32, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1199, file: !1152, line: 494, baseType: !246, size: 16, offset: 288)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1199, file: !1152, line: 495, baseType: !246, size: 16, offset: 304)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1199, file: !1152, line: 497, baseType: !1208, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1151, file: !1152, line: 697, baseType: !1210, size: 1792, offset: 1792)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1152, line: 507, size: 1792, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1291, !1292}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1210, file: !1152, line: 508, baseType: !694, size: 192, align: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1210, file: !1152, line: 515, baseType: !351, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1210, file: !1152, line: 516, baseType: !351, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1210, file: !1152, line: 517, baseType: !351, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1210, file: !1152, line: 518, baseType: !351, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1210, file: !1152, line: 519, baseType: !351, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1210, file: !1152, line: 526, baseType: !711, size: 64, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1210, file: !1152, line: 527, baseType: !351, size: 64, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !1152, line: 528, baseType: !7, size: 32, offset: 640)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1210, file: !1152, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1210, file: !1152, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1210, file: !1152, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1210, file: !1152, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1210, file: !1152, line: 563, baseType: !1226, size: 512, offset: 704)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1227)
!1227 = !{!1228, !1236, !1237, !1242, !1285, !1288, !1289, !1290}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1226, file: !20, line: 119, baseType: !1229, size: 256)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1230, line: 9, size: 256, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1229, file: !1230, line: 10, baseType: !694, size: 192, align: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1229, file: !1230, line: 11, baseType: !1234, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1235, line: 29, baseType: !711)
!1235 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1226, file: !20, line: 120, baseType: !1234, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1226, file: !20, line: 121, baseType: !1238, size: 64, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!19, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1226, file: !20, line: 122, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1245)
!1245 = !{!1246, !1266, !1267, !1270, !1275, !1276, !1280, !1284}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1244, file: !20, line: 160, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1248, file: !20, line: 215, baseType: !714)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1248, file: !20, line: 216, baseType: !7, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1248, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1248, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1248, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1248, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1248, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1248, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1248, file: !20, line: 233, baseType: !1234, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1248, file: !20, line: 234, baseType: !1241, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1248, file: !20, line: 235, baseType: !1234, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1248, file: !20, line: 236, baseType: !1241, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1248, file: !20, line: 237, baseType: !1263, size: 4096, offset: 512)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1244, size: 4096, elements: !1264)
!1264 = !{!1265}
!1265 = !DISubrange(count: 8)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1244, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1244, file: !20, line: 162, baseType: !1268, size: 32, offset: 96)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !149, line: 27, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !237, line: 96, baseType: !188)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1244, file: !20, line: 163, baseType: !1271, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !318, line: 276, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !318, line: 276, size: 32, elements: !1273)
!1273 = !{!1274}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1272, file: !318, line: 276, baseType: !322, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1244, file: !20, line: 164, baseType: !1241, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1244, file: !20, line: 165, baseType: !1277, size: 128, offset: 256)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1230, line: 14, size: 128, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1277, file: !1230, line: 15, baseType: !686, size: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1244, file: !20, line: 166, baseType: !1281, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!1234}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1244, file: !20, line: 167, baseType: !1234, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1226, file: !20, line: 123, baseType: !1286, size: 8, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !346, line: 17, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !348, line: 21, baseType: !357)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1226, file: !20, line: 124, baseType: !1286, size: 8, offset: 456)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1226, file: !20, line: 125, baseType: !1286, size: 8, offset: 464)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1226, file: !20, line: 126, baseType: !1286, size: 8, offset: 472)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1210, file: !1152, line: 572, baseType: !1226, size: 512, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1210, file: !1152, line: 580, baseType: !1293, size: 64, offset: 1728)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1151, file: !1152, line: 721, baseType: !7, size: 32, offset: 3584)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1151, file: !1152, line: 722, baseType: !188, size: 32, offset: 3616)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1151, file: !1152, line: 723, baseType: !1297, size: 64, offset: 3648)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1300, line: 17, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1300, line: 17, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1301, file: !1300, line: 17, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 1)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1151, file: !1152, line: 724, baseType: !1299, size: 64, offset: 3712)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1151, file: !1152, line: 749, baseType: !1309, offset: 3776)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1152, line: 290, elements: !176)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1151, file: !1152, line: 751, baseType: !148, size: 128, offset: 3776)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1151, file: !1152, line: 757, baseType: !908, size: 64, offset: 3904)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1151, file: !1152, line: 758, baseType: !908, size: 64, offset: 3968)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1151, file: !1152, line: 761, baseType: !1314, size: 320, offset: 4032)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1085, line: 34, size: 320, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1314, file: !1085, line: 35, baseType: !351, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1314, file: !1085, line: 36, baseType: !1318, size: 256, offset: 64)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 256, elements: !1089)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1151, file: !1152, line: 766, baseType: !188, size: 32, offset: 4352)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1151, file: !1152, line: 767, baseType: !188, size: 32, offset: 4384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1151, file: !1152, line: 768, baseType: !188, size: 32, offset: 4416)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1151, file: !1152, line: 770, baseType: !188, size: 32, offset: 4448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1151, file: !1152, line: 772, baseType: !254, size: 64, offset: 4480)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1151, file: !1152, line: 775, baseType: !7, size: 32, offset: 4544)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1151, file: !1152, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1151, file: !1152, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1151, file: !1152, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1151, file: !1152, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1151, file: !1152, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1151, file: !1152, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1151, file: !1152, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1151, file: !1152, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1151, file: !1152, line: 831, baseType: !254, size: 64, offset: 4672)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1151, file: !1152, line: 833, baseType: !1335, size: 384, offset: 4736)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1336)
!1336 = !{!1337, !1342}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1335, file: !25, line: 26, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!239, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !25, line: 27, baseType: !1343, size: 320, offset: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1335, file: !25, line: 27, size: 320, elements: !1344)
!1344 = !{!1345, !1355, !1382}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1343, file: !25, line: 36, baseType: !1346, size: 320)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !25, line: 29, size: 320, elements: !1347)
!1347 = !{!1348, !1350, !1351, !1352, !1353, !1354}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1346, file: !25, line: 30, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1346, file: !25, line: 31, baseType: !345, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1346, file: !25, line: 32, baseType: !345, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1346, file: !25, line: 33, baseType: !345, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1346, file: !25, line: 34, baseType: !351, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1346, file: !25, line: 35, baseType: !1349, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1343, file: !25, line: 46, baseType: !1356, size: 192)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !25, line: 38, size: 192, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1381}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1356, file: !25, line: 39, baseType: !1268, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1356, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !25, line: 41, baseType: !1361, size: 64, offset: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !25, line: 41, size: 64, elements: !1362)
!1362 = !{!1363, !1371}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1361, file: !25, line: 42, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1366, line: 7, size: 128, elements: !1367)
!1366 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1365, file: !1366, line: 8, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !237, line: 93, baseType: !463)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1365, file: !1366, line: 9, baseType: !463, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1361, file: !25, line: 43, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1374, line: 7, size: 64, elements: !1375)
!1374 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1375 = !{!1376, !1380}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1373, file: !1374, line: 8, baseType: !1377, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1374, line: 5, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !346, line: 20, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !348, line: 26, baseType: !188)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1373, file: !1374, line: 9, baseType: !1378, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1356, file: !25, line: 45, baseType: !351, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1343, file: !25, line: 54, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1343, file: !25, line: 48, size: 256, elements: !1384)
!1384 = !{!1385, !1388, !1389, !1390, !1391}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1383, file: !25, line: 49, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1383, file: !25, line: 50, baseType: !188, size: 32, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1383, file: !25, line: 51, baseType: !188, size: 32, offset: 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1383, file: !25, line: 52, baseType: !254, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1383, file: !25, line: 53, baseType: !254, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1151, file: !1152, line: 835, baseType: !1393, size: 32, offset: 5120)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !149, line: 22, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !237, line: 28, baseType: !188)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1151, file: !1152, line: 836, baseType: !1393, size: 32, offset: 5152)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1151, file: !1152, line: 840, baseType: !254, size: 64, offset: 5184)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1151, file: !1152, line: 849, baseType: !1150, size: 64, offset: 5248)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1151, file: !1152, line: 852, baseType: !1150, size: 64, offset: 5312)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1151, file: !1152, line: 857, baseType: !148, size: 128, offset: 5376)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1151, file: !1152, line: 858, baseType: !148, size: 128, offset: 5504)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1151, file: !1152, line: 859, baseType: !1150, size: 64, offset: 5632)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1151, file: !1152, line: 867, baseType: !148, size: 128, offset: 5696)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1151, file: !1152, line: 868, baseType: !148, size: 128, offset: 5824)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1151, file: !1152, line: 871, baseType: !1405, size: 64, offset: 5952)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1413, !1414, !1421, !1422}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1406, file: !53, line: 61, baseType: !1164, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1406, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1406, file: !53, line: 63, baseType: !162, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1406, file: !53, line: 65, baseType: !1412, size: 256, offset: 64)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 256, elements: !1089)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1406, file: !53, line: 66, baseType: !568, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1406, file: !53, line: 68, baseType: !1415, size: 128, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1416, line: 40, baseType: !1417)
!1416 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1416, line: 36, size: 128, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1417, file: !1416, line: 37, baseType: !162)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1417, file: !1416, line: 38, baseType: !148, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1406, file: !53, line: 69, baseType: !295, size: 128, align: 64, offset: 512)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1406, file: !53, line: 70, baseType: !1423, size: 128, offset: 640)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1424, size: 128, elements: !1305)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1424, file: !53, line: 55, baseType: !188, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1424, file: !53, line: 56, baseType: !1428, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1151, file: !1152, line: 872, baseType: !1431, size: 512, offset: 6016)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 512, elements: !1089)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1151, file: !1152, line: 873, baseType: !148, size: 128, offset: 6528)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1151, file: !1152, line: 874, baseType: !148, size: 128, offset: 6656)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1151, file: !1152, line: 876, baseType: !1435, size: 64, offset: 6784)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1437, line: 26, size: 192, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1436, file: !1437, line: 27, baseType: !7, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1436, file: !1437, line: 28, baseType: !1441, size: 128, offset: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1442, line: 43, size: 128, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !1442, line: 44, baseType: !714)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1441, file: !1442, line: 45, baseType: !148, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1151, file: !1152, line: 879, baseType: !638, size: 64, offset: 6848)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1151, file: !1152, line: 882, baseType: !638, size: 64, offset: 6912)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1151, file: !1152, line: 884, baseType: !351, size: 64, offset: 6976)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1151, file: !1152, line: 885, baseType: !351, size: 64, offset: 7040)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1151, file: !1152, line: 890, baseType: !351, size: 64, offset: 7104)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1151, file: !1152, line: 891, baseType: !1452, size: 128, offset: 7168)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1152, line: 242, size: 128, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1452, file: !1152, line: 244, baseType: !351, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1452, file: !1152, line: 245, baseType: !351, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1152, line: 246, baseType: !714, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1151, file: !1152, line: 900, baseType: !254, size: 64, offset: 7296)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1151, file: !1152, line: 901, baseType: !254, size: 64, offset: 7360)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1151, file: !1152, line: 904, baseType: !351, size: 64, offset: 7424)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1151, file: !1152, line: 907, baseType: !351, size: 64, offset: 7488)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1151, file: !1152, line: 910, baseType: !254, size: 64, offset: 7552)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1151, file: !1152, line: 911, baseType: !254, size: 64, offset: 7616)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1151, file: !1152, line: 914, baseType: !1464, size: 640, offset: 7680)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1465, line: 123, size: 640, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1473, !1474}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1464, file: !1465, line: 124, baseType: !1468, size: 576)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1469, size: 576, elements: !205)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1465, line: 108, size: 192, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1469, file: !1465, line: 109, baseType: !351, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1469, file: !1465, line: 110, baseType: !1277, size: 128, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1464, file: !1465, line: 125, baseType: !7, size: 32, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1464, file: !1465, line: 126, baseType: !7, size: 32, offset: 608)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1151, file: !1152, line: 917, baseType: !1476, size: 192, offset: 8320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1465, line: 134, size: 192, elements: !1477)
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1476, file: !1465, line: 135, baseType: !295, size: 128, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1476, file: !1465, line: 136, baseType: !7, size: 32, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1151, file: !1152, line: 923, baseType: !1481, size: 64, offset: 8512)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1484, line: 111, size: 1280, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1505, !1506, !1507, !1508, !1509, !1510, !1617, !1618, !1619, !1620, !1646, !1649, !1659}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1483, file: !1484, line: 112, baseType: !681, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1483, file: !1484, line: 120, baseType: !365, size: 32, offset: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1483, file: !1484, line: 121, baseType: !373, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1483, file: !1484, line: 122, baseType: !365, size: 32, offset: 96)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1483, file: !1484, line: 123, baseType: !373, size: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1483, file: !1484, line: 124, baseType: !365, size: 32, offset: 160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1483, file: !1484, line: 125, baseType: !373, size: 32, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1483, file: !1484, line: 126, baseType: !365, size: 32, offset: 224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1483, file: !1484, line: 127, baseType: !373, size: 32, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1483, file: !1484, line: 128, baseType: !7, size: 32, offset: 288)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1483, file: !1484, line: 129, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1498, line: 26, baseType: !1499)
!1498 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1498, line: 24, size: 64, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1499, file: !1498, line: 25, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 64, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 2)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1483, file: !1484, line: 130, baseType: !1497, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1483, file: !1484, line: 131, baseType: !1497, size: 64, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1483, file: !1484, line: 132, baseType: !1497, size: 64, offset: 512)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1483, file: !1484, line: 133, baseType: !1497, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1483, file: !1484, line: 135, baseType: !357, size: 8, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1483, file: !1484, line: 137, baseType: !1511, size: 64, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1513, line: 189, size: 1664, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1514 = !{!1515, !1516, !1519, !1524, !1525, !1528, !1529, !1534, !1535, !1536, !1537, !1539, !1540, !1541, !1542, !1543, !1581, !1602}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1512, file: !1513, line: 190, baseType: !1164, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1512, file: !1513, line: 191, baseType: !1517, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1513, line: 28, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !149, line: 98, baseType: !1378)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 192, baseType: !1520, size: 192, offset: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 192, size: 192, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1520, file: !1513, line: 193, baseType: !148, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1520, file: !1513, line: 194, baseType: !694, size: 192, align: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1512, file: !1513, line: 199, baseType: !701, size: 256, offset: 256)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1512, file: !1513, line: 200, baseType: !1526, size: 64, offset: 512)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1513, line: 200, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1512, file: !1513, line: 201, baseType: !131, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 202, baseType: !1530, size: 64, offset: 640)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 202, size: 64, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1530, file: !1513, line: 203, baseType: !469, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1530, file: !1513, line: 204, baseType: !469, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1512, file: !1513, line: 206, baseType: !469, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1512, file: !1513, line: 207, baseType: !365, size: 32, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1512, file: !1513, line: 208, baseType: !373, size: 32, offset: 800)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1512, file: !1513, line: 209, baseType: !1538, size: 32, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1513, line: 31, baseType: !489)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1512, file: !1513, line: 210, baseType: !246, size: 16, offset: 864)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1512, file: !1513, line: 211, baseType: !246, size: 16, offset: 880)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1512, file: !1513, line: 215, baseType: !1139, size: 16, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !1513, line: 222, baseType: !254, size: 64, offset: 960)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 239, baseType: !1544, size: 320, offset: 1024)
!1544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 239, size: 320, elements: !1545)
!1545 = !{!1546, !1573}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1544, file: !1513, line: 240, baseType: !1547, size: 320)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1513, line: 108, size: 320, elements: !1548)
!1548 = !{!1549, !1550, !1562, !1565, !1572}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1547, file: !1513, line: 110, baseType: !254, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1513, line: 111, baseType: !1551, size: 64, offset: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1513, line: 111, size: 64, elements: !1552)
!1552 = !{!1553, !1561}
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !1513, line: 112, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1551, file: !1513, line: 112, size: 64, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1554, file: !1513, line: 114, baseType: !793, size: 16)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1554, file: !1513, line: 115, baseType: !1558, size: 48, offset: 16)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 48, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 6)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1551, file: !1513, line: 121, baseType: !254, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1547, file: !1513, line: 123, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1513, line: 96, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1547, file: !1513, line: 124, baseType: !1566, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1513, line: 102, size: 192, elements: !1568)
!1568 = !{!1569, !1570, !1571}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1567, file: !1513, line: 103, baseType: !295, size: 128, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1567, file: !1513, line: 104, baseType: !1164, size: 32, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1567, file: !1513, line: 105, baseType: !420, size: 8, offset: 160)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1547, file: !1513, line: 125, baseType: !144, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1513, line: 241, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1544, file: !1513, line: 241, size: 320, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1574, file: !1513, line: 242, baseType: !254, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1574, file: !1513, line: 243, baseType: !254, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1574, file: !1513, line: 244, baseType: !1563, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1574, file: !1513, line: 245, baseType: !1566, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1574, file: !1513, line: 246, baseType: !204, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1513, line: 254, baseType: !1582, size: 256, offset: 1344)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1512, file: !1513, line: 254, size: 256, elements: !1583)
!1583 = !{!1584, !1590}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1582, file: !1513, line: 255, baseType: !1585, size: 256)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1513, line: 128, size: 256, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1585, file: !1513, line: 129, baseType: !131, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1585, file: !1513, line: 130, baseType: !1589, size: 256)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !1089)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1513, line: 256, baseType: !1591, size: 256)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !1513, line: 256, size: 256, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1591, file: !1513, line: 258, baseType: !148, size: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1591, file: !1513, line: 259, baseType: !1595, size: 128, offset: 128)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1596, line: 22, size: 128, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1595, file: !1596, line: 23, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1596, line: 23, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1595, file: !1596, line: 24, baseType: !254, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1512, file: !1513, line: 274, baseType: !1603, size: 64, offset: 1600)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1513, line: 170, size: 192, elements: !1605)
!1605 = !{!1606, !1615, !1616}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1604, file: !1513, line: 171, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1513, line: 165, baseType: !1608)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!188, !1511, !1611, !1613, !1511}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1604, file: !1513, line: 172, baseType: !1511, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1604, file: !1513, line: 173, baseType: !1563, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1483, file: !1484, line: 138, baseType: !1511, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1483, file: !1484, line: 139, baseType: !1511, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1483, file: !1484, line: 140, baseType: !1511, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1483, file: !1484, line: 145, baseType: !1621, size: 64, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1623, line: 13, size: 896, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1622, file: !1623, line: 14, baseType: !1164, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1622, file: !1623, line: 15, baseType: !681, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1622, file: !1623, line: 16, baseType: !681, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1622, file: !1623, line: 21, baseType: !705, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1622, file: !1623, line: 27, baseType: !254, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1622, file: !1623, line: 28, baseType: !254, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1622, file: !1623, line: 29, baseType: !705, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1622, file: !1623, line: 32, baseType: !572, size: 128, offset: 384)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1622, file: !1623, line: 33, baseType: !365, size: 32, offset: 512)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1622, file: !1623, line: 37, baseType: !705, size: 64, offset: 576)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1622, file: !1623, line: 44, baseType: !1636, size: 256, offset: 640)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1637, line: 15, size: 256, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1636, file: !1637, line: 16, baseType: !714)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1636, file: !1637, line: 18, baseType: !188, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1636, file: !1637, line: 19, baseType: !188, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1636, file: !1637, line: 20, baseType: !188, size: 32, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1636, file: !1637, line: 21, baseType: !188, size: 32, offset: 96)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1636, file: !1637, line: 22, baseType: !254, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1636, file: !1637, line: 23, baseType: !254, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1483, file: !1484, line: 146, baseType: !1647, size: 64, offset: 1024)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !366, line: 18, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1483, file: !1484, line: 147, baseType: !1650, size: 64, offset: 1088)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1484, line: 25, size: 64, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1651, file: !1484, line: 26, baseType: !681, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1651, file: !1484, line: 27, baseType: !188, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1651, file: !1484, line: 28, baseType: !1656, offset: 64)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, elements: !1657)
!1657 = !{!1658}
!1658 = !DISubrange(count: 0)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1483, file: !1484, line: 149, baseType: !1660, size: 128, offset: 1152)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1483, file: !1484, line: 149, size: 128, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1660, file: !1484, line: 150, baseType: !188, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1660, file: !1484, line: 151, baseType: !295, size: 128, align: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1151, file: !1152, line: 926, baseType: !1481, size: 64, offset: 8576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1151, file: !1152, line: 929, baseType: !1481, size: 64, offset: 8640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1151, file: !1152, line: 933, baseType: !1511, size: 64, offset: 8704)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1151, file: !1152, line: 943, baseType: !1668, size: 128, offset: 8768)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 16)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1151, file: !1152, line: 945, baseType: !1672, size: 64, offset: 8896)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1152, line: 49, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1151, file: !1152, line: 956, baseType: !1675, size: 64, offset: 8960)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1152, line: 45, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1151, file: !1152, line: 959, baseType: !1678, size: 64, offset: 9024)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1152, line: 959, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1151, file: !1152, line: 962, baseType: !1681, size: 64, offset: 9088)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1152, line: 66, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1151, file: !1152, line: 966, baseType: !1684, size: 64, offset: 9152)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1686, line: 35, flags: DIFlagFwdDecl)
!1686 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1151, file: !1152, line: 969, baseType: !1688, size: 64, offset: 9216)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1690, line: 82, size: 7296, elements: !1691)
!1690 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697, !1698, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1727, !1736, !1737, !1739, !1740, !1741, !1744, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1774, !1775, !1782, !1783, !1784, !1785, !1786, !1787}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1689, file: !1690, line: 83, baseType: !1164, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1689, file: !1690, line: 84, baseType: !681, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1689, file: !1690, line: 85, baseType: !188, size: 32, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1689, file: !1690, line: 86, baseType: !148, size: 128, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1689, file: !1690, line: 88, baseType: !1415, size: 128, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1689, file: !1690, line: 91, baseType: !1150, size: 64, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1689, file: !1690, line: 94, baseType: !1699, size: 192, offset: 448)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1700, line: 30, size: 192, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1699, file: !1700, line: 31, baseType: !148, size: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1699, file: !1700, line: 32, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1705, line: 25, baseType: !1706)
!1705 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1705, line: 23, size: 64, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1706, file: !1705, line: 24, baseType: !1304, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1689, file: !1690, line: 97, baseType: !568, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1689, file: !1690, line: 100, baseType: !188, size: 32, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1689, file: !1690, line: 106, baseType: !188, size: 32, offset: 736)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1689, file: !1690, line: 107, baseType: !1150, size: 64, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1689, file: !1690, line: 110, baseType: !188, size: 32, offset: 832)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1689, file: !1690, line: 111, baseType: !7, size: 32, offset: 864)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1689, file: !1690, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1689, file: !1690, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1689, file: !1690, line: 128, baseType: !188, size: 32, offset: 928)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1689, file: !1690, line: 129, baseType: !148, size: 128, offset: 960)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1689, file: !1690, line: 132, baseType: !1226, size: 512, offset: 1088)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1689, file: !1690, line: 133, baseType: !1234, size: 64, offset: 1600)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1689, file: !1690, line: 140, baseType: !1722, size: 256, offset: 1664)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1723, size: 256, elements: !1503)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1690, line: 38, size: 128, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1723, file: !1690, line: 39, baseType: !351, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1723, file: !1690, line: 40, baseType: !351, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1689, file: !1690, line: 146, baseType: !1728, size: 192, offset: 1920)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1690, line: 66, size: 192, elements: !1729)
!1729 = !{!1730}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1728, file: !1690, line: 67, baseType: !1731, size: 192)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1690, line: 47, size: 192, elements: !1732)
!1732 = !{!1733, !1734, !1735}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1731, file: !1690, line: 48, baseType: !707, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1731, file: !1690, line: 49, baseType: !707, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1731, file: !1690, line: 50, baseType: !707, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1689, file: !1690, line: 150, baseType: !1464, size: 640, offset: 2112)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1689, file: !1690, line: 153, baseType: !1738, size: 256, offset: 2752)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 256, elements: !1089)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1689, file: !1690, line: 159, baseType: !1405, size: 64, offset: 3008)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1689, file: !1690, line: 162, baseType: !188, size: 32, offset: 3072)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1689, file: !1690, line: 164, baseType: !1742, size: 64, offset: 3136)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1690, line: 164, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1689, file: !1690, line: 175, baseType: !1745, size: 32, offset: 3200)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !318, line: 805, baseType: !1746)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 798, size: 32, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1746, file: !318, line: 803, baseType: !317, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1746, file: !318, line: 804, baseType: !162, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1689, file: !1690, line: 176, baseType: !351, size: 64, offset: 3264)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1689, file: !1690, line: 176, baseType: !351, size: 64, offset: 3328)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1689, file: !1690, line: 176, baseType: !351, size: 64, offset: 3392)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1689, file: !1690, line: 176, baseType: !351, size: 64, offset: 3456)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1689, file: !1690, line: 177, baseType: !351, size: 64, offset: 3520)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1689, file: !1690, line: 178, baseType: !351, size: 64, offset: 3584)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1689, file: !1690, line: 179, baseType: !1452, size: 128, offset: 3648)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1689, file: !1690, line: 180, baseType: !254, size: 64, offset: 3776)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1689, file: !1690, line: 180, baseType: !254, size: 64, offset: 3840)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1689, file: !1690, line: 180, baseType: !254, size: 64, offset: 3904)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1689, file: !1690, line: 180, baseType: !254, size: 64, offset: 3968)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1689, file: !1690, line: 181, baseType: !254, size: 64, offset: 4032)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1689, file: !1690, line: 181, baseType: !254, size: 64, offset: 4096)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1689, file: !1690, line: 181, baseType: !254, size: 64, offset: 4160)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1689, file: !1690, line: 181, baseType: !254, size: 64, offset: 4224)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1689, file: !1690, line: 182, baseType: !254, size: 64, offset: 4288)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1689, file: !1690, line: 182, baseType: !254, size: 64, offset: 4352)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1689, file: !1690, line: 182, baseType: !254, size: 64, offset: 4416)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1689, file: !1690, line: 182, baseType: !254, size: 64, offset: 4480)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1689, file: !1690, line: 183, baseType: !254, size: 64, offset: 4544)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1689, file: !1690, line: 183, baseType: !254, size: 64, offset: 4608)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1689, file: !1690, line: 184, baseType: !1772, offset: 4672)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1773, line: 12, elements: !176)
!1773 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1689, file: !1690, line: 192, baseType: !353, size: 64, offset: 4672)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1689, file: !1690, line: 203, baseType: !1776, size: 2048, offset: 4736)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1777, size: 2048, elements: !1669)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1778, line: 43, size: 128, elements: !1779)
!1778 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1777, file: !1778, line: 44, baseType: !253, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1777, file: !1778, line: 45, baseType: !253, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1689, file: !1690, line: 220, baseType: !420, size: 8, offset: 6784)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1689, file: !1690, line: 221, baseType: !1139, size: 16, offset: 6800)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1689, file: !1690, line: 222, baseType: !1139, size: 16, offset: 6816)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1689, file: !1690, line: 224, baseType: !908, size: 64, offset: 6848)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1689, file: !1690, line: 227, baseType: !1107, size: 192, offset: 6912)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1689, file: !1690, line: 233, baseType: !1107, size: 192, offset: 7104)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1151, file: !1152, line: 970, baseType: !1789, size: 64, offset: 9280)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1690, line: 20, size: 16576, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1790, file: !1690, line: 21, baseType: !162)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1790, file: !1690, line: 22, baseType: !1164, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1790, file: !1690, line: 23, baseType: !1415, size: 128, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1790, file: !1690, line: 24, baseType: !1796, size: 16384, offset: 192)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1797, size: 16384, elements: !209)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1700, line: 49, size: 256, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1797, file: !1700, line: 50, baseType: !1800, size: 256)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1700, line: 35, size: 256, elements: !1801)
!1801 = !{!1802, !1809, !1810, !1816}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1800, file: !1700, line: 37, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1804, line: 19, baseType: !1805)
!1804 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1804, line: 18, baseType: !1807)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !188}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1800, file: !1700, line: 38, baseType: !254, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1800, file: !1700, line: 44, baseType: !1811, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1804, line: 22, baseType: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1804, line: 21, baseType: !1814)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1800, file: !1700, line: 46, baseType: !1704, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1151, file: !1152, line: 971, baseType: !1704, size: 64, offset: 9344)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1151, file: !1152, line: 972, baseType: !1704, size: 64, offset: 9408)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1151, file: !1152, line: 974, baseType: !1704, size: 64, offset: 9472)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1151, file: !1152, line: 975, baseType: !1699, size: 192, offset: 9536)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1151, file: !1152, line: 976, baseType: !254, size: 64, offset: 9728)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1151, file: !1152, line: 977, baseType: !251, size: 64, offset: 9792)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1151, file: !1152, line: 978, baseType: !7, size: 32, offset: 9856)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1151, file: !1152, line: 980, baseType: !298, size: 64, offset: 9920)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1151, file: !1152, line: 989, baseType: !1826, size: 128, offset: 9984)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1827, line: 35, size: 128, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830, !1831}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1826, file: !1827, line: 36, baseType: !188, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1826, file: !1827, line: 37, baseType: !681, size: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1826, file: !1827, line: 38, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1827, line: 23, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1151, file: !1152, line: 992, baseType: !351, size: 64, offset: 10112)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1151, file: !1152, line: 993, baseType: !351, size: 64, offset: 10176)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1151, file: !1152, line: 996, baseType: !162, offset: 10240)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1151, file: !1152, line: 999, baseType: !714, offset: 10240)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1151, file: !1152, line: 1001, baseType: !1839, size: 64, offset: 10240)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1152, line: 636, size: 64, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1839, file: !1152, line: 637, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1151, file: !1152, line: 1005, baseType: !686, size: 128, offset: 10304)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1151, file: !1152, line: 1007, baseType: !1150, size: 64, offset: 10432)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1151, file: !1152, line: 1009, baseType: !1846, size: 64, offset: 10496)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1152, line: 1009, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1151, file: !1152, line: 1043, baseType: !131, size: 64, offset: 10560)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1151, file: !1152, line: 1046, baseType: !1850, size: 64, offset: 10624)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1152, line: 41, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1151, file: !1152, line: 1050, baseType: !1853, size: 64, offset: 10688)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1152, line: 42, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1151, file: !1152, line: 1054, baseType: !1856, size: 64, offset: 10752)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1152, line: 55, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1151, file: !1152, line: 1056, baseType: !1859, size: 64, offset: 10816)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1152, line: 40, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1151, file: !1152, line: 1058, baseType: !1862, size: 64, offset: 10880)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1864, line: 99, size: 704, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1891, !1892}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1863, file: !1864, line: 100, baseType: !705, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1863, file: !1864, line: 101, baseType: !681, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1863, file: !1864, line: 102, baseType: !681, size: 32, offset: 96)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1863, file: !1864, line: 105, baseType: !162, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1863, file: !1864, line: 107, baseType: !246, size: 16, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1863, file: !1864, line: 109, baseType: !672, size: 128, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1863, file: !1864, line: 110, baseType: !1873, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1864, line: 73, size: 448, elements: !1875)
!1875 = !{!1876, !1879, !1880, !1885, !1890}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1874, file: !1864, line: 74, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1864, line: 74, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1874, file: !1864, line: 75, baseType: !1862, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1864, line: 83, baseType: !1881, size: 128, offset: 128)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1864, line: 83, size: 128, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1881, file: !1864, line: 84, baseType: !148, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1881, file: !1864, line: 85, baseType: !869, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !1864, line: 87, baseType: !1886, size: 128, offset: 256)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !1864, line: 87, size: 128, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1886, file: !1864, line: 88, baseType: !572, size: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1886, file: !1864, line: 89, baseType: !295, size: 128, align: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1874, file: !1864, line: 92, baseType: !7, size: 32, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1863, file: !1864, line: 111, baseType: !568, size: 64, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1863, file: !1864, line: 113, baseType: !1893, size: 256, offset: 448)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1894, line: 102, size: 256, elements: !1895)
!1894 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1895 = !{!1896, !1897, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1893, file: !1894, line: 103, baseType: !705, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1893, file: !1894, line: 104, baseType: !148, size: 128, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1893, file: !1894, line: 105, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1894, line: 21, baseType: !1900)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !1903}
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1151, file: !1152, line: 1061, baseType: !1905, size: 64, offset: 10944)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1152, line: 43, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1151, file: !1152, line: 1064, baseType: !254, size: 64, offset: 11008)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1151, file: !1152, line: 1065, baseType: !1909, size: 64, offset: 11072)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1700, line: 14, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1700, line: 12, size: 384, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !1700, line: 13, baseType: !1914, size: 384)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1911, file: !1700, line: 13, size: 384, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1914, file: !1700, line: 13, baseType: !188, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1914, file: !1700, line: 13, baseType: !188, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1914, file: !1700, line: 13, baseType: !188, size: 32, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1914, file: !1700, line: 13, baseType: !1920, size: 256, offset: 128)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1921, line: 32, size: 256, elements: !1922)
!1921 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1922 = !{!1923, !1928, !1941, !1947, !1956, !1976, !1981}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1920, file: !1921, line: 37, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1921, line: 34, size: 64, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1924, file: !1921, line: 35, baseType: !1394, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1924, file: !1921, line: 36, baseType: !371, size: 32, offset: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1920, file: !1921, line: 45, baseType: !1929, size: 192)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1921, line: 40, size: 192, elements: !1930)
!1930 = !{!1931, !1933, !1934, !1940}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1929, file: !1921, line: 41, baseType: !1932, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !237, line: 95, baseType: !188)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1929, file: !1921, line: 42, baseType: !188, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1929, file: !1921, line: 43, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1921, line: 11, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1921, line: 8, size: 64, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1936, file: !1921, line: 9, baseType: !188, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1936, file: !1921, line: 10, baseType: !131, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1929, file: !1921, line: 44, baseType: !188, size: 32, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1920, file: !1921, line: 52, baseType: !1942, size: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1921, line: 48, size: 128, elements: !1943)
!1943 = !{!1944, !1945, !1946}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1942, file: !1921, line: 49, baseType: !1394, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1942, file: !1921, line: 50, baseType: !371, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1942, file: !1921, line: 51, baseType: !1935, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1920, file: !1921, line: 61, baseType: !1948, size: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1921, line: 55, size: 256, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1955}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1948, file: !1921, line: 56, baseType: !1394, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1948, file: !1921, line: 57, baseType: !371, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1948, file: !1921, line: 58, baseType: !188, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1948, file: !1921, line: 59, baseType: !1954, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !237, line: 94, baseType: !238)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1948, file: !1921, line: 60, baseType: !1954, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1920, file: !1921, line: 95, baseType: !1957, size: 256)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1921, line: 64, size: 256, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1957, file: !1921, line: 65, baseType: !131, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !1921, line: 77, baseType: !1961, size: 192, offset: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1921, line: 77, size: 192, elements: !1962)
!1962 = !{!1963, !1964, !1971}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1961, file: !1921, line: 82, baseType: !1139, size: 16)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1961, file: !1921, line: 88, baseType: !1965, size: 192)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1921, line: 84, size: 192, elements: !1966)
!1966 = !{!1967, !1969, !1970}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1965, file: !1921, line: 85, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !1264)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1965, file: !1921, line: 86, baseType: !131, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1965, file: !1921, line: 87, baseType: !131, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1961, file: !1921, line: 93, baseType: !1972, size: 96)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1961, file: !1921, line: 90, size: 96, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1972, file: !1921, line: 91, baseType: !1968, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1972, file: !1921, line: 92, baseType: !347, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1920, file: !1921, line: 101, baseType: !1977, size: 128)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1921, line: 98, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1977, file: !1921, line: 99, baseType: !239, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1977, file: !1921, line: 100, baseType: !188, size: 32, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1920, file: !1921, line: 108, baseType: !1982, size: 128)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1920, file: !1921, line: 104, size: 128, elements: !1983)
!1983 = !{!1984, !1985, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1982, file: !1921, line: 105, baseType: !131, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1982, file: !1921, line: 106, baseType: !188, size: 32, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1982, file: !1921, line: 107, baseType: !7, size: 32, offset: 96)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1151, file: !1152, line: 1067, baseType: !1772, offset: 11136)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1151, file: !1152, line: 1099, baseType: !1989, size: 64, offset: 11136)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1152, line: 56, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1151, file: !1152, line: 1103, baseType: !148, size: 128, offset: 11200)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1151, file: !1152, line: 1104, baseType: !1993, size: 64, offset: 11328)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1152, line: 46, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1151, file: !1152, line: 1105, baseType: !1107, size: 192, offset: 11392)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1151, file: !1152, line: 1106, baseType: !7, size: 32, offset: 11584)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1151, file: !1152, line: 1109, baseType: !1998, size: 128, offset: 11648)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1999, size: 128, elements: !1503)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1152, line: 51, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1151, file: !1152, line: 1110, baseType: !1107, size: 192, offset: 11776)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1151, file: !1152, line: 1111, baseType: !148, size: 128, offset: 11968)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1151, file: !1152, line: 1173, baseType: !2004, size: 64, offset: 12096)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2006, line: 62, size: 256, align: 256, elements: !2007)
!2006 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2009, !2010, !2015}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2005, file: !2006, line: 75, baseType: !347, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2005, file: !2006, line: 90, baseType: !347, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2005, file: !2006, line: 124, baseType: !2011, size: 64, offset: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2005, file: !2006, line: 109, size: 64, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2011, file: !2006, line: 110, baseType: !352, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2011, file: !2006, line: 112, baseType: !352, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2005, file: !2006, line: 144, baseType: !347, size: 32, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1151, file: !1152, line: 1174, baseType: !345, size: 32, offset: 12160)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1151, file: !1152, line: 1179, baseType: !254, size: 64, offset: 12224)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1151, file: !1152, line: 1182, baseType: !2019, size: 128, offset: 12288)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1085, line: 76, size: 128, elements: !2020)
!2020 = !{!2021, !2026, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2019, file: !1085, line: 85, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2023, line: 7, size: 64, elements: !2024)
!2023 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2022, file: !2023, line: 12, baseType: !1301, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2019, file: !1085, line: 88, baseType: !420, size: 8, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2019, file: !1085, line: 95, baseType: !420, size: 8, offset: 72)
!2028 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1152, line: 1184, baseType: !2029, size: 128, offset: 12416)
!2029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !1152, line: 1184, size: 128, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2029, file: !1152, line: 1185, baseType: !1164, size: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2029, file: !1152, line: 1186, baseType: !295, size: 128, align: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1151, file: !1152, line: 1190, baseType: !2034, size: 64, offset: 12544)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1152, line: 53, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1151, file: !1152, line: 1192, baseType: !2037, size: 128, offset: 12608)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1085, line: 64, size: 128, elements: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2037, file: !1085, line: 65, baseType: !654, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2037, file: !1085, line: 67, baseType: !347, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2037, file: !1085, line: 68, baseType: !347, size: 32, offset: 96)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1151, file: !1152, line: 1206, baseType: !188, size: 32, offset: 12736)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1151, file: !1152, line: 1207, baseType: !188, size: 32, offset: 12768)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1151, file: !1152, line: 1209, baseType: !254, size: 64, offset: 12800)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1151, file: !1152, line: 1219, baseType: !351, size: 64, offset: 12864)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1151, file: !1152, line: 1220, baseType: !351, size: 64, offset: 12928)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1151, file: !1152, line: 1317, baseType: !188, size: 32, offset: 12992)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1151, file: !1152, line: 1319, baseType: !1150, size: 64, offset: 13056)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1151, file: !1152, line: 1322, baseType: !2050, size: 64, offset: 13120)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2052, line: 56, size: 512, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2062}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2051, file: !2052, line: 57, baseType: !2050, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2051, file: !2052, line: 58, baseType: !131, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2051, file: !2052, line: 59, baseType: !254, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2051, file: !2052, line: 60, baseType: !254, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2051, file: !2052, line: 61, baseType: !754, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2051, file: !2052, line: 62, baseType: !7, size: 32, offset: 320)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2051, file: !2052, line: 63, baseType: !2061, size: 64, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !149, line: 153, baseType: !351)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2051, file: !2052, line: 64, baseType: !2063, size: 64, offset: 448)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1151, file: !1152, line: 1326, baseType: !1164, size: 32, offset: 13184)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1151, file: !1152, line: 1342, baseType: !131, size: 64, offset: 13248)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1151, file: !1152, line: 1343, baseType: !352, size: 64, offset: 13312)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1151, file: !1152, line: 1344, baseType: !351, size: 64, offset: 13376)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1151, file: !1152, line: 1345, baseType: !352, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1151, file: !1152, line: 1346, baseType: !352, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1151, file: !1152, line: 1347, baseType: !352, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1151, file: !1152, line: 1348, baseType: !295, size: 128, align: 64, offset: 13504)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1151, file: !1152, line: 1358, baseType: !2074, size: 34816, offset: 13824)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2075, line: 485, size: 34816, elements: !2076)
!2075 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2076 = !{!2077, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2106, !2107, !2108, !2109, !2110, !2111, !2114, !2115, !2116}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2074, file: !2075, line: 487, baseType: !2078, size: 192)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2079, size: 192, elements: !205)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2080, line: 16, size: 64, elements: !2081)
!2080 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2079, file: !2080, line: 17, baseType: !793, size: 16)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2079, file: !2080, line: 18, baseType: !793, size: 16, offset: 16)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2079, file: !2080, line: 19, baseType: !793, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2079, file: !2080, line: 19, baseType: !793, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2079, file: !2080, line: 19, baseType: !793, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2079, file: !2080, line: 19, baseType: !793, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2079, file: !2080, line: 19, baseType: !793, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2079, file: !2080, line: 20, baseType: !793, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2079, file: !2080, line: 20, baseType: !793, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2079, file: !2080, line: 20, baseType: !793, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2079, file: !2080, line: 20, baseType: !793, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2079, file: !2080, line: 20, baseType: !793, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2079, file: !2080, line: 20, baseType: !793, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2074, file: !2075, line: 491, baseType: !254, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2074, file: !2075, line: 495, baseType: !246, size: 16, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2074, file: !2075, line: 496, baseType: !246, size: 16, offset: 272)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2074, file: !2075, line: 497, baseType: !246, size: 16, offset: 288)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2074, file: !2075, line: 498, baseType: !246, size: 16, offset: 304)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2074, file: !2075, line: 502, baseType: !254, size: 64, offset: 320)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2074, file: !2075, line: 503, baseType: !254, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2074, file: !2075, line: 514, baseType: !2103, size: 256, offset: 448)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2104, size: 256, elements: !1089)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2075, line: 483, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2074, file: !2075, line: 516, baseType: !254, size: 64, offset: 704)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2074, file: !2075, line: 518, baseType: !254, size: 64, offset: 768)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2074, file: !2075, line: 520, baseType: !254, size: 64, offset: 832)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2074, file: !2075, line: 521, baseType: !254, size: 64, offset: 896)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2074, file: !2075, line: 522, baseType: !254, size: 64, offset: 960)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2074, file: !2075, line: 528, baseType: !2112, size: 64, offset: 1024)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2075, line: 10, flags: DIFlagFwdDecl)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2074, file: !2075, line: 535, baseType: !254, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2074, file: !2075, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2074, file: !2075, line: 540, baseType: !2117, size: 33280, offset: 1536)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2118, line: 317, size: 33280, elements: !2119)
!2118 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2117, file: !2118, line: 330, baseType: !7, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2117, file: !2118, line: 337, baseType: !254, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2117, file: !2118, line: 348, baseType: !2123, size: 32768, offset: 512)
!2123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2118, line: 304, size: 32768, elements: !2124)
!2124 = !{!2125, !2140, !2179, !2229, !2242}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2123, file: !2118, line: 305, baseType: !2126, size: 896)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2118, line: 12, size: 896, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2139}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2126, file: !2118, line: 13, baseType: !345, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2126, file: !2118, line: 14, baseType: !345, size: 32, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2126, file: !2118, line: 15, baseType: !345, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2126, file: !2118, line: 16, baseType: !345, size: 32, offset: 96)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2126, file: !2118, line: 17, baseType: !345, size: 32, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2126, file: !2118, line: 18, baseType: !345, size: 32, offset: 160)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2126, file: !2118, line: 19, baseType: !345, size: 32, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2126, file: !2118, line: 22, baseType: !2136, size: 640, offset: 224)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 640, elements: !2137)
!2137 = !{!2138}
!2138 = !DISubrange(count: 20)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2126, file: !2118, line: 25, baseType: !345, size: 32, offset: 864)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2123, file: !2118, line: 306, baseType: !2141, size: 4096, align: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2118, line: 34, size: 4096, align: 128, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2162, !2163, !2164, !2168, !2170, !2174}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2141, file: !2118, line: 35, baseType: !793, size: 16)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2141, file: !2118, line: 36, baseType: !793, size: 16, offset: 16)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2141, file: !2118, line: 37, baseType: !793, size: 16, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2141, file: !2118, line: 38, baseType: !793, size: 16, offset: 48)
!2147 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !2118, line: 39, baseType: !2148, size: 128, offset: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2141, file: !2118, line: 39, size: 128, elements: !2149)
!2149 = !{!2150, !2155}
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2118, line: 40, baseType: !2151, size: 128)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2118, line: 40, size: 128, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2151, file: !2118, line: 41, baseType: !351, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2151, file: !2118, line: 42, baseType: !351, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2118, line: 44, baseType: !2156, size: 128)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2118, line: 44, size: 128, elements: !2157)
!2157 = !{!2158, !2159, !2160, !2161}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2156, file: !2118, line: 45, baseType: !345, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2156, file: !2118, line: 46, baseType: !345, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2156, file: !2118, line: 47, baseType: !345, size: 32, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2156, file: !2118, line: 48, baseType: !345, size: 32, offset: 96)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2141, file: !2118, line: 51, baseType: !345, size: 32, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2141, file: !2118, line: 52, baseType: !345, size: 32, offset: 224)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2141, file: !2118, line: 55, baseType: !2165, size: 1024, offset: 256)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 1024, elements: !2166)
!2166 = !{!2167}
!2167 = !DISubrange(count: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2141, file: !2118, line: 58, baseType: !2169, size: 2048, offset: 1280)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 2048, elements: !209)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2141, file: !2118, line: 60, baseType: !2171, size: 384, offset: 3328)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 384, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 12)
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !2118, line: 62, baseType: !2175, size: 384, offset: 3712)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2141, file: !2118, line: 62, size: 384, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2175, file: !2118, line: 63, baseType: !2171, size: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2175, file: !2118, line: 64, baseType: !2171, size: 384)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2123, file: !2118, line: 307, baseType: !2180, size: 1088)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2118, line: 79, size: 1088, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2228}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2180, file: !2118, line: 80, baseType: !345, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2180, file: !2118, line: 81, baseType: !345, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2180, file: !2118, line: 82, baseType: !345, size: 32, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2180, file: !2118, line: 83, baseType: !345, size: 32, offset: 96)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2180, file: !2118, line: 84, baseType: !345, size: 32, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2180, file: !2118, line: 85, baseType: !345, size: 32, offset: 160)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2180, file: !2118, line: 86, baseType: !345, size: 32, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2180, file: !2118, line: 88, baseType: !2136, size: 640, offset: 224)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2180, file: !2118, line: 89, baseType: !1286, size: 8, offset: 864)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2180, file: !2118, line: 90, baseType: !1286, size: 8, offset: 872)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2180, file: !2118, line: 91, baseType: !1286, size: 8, offset: 880)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2180, file: !2118, line: 92, baseType: !1286, size: 8, offset: 888)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2180, file: !2118, line: 93, baseType: !1286, size: 8, offset: 896)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2180, file: !2118, line: 94, baseType: !1286, size: 8, offset: 904)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2180, file: !2118, line: 95, baseType: !2197, size: 64, offset: 960)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2199, line: 11, size: 128, elements: !2200)
!2199 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2198, file: !2199, line: 12, baseType: !239, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2198, file: !2199, line: 13, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2205, line: 56, size: 1344, elements: !2206)
!2205 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2204, file: !2205, line: 61, baseType: !254, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2204, file: !2205, line: 62, baseType: !254, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2204, file: !2205, line: 63, baseType: !254, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2204, file: !2205, line: 64, baseType: !254, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2204, file: !2205, line: 65, baseType: !254, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2204, file: !2205, line: 66, baseType: !254, size: 64, offset: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2204, file: !2205, line: 68, baseType: !254, size: 64, offset: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2204, file: !2205, line: 69, baseType: !254, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2204, file: !2205, line: 70, baseType: !254, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2204, file: !2205, line: 71, baseType: !254, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2204, file: !2205, line: 72, baseType: !254, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2204, file: !2205, line: 73, baseType: !254, size: 64, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2204, file: !2205, line: 74, baseType: !254, size: 64, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2204, file: !2205, line: 75, baseType: !254, size: 64, offset: 832)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2204, file: !2205, line: 76, baseType: !254, size: 64, offset: 896)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2204, file: !2205, line: 81, baseType: !254, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2204, file: !2205, line: 83, baseType: !254, size: 64, offset: 1024)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2204, file: !2205, line: 84, baseType: !254, size: 64, offset: 1088)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2204, file: !2205, line: 85, baseType: !254, size: 64, offset: 1152)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2204, file: !2205, line: 86, baseType: !254, size: 64, offset: 1216)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2204, file: !2205, line: 87, baseType: !254, size: 64, offset: 1280)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2180, file: !2118, line: 96, baseType: !345, size: 32, offset: 1024)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2123, file: !2118, line: 308, baseType: !2230, size: 4608, align: 512)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2118, line: 289, size: 4608, align: 512, elements: !2231)
!2231 = !{!2232, !2233, !2240}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2230, file: !2118, line: 290, baseType: !2141, size: 4096, align: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2230, file: !2118, line: 291, baseType: !2234, size: 512, offset: 4096)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2118, line: 268, size: 512, elements: !2235)
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2234, file: !2118, line: 269, baseType: !351, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2234, file: !2118, line: 270, baseType: !351, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2234, file: !2118, line: 271, baseType: !2239, size: 384, offset: 128)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 384, elements: !1559)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2230, file: !2118, line: 292, baseType: !2241, offset: 4608)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, elements: !1657)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2123, file: !2118, line: 309, baseType: !2243, size: 32768)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1286, size: 32768, elements: !2244)
!2244 = !{!2245}
!2245 = !DISubrange(count: 4096)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1147, file: !656, line: 378, baseType: !2247, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1143, file: !656, line: 384, baseType: !1436, size: 192, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !912, file: !656, line: 500, baseType: !162, offset: 6656)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !912, file: !656, line: 501, baseType: !2251, size: 64, offset: 6656)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !656, line: 387, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !912, file: !656, line: 516, baseType: !1647, size: 64, offset: 6720)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !912, file: !656, line: 519, baseType: !282, size: 64, offset: 6784)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !912, file: !656, line: 521, baseType: !2256, size: 64, offset: 6848)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !656, line: 521, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !912, file: !656, line: 545, baseType: !681, size: 32, offset: 6912)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !912, file: !656, line: 548, baseType: !420, size: 8, offset: 6944)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !912, file: !656, line: 550, baseType: !2261, offset: 6952)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2262, line: 142, elements: !176)
!2262 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !912, file: !656, line: 554, baseType: !1893, size: 256, offset: 6976)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !912, file: !656, line: 557, baseType: !345, size: 32, offset: 7232)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !909, file: !656, line: 565, baseType: !2266, offset: 7296)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !2267)
!2267 = !{!2268}
!2268 = !DISubrange(count: -1)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !905, file: !656, line: 151, baseType: !681, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !898, file: !656, line: 156, baseType: !162, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !656, line: 159, baseType: !2272, size: 128)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !660, file: !656, line: 159, size: 128, elements: !2273)
!2273 = !{!2274, !2338}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2272, file: !656, line: 161, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2277)
!2277 = !{!2278, !2288, !2309, !2310, !2311, !2312, !2313, !2325, !2326, !2327}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2276, file: !31, line: 111, baseType: !2279, size: 384)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2280)
!2280 = !{!2281, !2283, !2284, !2285, !2286, !2287}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2279, file: !31, line: 20, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2279, file: !31, line: 21, baseType: !2282, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2279, file: !31, line: 22, baseType: !2282, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2279, file: !31, line: 23, baseType: !254, size: 64, offset: 192)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2279, file: !31, line: 24, baseType: !254, size: 64, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2279, file: !31, line: 25, baseType: !254, size: 64, offset: 320)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2276, file: !31, line: 112, baseType: !2289, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2291, line: 105, size: 128, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2290, file: !2291, line: 110, baseType: !254, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2290, file: !2291, line: 118, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2291, line: 95, size: 448, elements: !2297)
!2297 = !{!2298, !2299, !2304, !2305, !2306, !2307, !2308}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2296, file: !2291, line: 96, baseType: !705, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2296, file: !2291, line: 97, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2291, line: 60, baseType: !2302)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2289}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2296, file: !2291, line: 98, baseType: !2300, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2296, file: !2291, line: 99, baseType: !420, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2296, file: !2291, line: 100, baseType: !420, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2296, file: !2291, line: 101, baseType: !295, size: 128, align: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2296, file: !2291, line: 102, baseType: !2289, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2276, file: !31, line: 113, baseType: !2290, size: 128, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2276, file: !31, line: 114, baseType: !1436, size: 192, offset: 576)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2276, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2276, file: !31, line: 117, baseType: !2314, size: 64, offset: 832)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2316)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2317)
!2317 = !{!2318, !2319, !2323, !2324}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2316, file: !31, line: 73, baseType: !774, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2316, file: !31, line: 78, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2275}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2316, file: !31, line: 83, baseType: !2320, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2316, file: !31, line: 89, baseType: !961, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2276, file: !31, line: 118, baseType: !131, size: 64, offset: 896)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2276, file: !31, line: 119, baseType: !188, size: 32, offset: 960)
!2327 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !31, line: 120, baseType: !2328, size: 128, offset: 1024)
!2328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2276, file: !31, line: 120, size: 128, elements: !2329)
!2329 = !{!2330, !2336}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2328, file: !31, line: 121, baseType: !2331, size: 128)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2332, line: 6, size: 128, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2333 = !{!2334, !2335}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2331, file: !2332, line: 7, baseType: !351, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2331, file: !2332, line: 8, baseType: !351, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2328, file: !31, line: 122, baseType: !2337)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2331, elements: !1657)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2272, file: !656, line: 162, baseType: !131, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !660, file: !656, line: 176, baseType: !295, size: 128, align: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !656, line: 179, baseType: !2341, size: 32, offset: 384)
!2341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !655, file: !656, line: 179, size: 32, elements: !2342)
!2342 = !{!2343, !2344, !2345, !2346}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2341, file: !656, line: 184, baseType: !681, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2341, file: !656, line: 192, baseType: !7, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2341, file: !656, line: 194, baseType: !7, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2341, file: !656, line: 195, baseType: !188, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !655, file: !656, line: 199, baseType: !681, size: 32, offset: 416)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !590, file: !44, line: 1964, baseType: !2349, size: 64, offset: 1344)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!239, !529, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2354, line: 12, size: 256, elements: !2355)
!2354 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !{!2356, !2357, !2358, !2359, !2360}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2353, file: !2354, line: 13, baseType: !677, size: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2353, file: !2354, line: 16, baseType: !188, size: 32, offset: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2353, file: !2354, line: 23, baseType: !254, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2353, file: !2354, line: 30, baseType: !254, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2353, file: !2354, line: 33, baseType: !2361, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !656, line: 27, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !590, file: !44, line: 1966, baseType: !2349, size: 64, offset: 1408)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !530, file: !44, line: 1424, baseType: !2365, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2368)
!2368 = !{!2369, !2415, !2419, !2423, !2424, !2425, !2426, !2427, !2432, !2437, !2441}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2367, file: !38, line: 323, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!188, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2400, !2401, !2402}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2374, file: !38, line: 295, baseType: !572, size: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2374, file: !38, line: 296, baseType: !148, size: 128, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2374, file: !38, line: 297, baseType: !148, size: 128, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2374, file: !38, line: 298, baseType: !148, size: 128, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2374, file: !38, line: 299, baseType: !1107, size: 192, offset: 512)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2374, file: !38, line: 300, baseType: !162, offset: 704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2374, file: !38, line: 301, baseType: !681, size: 32, offset: 704)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2374, file: !38, line: 302, baseType: !529, size: 64, offset: 768)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2374, file: !38, line: 303, baseType: !2385, size: 64, offset: 832)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2386)
!2386 = !{!2387, !2399}
!2387 = !DIDerivedType(tag: DW_TAG_member, scope: !2385, file: !38, line: 69, baseType: !2388, size: 32)
!2388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2385, file: !38, line: 69, size: 32, elements: !2389)
!2389 = !{!2390, !2391, !2392}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2388, file: !38, line: 70, baseType: !365, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2388, file: !38, line: 71, baseType: !373, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2388, file: !38, line: 72, baseType: !2393, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2394, line: 24, baseType: !2395)
!2394 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2394, line: 22, size: 32, elements: !2396)
!2396 = !{!2397}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2395, file: !2394, line: 23, baseType: !2398, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2394, line: 20, baseType: !371)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2385, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2374, file: !38, line: 304, baseType: !461, size: 64, offset: 896)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2374, file: !38, line: 305, baseType: !254, size: 64, offset: 960)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2374, file: !38, line: 306, baseType: !2403, size: 576, offset: 1024)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2404)
!2404 = !{!2405, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2403, file: !38, line: 206, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !463)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2403, file: !38, line: 207, baseType: !2406, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2403, file: !38, line: 208, baseType: !2406, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2403, file: !38, line: 209, baseType: !2406, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2403, file: !38, line: 210, baseType: !2406, size: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2403, file: !38, line: 211, baseType: !2406, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2403, file: !38, line: 212, baseType: !2406, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2403, file: !38, line: 213, baseType: !469, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2403, file: !38, line: 214, baseType: !469, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2367, file: !38, line: 324, baseType: !2416, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!2373, !529, !188}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2367, file: !38, line: 325, baseType: !2420, size: 64, offset: 128)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !2373}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2367, file: !38, line: 326, baseType: !2370, size: 64, offset: 192)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2367, file: !38, line: 327, baseType: !2370, size: 64, offset: 256)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2367, file: !38, line: 328, baseType: !2370, size: 64, offset: 320)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2367, file: !38, line: 329, baseType: !618, size: 64, offset: 384)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2367, file: !38, line: 332, baseType: !2428, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!2431, !359}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2367, file: !38, line: 333, baseType: !2433, size: 64, offset: 512)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!188, !359, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2367, file: !38, line: 335, baseType: !2438, size: 64, offset: 576)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!188, !359, !2431}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2367, file: !38, line: 337, baseType: !2442, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!188, !529, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !530, file: !44, line: 1425, baseType: !2447, size: 64, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2450)
!2450 = !{!2451, !2455, !2456, !2460, !2461, !2462, !2477, !2500, !2504, !2505, !2528}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2449, file: !38, line: 429, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!188, !529, !188, !188, !479}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2449, file: !38, line: 430, baseType: !618, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2449, file: !38, line: 431, baseType: !2457, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!188, !529, !7}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2449, file: !38, line: 432, baseType: !2457, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2449, file: !38, line: 433, baseType: !618, size: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2449, file: !38, line: 434, baseType: !2463, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!188, !529, !188, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2467, file: !38, line: 416, baseType: !188, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2467, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2467, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2467, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2467, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2467, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2467, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2467, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2449, file: !38, line: 435, baseType: !2478, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!188, !529, !2385, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2483)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2482, file: !38, line: 344, baseType: !188, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2482, file: !38, line: 345, baseType: !351, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2482, file: !38, line: 346, baseType: !351, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2482, file: !38, line: 347, baseType: !351, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2482, file: !38, line: 348, baseType: !351, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2482, file: !38, line: 349, baseType: !351, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2482, file: !38, line: 350, baseType: !351, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2482, file: !38, line: 351, baseType: !711, size: 64, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2482, file: !38, line: 353, baseType: !711, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2482, file: !38, line: 354, baseType: !188, size: 32, offset: 576)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2482, file: !38, line: 355, baseType: !188, size: 32, offset: 608)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2482, file: !38, line: 356, baseType: !351, size: 64, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2482, file: !38, line: 357, baseType: !351, size: 64, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2482, file: !38, line: 358, baseType: !351, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2482, file: !38, line: 359, baseType: !711, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2482, file: !38, line: 360, baseType: !188, size: 32, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2449, file: !38, line: 436, baseType: !2501, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!188, !529, !2445, !2481}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2449, file: !38, line: 438, baseType: !2478, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2449, file: !38, line: 439, baseType: !2506, size: 64, offset: 576)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!188, !529, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2511)
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2510, file: !38, line: 410, baseType: !7, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2510, file: !38, line: 411, baseType: !2514, size: 1344, offset: 64)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2515, size: 1344, elements: !205)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2516)
!2516 = !{!2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2527}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2515, file: !38, line: 396, baseType: !7, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2515, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2515, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2515, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2515, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2515, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2515, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2515, file: !38, line: 404, baseType: !353, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2515, file: !38, line: 405, baseType: !2526, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !149, line: 126, baseType: !351)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2515, file: !38, line: 406, baseType: !2526, size: 64, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2449, file: !38, line: 440, baseType: !2457, size: 64, offset: 640)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !530, file: !44, line: 1426, baseType: !2530, size: 64, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2532)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !530, file: !44, line: 1427, baseType: !254, size: 64, offset: 640)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !530, file: !44, line: 1428, baseType: !254, size: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !530, file: !44, line: 1429, baseType: !254, size: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !530, file: !44, line: 1430, baseType: !312, size: 64, offset: 832)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !530, file: !44, line: 1431, baseType: !701, size: 256, offset: 896)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !530, file: !44, line: 1432, baseType: !188, size: 32, offset: 1152)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !530, file: !44, line: 1433, baseType: !681, size: 32, offset: 1184)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !530, file: !44, line: 1437, baseType: !2541, size: 64, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2544)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !530, file: !44, line: 1449, baseType: !2546, size: 64, offset: 1280)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !328, line: 34, size: 64, elements: !2547)
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2546, file: !328, line: 35, baseType: !331, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !530, file: !44, line: 1450, baseType: !148, size: 128, offset: 1344)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !530, file: !44, line: 1451, baseType: !2551, size: 64, offset: 1472)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !530, file: !44, line: 1452, baseType: !1859, size: 64, offset: 1536)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !530, file: !44, line: 1453, baseType: !2555, size: 64, offset: 1600)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !530, file: !44, line: 1454, baseType: !572, size: 128, offset: 1664)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !530, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !530, file: !44, line: 1456, baseType: !2560, size: 2432, offset: 1856)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2566, !2598}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2560, file: !38, line: 519, baseType: !7, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2560, file: !38, line: 520, baseType: !701, size: 256, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2560, file: !38, line: 521, baseType: !2565, size: 192, offset: 320)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 192, elements: !205)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2560, file: !38, line: 522, baseType: !2567, size: 1728, offset: 512)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2568, size: 1728, elements: !205)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2569)
!2569 = !{!2570, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2568, file: !38, line: 223, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2573)
!2573 = !{!2574, !2575, !2588, !2589}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2572, file: !38, line: 444, baseType: !188, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2572, file: !38, line: 445, baseType: !2576, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2578, file: !38, line: 311, baseType: !618, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2578, file: !38, line: 312, baseType: !618, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2578, file: !38, line: 313, baseType: !618, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2578, file: !38, line: 314, baseType: !618, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2578, file: !38, line: 315, baseType: !2370, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2578, file: !38, line: 316, baseType: !2370, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2578, file: !38, line: 317, baseType: !2370, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2578, file: !38, line: 318, baseType: !2442, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2572, file: !38, line: 446, baseType: !563, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2572, file: !38, line: 447, baseType: !2571, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2568, file: !38, line: 224, baseType: !188, size: 32, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2568, file: !38, line: 226, baseType: !148, size: 128, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2568, file: !38, line: 227, baseType: !254, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2568, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2568, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2568, file: !38, line: 230, baseType: !2406, size: 64, offset: 384)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2568, file: !38, line: 231, baseType: !2406, size: 64, offset: 448)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2568, file: !38, line: 232, baseType: !131, size: 64, offset: 512)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2560, file: !38, line: 523, baseType: !2599, size: 192, offset: 2240)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2576, size: 192, elements: !205)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !530, file: !44, line: 1458, baseType: !2601, size: 2112, offset: 4288)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2602)
!2602 = !{!2603, !2604, !2605}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2601, file: !44, line: 1411, baseType: !188, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2601, file: !44, line: 1412, baseType: !1415, size: 128, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2601, file: !44, line: 1413, baseType: !2606, size: 1920, offset: 192)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2607, size: 1920, elements: !205)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2608, line: 12, size: 640, elements: !2609)
!2608 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2609 = !{!2610, !2618, !2620, !2625, !2626}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2607, file: !2608, line: 13, baseType: !2611, size: 320)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2612, line: 17, size: 320, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !{!2614, !2615, !2616, !2617}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2611, file: !2612, line: 18, baseType: !188, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2611, file: !2612, line: 19, baseType: !188, size: 32, offset: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2611, file: !2612, line: 20, baseType: !1415, size: 128, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2611, file: !2612, line: 22, baseType: !295, size: 128, align: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2607, file: !2608, line: 14, baseType: !2619, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2607, file: !2608, line: 15, baseType: !2621, size: 64, offset: 384)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2622, line: 16, size: 64, elements: !2623)
!2622 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2623 = !{!2624}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2621, file: !2622, line: 17, baseType: !1150, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2607, file: !2608, line: 16, baseType: !1415, size: 128, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2607, file: !2608, line: 17, baseType: !681, size: 32, offset: 576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !530, file: !44, line: 1465, baseType: !131, size: 64, offset: 6400)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !530, file: !44, line: 1468, baseType: !345, size: 32, offset: 6464)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !530, file: !44, line: 1470, baseType: !469, size: 64, offset: 6528)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !530, file: !44, line: 1471, baseType: !469, size: 64, offset: 6592)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !530, file: !44, line: 1473, baseType: !347, size: 32, offset: 6656)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !530, file: !44, line: 1474, baseType: !2633, size: 64, offset: 6720)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !530, file: !44, line: 1477, baseType: !2636, size: 256, offset: 6784)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !2166)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !530, file: !44, line: 1478, baseType: !2638, size: 128, offset: 7040)
!2638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2639, line: 18, baseType: !2640)
!2639 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2639, line: 16, size: 128, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2640, file: !2639, line: 17, baseType: !2643, size: 128)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 128, elements: !1669)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !530, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !530, file: !44, line: 1481, baseType: !2646, size: 32, offset: 7200)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !149, line: 150, baseType: !7)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !530, file: !44, line: 1487, baseType: !1107, size: 192, offset: 7232)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !530, file: !44, line: 1493, baseType: !144, size: 64, offset: 7424)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !530, file: !44, line: 1495, baseType: !2650, size: 64, offset: 7488)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !310, line: 135, size: 1024, align: 512, elements: !2653)
!2653 = !{!2654, !2658, !2659, !2666, !2672, !2676, !2680, !2684, !2685, !2689, !2693, !2698, !2702}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2652, file: !310, line: 136, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!188, !312, !7}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2652, file: !310, line: 137, baseType: !2655, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2652, file: !310, line: 138, baseType: !2660, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!188, !2663, !2665}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2652, file: !310, line: 139, baseType: !2667, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!188, !2663, !7, !144, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2652, file: !310, line: 141, baseType: !2673, size: 64, offset: 256)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!188, !2663}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2652, file: !310, line: 142, baseType: !2677, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!188, !312}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2652, file: !310, line: 143, baseType: !2681, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !312}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2652, file: !310, line: 144, baseType: !2681, size: 64, offset: 448)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2652, file: !310, line: 145, baseType: !2686, size: 64, offset: 512)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{null, !312, !359}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2652, file: !310, line: 146, baseType: !2690, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!204, !312, !204, !188}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2652, file: !310, line: 147, baseType: !2694, size: 64, offset: 640)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!308, !2697}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2652, file: !310, line: 148, baseType: !2699, size: 64, offset: 704)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!188, !479, !420}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2652, file: !310, line: 149, baseType: !2703, size: 64, offset: 768)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!312, !312, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !530, file: !44, line: 1500, baseType: !188, size: 32, offset: 7552)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !530, file: !44, line: 1502, baseType: !2710, size: 448, offset: 7616)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2354, line: 60, size: 448, elements: !2711)
!2711 = !{!2712, !2717, !2718, !2719, !2720, !2721, !2722}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2710, file: !2354, line: 61, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!254, !2716, !2352}
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2710, file: !2354, line: 63, baseType: !2713, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2710, file: !2354, line: 66, baseType: !239, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2710, file: !2354, line: 67, baseType: !188, size: 32, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2710, file: !2354, line: 68, baseType: !7, size: 32, offset: 224)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2710, file: !2354, line: 71, baseType: !148, size: 128, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2710, file: !2354, line: 77, baseType: !2723, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !530, file: !44, line: 1505, baseType: !705, size: 64, offset: 8064)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !530, file: !44, line: 1508, baseType: !705, size: 64, offset: 8128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !530, file: !44, line: 1511, baseType: !188, size: 32, offset: 8192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !530, file: !44, line: 1514, baseType: !843, size: 32, offset: 8224)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !530, file: !44, line: 1517, baseType: !2729, size: 64, offset: 8256)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1894, line: 18, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !530, file: !44, line: 1518, baseType: !568, size: 64, offset: 8320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !530, file: !44, line: 1525, baseType: !1647, size: 64, offset: 8384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !530, file: !44, line: 1532, baseType: !2734, size: 64, offset: 8448)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2735, line: 52, size: 64, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2734, file: !2735, line: 53, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2735, line: 40, size: 256, elements: !2740)
!2740 = !{!2741, !2742, !2747}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2739, file: !2735, line: 42, baseType: !162)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2739, file: !2735, line: 44, baseType: !2743, size: 192)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2735, line: 28, size: 192, elements: !2744)
!2744 = !{!2745, !2746}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2743, file: !2735, line: 29, baseType: !148, size: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2743, file: !2735, line: 31, baseType: !239, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2739, file: !2735, line: 49, baseType: !239, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !530, file: !44, line: 1533, baseType: !2734, size: 64, offset: 8512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !530, file: !44, line: 1534, baseType: !295, size: 128, align: 64, offset: 8576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !530, file: !44, line: 1535, baseType: !1893, size: 256, offset: 8704)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !530, file: !44, line: 1537, baseType: !1107, size: 192, offset: 8960)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !530, file: !44, line: 1542, baseType: !188, size: 32, offset: 9152)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !530, file: !44, line: 1545, baseType: !162, offset: 9184)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !530, file: !44, line: 1546, baseType: !148, size: 128, offset: 9216)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !530, file: !44, line: 1548, baseType: !162, offset: 9344)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !530, file: !44, line: 1549, baseType: !148, size: 128, offset: 9344)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !360, file: !44, line: 624, baseType: !667, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !360, file: !44, line: 631, baseType: !254, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 639, baseType: !2760, size: 32, offset: 384)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 639, size: 32, elements: !2761)
!2761 = !{!2762, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2760, file: !44, line: 640, baseType: !2763, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2760, file: !44, line: 641, baseType: !7, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !360, file: !44, line: 643, baseType: !443, size: 32, offset: 416)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !360, file: !44, line: 644, baseType: !461, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !360, file: !44, line: 645, baseType: !465, size: 128, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !360, file: !44, line: 646, baseType: !465, size: 128, offset: 640)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !360, file: !44, line: 647, baseType: !465, size: 128, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !360, file: !44, line: 648, baseType: !162, offset: 896)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !360, file: !44, line: 649, baseType: !246, size: 16, offset: 896)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !360, file: !44, line: 650, baseType: !1286, size: 8, offset: 912)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !360, file: !44, line: 651, baseType: !1286, size: 8, offset: 920)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !360, file: !44, line: 652, baseType: !2526, size: 64, offset: 960)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !360, file: !44, line: 659, baseType: !254, size: 64, offset: 1024)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !360, file: !44, line: 660, baseType: !701, size: 256, offset: 1088)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !360, file: !44, line: 662, baseType: !254, size: 64, offset: 1344)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !360, file: !44, line: 663, baseType: !254, size: 64, offset: 1408)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !360, file: !44, line: 665, baseType: !572, size: 128, offset: 1472)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !360, file: !44, line: 666, baseType: !148, size: 128, offset: 1600)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !360, file: !44, line: 675, baseType: !148, size: 128, offset: 1728)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !360, file: !44, line: 676, baseType: !148, size: 128, offset: 1856)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !360, file: !44, line: 677, baseType: !148, size: 128, offset: 1984)
!2784 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 678, baseType: !2785, size: 128, offset: 2112)
!2785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 678, size: 128, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2785, file: !44, line: 679, baseType: !568, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2785, file: !44, line: 680, baseType: !295, size: 128, align: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !360, file: !44, line: 682, baseType: !707, size: 64, offset: 2240)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !360, file: !44, line: 683, baseType: !707, size: 64, offset: 2304)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !360, file: !44, line: 684, baseType: !681, size: 32, offset: 2368)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !360, file: !44, line: 685, baseType: !681, size: 32, offset: 2400)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !360, file: !44, line: 686, baseType: !681, size: 32, offset: 2432)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !360, file: !44, line: 688, baseType: !681, size: 32, offset: 2464)
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 690, baseType: !2796, size: 64, offset: 2496)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 690, size: 64, elements: !2797)
!2797 = !{!2798, !3021}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2796, file: !44, line: 691, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2802)
!2802 = !{!2803, !2804, !2808, !2813, !2817, !2818, !2819, !2823, !2836, !2837, !2845, !2849, !2850, !2854, !2855, !2859, !2864, !2865, !2869, !2873, !2981, !2985, !2986, !2990, !2991, !2995, !2999, !3004, !3008, !3012, !3016, !3020}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2801, file: !44, line: 1823, baseType: !563, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2801, file: !44, line: 1824, baseType: !2805, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!461, !282, !461, !188}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2801, file: !44, line: 1825, baseType: !2809, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!235, !282, !204, !251, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2801, file: !44, line: 1826, baseType: !2814, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!235, !282, !144, !251, !2812}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2801, file: !44, line: 1827, baseType: !778, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2801, file: !44, line: 1828, baseType: !778, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2801, file: !44, line: 1829, baseType: !2820, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!188, !781, !420}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2801, file: !44, line: 1830, baseType: !2824, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!188, !282, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2829)
!2829 = !{!2830, !2835}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2828, file: !44, line: 1777, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2832)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!188, !2827, !144, !188, !461, !351, !7}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2828, file: !44, line: 1778, baseType: !461, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2801, file: !44, line: 1831, baseType: !2824, size: 64, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2801, file: !44, line: 1832, baseType: !2838, size: 64, offset: 576)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!2841, !282, !2843}
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2842, line: 52, baseType: !7)
!2842 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !549, line: 27, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2801, file: !44, line: 1833, baseType: !2846, size: 64, offset: 640)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!239, !282, !7, !254}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2801, file: !44, line: 1834, baseType: !2846, size: 64, offset: 704)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2801, file: !44, line: 1835, baseType: !2851, size: 64, offset: 768)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!188, !282, !915}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2801, file: !44, line: 1836, baseType: !254, size: 64, offset: 832)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2801, file: !44, line: 1837, baseType: !2856, size: 64, offset: 896)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!188, !359, !282}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2801, file: !44, line: 1838, baseType: !2860, size: 64, offset: 960)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!188, !282, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !131)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2801, file: !44, line: 1839, baseType: !2856, size: 64, offset: 1024)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2801, file: !44, line: 1840, baseType: !2866, size: 64, offset: 1088)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!188, !282, !461, !461, !188}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2801, file: !44, line: 1841, baseType: !2870, size: 64, offset: 1152)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!188, !188, !282, !188}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2801, file: !44, line: 1842, baseType: !2874, size: 64, offset: 1216)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!188, !282, !188, !2877}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2911, !2912, !2913, !2926, !2957}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2878, file: !44, line: 1063, baseType: !2877, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2878, file: !44, line: 1064, baseType: !148, size: 128, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2878, file: !44, line: 1065, baseType: !572, size: 128, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2878, file: !44, line: 1066, baseType: !148, size: 128, offset: 320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2878, file: !44, line: 1069, baseType: !148, size: 128, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2878, file: !44, line: 1072, baseType: !2863, size: 64, offset: 576)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2878, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2878, file: !44, line: 1074, baseType: !357, size: 8, offset: 672)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2878, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2878, file: !44, line: 1076, baseType: !188, size: 32, offset: 736)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2878, file: !44, line: 1077, baseType: !1415, size: 128, offset: 768)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2878, file: !44, line: 1078, baseType: !282, size: 64, offset: 896)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2878, file: !44, line: 1079, baseType: !461, size: 64, offset: 960)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2878, file: !44, line: 1080, baseType: !461, size: 64, offset: 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2878, file: !44, line: 1082, baseType: !2895, size: 64, offset: 1088)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2897)
!2897 = !{!2898, !2906, !2907, !2908, !2909, !2910}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2896, file: !44, line: 1315, baseType: !2899)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2900, line: 20, baseType: !2901)
!2900 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2900, line: 11, elements: !2902)
!2902 = !{!2903}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2901, file: !2900, line: 12, baseType: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !174, line: 33, baseType: !2905)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 31, elements: !176)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2896, file: !44, line: 1316, baseType: !188, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2896, file: !44, line: 1317, baseType: !188, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2896, file: !44, line: 1318, baseType: !2895, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2896, file: !44, line: 1319, baseType: !282, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2896, file: !44, line: 1320, baseType: !295, size: 128, align: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2878, file: !44, line: 1084, baseType: !254, size: 64, offset: 1152)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2878, file: !44, line: 1085, baseType: !254, size: 64, offset: 1216)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2878, file: !44, line: 1087, baseType: !2914, size: 64, offset: 1280)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2916)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2917)
!2917 = !{!2918, !2922}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2916, file: !44, line: 1012, baseType: !2919, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2877, !2877}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2916, file: !44, line: 1013, baseType: !2923, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2877}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2878, file: !44, line: 1088, baseType: !2927, size: 64, offset: 1344)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2930)
!2930 = !{!2931, !2935, !2939, !2940, !2944, !2948, !2952, !2956}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2929, file: !44, line: 1017, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!2863, !2863}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2929, file: !44, line: 1018, baseType: !2936, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2863}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2929, file: !44, line: 1019, baseType: !2923, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2929, file: !44, line: 1020, baseType: !2941, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!188, !2877, !188}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2929, file: !44, line: 1021, baseType: !2945, size: 64, offset: 256)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!420, !2877}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2929, file: !44, line: 1022, baseType: !2949, size: 64, offset: 320)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!188, !2877, !188, !152}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2929, file: !44, line: 1023, baseType: !2953, size: 64, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2877, !755}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2929, file: !44, line: 1024, baseType: !2945, size: 64, offset: 448)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2878, file: !44, line: 1097, baseType: !2958, size: 256, offset: 1408)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !44, line: 1089, size: 256, elements: !2959)
!2959 = !{!2960, !2969, !2975}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2958, file: !44, line: 1090, baseType: !2961, size: 256)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2962, line: 10, size: 256, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2963 = !{!2964, !2965, !2968}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2961, file: !2962, line: 11, baseType: !345, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2961, file: !2962, line: 12, baseType: !2966, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2962, line: 5, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2961, file: !2962, line: 13, baseType: !148, size: 128, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2958, file: !44, line: 1091, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2962, line: 17, size: 64, elements: !2971)
!2971 = !{!2972}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2970, file: !2962, line: 18, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2962, line: 16, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2958, file: !44, line: 1096, baseType: !2976, size: 192)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !44, line: 1092, size: 192, elements: !2977)
!2977 = !{!2978, !2979, !2980}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2976, file: !44, line: 1093, baseType: !148, size: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2976, file: !44, line: 1094, baseType: !188, size: 32, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2976, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2801, file: !44, line: 1843, baseType: !2982, size: 64, offset: 1280)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!235, !282, !654, !188, !251, !2812, !188}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2801, file: !44, line: 1844, baseType: !1035, size: 64, offset: 1344)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2801, file: !44, line: 1845, baseType: !2987, size: 64, offset: 1408)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!188, !188}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2801, file: !44, line: 1846, baseType: !2874, size: 64, offset: 1472)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2801, file: !44, line: 1847, baseType: !2992, size: 64, offset: 1536)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!235, !2034, !282, !2812, !251, !7}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2801, file: !44, line: 1848, baseType: !2996, size: 64, offset: 1600)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!235, !282, !2812, !2034, !251, !7}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2801, file: !44, line: 1849, baseType: !3000, size: 64, offset: 1664)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!188, !282, !239, !3003, !755}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2801, file: !44, line: 1850, baseType: !3005, size: 64, offset: 1728)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!239, !282, !188, !461, !461}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2801, file: !44, line: 1852, baseType: !3009, size: 64, offset: 1792)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !644, !282}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2801, file: !44, line: 1856, baseType: !3013, size: 64, offset: 1856)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!235, !282, !461, !282, !461, !251, !7}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2801, file: !44, line: 1858, baseType: !3017, size: 64, offset: 1920)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!461, !282, !461, !282, !461, !461, !7}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2801, file: !44, line: 1861, baseType: !2866, size: 64, offset: 1984)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2796, file: !44, line: 692, baseType: !597, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !360, file: !44, line: 694, baseType: !3023, size: 64, offset: 2560)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3025)
!3025 = !{!3026, !3027, !3028, !3029}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3024, file: !44, line: 1101, baseType: !162)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3024, file: !44, line: 1102, baseType: !148, size: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3024, file: !44, line: 1103, baseType: !148, size: 128, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3024, file: !44, line: 1104, baseType: !148, size: 128, offset: 256)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !360, file: !44, line: 695, baseType: !668, size: 1216, align: 64, offset: 2624)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !360, file: !44, line: 696, baseType: !148, size: 128, offset: 3840)
!3032 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 697, baseType: !3033, size: 64, offset: 3968)
!3033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 697, size: 64, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3040, !3041}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3033, file: !44, line: 698, baseType: !2034, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3033, file: !44, line: 699, baseType: !2551, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3033, file: !44, line: 700, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3033, file: !44, line: 701, baseType: !204, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3033, file: !44, line: 702, baseType: !7, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !360, file: !44, line: 705, baseType: !347, size: 32, offset: 4032)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !360, file: !44, line: 708, baseType: !347, size: 32, offset: 4064)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !360, file: !44, line: 709, baseType: !2633, size: 64, offset: 4096)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !360, file: !44, line: 720, baseType: !131, size: 64, offset: 4160)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !313, file: !310, line: 98, baseType: !3047, size: 256, offset: 448)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 256, elements: !2166)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !313, file: !310, line: 101, baseType: !3049, size: 32, offset: 704)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3050, line: 25, size: 32, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3051 = !{!3052}
!3052 = !DIDerivedType(tag: DW_TAG_member, scope: !3049, file: !3050, line: 26, baseType: !3053, size: 32)
!3053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3049, file: !3050, line: 26, size: 32, elements: !3054)
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !3053, file: !3050, line: 30, baseType: !3056, size: 32)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3053, file: !3050, line: 30, size: 32, elements: !3057)
!3057 = !{!3058, !3059}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3056, file: !3050, line: 31, baseType: !162)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3056, file: !3050, line: 32, baseType: !188, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !313, file: !310, line: 102, baseType: !2650, size: 64, offset: 768)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !313, file: !310, line: 103, baseType: !529, size: 64, offset: 832)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !313, file: !310, line: 104, baseType: !254, size: 64, offset: 896)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !313, file: !310, line: 105, baseType: !131, size: 64, offset: 960)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !310, line: 107, baseType: !3065, size: 128, offset: 1024)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !310, line: 107, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3065, file: !310, line: 108, baseType: !148, size: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3065, file: !310, line: 109, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !313, file: !310, line: 111, baseType: !148, size: 128, offset: 1152)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !313, file: !310, line: 112, baseType: !148, size: 128, offset: 1280)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !313, file: !310, line: 120, baseType: !3073, size: 128, offset: 1408)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !310, line: 116, size: 128, elements: !3074)
!3074 = !{!3075, !3076, !3077}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3073, file: !310, line: 117, baseType: !572, size: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3073, file: !310, line: 118, baseType: !327, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3073, file: !310, line: 119, baseType: !295, size: 128, align: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !283, file: !44, line: 922, baseType: !359, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !283, file: !44, line: 923, baseType: !2799, size: 64, offset: 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !283, file: !44, line: 929, baseType: !162, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !283, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !283, file: !44, line: 931, baseType: !705, size: 64, offset: 448)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !283, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !283, file: !44, line: 933, baseType: !2646, size: 32, offset: 544)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !283, file: !44, line: 934, baseType: !1107, size: 192, offset: 576)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !283, file: !44, line: 935, baseType: !461, size: 64, offset: 768)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !283, file: !44, line: 936, baseType: !3088, size: 192, offset: 832)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3094, !3095}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3088, file: !44, line: 886, baseType: !2899)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3088, file: !44, line: 887, baseType: !1405, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3088, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3088, file: !44, line: 889, baseType: !365, size: 32, offset: 96)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3088, file: !44, line: 889, baseType: !365, size: 32, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3088, file: !44, line: 890, baseType: !188, size: 32, offset: 160)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !283, file: !44, line: 937, baseType: !1481, size: 64, offset: 1024)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !283, file: !44, line: 938, baseType: !3098, size: 256, offset: 1088)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103, !3104, !3105}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3098, file: !44, line: 897, baseType: !254, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3098, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3098, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3098, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3098, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3098, file: !44, line: 904, baseType: !461, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !283, file: !44, line: 940, baseType: !351, size: 64, offset: 1344)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !283, file: !44, line: 945, baseType: !131, size: 64, offset: 1408)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !283, file: !44, line: 949, baseType: !148, size: 128, offset: 1472)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !283, file: !44, line: 950, baseType: !148, size: 128, offset: 1600)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !283, file: !44, line: 952, baseType: !667, size: 64, offset: 1728)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !283, file: !44, line: 953, baseType: !843, size: 32, offset: 1792)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !283, file: !44, line: 954, baseType: !843, size: 32, offset: 1824)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !273, file: !229, line: 174, baseType: !279, size: 64, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !273, file: !229, line: 176, baseType: !3115, size: 64, offset: 384)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!188, !282, !155, !272, !915}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !261, file: !229, line: 90, baseType: !256, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !261, file: !229, line: 91, baseType: !3120, size: 64, offset: 256)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !219, file: !141, line: 143, baseType: !3122, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!3125, !155}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3127)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3128)
!3128 = !{!3129, !3130, !3134, !3138, !3144, !3148}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3127, file: !61, line: 40, baseType: !60, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3127, file: !61, line: 41, baseType: !3131, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!420}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3127, file: !61, line: 42, baseType: !3135, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!131}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3127, file: !61, line: 43, baseType: !3139, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!2063, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3127, file: !61, line: 44, baseType: !3145, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!2063}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3127, file: !61, line: 45, baseType: !398, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !219, file: !141, line: 144, baseType: !3150, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!2063, !155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !219, file: !141, line: 145, baseType: !3154, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !155, !3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !140, file: !141, line: 70, baseType: !3160, size: 64, offset: 384)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !549, line: 123, size: 1024, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3291, !3292, !3293, !3294, !3295}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3161, file: !549, line: 124, baseType: !681, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3161, file: !549, line: 125, baseType: !681, size: 32, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3161, file: !549, line: 135, baseType: !3160, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3161, file: !549, line: 136, baseType: !144, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3161, file: !549, line: 138, baseType: !694, size: 192, align: 64, offset: 192)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3161, file: !549, line: 140, baseType: !2063, size: 64, offset: 384)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3161, file: !549, line: 141, baseType: !7, size: 32, offset: 448)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !549, line: 142, baseType: !3171, size: 256, offset: 512)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3161, file: !549, line: 142, size: 256, elements: !3172)
!3172 = !{!3173, !3219, !3223}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3171, file: !549, line: 143, baseType: !3174, size: 192)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !549, line: 91, size: 192, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3174, file: !549, line: 92, baseType: !254, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3174, file: !549, line: 94, baseType: !690, size: 64, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3174, file: !549, line: 100, baseType: !3179, size: 64, offset: 128)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !549, line: 180, size: 704, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3191, !3192, !3193, !3217, !3218}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3180, file: !549, line: 182, baseType: !3160, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3180, file: !549, line: 183, baseType: !7, size: 32, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3180, file: !549, line: 186, baseType: !3185, size: 192, offset: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3186, line: 19, size: 192, elements: !3187)
!3186 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3187 = !{!3188, !3189, !3190}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3185, file: !3186, line: 20, baseType: !672, size: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3185, file: !3186, line: 21, baseType: !7, size: 32, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3185, file: !3186, line: 22, baseType: !7, size: 32, offset: 160)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3180, file: !549, line: 187, baseType: !345, size: 32, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3180, file: !549, line: 188, baseType: !345, size: 32, offset: 352)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3180, file: !549, line: 189, baseType: !3194, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !549, line: 168, size: 320, elements: !3196)
!3196 = !{!3197, !3201, !3205, !3209, !3213}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3195, file: !549, line: 169, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!188, !644, !3179}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3195, file: !549, line: 171, baseType: !3202, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!188, !3160, !144, !245}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3195, file: !549, line: 173, baseType: !3206, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!188, !3160}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3195, file: !549, line: 174, baseType: !3210, size: 64, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!188, !3160, !3160, !144}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3195, file: !549, line: 176, baseType: !3214, size: 64, offset: 256)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!188, !644, !3160, !3179}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3180, file: !549, line: 192, baseType: !148, size: 128, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3180, file: !549, line: 194, baseType: !1415, size: 128, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3171, file: !549, line: 144, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !549, line: 103, size: 64, elements: !3221)
!3221 = !{!3222}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3220, file: !549, line: 104, baseType: !3160, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3171, file: !549, line: 145, baseType: !3224, size: 256)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !549, line: 107, size: 256, elements: !3225)
!3225 = !{!3226, !3286, !3289, !3290}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3224, file: !549, line: 108, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !549, line: 217, size: 768, elements: !3230)
!3230 = !{!3231, !3251, !3255, !3259, !3263, !3267, !3271, !3275, !3276, !3277, !3278, !3282}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3229, file: !549, line: 222, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!188, !3235}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !549, line: 197, size: 1088, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3236, file: !549, line: 199, baseType: !3160, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3236, file: !549, line: 200, baseType: !282, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3236, file: !549, line: 201, baseType: !644, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3236, file: !549, line: 202, baseType: !131, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3236, file: !549, line: 205, baseType: !1107, size: 192, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3236, file: !549, line: 206, baseType: !1107, size: 192, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3236, file: !549, line: 207, baseType: !188, size: 32, offset: 640)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3236, file: !549, line: 208, baseType: !148, size: 128, offset: 704)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3236, file: !549, line: 209, baseType: !204, size: 64, offset: 832)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3236, file: !549, line: 211, baseType: !251, size: 64, offset: 896)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3236, file: !549, line: 212, baseType: !420, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3236, file: !549, line: 213, baseType: !420, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3236, file: !549, line: 214, baseType: !943, size: 64, offset: 1024)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3229, file: !549, line: 223, baseType: !3252, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{null, !3235}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3229, file: !549, line: 236, baseType: !3256, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!188, !644, !131}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3229, file: !549, line: 238, baseType: !3260, size: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!131, !644, !2812}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3229, file: !549, line: 239, baseType: !3264, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!131, !644, !131, !2812}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3229, file: !549, line: 240, baseType: !3268, size: 64, offset: 320)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !644, !131}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3229, file: !549, line: 242, baseType: !3272, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!235, !3235, !204, !251, !461}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3229, file: !549, line: 252, baseType: !251, size: 64, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3229, file: !549, line: 259, baseType: !420, size: 8, offset: 512)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3229, file: !549, line: 260, baseType: !3272, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3229, file: !549, line: 263, baseType: !3279, size: 64, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!2841, !3235, !2843}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3229, file: !549, line: 266, baseType: !3283, size: 64, offset: 704)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!188, !3235, !915}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3224, file: !549, line: 109, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !549, line: 31, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3224, file: !549, line: 110, baseType: !461, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3224, file: !549, line: 111, baseType: !3160, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3161, file: !549, line: 148, baseType: !131, size: 64, offset: 768)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3161, file: !549, line: 154, baseType: !351, size: 64, offset: 832)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3161, file: !549, line: 156, baseType: !246, size: 16, offset: 896)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3161, file: !549, line: 157, baseType: !245, size: 16, offset: 912)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3161, file: !549, line: 158, baseType: !3296, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !549, line: 32, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !140, file: !141, line: 71, baseType: !3299, size: 32, offset: 448)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3300, line: 19, size: 32, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3301 = !{!3302}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3299, file: !3300, line: 20, baseType: !1164, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !140, file: !141, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !140, file: !141, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !140, file: !141, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !140, file: !141, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !140, file: !141, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !137, file: !73, line: 463, baseType: !3309, size: 64, offset: 512)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !137, file: !73, line: 465, baseType: !3311, size: 64, offset: 576)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !137, file: !73, line: 467, baseType: !144, size: 64, offset: 640)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !73, line: 468, baseType: !3315, size: 64, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3317)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3325, !3330, !3334}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3317, file: !73, line: 88, baseType: !144, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3317, file: !73, line: 89, baseType: !258, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3317, file: !73, line: 90, baseType: !3322, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!188, !3309, !199}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3317, file: !73, line: 91, baseType: !3326, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!204, !3309, !3329, !3157, !3158}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3317, file: !73, line: 93, baseType: !3331, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{null, !3309}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3317, file: !73, line: 95, baseType: !3335, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3337)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3338)
!3338 = !{!3339, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3337, file: !80, line: 279, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!188, !3309}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3337, file: !80, line: 280, baseType: !3331, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3337, file: !80, line: 281, baseType: !3340, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3337, file: !80, line: 282, baseType: !3340, size: 64, offset: 192)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3337, file: !80, line: 283, baseType: !3340, size: 64, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3337, file: !80, line: 284, baseType: !3340, size: 64, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3337, file: !80, line: 285, baseType: !3340, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3337, file: !80, line: 286, baseType: !3340, size: 64, offset: 448)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3337, file: !80, line: 287, baseType: !3340, size: 64, offset: 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3337, file: !80, line: 288, baseType: !3340, size: 64, offset: 576)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3337, file: !80, line: 289, baseType: !3340, size: 64, offset: 640)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3337, file: !80, line: 290, baseType: !3340, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3337, file: !80, line: 291, baseType: !3340, size: 64, offset: 768)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3337, file: !80, line: 292, baseType: !3340, size: 64, offset: 832)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3337, file: !80, line: 293, baseType: !3340, size: 64, offset: 896)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3337, file: !80, line: 294, baseType: !3340, size: 64, offset: 960)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3337, file: !80, line: 295, baseType: !3340, size: 64, offset: 1024)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3337, file: !80, line: 296, baseType: !3340, size: 64, offset: 1088)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3337, file: !80, line: 297, baseType: !3340, size: 64, offset: 1152)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3337, file: !80, line: 298, baseType: !3340, size: 64, offset: 1216)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3337, file: !80, line: 299, baseType: !3340, size: 64, offset: 1280)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3337, file: !80, line: 300, baseType: !3340, size: 64, offset: 1344)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3337, file: !80, line: 301, baseType: !3340, size: 64, offset: 1408)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !137, file: !73, line: 470, baseType: !3366, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3368, line: 82, size: 1408, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3451, !3454, !3455}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3367, file: !3368, line: 83, baseType: !144, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3367, file: !3368, line: 84, baseType: !144, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3367, file: !3368, line: 85, baseType: !3309, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3367, file: !3368, line: 86, baseType: !258, size: 64, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3367, file: !3368, line: 87, baseType: !258, size: 64, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3367, file: !3368, line: 88, baseType: !258, size: 64, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3367, file: !3368, line: 90, baseType: !3377, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!188, !3309, !3380}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389, !3402, !3415, !3416, !3417, !3418, !3419, !3427, !3428, !3429, !3430, !3431, !3432}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3381, file: !67, line: 96, baseType: !144, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3381, file: !67, line: 97, baseType: !3366, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3381, file: !67, line: 99, baseType: !563, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3381, file: !67, line: 100, baseType: !144, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3381, file: !67, line: 102, baseType: !420, size: 8, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3381, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3381, file: !67, line: 105, baseType: !3390, size: 64, offset: 320)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3393, line: 262, size: 1600, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3394 = !{!3395, !3396, !3397, !3401}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3392, file: !3393, line: 263, baseType: !2636, size: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3392, file: !3393, line: 264, baseType: !2636, size: 256, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3392, file: !3393, line: 265, baseType: !3398, size: 1024, offset: 512)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !3399)
!3399 = !{!3400}
!3400 = !DISubrange(count: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3392, file: !3393, line: 266, baseType: !2063, size: 64, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3381, file: !67, line: 106, baseType: !3403, size: 64, offset: 384)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3405)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3393, line: 210, size: 256, elements: !3406)
!3406 = !{!3407, !3411, !3413, !3414}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3405, file: !3393, line: 211, baseType: !3408, size: 72)
!3408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 72, elements: !3409)
!3409 = !{!3410}
!3410 = !DISubrange(count: 9)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3405, file: !3393, line: 212, baseType: !3412, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3393, line: 14, baseType: !254)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3405, file: !3393, line: 213, baseType: !347, size: 32, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3405, file: !3393, line: 214, baseType: !347, size: 32, offset: 224)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3381, file: !67, line: 108, baseType: !3340, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3381, file: !67, line: 109, baseType: !3331, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3381, file: !67, line: 110, baseType: !3340, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3381, file: !67, line: 111, baseType: !3331, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3381, file: !67, line: 112, baseType: !3420, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!188, !3309, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3425)
!3425 = !{!3426}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3424, file: !80, line: 51, baseType: !188, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3381, file: !67, line: 113, baseType: !3340, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3381, file: !67, line: 114, baseType: !258, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3381, file: !67, line: 115, baseType: !258, size: 64, offset: 896)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3381, file: !67, line: 117, baseType: !3335, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3381, file: !67, line: 118, baseType: !3331, size: 64, offset: 1024)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3381, file: !67, line: 120, baseType: !3433, size: 64, offset: 1088)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3367, file: !3368, line: 91, baseType: !3322, size: 64, offset: 448)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3367, file: !3368, line: 92, baseType: !3340, size: 64, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3367, file: !3368, line: 93, baseType: !3331, size: 64, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3367, file: !3368, line: 94, baseType: !3340, size: 64, offset: 640)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3367, file: !3368, line: 95, baseType: !3331, size: 64, offset: 704)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3367, file: !3368, line: 97, baseType: !3340, size: 64, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3367, file: !3368, line: 98, baseType: !3340, size: 64, offset: 832)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3367, file: !3368, line: 100, baseType: !3420, size: 64, offset: 896)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3367, file: !3368, line: 101, baseType: !3340, size: 64, offset: 960)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3367, file: !3368, line: 103, baseType: !3340, size: 64, offset: 1024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3367, file: !3368, line: 105, baseType: !3340, size: 64, offset: 1088)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3367, file: !3368, line: 107, baseType: !3335, size: 64, offset: 1152)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3367, file: !3368, line: 109, baseType: !3448, size: 64, offset: 1216)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3450)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3368, line: 109, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3367, file: !3368, line: 111, baseType: !3452, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3368, line: 111, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3367, file: !3368, line: 112, baseType: !578, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3367, file: !3368, line: 114, baseType: !420, size: 8, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !137, file: !73, line: 471, baseType: !3380, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !137, file: !73, line: 473, baseType: !131, size: 64, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !137, file: !73, line: 475, baseType: !131, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !137, file: !73, line: 480, baseType: !1107, size: 192, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !137, file: !73, line: 484, baseType: !3461, size: 576, offset: 1216)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3461, file: !73, line: 362, baseType: !148, size: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3461, file: !73, line: 363, baseType: !148, size: 128, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3461, file: !73, line: 364, baseType: !148, size: 128, offset: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3461, file: !73, line: 365, baseType: !148, size: 128, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3461, file: !73, line: 366, baseType: !420, size: 8, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3461, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !137, file: !73, line: 485, baseType: !3470, size: 2304, offset: 1792)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3567, !3571}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3470, file: !80, line: 566, baseType: !3423, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3470, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3470, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3470, file: !80, line: 569, baseType: !420, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3470, file: !80, line: 570, baseType: !420, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3470, file: !80, line: 571, baseType: !420, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3470, file: !80, line: 572, baseType: !420, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3470, file: !80, line: 573, baseType: !420, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3470, file: !80, line: 574, baseType: !420, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3470, file: !80, line: 575, baseType: !420, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3470, file: !80, line: 576, baseType: !420, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3470, file: !80, line: 577, baseType: !345, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3470, file: !80, line: 578, baseType: !162, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3470, file: !80, line: 580, baseType: !148, size: 128, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3470, file: !80, line: 581, baseType: !1436, size: 192, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3470, file: !80, line: 582, baseType: !3488, size: 64, offset: 448)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3490, line: 43, size: 1472, elements: !3491)
!3490 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3499, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3489, file: !3490, line: 44, baseType: !144, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3489, file: !3490, line: 45, baseType: !188, size: 32, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3489, file: !3490, line: 46, baseType: !148, size: 128, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3489, file: !3490, line: 47, baseType: !162, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3489, file: !3490, line: 48, baseType: !3497, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3489, file: !3490, line: 49, baseType: !3500, size: 320, offset: 320)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3501, line: 11, size: 320, elements: !3502)
!3501 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3502 = !{!3503, !3504, !3505, !3510}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3500, file: !3501, line: 16, baseType: !572, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3500, file: !3501, line: 17, baseType: !254, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3500, file: !3501, line: 18, baseType: !3506, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{null, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3500, file: !3501, line: 19, baseType: !345, size: 32, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3489, file: !3490, line: 50, baseType: !254, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3489, file: !3490, line: 51, baseType: !1234, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3489, file: !3490, line: 52, baseType: !1234, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3489, file: !3490, line: 53, baseType: !1234, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3489, file: !3490, line: 54, baseType: !1234, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3489, file: !3490, line: 55, baseType: !1234, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3489, file: !3490, line: 56, baseType: !254, size: 64, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3489, file: !3490, line: 57, baseType: !254, size: 64, offset: 1088)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3489, file: !3490, line: 58, baseType: !254, size: 64, offset: 1152)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3489, file: !3490, line: 59, baseType: !254, size: 64, offset: 1216)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3489, file: !3490, line: 60, baseType: !254, size: 64, offset: 1280)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3489, file: !3490, line: 61, baseType: !3309, size: 64, offset: 1344)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3489, file: !3490, line: 62, baseType: !420, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3489, file: !3490, line: 63, baseType: !420, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3470, file: !80, line: 583, baseType: !420, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3470, file: !80, line: 584, baseType: !420, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3470, file: !80, line: 585, baseType: !420, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3470, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3470, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3470, file: !80, line: 592, baseType: !1226, size: 512, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3470, file: !80, line: 593, baseType: !351, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3470, file: !80, line: 594, baseType: !1893, size: 256, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3470, file: !80, line: 595, baseType: !1415, size: 128, offset: 1408)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3470, file: !80, line: 596, baseType: !3497, size: 64, offset: 1536)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3470, file: !80, line: 597, baseType: !681, size: 32, offset: 1600)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3470, file: !80, line: 598, baseType: !681, size: 32, offset: 1632)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3470, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3470, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3470, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3470, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3470, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3470, file: !80, line: 604, baseType: !420, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3470, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3470, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3470, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3470, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3470, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3470, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3470, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3470, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3470, file: !80, line: 613, baseType: !188, size: 32, offset: 1792)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3470, file: !80, line: 614, baseType: !188, size: 32, offset: 1824)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3470, file: !80, line: 615, baseType: !351, size: 64, offset: 1856)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3470, file: !80, line: 616, baseType: !351, size: 64, offset: 1920)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3470, file: !80, line: 617, baseType: !351, size: 64, offset: 1984)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3470, file: !80, line: 618, baseType: !351, size: 64, offset: 2048)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3470, file: !80, line: 620, baseType: !3558, size: 64, offset: 2112)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !80, line: 537, baseType: !162)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3559, file: !80, line: 538, baseType: !7, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3559, file: !80, line: 540, baseType: !148, size: 128, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3559, file: !80, line: 543, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3470, file: !80, line: 621, baseType: !3568, size: 64, offset: 2176)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !3309, !1378}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3470, file: !80, line: 622, baseType: !3572, size: 64, offset: 2240)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !137, file: !73, line: 486, baseType: !3575, size: 64, offset: 4096)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3577)
!3577 = !{!3578, !3579, !3580, !3584, !3585, !3586}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3576, file: !80, line: 643, baseType: !3337, size: 1472)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3576, file: !80, line: 644, baseType: !3340, size: 64, offset: 1472)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3576, file: !80, line: 645, baseType: !3581, size: 64, offset: 1536)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{null, !3309, !420}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3576, file: !80, line: 646, baseType: !3340, size: 64, offset: 1600)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3576, file: !80, line: 647, baseType: !3331, size: 64, offset: 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3576, file: !80, line: 648, baseType: !3331, size: 64, offset: 1728)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !137, file: !73, line: 493, baseType: !3588, size: 64, offset: 4160)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !137, file: !73, line: 499, baseType: !148, size: 128, offset: 4224)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !137, file: !73, line: 502, baseType: !3592, size: 64, offset: 4352)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3594)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !137, file: !73, line: 504, baseType: !3596, size: 64, offset: 4416)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !137, file: !73, line: 505, baseType: !351, size: 64, offset: 4480)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !137, file: !73, line: 510, baseType: !351, size: 64, offset: 4544)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !137, file: !73, line: 511, baseType: !3600, size: 64, offset: 4608)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3602)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !137, file: !73, line: 513, baseType: !3604, size: 64, offset: 4672)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3606)
!3606 = !{!3607, !3608}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3605, file: !73, line: 293, baseType: !7, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3605, file: !73, line: 294, baseType: !254, size: 64, offset: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !137, file: !73, line: 515, baseType: !148, size: 128, offset: 4736)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !137, file: !73, line: 526, baseType: !3611, offset: 4864)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3612, line: 5, elements: !176)
!3612 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !137, file: !73, line: 528, baseType: !3614, size: 64, offset: 4864)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3616, line: 14, flags: DIFlagFwdDecl)
!3616 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !137, file: !73, line: 529, baseType: !3618, size: 64, offset: 4928)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3620, line: 17, size: 192, elements: !3621)
!3620 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3621 = !{!3622, !3623, !3706}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3619, file: !3620, line: 18, baseType: !3618, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3619, file: !3620, line: 19, baseType: !3624, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3620, line: 110, size: 1152, elements: !3627)
!3627 = !{!3628, !3632, !3636, !3642, !3648, !3652, !3656, !3661, !3665, !3666, !3670, !3674, !3678, !3689, !3690, !3691, !3692, !3702}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3626, file: !3620, line: 111, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!3618, !3618}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3626, file: !3620, line: 112, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !3618}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3626, file: !3620, line: 113, baseType: !3637, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!420, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3626, file: !3620, line: 114, baseType: !3643, size: 64, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!2063, !3640, !3646}
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3626, file: !3620, line: 116, baseType: !3649, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!420, !3640, !144}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3626, file: !3620, line: 118, baseType: !3653, size: 64, offset: 320)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!188, !3640, !144, !7, !131, !251}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3626, file: !3620, line: 123, baseType: !3657, size: 64, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!188, !3640, !144, !3660, !251}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3626, file: !3620, line: 126, baseType: !3662, size: 64, offset: 448)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!144, !3640}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3626, file: !3620, line: 127, baseType: !3662, size: 64, offset: 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3626, file: !3620, line: 128, baseType: !3667, size: 64, offset: 576)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!3618, !3640}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3626, file: !3620, line: 130, baseType: !3671, size: 64, offset: 640)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!3618, !3640, !3618}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3626, file: !3620, line: 133, baseType: !3675, size: 64, offset: 704)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!3618, !3640, !144}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3626, file: !3620, line: 135, baseType: !3679, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!188, !3640, !144, !144, !7, !7, !3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3620, line: 43, size: 640, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3683, file: !3620, line: 44, baseType: !3618, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3683, file: !3620, line: 45, baseType: !7, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3683, file: !3620, line: 46, baseType: !3688, size: 512, offset: 128)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 512, elements: !1264)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3626, file: !3620, line: 140, baseType: !3671, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3626, file: !3620, line: 143, baseType: !3667, size: 64, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3626, file: !3620, line: 145, baseType: !3629, size: 64, offset: 960)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3626, file: !3620, line: 146, baseType: !3693, size: 64, offset: 1024)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!188, !3640, !3696}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3620, line: 29, size: 128, elements: !3698)
!3698 = !{!3699, !3700, !3701}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3697, file: !3620, line: 30, baseType: !7, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3697, file: !3620, line: 31, baseType: !7, size: 32, offset: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3697, file: !3620, line: 32, baseType: !3640, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3626, file: !3620, line: 148, baseType: !3703, size: 64, offset: 1088)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!188, !3640, !3309}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3619, file: !3620, line: 20, baseType: !3309, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !137, file: !73, line: 534, baseType: !443, size: 32, offset: 4992)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !137, file: !73, line: 535, baseType: !345, size: 32, offset: 5024)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !137, file: !73, line: 537, baseType: !162, offset: 5056)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !137, file: !73, line: 538, baseType: !148, size: 128, offset: 5056)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !137, file: !73, line: 540, baseType: !3712, size: 64, offset: 5184)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3714, line: 54, size: 960, elements: !3715)
!3714 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721, !3722, !3726, !3730, !3731, !3732, !3733, !3737, !3741, !3742}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3713, file: !3714, line: 55, baseType: !144, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3713, file: !3714, line: 56, baseType: !563, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3713, file: !3714, line: 58, baseType: !258, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3713, file: !3714, line: 59, baseType: !258, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3713, file: !3714, line: 60, baseType: !155, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3713, file: !3714, line: 62, baseType: !3322, size: 64, offset: 320)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3713, file: !3714, line: 63, baseType: !3723, size: 64, offset: 384)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!204, !3309, !3329}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3713, file: !3714, line: 65, baseType: !3727, size: 64, offset: 448)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3712}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3713, file: !3714, line: 66, baseType: !3331, size: 64, offset: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3713, file: !3714, line: 68, baseType: !3340, size: 64, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3713, file: !3714, line: 70, baseType: !3125, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3713, file: !3714, line: 71, baseType: !3734, size: 64, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!2063, !3309}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3713, file: !3714, line: 73, baseType: !3738, size: 64, offset: 768)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !3309, !3157, !3158}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3713, file: !3714, line: 75, baseType: !3335, size: 64, offset: 832)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3713, file: !3714, line: 77, baseType: !3452, size: 64, offset: 896)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !137, file: !73, line: 541, baseType: !258, size: 64, offset: 5248)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !137, file: !73, line: 543, baseType: !3331, size: 64, offset: 5312)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !137, file: !73, line: 544, baseType: !3746, size: 64, offset: 5376)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !137, file: !73, line: 545, baseType: !3749, size: 64, offset: 5440)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !137, file: !73, line: 547, baseType: !420, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !137, file: !73, line: 548, baseType: !420, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !137, file: !73, line: 549, baseType: !420, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !137, file: !73, line: 550, baseType: !420, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !133, file: !134, line: 22, baseType: !3756, size: 64, offset: 5568)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_interface", file: !94, line: 31, size: 7168, elements: !3758)
!3758 = !{!3759, !3760, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3757, file: !94, line: 32, baseType: !137, size: 5568)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !3757, file: !94, line: 33, baseType: !3761, size: 64, offset: 5568)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control", file: !3763, line: 15, size: 5888, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/greybus/control.h", directory: "/home/lizy2001/genbc/linux")
!3764 = !{!3765, !3766, !3767, !3926, !3927, !3928, !3929, !3930, !3931}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3762, file: !3763, line: 16, baseType: !137, size: 5568)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3762, file: !3763, line: 17, baseType: !3756, size: 64, offset: 5568)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3762, file: !3763, line: 19, baseType: !3768, size: 64, offset: 5632)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_connection", file: !102, line: 38, size: 1408, elements: !3770)
!3770 = !{!3771, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3769, file: !102, line: 39, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_host_device", file: !3774, line: 44, size: 6272, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/greybus/hd.h", directory: "/home/lizy2001/genbc/linux")
!3775 = !{!3776, !3777, !3778, !3869, !3870, !3871, !3875, !3876, !3877, !3902}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3773, file: !3774, line: 45, baseType: !137, size: 5568)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3773, file: !3774, line: 46, baseType: !188, size: 32, offset: 5568)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3773, file: !3774, line: 47, baseType: !3779, size: 64, offset: 5632)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_hd_driver", file: !3774, line: 18, size: 960, elements: !3782)
!3782 = !{!3783, !3784, !3788, !3792, !3796, !3800, !3801, !3802, !3806, !3810, !3811, !3859, !3863, !3864, !3865}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv_size", scope: !3781, file: !3774, line: 19, baseType: !251, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "cport_allocate", scope: !3781, file: !3774, line: 21, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!188, !3772, !188, !254}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "cport_release", scope: !3781, file: !3774, line: 23, baseType: !3789, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{null, !3772, !793}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "cport_enable", scope: !3781, file: !3774, line: 24, baseType: !3793, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!188, !3772, !793, !254}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "cport_disable", scope: !3781, file: !3774, line: 26, baseType: !3797, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!188, !3772, !793}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cport_connected", scope: !3781, file: !3774, line: 27, baseType: !3797, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cport_flush", scope: !3781, file: !3774, line: 28, baseType: !3797, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cport_shutdown", scope: !3781, file: !3774, line: 29, baseType: !3803, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!188, !3772, !793, !1286, !7}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cport_quiesce", scope: !3781, file: !3774, line: 31, baseType: !3807, size: 64, offset: 512)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!188, !3772, !793, !251, !7}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cport_clear", scope: !3781, file: !3774, line: 33, baseType: !3797, size: 64, offset: 576)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "message_send", scope: !3781, file: !3774, line: 35, baseType: !3812, size: 64, offset: 640)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!188, !3772, !793, !3815, !677}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_message", file: !3817, line: 52, size: 384, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/greybus/operation.h", directory: "/home/lizy2001/genbc/linux")
!3818 = !{!3819, !3843, !3855, !3856, !3857, !3858}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "operation", scope: !3816, file: !3817, line: 53, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation", file: !3817, line: 92, size: 1472, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3821, file: !3817, line: 93, baseType: !3768, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3821, file: !3817, line: 94, baseType: !3815, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3821, file: !3817, line: 95, baseType: !3815, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3821, file: !3817, line: 97, baseType: !254, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3821, file: !3817, line: 98, baseType: !1286, size: 8, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3821, file: !3817, line: 99, baseType: !793, size: 16, offset: 272)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "errno", scope: !3821, file: !3817, line: 100, baseType: !188, size: 32, offset: 288)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3821, file: !3817, line: 102, baseType: !1893, size: 256, offset: 320)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3821, file: !3817, line: 103, baseType: !3832, size: 64, offset: 576)
!3832 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_operation_callback", file: !3817, line: 91, baseType: !3833)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{null, !3820}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3821, file: !3817, line: 104, baseType: !1436, size: 192, offset: 640)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3821, file: !3817, line: 105, baseType: !3500, size: 320, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3821, file: !3817, line: 107, baseType: !3299, size: 32, offset: 1152)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3821, file: !3817, line: 108, baseType: !681, size: 32, offset: 1184)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3821, file: !3817, line: 110, baseType: !188, size: 32, offset: 1216)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3821, file: !3817, line: 111, baseType: !148, size: 128, offset: 1280)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3821, file: !3817, line: 113, baseType: !131, size: 64, offset: 1408)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3816, file: !3817, line: 54, baseType: !3844, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation_msg_hdr", file: !3846, line: 46, size: 64, elements: !3847)
!3846 = !DIFile(filename: "./include/linux/greybus/greybus_protocols.h", directory: "/home/lizy2001/genbc/linux")
!3847 = !{!3848, !3850, !3851, !3852, !3853}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3845, file: !3846, line: 47, baseType: !3849, size: 16)
!3849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2842, line: 29, baseType: !794)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !3845, file: !3846, line: 48, baseType: !3849, size: 16, offset: 16)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3845, file: !3846, line: 49, baseType: !1287, size: 8, offset: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3845, file: !3846, line: 50, baseType: !1287, size: 8, offset: 40)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3845, file: !3846, line: 51, baseType: !3854, size: 16, offset: 48)
!3854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 16, elements: !1503)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3816, file: !3817, line: 56, baseType: !131, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "payload_size", scope: !3816, file: !3817, line: 57, baseType: !251, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3816, file: !3817, line: 59, baseType: !131, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3816, file: !3817, line: 61, baseType: !131, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "message_cancel", scope: !3781, file: !3774, line: 37, baseType: !3860, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !3815}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_enable", scope: !3781, file: !3774, line: 38, baseType: !3797, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_disable", scope: !3781, file: !3774, line: 39, baseType: !3797, size: 64, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !3781, file: !3774, line: 40, baseType: !3866, size: 64, offset: 896)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!188, !3772, !131, !793, !1286, !420}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !3773, file: !3774, line: 49, baseType: !148, size: 128, offset: 5696)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !3773, file: !3774, line: 50, baseType: !148, size: 128, offset: 5824)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id_map", scope: !3773, file: !3774, line: 51, baseType: !3872, size: 128, offset: 5952)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3186, line: 244, size: 128, elements: !3873)
!3873 = !{!3874}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3872, file: !3186, line: 245, baseType: !672, size: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !3773, file: !3774, line: 54, baseType: !251, size: 64, offset: 6080)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size_max", scope: !3773, file: !3774, line: 57, baseType: !251, size: 64, offset: 6144)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3773, file: !3774, line: 59, baseType: !3878, size: 64, offset: 6208)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc", file: !109, line: 39, size: 6272, elements: !3880)
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3894, !3895, !3896}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3879, file: !109, line: 40, baseType: !137, size: 5568)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3879, file: !109, line: 42, baseType: !3772, size: 64, offset: 5568)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3879, file: !109, line: 43, baseType: !3768, size: 64, offset: 5632)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3879, file: !109, line: 44, baseType: !108, size: 32, offset: 5696)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_map", scope: !3879, file: !109, line: 45, baseType: !3872, size: 128, offset: 5760)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3879, file: !109, line: 46, baseType: !2729, size: 64, offset: 5888)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "endo_id", scope: !3879, file: !109, line: 48, baseType: !793, size: 16, offset: 5952)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ap_intf_id", scope: !3879, file: !109, line: 49, baseType: !1286, size: 8, offset: 5968)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3879, file: !109, line: 51, baseType: !1286, size: 8, offset: 5976)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3879, file: !109, line: 52, baseType: !1286, size: 8, offset: 5984)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog", scope: !3879, file: !109, line: 54, baseType: !3892, size: 64, offset: 6016)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc_watchdog", file: !109, line: 32, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3879, file: !109, line: 55, baseType: !114, size: 32, offset: 6080)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dentry", scope: !3879, file: !109, line: 57, baseType: !312, size: 64, offset: 6144)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "pwrmon_rails", scope: !3879, file: !109, line: 58, baseType: !3897, size: 64, offset: 6208)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_debugfs_pwrmon_rail", file: !109, line: 34, size: 128, elements: !3899)
!3899 = !{!3900, !3901}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3898, file: !109, line: 35, baseType: !1286, size: 8)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3898, file: !109, line: 36, baseType: !3878, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv", scope: !3773, file: !3774, line: 61, baseType: !3903, align: 64, offset: 6272)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !1657)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3769, file: !102, line: 40, baseType: !3756, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3769, file: !102, line: 41, baseType: !132, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3769, file: !102, line: 42, baseType: !3299, size: 32, offset: 192)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "hd_cport_id", scope: !3769, file: !102, line: 43, baseType: !793, size: 16, offset: 224)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cport_id", scope: !3769, file: !102, line: 44, baseType: !793, size: 16, offset: 240)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "hd_links", scope: !3769, file: !102, line: 46, baseType: !148, size: 128, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bundle_links", scope: !3769, file: !102, line: 47, baseType: !148, size: 128, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3769, file: !102, line: 49, baseType: !3912, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_request_handler_t", file: !102, line: 36, baseType: !3913)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!188, !3820}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3769, file: !102, line: 50, baseType: !254, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3769, file: !102, line: 52, baseType: !1107, size: 192, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3769, file: !102, line: 53, baseType: !162, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3769, file: !102, line: 54, baseType: !101, size: 32, offset: 832)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "operations", scope: !3769, file: !102, line: 55, baseType: !148, size: 128, offset: 896)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3769, file: !102, line: 57, baseType: !1668, size: 128, offset: 1024)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3769, file: !102, line: 58, baseType: !2729, size: 64, offset: 1152)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "op_cycle", scope: !3769, file: !102, line: 60, baseType: !681, size: 32, offset: 1216)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3769, file: !102, line: 62, baseType: !131, size: 64, offset: 1280)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3769, file: !102, line: 64, baseType: !420, size: 8, offset: 1344)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3762, file: !3763, line: 21, baseType: !1286, size: 8, offset: 5696)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3762, file: !3763, line: 22, baseType: !1286, size: 8, offset: 5704)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_activate", scope: !3762, file: !3763, line: 24, baseType: !420, size: 8, offset: 5712)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_version", scope: !3762, file: !3763, line: 25, baseType: !420, size: 8, offset: 5720)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_string", scope: !3762, file: !3763, line: 27, baseType: !204, size: 64, offset: 5760)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "product_string", scope: !3762, file: !3763, line: 28, baseType: !204, size: 64, offset: 5824)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bundles", scope: !3757, file: !94, line: 35, baseType: !148, size: 128, offset: 5632)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "module_node", scope: !3757, file: !94, line: 36, baseType: !148, size: 128, offset: 5760)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "manifest_descs", scope: !3757, file: !94, line: 37, baseType: !148, size: 128, offset: 5888)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "interface_id", scope: !3757, file: !94, line: 38, baseType: !1286, size: 8, offset: 6016)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !3757, file: !94, line: 39, baseType: !1286, size: 8, offset: 6024)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !3757, file: !94, line: 40, baseType: !1286, size: 8, offset: 6032)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3757, file: !94, line: 42, baseType: !93, size: 32, offset: 6048)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_manufacturer_id", scope: !3757, file: !94, line: 44, baseType: !345, size: 32, offset: 6080)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_product_id", scope: !3757, file: !94, line: 45, baseType: !345, size: 32, offset: 6112)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !3757, file: !94, line: 46, baseType: !345, size: 32, offset: 6144)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "product_id", scope: !3757, file: !94, line: 47, baseType: !345, size: 32, offset: 6176)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !3757, file: !94, line: 48, baseType: !351, size: 64, offset: 6208)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3757, file: !94, line: 50, baseType: !3772, size: 64, offset: 6272)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3757, file: !94, line: 51, baseType: !3946, size: 64, offset: 6336)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_module", file: !3948, line: 15, size: 5952, elements: !3949)
!3948 = !DIFile(filename: "./include/linux/greybus/module.h", directory: "/home/lizy2001/genbc/linux")
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3947, file: !3948, line: 16, baseType: !137, size: 5568)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3947, file: !3948, line: 17, baseType: !3772, size: 64, offset: 5568)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "hd_node", scope: !3947, file: !3948, line: 19, baseType: !148, size: 128, offset: 5632)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "module_id", scope: !3947, file: !3948, line: 21, baseType: !1286, size: 8, offset: 5760)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "num_interfaces", scope: !3947, file: !3948, line: 22, baseType: !251, size: 64, offset: 5824)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3947, file: !3948, line: 24, baseType: !420, size: 8, offset: 5888)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !3947, file: !3948, line: 26, baseType: !3957, offset: 5952)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3756, elements: !1657)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3757, file: !94, line: 53, baseType: !254, size: 64, offset: 6400)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3757, file: !94, line: 55, baseType: !1107, size: 192, offset: 6464)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3757, file: !94, line: 57, baseType: !420, size: 8, offset: 6656)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ejected", scope: !3757, file: !94, line: 59, baseType: !420, size: 8, offset: 6664)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3757, file: !94, line: 60, baseType: !420, size: 8, offset: 6672)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3757, file: !94, line: 61, baseType: !420, size: 8, offset: 6680)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3757, file: !94, line: 62, baseType: !420, size: 8, offset: 6688)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3757, file: !94, line: 63, baseType: !420, size: 8, offset: 6696)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "dme_read", scope: !3757, file: !94, line: 64, baseType: !420, size: 8, offset: 6704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_work", scope: !3757, file: !94, line: 66, baseType: !1893, size: 256, offset: 6720)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_completion", scope: !3757, file: !94, line: 67, baseType: !1436, size: 192, offset: 6976)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !133, file: !134, line: 24, baseType: !1286, size: 8, offset: 5632)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !133, file: !134, line: 25, baseType: !1286, size: 8, offset: 5640)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "class_major", scope: !133, file: !134, line: 26, baseType: !1286, size: 8, offset: 5648)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "class_minor", scope: !133, file: !134, line: 27, baseType: !1286, size: 8, offset: 5656)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !133, file: !134, line: 29, baseType: !251, size: 64, offset: 5696)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cport_desc", scope: !133, file: !134, line: 30, baseType: !3975, size: 64, offset: 5760)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_cport", file: !3977, line: 148, size: 32, elements: !3978)
!3977 = !DIFile(filename: "./include/linux/greybus/greybus_manifest.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !{!3979, !3980, !3981}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3976, file: !3977, line: 149, baseType: !3849, size: 16)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3976, file: !3977, line: 150, baseType: !1287, size: 8, offset: 16)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_id", scope: !3976, file: !3977, line: 151, baseType: !1287, size: 8, offset: 24)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !133, file: !134, line: 32, baseType: !148, size: 128, offset: 5824)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !133, file: !134, line: 33, baseType: !3984, size: 64, offset: 5952)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !133, file: !134, line: 35, baseType: !148, size: 128, offset: 6016)
!3986 = !{!0, !3987, !3990, !3992, !3995, !4009}
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "control_groups", scope: !2, file: !3, line: 425, type: !3989, isLocal: true, isDefinition: true)
!3989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, elements: !1503)
!3990 = !DIGlobalVariableExpression(var: !3991, expr: !DIExpression())
!3991 = distinct !DIGlobalVariable(name: "control_group", scope: !2, file: !3, line: 425, type: !260, isLocal: true, isDefinition: true)
!3992 = !DIGlobalVariableExpression(var: !3993, expr: !DIExpression())
!3993 = distinct !DIGlobalVariable(name: "control_attrs", scope: !2, file: !3, line: 420, type: !3994, isLocal: true, isDefinition: true)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 192, elements: !205)
!3995 = !DIGlobalVariableExpression(var: !3996, expr: !DIExpression())
!3996 = distinct !DIGlobalVariable(name: "dev_attr_vendor_string", scope: !2, file: !3, line: 409, type: !3997, isLocal: true, isDefinition: true)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !3998)
!3998 = !{!3999, !4000, !4005}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3997, file: !73, line: 100, baseType: !241, size: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3997, file: !73, line: 101, baseType: !4001, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!235, !3309, !4004, !204}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3997, file: !73, line: 103, baseType: !4006, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!235, !3309, !4004, !144, !251}
!4009 = !DIGlobalVariableExpression(var: !4010, expr: !DIExpression())
!4010 = distinct !DIGlobalVariable(name: "dev_attr_product_string", scope: !2, file: !3, line: 418, type: !3997, isLocal: true, isDefinition: true)
!4011 = !{i32 7, !"Dwarf Version", i32 4}
!4012 = !{i32 2, !"Debug Info Version", i32 3}
!4013 = !{i32 1, !"wchar_size", i32 2}
!4014 = !{i32 1, !"Code Model", i32 2}
!4015 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4016 = distinct !DISubprogram(name: "gb_control_get_bundle_versions", scope: !3, file: !3, line: 85, type: !4017, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!188, !3761}
!4019 = !DILocalVariable(name: "control", arg: 1, scope: !4016, file: !3, line: 85, type: !3761)
!4020 = !DILocation(line: 85, column: 55, scope: !4016)
!4021 = !DILocalVariable(name: "intf", scope: !4016, file: !3, line: 87, type: !3756)
!4022 = !DILocation(line: 87, column: 23, scope: !4016)
!4023 = !DILocation(line: 87, column: 30, scope: !4016)
!4024 = !DILocation(line: 87, column: 39, scope: !4016)
!4025 = !DILocation(line: 87, column: 51, scope: !4016)
!4026 = !DILocalVariable(name: "bundle", scope: !4016, file: !3, line: 88, type: !132)
!4027 = !DILocation(line: 88, column: 20, scope: !4016)
!4028 = !DILocalVariable(name: "ret", scope: !4016, file: !3, line: 89, type: !188)
!4029 = !DILocation(line: 89, column: 6, scope: !4016)
!4030 = !DILocation(line: 91, column: 7, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 91, column: 6)
!4032 = !DILocation(line: 91, column: 16, scope: !4031)
!4033 = !DILocation(line: 91, column: 6, scope: !4016)
!4034 = !DILocation(line: 92, column: 3, scope: !4031)
!4035 = !DILocalVariable(name: "__mptr", scope: !4036, file: !3, line: 94, type: !131)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 94, column: 2)
!4037 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 94, column: 2)
!4038 = !DILocation(line: 94, column: 2, scope: !4036)
!4039 = !DILocation(line: 94, column: 2, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 94, column: 2)
!4041 = !DILocation(line: 94, column: 2, scope: !4037)
!4042 = !DILocation(line: 94, column: 2, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 94, column: 2)
!4044 = !DILocation(line: 95, column: 39, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 94, column: 53)
!4046 = !DILocation(line: 95, column: 48, scope: !4045)
!4047 = !DILocation(line: 95, column: 9, scope: !4045)
!4048 = !DILocation(line: 95, column: 7, scope: !4045)
!4049 = !DILocation(line: 96, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 96, column: 7)
!4051 = !DILocation(line: 96, column: 7, scope: !4045)
!4052 = !DILocation(line: 97, column: 11, scope: !4050)
!4053 = !DILocation(line: 97, column: 4, scope: !4050)
!4054 = !DILocation(line: 98, column: 2, scope: !4045)
!4055 = !DILocalVariable(name: "__mptr", scope: !4056, file: !3, line: 94, type: !131)
!4056 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 94, column: 2)
!4057 = !DILocation(line: 94, column: 2, scope: !4056)
!4058 = !DILocation(line: 94, column: 2, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 94, column: 2)
!4060 = distinct !{!4060, !4041, !4061}
!4061 = !DILocation(line: 98, column: 2, scope: !4037)
!4062 = !DILocation(line: 100, column: 2, scope: !4016)
!4063 = !DILocation(line: 101, column: 1, scope: !4016)
!4064 = distinct !DISubprogram(name: "gb_control_get_bundle_version", scope: !3, file: !3, line: 55, type: !4065, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!188, !3761, !132}
!4067 = !DILocalVariable(name: "control", arg: 1, scope: !4064, file: !3, line: 55, type: !3761)
!4068 = !DILocation(line: 55, column: 61, scope: !4064)
!4069 = !DILocalVariable(name: "bundle", arg: 2, scope: !4064, file: !3, line: 56, type: !132)
!4070 = !DILocation(line: 56, column: 25, scope: !4064)
!4071 = !DILocalVariable(name: "intf", scope: !4064, file: !3, line: 58, type: !3756)
!4072 = !DILocation(line: 58, column: 23, scope: !4064)
!4073 = !DILocation(line: 58, column: 30, scope: !4064)
!4074 = !DILocation(line: 58, column: 39, scope: !4064)
!4075 = !DILocation(line: 58, column: 51, scope: !4064)
!4076 = !DILocalVariable(name: "request", scope: !4064, file: !3, line: 59, type: !4077)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_bundle_version_request", file: !3846, line: 99, size: 8, elements: !4078)
!4078 = !{!4079}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bundle_id", scope: !4077, file: !3846, line: 100, baseType: !1287, size: 8)
!4080 = !DILocation(line: 59, column: 43, scope: !4064)
!4081 = !DILocalVariable(name: "response", scope: !4064, file: !3, line: 60, type: !4082)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_bundle_version_response", file: !3846, line: 103, size: 16, elements: !4083)
!4083 = !{!4084, !4085}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4082, file: !3846, line: 104, baseType: !1287, size: 8)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4082, file: !3846, line: 105, baseType: !1287, size: 8, offset: 8)
!4086 = !DILocation(line: 60, column: 44, scope: !4064)
!4087 = !DILocalVariable(name: "ret", scope: !4064, file: !3, line: 61, type: !188)
!4088 = !DILocation(line: 61, column: 6, scope: !4064)
!4089 = !DILocation(line: 63, column: 22, scope: !4064)
!4090 = !DILocation(line: 63, column: 30, scope: !4064)
!4091 = !DILocation(line: 63, column: 10, scope: !4064)
!4092 = !DILocation(line: 63, column: 20, scope: !4064)
!4093 = !DILocation(line: 65, column: 26, scope: !4064)
!4094 = !DILocation(line: 65, column: 35, scope: !4064)
!4095 = !DILocation(line: 67, column: 5, scope: !4064)
!4096 = !DILocation(line: 68, column: 5, scope: !4064)
!4097 = !DILocation(line: 65, column: 8, scope: !4064)
!4098 = !DILocation(line: 65, column: 6, scope: !4064)
!4099 = !DILocation(line: 69, column: 6, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 69, column: 6)
!4101 = !DILocation(line: 69, column: 6, scope: !4064)
!4102 = !DILocation(line: 70, column: 3, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 69, column: 11)
!4104 = !DILocation(line: 73, column: 10, scope: !4103)
!4105 = !DILocation(line: 73, column: 3, scope: !4103)
!4106 = !DILocation(line: 76, column: 33, scope: !4064)
!4107 = !DILocation(line: 76, column: 2, scope: !4064)
!4108 = !DILocation(line: 76, column: 10, scope: !4064)
!4109 = !DILocation(line: 76, column: 22, scope: !4064)
!4110 = !DILocation(line: 77, column: 33, scope: !4064)
!4111 = !DILocation(line: 77, column: 2, scope: !4064)
!4112 = !DILocation(line: 77, column: 10, scope: !4064)
!4113 = !DILocation(line: 77, column: 22, scope: !4064)
!4114 = !DILocation(line: 82, column: 2, scope: !4064)
!4115 = !DILocation(line: 83, column: 1, scope: !4064)
!4116 = distinct !DISubprogram(name: "gb_control_get_manifest_size_operation", scope: !3, file: !3, line: 104, type: !4117, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!188, !3756}
!4119 = !DILocalVariable(name: "intf", arg: 1, scope: !4116, file: !3, line: 104, type: !3756)
!4120 = !DILocation(line: 104, column: 65, scope: !4116)
!4121 = !DILocalVariable(name: "response", scope: !4116, file: !3, line: 106, type: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_get_manifest_size_response", file: !3846, line: 109, size: 16, elements: !4123)
!4123 = !{!4124}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4122, file: !3846, line: 110, baseType: !3849, size: 16)
!4125 = !DILocation(line: 106, column: 47, scope: !4116)
!4126 = !DILocalVariable(name: "connection", scope: !4116, file: !3, line: 107, type: !3768)
!4127 = !DILocation(line: 107, column: 24, scope: !4116)
!4128 = !DILocation(line: 107, column: 37, scope: !4116)
!4129 = !DILocation(line: 107, column: 43, scope: !4116)
!4130 = !DILocation(line: 107, column: 52, scope: !4116)
!4131 = !DILocalVariable(name: "ret", scope: !4116, file: !3, line: 108, type: !188)
!4132 = !DILocation(line: 108, column: 6, scope: !4116)
!4133 = !DILocation(line: 110, column: 26, scope: !4116)
!4134 = !DILocation(line: 111, column: 14, scope: !4116)
!4135 = !DILocation(line: 110, column: 8, scope: !4116)
!4136 = !DILocation(line: 110, column: 6, scope: !4116)
!4137 = !DILocation(line: 112, column: 6, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 112, column: 6)
!4139 = !DILocation(line: 112, column: 6, scope: !4116)
!4140 = !DILocation(line: 113, column: 3, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 112, column: 11)
!4142 = !DILocation(line: 115, column: 10, scope: !4141)
!4143 = !DILocation(line: 115, column: 3, scope: !4141)
!4144 = !DILocation(line: 118, column: 9, scope: !4116)
!4145 = !DILocation(line: 118, column: 2, scope: !4116)
!4146 = !DILocation(line: 119, column: 1, scope: !4116)
!4147 = distinct !DISubprogram(name: "gb_operation_sync", scope: !3817, file: !3817, line: 199, type: !4148, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!188, !3768, !188, !131, !188, !131, !188}
!4150 = !DILocalVariable(name: "connection", arg: 1, scope: !4147, file: !3817, line: 199, type: !3768)
!4151 = !DILocation(line: 199, column: 59, scope: !4147)
!4152 = !DILocalVariable(name: "type", arg: 2, scope: !4147, file: !3817, line: 199, type: !188)
!4153 = !DILocation(line: 199, column: 75, scope: !4147)
!4154 = !DILocalVariable(name: "request", arg: 3, scope: !4147, file: !3817, line: 200, type: !131)
!4155 = !DILocation(line: 200, column: 15, scope: !4147)
!4156 = !DILocalVariable(name: "request_size", arg: 4, scope: !4147, file: !3817, line: 200, type: !188)
!4157 = !DILocation(line: 200, column: 28, scope: !4147)
!4158 = !DILocalVariable(name: "response", arg: 5, scope: !4147, file: !3817, line: 201, type: !131)
!4159 = !DILocation(line: 201, column: 15, scope: !4147)
!4160 = !DILocalVariable(name: "response_size", arg: 6, scope: !4147, file: !3817, line: 201, type: !188)
!4161 = !DILocation(line: 201, column: 29, scope: !4147)
!4162 = !DILocation(line: 203, column: 35, scope: !4147)
!4163 = !DILocation(line: 203, column: 47, scope: !4147)
!4164 = !DILocation(line: 204, column: 4, scope: !4147)
!4165 = !DILocation(line: 204, column: 13, scope: !4147)
!4166 = !DILocation(line: 204, column: 27, scope: !4147)
!4167 = !DILocation(line: 204, column: 37, scope: !4147)
!4168 = !DILocation(line: 203, column: 9, scope: !4147)
!4169 = !DILocation(line: 203, column: 2, scope: !4147)
!4170 = distinct !DISubprogram(name: "gb_control_get_manifest_operation", scope: !3, file: !3, line: 122, type: !4171, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!188, !3756, !131, !251}
!4173 = !DILocalVariable(name: "intf", arg: 1, scope: !4170, file: !3, line: 122, type: !3756)
!4174 = !DILocation(line: 122, column: 60, scope: !4170)
!4175 = !DILocalVariable(name: "manifest", arg: 2, scope: !4170, file: !3, line: 122, type: !131)
!4176 = !DILocation(line: 122, column: 72, scope: !4170)
!4177 = !DILocalVariable(name: "size", arg: 3, scope: !4170, file: !3, line: 123, type: !251)
!4178 = !DILocation(line: 123, column: 18, scope: !4170)
!4179 = !DILocalVariable(name: "connection", scope: !4170, file: !3, line: 125, type: !3768)
!4180 = !DILocation(line: 125, column: 24, scope: !4170)
!4181 = !DILocation(line: 125, column: 37, scope: !4170)
!4182 = !DILocation(line: 125, column: 43, scope: !4170)
!4183 = !DILocation(line: 125, column: 52, scope: !4170)
!4184 = !DILocation(line: 127, column: 27, scope: !4170)
!4185 = !DILocation(line: 128, column: 14, scope: !4170)
!4186 = !DILocation(line: 128, column: 24, scope: !4170)
!4187 = !DILocation(line: 127, column: 9, scope: !4170)
!4188 = !DILocation(line: 127, column: 2, scope: !4170)
!4189 = distinct !DISubprogram(name: "gb_control_connected_operation", scope: !3, file: !3, line: 131, type: !4190, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!188, !3761, !793}
!4192 = !DILocalVariable(name: "control", arg: 1, scope: !4189, file: !3, line: 131, type: !3761)
!4193 = !DILocation(line: 131, column: 55, scope: !4189)
!4194 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4189, file: !3, line: 131, type: !793)
!4195 = !DILocation(line: 131, column: 68, scope: !4189)
!4196 = !DILocalVariable(name: "request", scope: !4189, file: !3, line: 133, type: !4197)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_connected_request", file: !3846, line: 119, size: 16, elements: !4198)
!4198 = !{!4199}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id", scope: !4197, file: !3846, line: 120, baseType: !3849, size: 16)
!4200 = !DILocation(line: 133, column: 38, scope: !4189)
!4201 = !DILocation(line: 135, column: 21, scope: !4189)
!4202 = !DILocation(line: 135, column: 10, scope: !4189)
!4203 = !DILocation(line: 135, column: 19, scope: !4189)
!4204 = !DILocation(line: 136, column: 27, scope: !4189)
!4205 = !DILocation(line: 136, column: 36, scope: !4189)
!4206 = !DILocation(line: 137, column: 6, scope: !4189)
!4207 = !DILocation(line: 136, column: 9, scope: !4189)
!4208 = !DILocation(line: 136, column: 2, scope: !4189)
!4209 = distinct !DISubprogram(name: "gb_control_disconnected_operation", scope: !3, file: !3, line: 140, type: !4190, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4210 = !DILocalVariable(name: "control", arg: 1, scope: !4209, file: !3, line: 140, type: !3761)
!4211 = !DILocation(line: 140, column: 58, scope: !4209)
!4212 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4209, file: !3, line: 140, type: !793)
!4213 = !DILocation(line: 140, column: 71, scope: !4209)
!4214 = !DILocalVariable(name: "request", scope: !4209, file: !3, line: 142, type: !4215)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_disconnected_request", file: !3846, line: 128, size: 16, elements: !4216)
!4216 = !{!4217}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id", scope: !4215, file: !3846, line: 129, baseType: !3849, size: 16)
!4218 = !DILocation(line: 142, column: 41, scope: !4209)
!4219 = !DILocation(line: 144, column: 21, scope: !4209)
!4220 = !DILocation(line: 144, column: 10, scope: !4209)
!4221 = !DILocation(line: 144, column: 19, scope: !4209)
!4222 = !DILocation(line: 145, column: 27, scope: !4209)
!4223 = !DILocation(line: 145, column: 36, scope: !4209)
!4224 = !DILocation(line: 146, column: 36, scope: !4209)
!4225 = !DILocation(line: 145, column: 9, scope: !4209)
!4226 = !DILocation(line: 145, column: 2, scope: !4209)
!4227 = distinct !DISubprogram(name: "gb_control_disconnecting_operation", scope: !3, file: !3, line: 150, type: !4190, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4228 = !DILocalVariable(name: "control", arg: 1, scope: !4227, file: !3, line: 150, type: !3761)
!4229 = !DILocation(line: 150, column: 59, scope: !4227)
!4230 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4227, file: !3, line: 151, type: !793)
!4231 = !DILocation(line: 151, column: 16, scope: !4227)
!4232 = !DILocalVariable(name: "request", scope: !4227, file: !3, line: 153, type: !4233)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_disconnecting_request", file: !3846, line: 123, size: 16, elements: !4235)
!4235 = !{!4236}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id", scope: !4234, file: !3846, line: 124, baseType: !3849, size: 16)
!4237 = !DILocation(line: 153, column: 43, scope: !4227)
!4238 = !DILocalVariable(name: "operation", scope: !4227, file: !3, line: 154, type: !3820)
!4239 = !DILocation(line: 154, column: 23, scope: !4227)
!4240 = !DILocalVariable(name: "ret", scope: !4227, file: !3, line: 155, type: !188)
!4241 = !DILocation(line: 155, column: 6, scope: !4227)
!4242 = !DILocation(line: 157, column: 39, scope: !4227)
!4243 = !DILocation(line: 157, column: 48, scope: !4227)
!4244 = !DILocation(line: 157, column: 14, scope: !4227)
!4245 = !DILocation(line: 157, column: 12, scope: !4227)
!4246 = !DILocation(line: 161, column: 7, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 161, column: 6)
!4248 = !DILocation(line: 161, column: 6, scope: !4227)
!4249 = !DILocation(line: 162, column: 3, scope: !4247)
!4250 = !DILocation(line: 164, column: 12, scope: !4227)
!4251 = !DILocation(line: 164, column: 23, scope: !4227)
!4252 = !DILocation(line: 164, column: 32, scope: !4227)
!4253 = !DILocation(line: 164, column: 10, scope: !4227)
!4254 = !DILocation(line: 165, column: 22, scope: !4227)
!4255 = !DILocation(line: 165, column: 2, scope: !4227)
!4256 = !DILocation(line: 165, column: 11, scope: !4227)
!4257 = !DILocation(line: 165, column: 20, scope: !4227)
!4258 = !DILocation(line: 167, column: 39, scope: !4227)
!4259 = !DILocation(line: 167, column: 8, scope: !4227)
!4260 = !DILocation(line: 167, column: 6, scope: !4227)
!4261 = !DILocation(line: 168, column: 6, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 168, column: 6)
!4263 = !DILocation(line: 168, column: 6, scope: !4227)
!4264 = !DILocation(line: 169, column: 3, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 168, column: 11)
!4266 = !DILocation(line: 171, column: 2, scope: !4265)
!4267 = !DILocation(line: 173, column: 19, scope: !4227)
!4268 = !DILocation(line: 173, column: 2, scope: !4227)
!4269 = !DILocation(line: 175, column: 9, scope: !4227)
!4270 = !DILocation(line: 175, column: 2, scope: !4227)
!4271 = !DILocation(line: 176, column: 1, scope: !4227)
!4272 = distinct !DISubprogram(name: "gb_operation_request_send_sync", scope: !3817, file: !3817, line: 179, type: !3914, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4273 = !DILocalVariable(name: "operation", arg: 1, scope: !4272, file: !3817, line: 179, type: !3820)
!4274 = !DILocation(line: 179, column: 53, scope: !4272)
!4275 = !DILocation(line: 181, column: 48, scope: !4272)
!4276 = !DILocation(line: 181, column: 9, scope: !4272)
!4277 = !DILocation(line: 181, column: 2, scope: !4272)
!4278 = distinct !DISubprogram(name: "gb_control_mode_switch_operation", scope: !3, file: !3, line: 178, type: !4017, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4279 = !DILocalVariable(name: "control", arg: 1, scope: !4278, file: !3, line: 178, type: !3761)
!4280 = !DILocation(line: 178, column: 57, scope: !4278)
!4281 = !DILocalVariable(name: "operation", scope: !4278, file: !3, line: 180, type: !3820)
!4282 = !DILocation(line: 180, column: 23, scope: !4278)
!4283 = !DILocalVariable(name: "ret", scope: !4278, file: !3, line: 181, type: !188)
!4284 = !DILocation(line: 181, column: 6, scope: !4278)
!4285 = !DILocation(line: 183, column: 39, scope: !4278)
!4286 = !DILocation(line: 183, column: 48, scope: !4278)
!4287 = !DILocation(line: 183, column: 14, scope: !4278)
!4288 = !DILocation(line: 183, column: 12, scope: !4278)
!4289 = !DILocation(line: 188, column: 7, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 188, column: 6)
!4291 = !DILocation(line: 188, column: 6, scope: !4278)
!4292 = !DILocation(line: 189, column: 3, scope: !4290)
!4293 = !DILocation(line: 191, column: 39, scope: !4278)
!4294 = !DILocation(line: 191, column: 8, scope: !4278)
!4295 = !DILocation(line: 191, column: 6, scope: !4278)
!4296 = !DILocation(line: 192, column: 6, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 192, column: 6)
!4298 = !DILocation(line: 192, column: 6, scope: !4278)
!4299 = !DILocation(line: 193, column: 3, scope: !4297)
!4300 = !DILocation(line: 195, column: 19, scope: !4278)
!4301 = !DILocation(line: 195, column: 2, scope: !4278)
!4302 = !DILocation(line: 197, column: 9, scope: !4278)
!4303 = !DILocation(line: 197, column: 2, scope: !4278)
!4304 = !DILocation(line: 198, column: 1, scope: !4278)
!4305 = distinct !DISubprogram(name: "gb_control_bundle_suspend", scope: !3, file: !3, line: 215, type: !4306, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!188, !3761, !1286}
!4308 = !DILocalVariable(name: "control", arg: 1, scope: !4305, file: !3, line: 215, type: !3761)
!4309 = !DILocation(line: 215, column: 50, scope: !4305)
!4310 = !DILocalVariable(name: "bundle_id", arg: 2, scope: !4305, file: !3, line: 215, type: !1286)
!4311 = !DILocation(line: 215, column: 62, scope: !4305)
!4312 = !DILocalVariable(name: "request", scope: !4305, file: !3, line: 217, type: !4313)
!4313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_bundle_pm_request", file: !3846, line: 144, size: 8, elements: !4314)
!4314 = !{!4315}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "bundle_id", scope: !4313, file: !3846, line: 145, baseType: !1287, size: 8)
!4316 = !DILocation(line: 217, column: 38, scope: !4305)
!4317 = !DILocalVariable(name: "response", scope: !4305, file: !3, line: 218, type: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_bundle_pm_response", file: !3846, line: 148, size: 8, elements: !4319)
!4319 = !{!4320}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4318, file: !3846, line: 149, baseType: !1287, size: 8)
!4321 = !DILocation(line: 218, column: 39, scope: !4305)
!4322 = !DILocalVariable(name: "ret", scope: !4305, file: !3, line: 219, type: !188)
!4323 = !DILocation(line: 219, column: 6, scope: !4305)
!4324 = !DILocation(line: 221, column: 22, scope: !4305)
!4325 = !DILocation(line: 221, column: 10, scope: !4305)
!4326 = !DILocation(line: 221, column: 20, scope: !4305)
!4327 = !DILocation(line: 222, column: 26, scope: !4305)
!4328 = !DILocation(line: 222, column: 35, scope: !4305)
!4329 = !DILocation(line: 223, column: 37, scope: !4305)
!4330 = !DILocation(line: 224, column: 22, scope: !4305)
!4331 = !DILocation(line: 222, column: 8, scope: !4305)
!4332 = !DILocation(line: 222, column: 6, scope: !4305)
!4333 = !DILocation(line: 225, column: 6, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 225, column: 6)
!4335 = !DILocation(line: 225, column: 6, scope: !4305)
!4336 = !DILocation(line: 226, column: 3, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 225, column: 11)
!4338 = !DILocation(line: 228, column: 10, scope: !4337)
!4339 = !DILocation(line: 228, column: 3, scope: !4337)
!4340 = !DILocation(line: 231, column: 15, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 231, column: 6)
!4342 = !DILocation(line: 231, column: 6, scope: !4341)
!4343 = !DILocation(line: 231, column: 22, scope: !4341)
!4344 = !DILocation(line: 231, column: 6, scope: !4305)
!4345 = !DILocation(line: 232, column: 3, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 231, column: 50)
!4347 = !DILocation(line: 234, column: 51, scope: !4346)
!4348 = !DILocation(line: 234, column: 10, scope: !4346)
!4349 = !DILocation(line: 234, column: 3, scope: !4346)
!4350 = !DILocation(line: 237, column: 2, scope: !4305)
!4351 = !DILocation(line: 238, column: 1, scope: !4305)
!4352 = distinct !DISubprogram(name: "gb_control_bundle_pm_status_map", scope: !3, file: !3, line: 200, type: !4353, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!188, !1286}
!4355 = !DILocalVariable(name: "status", arg: 1, scope: !4352, file: !3, line: 200, type: !1286)
!4356 = !DILocation(line: 200, column: 47, scope: !4352)
!4357 = !DILocation(line: 202, column: 10, scope: !4352)
!4358 = !DILocation(line: 202, column: 2, scope: !4352)
!4359 = !DILocation(line: 204, column: 3, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 202, column: 18)
!4361 = !DILocation(line: 206, column: 3, scope: !4360)
!4362 = !DILocation(line: 208, column: 3, scope: !4360)
!4363 = !DILocation(line: 211, column: 3, scope: !4360)
!4364 = !DILocation(line: 213, column: 1, scope: !4352)
!4365 = distinct !DISubprogram(name: "gb_control_bundle_resume", scope: !3, file: !3, line: 240, type: !4306, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4366 = !DILocalVariable(name: "control", arg: 1, scope: !4365, file: !3, line: 240, type: !3761)
!4367 = !DILocation(line: 240, column: 49, scope: !4365)
!4368 = !DILocalVariable(name: "bundle_id", arg: 2, scope: !4365, file: !3, line: 240, type: !1286)
!4369 = !DILocation(line: 240, column: 61, scope: !4365)
!4370 = !DILocalVariable(name: "request", scope: !4365, file: !3, line: 242, type: !4313)
!4371 = !DILocation(line: 242, column: 38, scope: !4365)
!4372 = !DILocalVariable(name: "response", scope: !4365, file: !3, line: 243, type: !4318)
!4373 = !DILocation(line: 243, column: 39, scope: !4365)
!4374 = !DILocalVariable(name: "ret", scope: !4365, file: !3, line: 244, type: !188)
!4375 = !DILocation(line: 244, column: 6, scope: !4365)
!4376 = !DILocation(line: 246, column: 22, scope: !4365)
!4377 = !DILocation(line: 246, column: 10, scope: !4365)
!4378 = !DILocation(line: 246, column: 20, scope: !4365)
!4379 = !DILocation(line: 247, column: 26, scope: !4365)
!4380 = !DILocation(line: 247, column: 35, scope: !4365)
!4381 = !DILocation(line: 248, column: 36, scope: !4365)
!4382 = !DILocation(line: 249, column: 22, scope: !4365)
!4383 = !DILocation(line: 247, column: 8, scope: !4365)
!4384 = !DILocation(line: 247, column: 6, scope: !4365)
!4385 = !DILocation(line: 250, column: 6, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 250, column: 6)
!4387 = !DILocation(line: 250, column: 6, scope: !4365)
!4388 = !DILocation(line: 251, column: 3, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 250, column: 11)
!4390 = !DILocation(line: 253, column: 10, scope: !4389)
!4391 = !DILocation(line: 253, column: 3, scope: !4389)
!4392 = !DILocation(line: 256, column: 15, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 256, column: 6)
!4394 = !DILocation(line: 256, column: 6, scope: !4393)
!4395 = !DILocation(line: 256, column: 22, scope: !4393)
!4396 = !DILocation(line: 256, column: 6, scope: !4365)
!4397 = !DILocation(line: 257, column: 3, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 256, column: 50)
!4399 = !DILocation(line: 259, column: 51, scope: !4398)
!4400 = !DILocation(line: 259, column: 10, scope: !4398)
!4401 = !DILocation(line: 259, column: 3, scope: !4398)
!4402 = !DILocation(line: 262, column: 2, scope: !4365)
!4403 = !DILocation(line: 263, column: 1, scope: !4365)
!4404 = distinct !DISubprogram(name: "gb_control_bundle_deactivate", scope: !3, file: !3, line: 265, type: !4306, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4405 = !DILocalVariable(name: "control", arg: 1, scope: !4404, file: !3, line: 265, type: !3761)
!4406 = !DILocation(line: 265, column: 53, scope: !4404)
!4407 = !DILocalVariable(name: "bundle_id", arg: 2, scope: !4404, file: !3, line: 265, type: !1286)
!4408 = !DILocation(line: 265, column: 65, scope: !4404)
!4409 = !DILocalVariable(name: "request", scope: !4404, file: !3, line: 267, type: !4313)
!4410 = !DILocation(line: 267, column: 38, scope: !4404)
!4411 = !DILocalVariable(name: "response", scope: !4404, file: !3, line: 268, type: !4318)
!4412 = !DILocation(line: 268, column: 39, scope: !4404)
!4413 = !DILocalVariable(name: "ret", scope: !4404, file: !3, line: 269, type: !188)
!4414 = !DILocation(line: 269, column: 6, scope: !4404)
!4415 = !DILocation(line: 271, column: 22, scope: !4404)
!4416 = !DILocation(line: 271, column: 10, scope: !4404)
!4417 = !DILocation(line: 271, column: 20, scope: !4404)
!4418 = !DILocation(line: 272, column: 26, scope: !4404)
!4419 = !DILocation(line: 272, column: 35, scope: !4404)
!4420 = !DILocation(line: 273, column: 40, scope: !4404)
!4421 = !DILocation(line: 274, column: 22, scope: !4404)
!4422 = !DILocation(line: 272, column: 8, scope: !4404)
!4423 = !DILocation(line: 272, column: 6, scope: !4404)
!4424 = !DILocation(line: 275, column: 6, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 275, column: 6)
!4426 = !DILocation(line: 275, column: 6, scope: !4404)
!4427 = !DILocation(line: 276, column: 3, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 275, column: 11)
!4429 = !DILocation(line: 279, column: 10, scope: !4428)
!4430 = !DILocation(line: 279, column: 3, scope: !4428)
!4431 = !DILocation(line: 282, column: 15, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4404, file: !3, line: 282, column: 6)
!4433 = !DILocation(line: 282, column: 6, scope: !4432)
!4434 = !DILocation(line: 282, column: 22, scope: !4432)
!4435 = !DILocation(line: 282, column: 6, scope: !4404)
!4436 = !DILocation(line: 283, column: 3, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 282, column: 50)
!4438 = !DILocation(line: 285, column: 51, scope: !4437)
!4439 = !DILocation(line: 285, column: 10, scope: !4437)
!4440 = !DILocation(line: 285, column: 3, scope: !4437)
!4441 = !DILocation(line: 288, column: 2, scope: !4404)
!4442 = !DILocation(line: 289, column: 1, scope: !4404)
!4443 = distinct !DISubprogram(name: "gb_control_bundle_activate", scope: !3, file: !3, line: 291, type: !4306, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4444 = !DILocalVariable(name: "control", arg: 1, scope: !4443, file: !3, line: 291, type: !3761)
!4445 = !DILocation(line: 291, column: 51, scope: !4443)
!4446 = !DILocalVariable(name: "bundle_id", arg: 2, scope: !4443, file: !3, line: 291, type: !1286)
!4447 = !DILocation(line: 291, column: 63, scope: !4443)
!4448 = !DILocalVariable(name: "request", scope: !4443, file: !3, line: 293, type: !4313)
!4449 = !DILocation(line: 293, column: 38, scope: !4443)
!4450 = !DILocalVariable(name: "response", scope: !4443, file: !3, line: 294, type: !4318)
!4451 = !DILocation(line: 294, column: 39, scope: !4443)
!4452 = !DILocalVariable(name: "ret", scope: !4443, file: !3, line: 295, type: !188)
!4453 = !DILocation(line: 295, column: 6, scope: !4443)
!4454 = !DILocation(line: 297, column: 7, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 297, column: 6)
!4456 = !DILocation(line: 297, column: 16, scope: !4455)
!4457 = !DILocation(line: 297, column: 6, scope: !4443)
!4458 = !DILocation(line: 298, column: 3, scope: !4455)
!4459 = !DILocation(line: 300, column: 22, scope: !4443)
!4460 = !DILocation(line: 300, column: 10, scope: !4443)
!4461 = !DILocation(line: 300, column: 20, scope: !4443)
!4462 = !DILocation(line: 301, column: 26, scope: !4443)
!4463 = !DILocation(line: 301, column: 35, scope: !4443)
!4464 = !DILocation(line: 302, column: 38, scope: !4443)
!4465 = !DILocation(line: 303, column: 22, scope: !4443)
!4466 = !DILocation(line: 301, column: 8, scope: !4443)
!4467 = !DILocation(line: 301, column: 6, scope: !4443)
!4468 = !DILocation(line: 304, column: 6, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 304, column: 6)
!4470 = !DILocation(line: 304, column: 6, scope: !4443)
!4471 = !DILocation(line: 305, column: 3, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 304, column: 11)
!4473 = !DILocation(line: 308, column: 10, scope: !4472)
!4474 = !DILocation(line: 308, column: 3, scope: !4472)
!4475 = !DILocation(line: 311, column: 15, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 311, column: 6)
!4477 = !DILocation(line: 311, column: 6, scope: !4476)
!4478 = !DILocation(line: 311, column: 22, scope: !4476)
!4479 = !DILocation(line: 311, column: 6, scope: !4443)
!4480 = !DILocation(line: 312, column: 3, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 311, column: 50)
!4482 = !DILocation(line: 314, column: 51, scope: !4481)
!4483 = !DILocation(line: 314, column: 10, scope: !4481)
!4484 = !DILocation(line: 314, column: 3, scope: !4481)
!4485 = !DILocation(line: 317, column: 2, scope: !4443)
!4486 = !DILocation(line: 318, column: 1, scope: !4443)
!4487 = distinct !DISubprogram(name: "gb_control_interface_suspend_prepare", scope: !3, file: !3, line: 332, type: !4017, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4488 = !DILocalVariable(name: "control", arg: 1, scope: !4487, file: !3, line: 332, type: !3761)
!4489 = !DILocation(line: 332, column: 61, scope: !4487)
!4490 = !DILocalVariable(name: "response", scope: !4487, file: !3, line: 334, type: !4491)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_intf_pm_response", file: !3846, line: 162, size: 8, elements: !4492)
!4492 = !{!4493}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4491, file: !3846, line: 163, baseType: !1287, size: 8)
!4494 = !DILocation(line: 334, column: 37, scope: !4487)
!4495 = !DILocalVariable(name: "ret", scope: !4487, file: !3, line: 335, type: !188)
!4496 = !DILocation(line: 335, column: 6, scope: !4487)
!4497 = !DILocation(line: 337, column: 26, scope: !4487)
!4498 = !DILocation(line: 337, column: 35, scope: !4487)
!4499 = !DILocation(line: 339, column: 5, scope: !4487)
!4500 = !DILocation(line: 337, column: 8, scope: !4487)
!4501 = !DILocation(line: 337, column: 6, scope: !4487)
!4502 = !DILocation(line: 340, column: 6, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 340, column: 6)
!4504 = !DILocation(line: 340, column: 6, scope: !4487)
!4505 = !DILocation(line: 341, column: 3, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 340, column: 11)
!4507 = !DILocation(line: 343, column: 10, scope: !4506)
!4508 = !DILocation(line: 343, column: 3, scope: !4506)
!4509 = !DILocation(line: 346, column: 15, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 346, column: 6)
!4511 = !DILocation(line: 346, column: 6, scope: !4510)
!4512 = !DILocation(line: 346, column: 22, scope: !4510)
!4513 = !DILocation(line: 346, column: 6, scope: !4487)
!4514 = !DILocation(line: 347, column: 3, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 346, column: 48)
!4516 = !DILocation(line: 349, column: 54, scope: !4515)
!4517 = !DILocation(line: 349, column: 10, scope: !4515)
!4518 = !DILocation(line: 349, column: 3, scope: !4515)
!4519 = !DILocation(line: 352, column: 2, scope: !4487)
!4520 = !DILocation(line: 353, column: 1, scope: !4487)
!4521 = distinct !DISubprogram(name: "gb_control_interface_pm_status_map", scope: !3, file: !3, line: 320, type: !4353, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4522 = !DILocalVariable(name: "status", arg: 1, scope: !4521, file: !3, line: 320, type: !1286)
!4523 = !DILocation(line: 320, column: 50, scope: !4521)
!4524 = !DILocation(line: 322, column: 10, scope: !4521)
!4525 = !DILocation(line: 322, column: 2, scope: !4521)
!4526 = !DILocation(line: 324, column: 3, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 322, column: 18)
!4528 = !DILocation(line: 326, column: 3, scope: !4527)
!4529 = !DILocation(line: 328, column: 3, scope: !4527)
!4530 = !DILocation(line: 330, column: 1, scope: !4521)
!4531 = distinct !DISubprogram(name: "gb_control_interface_deactivate_prepare", scope: !3, file: !3, line: 355, type: !4017, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4532 = !DILocalVariable(name: "control", arg: 1, scope: !4531, file: !3, line: 355, type: !3761)
!4533 = !DILocation(line: 355, column: 64, scope: !4531)
!4534 = !DILocalVariable(name: "response", scope: !4531, file: !3, line: 357, type: !4491)
!4535 = !DILocation(line: 357, column: 37, scope: !4531)
!4536 = !DILocalVariable(name: "ret", scope: !4531, file: !3, line: 358, type: !188)
!4537 = !DILocation(line: 358, column: 6, scope: !4531)
!4538 = !DILocation(line: 360, column: 26, scope: !4531)
!4539 = !DILocation(line: 360, column: 35, scope: !4531)
!4540 = !DILocation(line: 362, column: 8, scope: !4531)
!4541 = !DILocation(line: 360, column: 8, scope: !4531)
!4542 = !DILocation(line: 360, column: 6, scope: !4531)
!4543 = !DILocation(line: 363, column: 6, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 363, column: 6)
!4545 = !DILocation(line: 363, column: 6, scope: !4531)
!4546 = !DILocation(line: 364, column: 3, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 363, column: 11)
!4548 = !DILocation(line: 366, column: 10, scope: !4547)
!4549 = !DILocation(line: 366, column: 3, scope: !4547)
!4550 = !DILocation(line: 369, column: 15, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 369, column: 6)
!4552 = !DILocation(line: 369, column: 6, scope: !4551)
!4553 = !DILocation(line: 369, column: 22, scope: !4551)
!4554 = !DILocation(line: 369, column: 6, scope: !4531)
!4555 = !DILocation(line: 370, column: 3, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 369, column: 48)
!4557 = !DILocation(line: 372, column: 54, scope: !4556)
!4558 = !DILocation(line: 372, column: 10, scope: !4556)
!4559 = !DILocation(line: 372, column: 3, scope: !4556)
!4560 = !DILocation(line: 375, column: 2, scope: !4531)
!4561 = !DILocation(line: 376, column: 1, scope: !4531)
!4562 = distinct !DISubprogram(name: "gb_control_interface_hibernate_abort", scope: !3, file: !3, line: 378, type: !4017, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4563 = !DILocalVariable(name: "control", arg: 1, scope: !4562, file: !3, line: 378, type: !3761)
!4564 = !DILocation(line: 378, column: 61, scope: !4562)
!4565 = !DILocalVariable(name: "response", scope: !4562, file: !3, line: 380, type: !4491)
!4566 = !DILocation(line: 380, column: 37, scope: !4562)
!4567 = !DILocalVariable(name: "ret", scope: !4562, file: !3, line: 381, type: !188)
!4568 = !DILocation(line: 381, column: 6, scope: !4562)
!4569 = !DILocation(line: 383, column: 26, scope: !4562)
!4570 = !DILocation(line: 383, column: 35, scope: !4562)
!4571 = !DILocation(line: 385, column: 5, scope: !4562)
!4572 = !DILocation(line: 383, column: 8, scope: !4562)
!4573 = !DILocation(line: 383, column: 6, scope: !4562)
!4574 = !DILocation(line: 386, column: 6, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 386, column: 6)
!4576 = !DILocation(line: 386, column: 6, scope: !4562)
!4577 = !DILocation(line: 387, column: 3, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 386, column: 11)
!4579 = !DILocation(line: 390, column: 10, scope: !4578)
!4580 = !DILocation(line: 390, column: 3, scope: !4578)
!4581 = !DILocation(line: 393, column: 15, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 393, column: 6)
!4583 = !DILocation(line: 393, column: 6, scope: !4582)
!4584 = !DILocation(line: 393, column: 22, scope: !4582)
!4585 = !DILocation(line: 393, column: 6, scope: !4562)
!4586 = !DILocation(line: 394, column: 3, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 393, column: 48)
!4588 = !DILocation(line: 396, column: 54, scope: !4587)
!4589 = !DILocation(line: 396, column: 10, scope: !4587)
!4590 = !DILocation(line: 396, column: 3, scope: !4587)
!4591 = !DILocation(line: 399, column: 2, scope: !4562)
!4592 = !DILocation(line: 400, column: 1, scope: !4562)
!4593 = distinct !DISubprogram(name: "gb_control_release", scope: !3, file: !3, line: 427, type: !3332, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4594 = !DILocalVariable(name: "dev", arg: 1, scope: !4593, file: !3, line: 427, type: !3309)
!4595 = !DILocation(line: 427, column: 47, scope: !4593)
!4596 = !DILocalVariable(name: "control", scope: !4593, file: !3, line: 429, type: !3761)
!4597 = !DILocation(line: 429, column: 21, scope: !4593)
!4598 = !DILocalVariable(name: "__mptr", scope: !4599, file: !3, line: 429, type: !131)
!4599 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 429, column: 31)
!4600 = !DILocation(line: 429, column: 31, scope: !4599)
!4601 = !DILocation(line: 429, column: 31, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4599, file: !3, line: 429, column: 31)
!4603 = !DILocation(line: 431, column: 24, scope: !4593)
!4604 = !DILocation(line: 431, column: 33, scope: !4593)
!4605 = !DILocation(line: 431, column: 2, scope: !4593)
!4606 = !DILocation(line: 433, column: 8, scope: !4593)
!4607 = !DILocation(line: 433, column: 17, scope: !4593)
!4608 = !DILocation(line: 433, column: 2, scope: !4593)
!4609 = !DILocation(line: 434, column: 8, scope: !4593)
!4610 = !DILocation(line: 434, column: 17, scope: !4593)
!4611 = !DILocation(line: 434, column: 2, scope: !4593)
!4612 = !DILocation(line: 436, column: 8, scope: !4593)
!4613 = !DILocation(line: 436, column: 2, scope: !4593)
!4614 = !DILocation(line: 437, column: 1, scope: !4593)
!4615 = distinct !DISubprogram(name: "gb_control_create", scope: !3, file: !3, line: 444, type: !4616, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!3761, !3756}
!4618 = !DILocalVariable(name: "intf", arg: 1, scope: !4615, file: !3, line: 444, type: !3756)
!4619 = !DILocation(line: 444, column: 59, scope: !4615)
!4620 = !DILocalVariable(name: "connection", scope: !4615, file: !3, line: 446, type: !3768)
!4621 = !DILocation(line: 446, column: 24, scope: !4615)
!4622 = !DILocalVariable(name: "control", scope: !4615, file: !3, line: 447, type: !3761)
!4623 = !DILocation(line: 447, column: 21, scope: !4615)
!4624 = !DILocation(line: 449, column: 12, scope: !4615)
!4625 = !DILocation(line: 449, column: 10, scope: !4615)
!4626 = !DILocation(line: 450, column: 7, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 450, column: 6)
!4628 = !DILocation(line: 450, column: 6, scope: !4615)
!4629 = !DILocation(line: 451, column: 10, scope: !4627)
!4630 = !DILocation(line: 451, column: 3, scope: !4627)
!4631 = !DILocation(line: 453, column: 18, scope: !4615)
!4632 = !DILocation(line: 453, column: 2, scope: !4615)
!4633 = !DILocation(line: 453, column: 11, scope: !4615)
!4634 = !DILocation(line: 453, column: 16, scope: !4615)
!4635 = !DILocation(line: 455, column: 44, scope: !4615)
!4636 = !DILocation(line: 455, column: 15, scope: !4615)
!4637 = !DILocation(line: 455, column: 13, scope: !4615)
!4638 = !DILocation(line: 456, column: 13, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 456, column: 6)
!4640 = !DILocation(line: 456, column: 6, scope: !4639)
!4641 = !DILocation(line: 456, column: 6, scope: !4615)
!4642 = !DILocation(line: 457, column: 3, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 456, column: 26)
!4644 = !DILocation(line: 460, column: 9, scope: !4643)
!4645 = !DILocation(line: 460, column: 3, scope: !4643)
!4646 = !DILocation(line: 461, column: 19, scope: !4643)
!4647 = !DILocation(line: 461, column: 10, scope: !4643)
!4648 = !DILocation(line: 461, column: 3, scope: !4643)
!4649 = !DILocation(line: 464, column: 24, scope: !4615)
!4650 = !DILocation(line: 464, column: 2, scope: !4615)
!4651 = !DILocation(line: 464, column: 11, scope: !4615)
!4652 = !DILocation(line: 464, column: 22, scope: !4615)
!4653 = !DILocation(line: 466, column: 25, scope: !4615)
!4654 = !DILocation(line: 466, column: 31, scope: !4615)
!4655 = !DILocation(line: 466, column: 2, scope: !4615)
!4656 = !DILocation(line: 466, column: 11, scope: !4615)
!4657 = !DILocation(line: 466, column: 15, scope: !4615)
!4658 = !DILocation(line: 466, column: 22, scope: !4615)
!4659 = !DILocation(line: 467, column: 2, scope: !4615)
!4660 = !DILocation(line: 467, column: 11, scope: !4615)
!4661 = !DILocation(line: 467, column: 15, scope: !4615)
!4662 = !DILocation(line: 467, column: 19, scope: !4615)
!4663 = !DILocation(line: 468, column: 2, scope: !4615)
!4664 = !DILocation(line: 468, column: 11, scope: !4615)
!4665 = !DILocation(line: 468, column: 15, scope: !4615)
!4666 = !DILocation(line: 468, column: 20, scope: !4615)
!4667 = !DILocation(line: 469, column: 2, scope: !4615)
!4668 = !DILocation(line: 469, column: 11, scope: !4615)
!4669 = !DILocation(line: 469, column: 15, scope: !4615)
!4670 = !DILocation(line: 469, column: 22, scope: !4615)
!4671 = !DILocation(line: 470, column: 26, scope: !4615)
!4672 = !DILocation(line: 470, column: 32, scope: !4615)
!4673 = !DILocation(line: 470, column: 36, scope: !4615)
!4674 = !DILocation(line: 470, column: 2, scope: !4615)
!4675 = !DILocation(line: 470, column: 11, scope: !4615)
!4676 = !DILocation(line: 470, column: 15, scope: !4615)
!4677 = !DILocation(line: 470, column: 24, scope: !4615)
!4678 = !DILocation(line: 471, column: 21, scope: !4615)
!4679 = !DILocation(line: 471, column: 30, scope: !4615)
!4680 = !DILocation(line: 471, column: 2, scope: !4615)
!4681 = !DILocation(line: 472, column: 16, scope: !4615)
!4682 = !DILocation(line: 472, column: 25, scope: !4615)
!4683 = !DILocation(line: 472, column: 51, scope: !4615)
!4684 = !DILocation(line: 472, column: 57, scope: !4615)
!4685 = !DILocation(line: 472, column: 41, scope: !4615)
!4686 = !DILocation(line: 472, column: 2, scope: !4615)
!4687 = !DILocation(line: 474, column: 25, scope: !4615)
!4688 = !DILocation(line: 474, column: 34, scope: !4615)
!4689 = !DILocation(line: 474, column: 46, scope: !4615)
!4690 = !DILocation(line: 474, column: 2, scope: !4615)
!4691 = !DILocation(line: 476, column: 9, scope: !4615)
!4692 = !DILocation(line: 476, column: 2, scope: !4615)
!4693 = !DILocation(line: 477, column: 1, scope: !4615)
!4694 = distinct !DISubprogram(name: "kzalloc", scope: !124, file: !124, line: 662, type: !4695, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!131, !251, !677}
!4697 = !DILocalVariable(name: "s", arg: 1, scope: !4698, file: !124, line: 445, type: !869)
!4698 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !124, file: !124, line: 445, type: !4699, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!131, !869, !677, !251}
!4701 = !DILocation(line: 445, column: 72, scope: !4698, inlinedAt: !4702)
!4702 = distinct !DILocation(line: 552, column: 10, scope: !4703, inlinedAt: !4706)
!4703 = distinct !DILexicalBlock(scope: !4704, file: !124, line: 540, column: 34)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !124, line: 540, column: 6)
!4705 = distinct !DISubprogram(name: "kmalloc", scope: !124, file: !124, line: 538, type: !4695, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4706 = distinct !DILocation(line: 664, column: 9, scope: !4694)
!4707 = !DILocalVariable(name: "flags", arg: 2, scope: !4698, file: !124, line: 446, type: !677)
!4708 = !DILocation(line: 446, column: 9, scope: !4698, inlinedAt: !4702)
!4709 = !DILocalVariable(name: "size", arg: 3, scope: !4698, file: !124, line: 446, type: !251)
!4710 = !DILocation(line: 446, column: 23, scope: !4698, inlinedAt: !4702)
!4711 = !DILocalVariable(name: "ret", scope: !4698, file: !124, line: 448, type: !131)
!4712 = !DILocation(line: 448, column: 8, scope: !4698, inlinedAt: !4702)
!4713 = !DILocalVariable(name: "flags", arg: 1, scope: !4714, file: !124, line: 318, type: !677)
!4714 = distinct !DISubprogram(name: "kmalloc_type", scope: !124, file: !124, line: 318, type: !4715, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!123, !677}
!4717 = !DILocation(line: 318, column: 67, scope: !4714, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 553, column: 20, scope: !4703, inlinedAt: !4706)
!4719 = !DILocalVariable(name: "size", arg: 1, scope: !4720, file: !124, line: 346, type: !251)
!4720 = distinct !DISubprogram(name: "kmalloc_index", scope: !124, file: !124, line: 346, type: !4721, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!7, !251}
!4723 = !DILocation(line: 346, column: 58, scope: !4720, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 547, column: 11, scope: !4703, inlinedAt: !4706)
!4725 = !DILocalVariable(name: "size", arg: 1, scope: !4726, file: !124, line: 472, type: !251)
!4726 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !124, file: !124, line: 472, type: !4727, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!131, !251, !677, !7}
!4729 = !DILocation(line: 472, column: 28, scope: !4726, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 481, column: 9, scope: !4731, inlinedAt: !4732)
!4731 = distinct !DISubprogram(name: "kmalloc_large", scope: !124, file: !124, line: 478, type: !4695, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4732 = distinct !DILocation(line: 545, column: 11, scope: !4733, inlinedAt: !4706)
!4733 = distinct !DILexicalBlock(scope: !4703, file: !124, line: 544, column: 7)
!4734 = !DILocalVariable(name: "flags", arg: 2, scope: !4726, file: !124, line: 472, type: !677)
!4735 = !DILocation(line: 472, column: 40, scope: !4726, inlinedAt: !4730)
!4736 = !DILocalVariable(name: "order", arg: 3, scope: !4726, file: !124, line: 472, type: !7)
!4737 = !DILocation(line: 472, column: 60, scope: !4726, inlinedAt: !4730)
!4738 = !DILocalVariable(name: "size", arg: 1, scope: !4731, file: !124, line: 478, type: !251)
!4739 = !DILocation(line: 478, column: 51, scope: !4731, inlinedAt: !4732)
!4740 = !DILocalVariable(name: "flags", arg: 2, scope: !4731, file: !124, line: 478, type: !677)
!4741 = !DILocation(line: 478, column: 63, scope: !4731, inlinedAt: !4732)
!4742 = !DILocalVariable(name: "order", scope: !4731, file: !124, line: 480, type: !7)
!4743 = !DILocation(line: 480, column: 15, scope: !4731, inlinedAt: !4732)
!4744 = !DILocalVariable(name: "size", arg: 1, scope: !4705, file: !124, line: 538, type: !251)
!4745 = !DILocation(line: 538, column: 45, scope: !4705, inlinedAt: !4706)
!4746 = !DILocalVariable(name: "flags", arg: 2, scope: !4705, file: !124, line: 538, type: !677)
!4747 = !DILocation(line: 538, column: 57, scope: !4705, inlinedAt: !4706)
!4748 = !DILocalVariable(name: "index", scope: !4703, file: !124, line: 542, type: !7)
!4749 = !DILocation(line: 542, column: 16, scope: !4703, inlinedAt: !4706)
!4750 = !DILocalVariable(name: "size", arg: 1, scope: !4694, file: !124, line: 662, type: !251)
!4751 = !DILocation(line: 662, column: 36, scope: !4694)
!4752 = !DILocalVariable(name: "flags", arg: 2, scope: !4694, file: !124, line: 662, type: !677)
!4753 = !DILocation(line: 662, column: 48, scope: !4694)
!4754 = !DILocation(line: 664, column: 17, scope: !4694)
!4755 = !DILocation(line: 664, column: 23, scope: !4694)
!4756 = !DILocation(line: 664, column: 29, scope: !4694)
!4757 = !DILocation(line: 540, column: 27, scope: !4704, inlinedAt: !4706)
!4758 = !DILocation(line: 540, column: 6, scope: !4704, inlinedAt: !4706)
!4759 = !DILocation(line: 540, column: 6, scope: !4705, inlinedAt: !4706)
!4760 = !DILocation(line: 544, column: 7, scope: !4733, inlinedAt: !4706)
!4761 = !DILocation(line: 544, column: 12, scope: !4733, inlinedAt: !4706)
!4762 = !DILocation(line: 544, column: 7, scope: !4703, inlinedAt: !4706)
!4763 = !DILocation(line: 545, column: 25, scope: !4733, inlinedAt: !4706)
!4764 = !DILocation(line: 545, column: 31, scope: !4733, inlinedAt: !4706)
!4765 = !DILocation(line: 480, column: 33, scope: !4731, inlinedAt: !4732)
!4766 = !DILocation(line: 480, column: 23, scope: !4731, inlinedAt: !4732)
!4767 = !DILocation(line: 481, column: 29, scope: !4731, inlinedAt: !4732)
!4768 = !DILocation(line: 481, column: 35, scope: !4731, inlinedAt: !4732)
!4769 = !DILocation(line: 481, column: 42, scope: !4731, inlinedAt: !4732)
!4770 = !DILocation(line: 474, column: 23, scope: !4726, inlinedAt: !4730)
!4771 = !DILocation(line: 474, column: 29, scope: !4726, inlinedAt: !4730)
!4772 = !DILocation(line: 474, column: 36, scope: !4726, inlinedAt: !4730)
!4773 = !DILocation(line: 474, column: 9, scope: !4726, inlinedAt: !4730)
!4774 = !DILocation(line: 545, column: 4, scope: !4733, inlinedAt: !4706)
!4775 = !DILocation(line: 547, column: 25, scope: !4703, inlinedAt: !4706)
!4776 = !DILocation(line: 348, column: 7, scope: !4777, inlinedAt: !4724)
!4777 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 348, column: 6)
!4778 = !DILocation(line: 348, column: 6, scope: !4720, inlinedAt: !4724)
!4779 = !DILocation(line: 349, column: 3, scope: !4777, inlinedAt: !4724)
!4780 = !DILocation(line: 351, column: 6, scope: !4781, inlinedAt: !4724)
!4781 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 351, column: 6)
!4782 = !DILocation(line: 351, column: 11, scope: !4781, inlinedAt: !4724)
!4783 = !DILocation(line: 351, column: 6, scope: !4720, inlinedAt: !4724)
!4784 = !DILocation(line: 352, column: 3, scope: !4781, inlinedAt: !4724)
!4785 = !DILocation(line: 354, column: 32, scope: !4786, inlinedAt: !4724)
!4786 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 354, column: 6)
!4787 = !DILocation(line: 354, column: 37, scope: !4786, inlinedAt: !4724)
!4788 = !DILocation(line: 354, column: 42, scope: !4786, inlinedAt: !4724)
!4789 = !DILocation(line: 354, column: 45, scope: !4786, inlinedAt: !4724)
!4790 = !DILocation(line: 354, column: 50, scope: !4786, inlinedAt: !4724)
!4791 = !DILocation(line: 354, column: 6, scope: !4720, inlinedAt: !4724)
!4792 = !DILocation(line: 355, column: 3, scope: !4786, inlinedAt: !4724)
!4793 = !DILocation(line: 356, column: 32, scope: !4794, inlinedAt: !4724)
!4794 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 356, column: 6)
!4795 = !DILocation(line: 356, column: 37, scope: !4794, inlinedAt: !4724)
!4796 = !DILocation(line: 356, column: 43, scope: !4794, inlinedAt: !4724)
!4797 = !DILocation(line: 356, column: 46, scope: !4794, inlinedAt: !4724)
!4798 = !DILocation(line: 356, column: 51, scope: !4794, inlinedAt: !4724)
!4799 = !DILocation(line: 356, column: 6, scope: !4720, inlinedAt: !4724)
!4800 = !DILocation(line: 357, column: 3, scope: !4794, inlinedAt: !4724)
!4801 = !DILocation(line: 358, column: 6, scope: !4802, inlinedAt: !4724)
!4802 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 358, column: 6)
!4803 = !DILocation(line: 358, column: 11, scope: !4802, inlinedAt: !4724)
!4804 = !DILocation(line: 358, column: 6, scope: !4720, inlinedAt: !4724)
!4805 = !DILocation(line: 358, column: 26, scope: !4802, inlinedAt: !4724)
!4806 = !DILocation(line: 359, column: 6, scope: !4807, inlinedAt: !4724)
!4807 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 359, column: 6)
!4808 = !DILocation(line: 359, column: 11, scope: !4807, inlinedAt: !4724)
!4809 = !DILocation(line: 359, column: 6, scope: !4720, inlinedAt: !4724)
!4810 = !DILocation(line: 359, column: 26, scope: !4807, inlinedAt: !4724)
!4811 = !DILocation(line: 360, column: 6, scope: !4812, inlinedAt: !4724)
!4812 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 360, column: 6)
!4813 = !DILocation(line: 360, column: 11, scope: !4812, inlinedAt: !4724)
!4814 = !DILocation(line: 360, column: 6, scope: !4720, inlinedAt: !4724)
!4815 = !DILocation(line: 360, column: 26, scope: !4812, inlinedAt: !4724)
!4816 = !DILocation(line: 361, column: 6, scope: !4817, inlinedAt: !4724)
!4817 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 361, column: 6)
!4818 = !DILocation(line: 361, column: 11, scope: !4817, inlinedAt: !4724)
!4819 = !DILocation(line: 361, column: 6, scope: !4720, inlinedAt: !4724)
!4820 = !DILocation(line: 361, column: 26, scope: !4817, inlinedAt: !4724)
!4821 = !DILocation(line: 362, column: 6, scope: !4822, inlinedAt: !4724)
!4822 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 362, column: 6)
!4823 = !DILocation(line: 362, column: 11, scope: !4822, inlinedAt: !4724)
!4824 = !DILocation(line: 362, column: 6, scope: !4720, inlinedAt: !4724)
!4825 = !DILocation(line: 362, column: 26, scope: !4822, inlinedAt: !4724)
!4826 = !DILocation(line: 363, column: 6, scope: !4827, inlinedAt: !4724)
!4827 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 363, column: 6)
!4828 = !DILocation(line: 363, column: 11, scope: !4827, inlinedAt: !4724)
!4829 = !DILocation(line: 363, column: 6, scope: !4720, inlinedAt: !4724)
!4830 = !DILocation(line: 363, column: 26, scope: !4827, inlinedAt: !4724)
!4831 = !DILocation(line: 364, column: 6, scope: !4832, inlinedAt: !4724)
!4832 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 364, column: 6)
!4833 = !DILocation(line: 364, column: 11, scope: !4832, inlinedAt: !4724)
!4834 = !DILocation(line: 364, column: 6, scope: !4720, inlinedAt: !4724)
!4835 = !DILocation(line: 364, column: 26, scope: !4832, inlinedAt: !4724)
!4836 = !DILocation(line: 365, column: 6, scope: !4837, inlinedAt: !4724)
!4837 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 365, column: 6)
!4838 = !DILocation(line: 365, column: 11, scope: !4837, inlinedAt: !4724)
!4839 = !DILocation(line: 365, column: 6, scope: !4720, inlinedAt: !4724)
!4840 = !DILocation(line: 365, column: 26, scope: !4837, inlinedAt: !4724)
!4841 = !DILocation(line: 366, column: 6, scope: !4842, inlinedAt: !4724)
!4842 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 366, column: 6)
!4843 = !DILocation(line: 366, column: 11, scope: !4842, inlinedAt: !4724)
!4844 = !DILocation(line: 366, column: 6, scope: !4720, inlinedAt: !4724)
!4845 = !DILocation(line: 366, column: 26, scope: !4842, inlinedAt: !4724)
!4846 = !DILocation(line: 367, column: 6, scope: !4847, inlinedAt: !4724)
!4847 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 367, column: 6)
!4848 = !DILocation(line: 367, column: 11, scope: !4847, inlinedAt: !4724)
!4849 = !DILocation(line: 367, column: 6, scope: !4720, inlinedAt: !4724)
!4850 = !DILocation(line: 367, column: 26, scope: !4847, inlinedAt: !4724)
!4851 = !DILocation(line: 368, column: 6, scope: !4852, inlinedAt: !4724)
!4852 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 368, column: 6)
!4853 = !DILocation(line: 368, column: 11, scope: !4852, inlinedAt: !4724)
!4854 = !DILocation(line: 368, column: 6, scope: !4720, inlinedAt: !4724)
!4855 = !DILocation(line: 368, column: 26, scope: !4852, inlinedAt: !4724)
!4856 = !DILocation(line: 369, column: 6, scope: !4857, inlinedAt: !4724)
!4857 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 369, column: 6)
!4858 = !DILocation(line: 369, column: 11, scope: !4857, inlinedAt: !4724)
!4859 = !DILocation(line: 369, column: 6, scope: !4720, inlinedAt: !4724)
!4860 = !DILocation(line: 369, column: 26, scope: !4857, inlinedAt: !4724)
!4861 = !DILocation(line: 370, column: 6, scope: !4862, inlinedAt: !4724)
!4862 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 370, column: 6)
!4863 = !DILocation(line: 370, column: 11, scope: !4862, inlinedAt: !4724)
!4864 = !DILocation(line: 370, column: 6, scope: !4720, inlinedAt: !4724)
!4865 = !DILocation(line: 370, column: 26, scope: !4862, inlinedAt: !4724)
!4866 = !DILocation(line: 371, column: 6, scope: !4867, inlinedAt: !4724)
!4867 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 371, column: 6)
!4868 = !DILocation(line: 371, column: 11, scope: !4867, inlinedAt: !4724)
!4869 = !DILocation(line: 371, column: 6, scope: !4720, inlinedAt: !4724)
!4870 = !DILocation(line: 371, column: 26, scope: !4867, inlinedAt: !4724)
!4871 = !DILocation(line: 372, column: 6, scope: !4872, inlinedAt: !4724)
!4872 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 372, column: 6)
!4873 = !DILocation(line: 372, column: 11, scope: !4872, inlinedAt: !4724)
!4874 = !DILocation(line: 372, column: 6, scope: !4720, inlinedAt: !4724)
!4875 = !DILocation(line: 372, column: 26, scope: !4872, inlinedAt: !4724)
!4876 = !DILocation(line: 373, column: 6, scope: !4877, inlinedAt: !4724)
!4877 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 373, column: 6)
!4878 = !DILocation(line: 373, column: 11, scope: !4877, inlinedAt: !4724)
!4879 = !DILocation(line: 373, column: 6, scope: !4720, inlinedAt: !4724)
!4880 = !DILocation(line: 373, column: 26, scope: !4877, inlinedAt: !4724)
!4881 = !DILocation(line: 374, column: 6, scope: !4882, inlinedAt: !4724)
!4882 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 374, column: 6)
!4883 = !DILocation(line: 374, column: 11, scope: !4882, inlinedAt: !4724)
!4884 = !DILocation(line: 374, column: 6, scope: !4720, inlinedAt: !4724)
!4885 = !DILocation(line: 374, column: 26, scope: !4882, inlinedAt: !4724)
!4886 = !DILocation(line: 375, column: 6, scope: !4887, inlinedAt: !4724)
!4887 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 375, column: 6)
!4888 = !DILocation(line: 375, column: 11, scope: !4887, inlinedAt: !4724)
!4889 = !DILocation(line: 375, column: 6, scope: !4720, inlinedAt: !4724)
!4890 = !DILocation(line: 375, column: 27, scope: !4887, inlinedAt: !4724)
!4891 = !DILocation(line: 376, column: 6, scope: !4892, inlinedAt: !4724)
!4892 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 376, column: 6)
!4893 = !DILocation(line: 376, column: 11, scope: !4892, inlinedAt: !4724)
!4894 = !DILocation(line: 376, column: 6, scope: !4720, inlinedAt: !4724)
!4895 = !DILocation(line: 376, column: 32, scope: !4892, inlinedAt: !4724)
!4896 = !DILocation(line: 377, column: 6, scope: !4897, inlinedAt: !4724)
!4897 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 377, column: 6)
!4898 = !DILocation(line: 377, column: 11, scope: !4897, inlinedAt: !4724)
!4899 = !DILocation(line: 377, column: 6, scope: !4720, inlinedAt: !4724)
!4900 = !DILocation(line: 377, column: 32, scope: !4897, inlinedAt: !4724)
!4901 = !DILocation(line: 378, column: 6, scope: !4902, inlinedAt: !4724)
!4902 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 378, column: 6)
!4903 = !DILocation(line: 378, column: 11, scope: !4902, inlinedAt: !4724)
!4904 = !DILocation(line: 378, column: 6, scope: !4720, inlinedAt: !4724)
!4905 = !DILocation(line: 378, column: 32, scope: !4902, inlinedAt: !4724)
!4906 = !DILocation(line: 379, column: 6, scope: !4907, inlinedAt: !4724)
!4907 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 379, column: 6)
!4908 = !DILocation(line: 379, column: 11, scope: !4907, inlinedAt: !4724)
!4909 = !DILocation(line: 379, column: 6, scope: !4720, inlinedAt: !4724)
!4910 = !DILocation(line: 379, column: 33, scope: !4907, inlinedAt: !4724)
!4911 = !DILocation(line: 380, column: 6, scope: !4912, inlinedAt: !4724)
!4912 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 380, column: 6)
!4913 = !DILocation(line: 380, column: 11, scope: !4912, inlinedAt: !4724)
!4914 = !DILocation(line: 380, column: 6, scope: !4720, inlinedAt: !4724)
!4915 = !DILocation(line: 380, column: 33, scope: !4912, inlinedAt: !4724)
!4916 = !DILocation(line: 381, column: 6, scope: !4917, inlinedAt: !4724)
!4917 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 381, column: 6)
!4918 = !DILocation(line: 381, column: 11, scope: !4917, inlinedAt: !4724)
!4919 = !DILocation(line: 381, column: 6, scope: !4720, inlinedAt: !4724)
!4920 = !DILocation(line: 381, column: 33, scope: !4917, inlinedAt: !4724)
!4921 = !DILocation(line: 382, column: 2, scope: !4922, inlinedAt: !4724)
!4922 = distinct !DILexicalBlock(scope: !4923, file: !124, line: 382, column: 2)
!4923 = distinct !DILexicalBlock(scope: !4720, file: !124, line: 382, column: 2)
!4924 = !{i32 -2144233540, i32 -2144233511, i32 -2144233465, i32 -2144233407, i32 -2144233353, i32 -2144233299, i32 -2144233244, i32 -2144233213}
!4925 = !DILocation(line: 382, column: 2, scope: !4926, inlinedAt: !4724)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !124, line: 382, column: 2)
!4927 = distinct !DILexicalBlock(scope: !4923, file: !124, line: 382, column: 2)
!4928 = !{i32 -2144232770, i32 -2144232763, i32 -2144232709, i32 -2144232678, i32 -2144232648}
!4929 = !DILocation(line: 382, column: 2, scope: !4927, inlinedAt: !4724)
!4930 = !DILocation(line: 386, column: 1, scope: !4720, inlinedAt: !4724)
!4931 = !DILocation(line: 547, column: 9, scope: !4703, inlinedAt: !4706)
!4932 = !DILocation(line: 549, column: 8, scope: !4933, inlinedAt: !4706)
!4933 = distinct !DILexicalBlock(scope: !4703, file: !124, line: 549, column: 7)
!4934 = !DILocation(line: 549, column: 7, scope: !4703, inlinedAt: !4706)
!4935 = !DILocation(line: 550, column: 4, scope: !4933, inlinedAt: !4706)
!4936 = !DILocation(line: 553, column: 33, scope: !4703, inlinedAt: !4706)
!4937 = !DILocation(line: 325, column: 6, scope: !4938, inlinedAt: !4718)
!4938 = distinct !DILexicalBlock(scope: !4714, file: !124, line: 325, column: 6)
!4939 = !DILocation(line: 325, column: 6, scope: !4714, inlinedAt: !4718)
!4940 = !DILocation(line: 326, column: 3, scope: !4938, inlinedAt: !4718)
!4941 = !DILocation(line: 332, column: 9, scope: !4714, inlinedAt: !4718)
!4942 = !DILocation(line: 332, column: 15, scope: !4714, inlinedAt: !4718)
!4943 = !DILocation(line: 332, column: 2, scope: !4714, inlinedAt: !4718)
!4944 = !DILocation(line: 336, column: 1, scope: !4714, inlinedAt: !4718)
!4945 = !DILocation(line: 553, column: 5, scope: !4703, inlinedAt: !4706)
!4946 = !DILocation(line: 553, column: 41, scope: !4703, inlinedAt: !4706)
!4947 = !DILocation(line: 554, column: 5, scope: !4703, inlinedAt: !4706)
!4948 = !DILocation(line: 554, column: 12, scope: !4703, inlinedAt: !4706)
!4949 = !DILocation(line: 448, column: 31, scope: !4698, inlinedAt: !4702)
!4950 = !DILocation(line: 448, column: 34, scope: !4698, inlinedAt: !4702)
!4951 = !DILocation(line: 448, column: 14, scope: !4698, inlinedAt: !4702)
!4952 = !DILocation(line: 450, column: 22, scope: !4698, inlinedAt: !4702)
!4953 = !DILocation(line: 450, column: 25, scope: !4698, inlinedAt: !4702)
!4954 = !DILocation(line: 450, column: 30, scope: !4698, inlinedAt: !4702)
!4955 = !DILocation(line: 450, column: 36, scope: !4698, inlinedAt: !4702)
!4956 = !DILocation(line: 450, column: 8, scope: !4698, inlinedAt: !4702)
!4957 = !DILocation(line: 450, column: 6, scope: !4698, inlinedAt: !4702)
!4958 = !DILocation(line: 451, column: 9, scope: !4698, inlinedAt: !4702)
!4959 = !DILocation(line: 552, column: 3, scope: !4703, inlinedAt: !4706)
!4960 = !DILocation(line: 557, column: 19, scope: !4705, inlinedAt: !4706)
!4961 = !DILocation(line: 557, column: 25, scope: !4705, inlinedAt: !4706)
!4962 = !DILocation(line: 557, column: 9, scope: !4705, inlinedAt: !4706)
!4963 = !DILocation(line: 557, column: 2, scope: !4705, inlinedAt: !4706)
!4964 = !DILocation(line: 558, column: 1, scope: !4705, inlinedAt: !4706)
!4965 = !DILocation(line: 664, column: 2, scope: !4694)
!4966 = distinct !DISubprogram(name: "ERR_PTR", scope: !4967, file: !4967, line: 24, type: !4968, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4967 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!131, !239}
!4970 = !DILocalVariable(name: "error", arg: 1, scope: !4966, file: !4967, line: 24, type: !239)
!4971 = !DILocation(line: 24, column: 48, scope: !4966)
!4972 = !DILocation(line: 26, column: 18, scope: !4966)
!4973 = !DILocation(line: 26, column: 9, scope: !4966)
!4974 = !DILocation(line: 26, column: 2, scope: !4966)
!4975 = distinct !DISubprogram(name: "IS_ERR", scope: !4967, file: !4967, line: 34, type: !4976, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!420, !2063}
!4978 = !DILocalVariable(name: "ptr", arg: 1, scope: !4975, file: !4967, line: 34, type: !2063)
!4979 = !DILocation(line: 34, column: 60, scope: !4975)
!4980 = !DILocation(line: 36, column: 9, scope: !4975)
!4981 = !DILocation(line: 36, column: 2, scope: !4975)
!4982 = distinct !DISubprogram(name: "PTR_ERR", scope: !4967, file: !4967, line: 29, type: !4983, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!239, !2063}
!4985 = !DILocalVariable(name: "ptr", arg: 1, scope: !4982, file: !4967, line: 29, type: !2063)
!4986 = !DILocation(line: 29, column: 61, scope: !4982)
!4987 = !DILocation(line: 31, column: 16, scope: !4982)
!4988 = !DILocation(line: 31, column: 9, scope: !4982)
!4989 = !DILocation(line: 31, column: 2, scope: !4982)
!4990 = distinct !DISubprogram(name: "ERR_CAST", scope: !4967, file: !4967, line: 51, type: !4991, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!131, !2063}
!4993 = !DILocalVariable(name: "ptr", arg: 1, scope: !4990, file: !4967, line: 51, type: !2063)
!4994 = !DILocation(line: 51, column: 64, scope: !4990)
!4995 = !DILocation(line: 54, column: 18, scope: !4990)
!4996 = !DILocation(line: 54, column: 2, scope: !4990)
!4997 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !4998, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!144, !3646}
!5000 = !DILocalVariable(name: "dev", arg: 1, scope: !4997, file: !73, line: 609, type: !3646)
!5001 = !DILocation(line: 609, column: 57, scope: !4997)
!5002 = !DILocation(line: 612, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4997, file: !73, line: 612, column: 6)
!5004 = !DILocation(line: 612, column: 11, scope: !5003)
!5005 = !DILocation(line: 612, column: 6, scope: !4997)
!5006 = !DILocation(line: 613, column: 10, scope: !5003)
!5007 = !DILocation(line: 613, column: 15, scope: !5003)
!5008 = !DILocation(line: 613, column: 3, scope: !5003)
!5009 = !DILocation(line: 615, column: 23, scope: !4997)
!5010 = !DILocation(line: 615, column: 28, scope: !4997)
!5011 = !DILocation(line: 615, column: 9, scope: !4997)
!5012 = !DILocation(line: 615, column: 2, scope: !4997)
!5013 = !DILocation(line: 616, column: 1, scope: !4997)
!5014 = distinct !DISubprogram(name: "gb_connection_set_data", scope: !102, file: !102, line: 125, type: !5015, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{null, !3768, !131}
!5017 = !DILocalVariable(name: "connection", arg: 1, scope: !5014, file: !102, line: 125, type: !3768)
!5018 = !DILocation(line: 125, column: 65, scope: !5014)
!5019 = !DILocalVariable(name: "data", arg: 2, scope: !5014, file: !102, line: 126, type: !131)
!5020 = !DILocation(line: 126, column: 14, scope: !5014)
!5021 = !DILocation(line: 128, column: 24, scope: !5014)
!5022 = !DILocation(line: 128, column: 2, scope: !5014)
!5023 = !DILocation(line: 128, column: 14, scope: !5014)
!5024 = !DILocation(line: 128, column: 22, scope: !5014)
!5025 = !DILocation(line: 129, column: 1, scope: !5014)
!5026 = distinct !DISubprogram(name: "gb_control_enable", scope: !3, file: !3, line: 479, type: !4017, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5027 = !DILocalVariable(name: "control", arg: 1, scope: !5026, file: !3, line: 479, type: !3761)
!5028 = !DILocation(line: 479, column: 42, scope: !5026)
!5029 = !DILocalVariable(name: "ret", scope: !5026, file: !3, line: 481, type: !188)
!5030 = !DILocation(line: 481, column: 6, scope: !5026)
!5031 = !DILocation(line: 485, column: 32, scope: !5026)
!5032 = !DILocation(line: 485, column: 41, scope: !5026)
!5033 = !DILocation(line: 485, column: 8, scope: !5026)
!5034 = !DILocation(line: 485, column: 6, scope: !5026)
!5035 = !DILocation(line: 486, column: 6, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 486, column: 6)
!5037 = !DILocation(line: 486, column: 6, scope: !5026)
!5038 = !DILocation(line: 487, column: 3, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 486, column: 11)
!5040 = !DILocation(line: 490, column: 10, scope: !5039)
!5041 = !DILocation(line: 490, column: 3, scope: !5039)
!5042 = !DILocation(line: 493, column: 31, scope: !5026)
!5043 = !DILocation(line: 493, column: 8, scope: !5026)
!5044 = !DILocation(line: 493, column: 6, scope: !5026)
!5045 = !DILocation(line: 494, column: 6, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 494, column: 6)
!5047 = !DILocation(line: 494, column: 6, scope: !5026)
!5048 = !DILocation(line: 495, column: 3, scope: !5046)
!5049 = !DILocation(line: 497, column: 6, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 497, column: 6)
!5051 = !DILocation(line: 497, column: 15, scope: !5050)
!5052 = !DILocation(line: 497, column: 30, scope: !5050)
!5053 = !DILocation(line: 497, column: 34, scope: !5050)
!5054 = !DILocation(line: 497, column: 37, scope: !5050)
!5055 = !DILocation(line: 497, column: 46, scope: !5050)
!5056 = !DILocation(line: 497, column: 61, scope: !5050)
!5057 = !DILocation(line: 497, column: 6, scope: !5026)
!5058 = !DILocation(line: 498, column: 3, scope: !5050)
!5059 = !DILocation(line: 498, column: 12, scope: !5050)
!5060 = !DILocation(line: 498, column: 31, scope: !5050)
!5061 = !DILocation(line: 501, column: 8, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 501, column: 6)
!5063 = !DILocation(line: 501, column: 17, scope: !5062)
!5064 = !DILocation(line: 501, column: 23, scope: !5062)
!5065 = !DILocation(line: 501, column: 30, scope: !5062)
!5066 = !DILocation(line: 501, column: 6, scope: !5026)
!5067 = !DILocation(line: 502, column: 3, scope: !5062)
!5068 = !DILocation(line: 502, column: 12, scope: !5062)
!5069 = !DILocation(line: 502, column: 32, scope: !5062)
!5070 = !DILocation(line: 504, column: 2, scope: !5026)
!5071 = !DILabel(scope: !5026, name: "err_disable_connection", file: !3, line: 506)
!5072 = !DILocation(line: 506, column: 1, scope: !5026)
!5073 = !DILocation(line: 507, column: 24, scope: !5026)
!5074 = !DILocation(line: 507, column: 33, scope: !5026)
!5075 = !DILocation(line: 507, column: 2, scope: !5026)
!5076 = !DILocation(line: 509, column: 9, scope: !5026)
!5077 = !DILocation(line: 509, column: 2, scope: !5026)
!5078 = !DILocation(line: 510, column: 1, scope: !5026)
!5079 = distinct !DISubprogram(name: "gb_control_get_version", scope: !3, file: !3, line: 18, type: !4017, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5080 = !DILocalVariable(name: "control", arg: 1, scope: !5079, file: !3, line: 18, type: !3761)
!5081 = !DILocation(line: 18, column: 54, scope: !5079)
!5082 = !DILocalVariable(name: "intf", scope: !5079, file: !3, line: 20, type: !3756)
!5083 = !DILocation(line: 20, column: 23, scope: !5079)
!5084 = !DILocation(line: 20, column: 30, scope: !5079)
!5085 = !DILocation(line: 20, column: 39, scope: !5079)
!5086 = !DILocation(line: 20, column: 51, scope: !5079)
!5087 = !DILocalVariable(name: "request", scope: !5079, file: !3, line: 21, type: !5088)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_version_request", file: !3846, line: 89, size: 16, elements: !5089)
!5089 = !{!5090, !5091}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !5088, file: !3846, line: 90, baseType: !1287, size: 8)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5088, file: !3846, line: 91, baseType: !1287, size: 8, offset: 8)
!5092 = !DILocation(line: 21, column: 36, scope: !5079)
!5093 = !DILocalVariable(name: "response", scope: !5079, file: !3, line: 22, type: !5094)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control_version_response", file: !3846, line: 94, size: 16, elements: !5095)
!5095 = !{!5096, !5097}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !5094, file: !3846, line: 95, baseType: !1287, size: 8)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5094, file: !3846, line: 96, baseType: !1287, size: 8, offset: 8)
!5098 = !DILocation(line: 22, column: 37, scope: !5079)
!5099 = !DILocalVariable(name: "ret", scope: !5079, file: !3, line: 23, type: !188)
!5100 = !DILocation(line: 23, column: 6, scope: !5079)
!5101 = !DILocation(line: 25, column: 10, scope: !5079)
!5102 = !DILocation(line: 25, column: 16, scope: !5079)
!5103 = !DILocation(line: 26, column: 10, scope: !5079)
!5104 = !DILocation(line: 26, column: 16, scope: !5079)
!5105 = !DILocation(line: 28, column: 26, scope: !5079)
!5106 = !DILocation(line: 28, column: 35, scope: !5079)
!5107 = !DILocation(line: 30, column: 5, scope: !5079)
!5108 = !DILocation(line: 30, column: 32, scope: !5079)
!5109 = !DILocation(line: 28, column: 8, scope: !5079)
!5110 = !DILocation(line: 28, column: 6, scope: !5079)
!5111 = !DILocation(line: 32, column: 6, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 32, column: 6)
!5113 = !DILocation(line: 32, column: 6, scope: !5079)
!5114 = !DILocation(line: 33, column: 3, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 32, column: 11)
!5116 = !DILocation(line: 36, column: 10, scope: !5115)
!5117 = !DILocation(line: 36, column: 3, scope: !5115)
!5118 = !DILocation(line: 39, column: 15, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 39, column: 6)
!5120 = !DILocation(line: 39, column: 6, scope: !5119)
!5121 = !DILocation(line: 39, column: 31, scope: !5119)
!5122 = !DILocation(line: 39, column: 23, scope: !5119)
!5123 = !DILocation(line: 39, column: 21, scope: !5119)
!5124 = !DILocation(line: 39, column: 6, scope: !5079)
!5125 = !DILocation(line: 40, column: 3, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 39, column: 38)
!5127 = !DILocation(line: 43, column: 3, scope: !5126)
!5128 = !DILocation(line: 46, column: 37, scope: !5079)
!5129 = !DILocation(line: 46, column: 2, scope: !5079)
!5130 = !DILocation(line: 46, column: 11, scope: !5079)
!5131 = !DILocation(line: 46, column: 26, scope: !5079)
!5132 = !DILocation(line: 47, column: 37, scope: !5079)
!5133 = !DILocation(line: 47, column: 2, scope: !5079)
!5134 = !DILocation(line: 47, column: 11, scope: !5079)
!5135 = !DILocation(line: 47, column: 26, scope: !5079)
!5136 = !DILocation(line: 52, column: 2, scope: !5079)
!5137 = !DILocation(line: 53, column: 1, scope: !5079)
!5138 = distinct !DISubprogram(name: "gb_control_disable", scope: !3, file: !3, line: 512, type: !5139, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{null, !3761}
!5141 = !DILocalVariable(name: "control", arg: 1, scope: !5138, file: !3, line: 512, type: !3761)
!5142 = !DILocation(line: 512, column: 44, scope: !5138)
!5143 = !DILocation(line: 516, column: 6, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 516, column: 6)
!5145 = !DILocation(line: 516, column: 15, scope: !5144)
!5146 = !DILocation(line: 516, column: 21, scope: !5144)
!5147 = !DILocation(line: 516, column: 6, scope: !5138)
!5148 = !DILocation(line: 517, column: 32, scope: !5144)
!5149 = !DILocation(line: 517, column: 41, scope: !5144)
!5150 = !DILocation(line: 517, column: 3, scope: !5144)
!5151 = !DILocation(line: 519, column: 25, scope: !5144)
!5152 = !DILocation(line: 519, column: 34, scope: !5144)
!5153 = !DILocation(line: 519, column: 3, scope: !5144)
!5154 = !DILocation(line: 520, column: 1, scope: !5138)
!5155 = distinct !DISubprogram(name: "gb_control_suspend", scope: !3, file: !3, line: 522, type: !4017, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5156 = !DILocalVariable(name: "control", arg: 1, scope: !5155, file: !3, line: 522, type: !3761)
!5157 = !DILocation(line: 522, column: 43, scope: !5155)
!5158 = !DILocation(line: 524, column: 24, scope: !5155)
!5159 = !DILocation(line: 524, column: 33, scope: !5155)
!5160 = !DILocation(line: 524, column: 2, scope: !5155)
!5161 = !DILocation(line: 526, column: 2, scope: !5155)
!5162 = distinct !DISubprogram(name: "gb_control_resume", scope: !3, file: !3, line: 529, type: !4017, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5163 = !DILocalVariable(name: "control", arg: 1, scope: !5162, file: !3, line: 529, type: !3761)
!5164 = !DILocation(line: 529, column: 42, scope: !5162)
!5165 = !DILocalVariable(name: "ret", scope: !5162, file: !3, line: 531, type: !188)
!5166 = !DILocation(line: 531, column: 6, scope: !5162)
!5167 = !DILocation(line: 533, column: 32, scope: !5162)
!5168 = !DILocation(line: 533, column: 41, scope: !5162)
!5169 = !DILocation(line: 533, column: 8, scope: !5162)
!5170 = !DILocation(line: 533, column: 6, scope: !5162)
!5171 = !DILocation(line: 534, column: 6, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 534, column: 6)
!5173 = !DILocation(line: 534, column: 6, scope: !5162)
!5174 = !DILocation(line: 535, column: 3, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 534, column: 11)
!5176 = !DILocation(line: 537, column: 10, scope: !5175)
!5177 = !DILocation(line: 537, column: 3, scope: !5175)
!5178 = !DILocation(line: 540, column: 2, scope: !5162)
!5179 = !DILocation(line: 541, column: 1, scope: !5162)
!5180 = distinct !DISubprogram(name: "gb_control_add", scope: !3, file: !3, line: 543, type: !4017, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5181 = !DILocalVariable(name: "control", arg: 1, scope: !5180, file: !3, line: 543, type: !3761)
!5182 = !DILocation(line: 543, column: 39, scope: !5180)
!5183 = !DILocalVariable(name: "ret", scope: !5180, file: !3, line: 545, type: !188)
!5184 = !DILocation(line: 545, column: 6, scope: !5180)
!5185 = !DILocation(line: 547, column: 20, scope: !5180)
!5186 = !DILocation(line: 547, column: 29, scope: !5180)
!5187 = !DILocation(line: 547, column: 8, scope: !5180)
!5188 = !DILocation(line: 547, column: 6, scope: !5180)
!5189 = !DILocation(line: 548, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 548, column: 6)
!5191 = !DILocation(line: 548, column: 6, scope: !5180)
!5192 = !DILocation(line: 549, column: 3, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 548, column: 11)
!5194 = !DILocation(line: 552, column: 10, scope: !5193)
!5195 = !DILocation(line: 552, column: 3, scope: !5193)
!5196 = !DILocation(line: 555, column: 2, scope: !5180)
!5197 = !DILocation(line: 556, column: 1, scope: !5180)
!5198 = distinct !DISubprogram(name: "gb_control_del", scope: !3, file: !3, line: 558, type: !5139, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5199 = !DILocalVariable(name: "control", arg: 1, scope: !5198, file: !3, line: 558, type: !3761)
!5200 = !DILocation(line: 558, column: 40, scope: !5198)
!5201 = !DILocation(line: 560, column: 28, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 560, column: 6)
!5203 = !DILocation(line: 560, column: 37, scope: !5202)
!5204 = !DILocation(line: 560, column: 6, scope: !5202)
!5205 = !DILocation(line: 560, column: 6, scope: !5198)
!5206 = !DILocation(line: 561, column: 15, scope: !5202)
!5207 = !DILocation(line: 561, column: 24, scope: !5202)
!5208 = !DILocation(line: 561, column: 3, scope: !5202)
!5209 = !DILocation(line: 562, column: 1, scope: !5198)
!5210 = distinct !DISubprogram(name: "device_is_registered", scope: !73, file: !73, line: 680, type: !3341, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5211 = !DILocalVariable(name: "dev", arg: 1, scope: !5210, file: !73, line: 680, type: !3309)
!5212 = !DILocation(line: 680, column: 55, scope: !5210)
!5213 = !DILocation(line: 682, column: 9, scope: !5210)
!5214 = !DILocation(line: 682, column: 14, scope: !5210)
!5215 = !DILocation(line: 682, column: 19, scope: !5210)
!5216 = !DILocation(line: 682, column: 2, scope: !5210)
!5217 = distinct !DISubprogram(name: "gb_control_get", scope: !3, file: !3, line: 564, type: !5218, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!3761, !3761}
!5220 = !DILocalVariable(name: "control", arg: 1, scope: !5217, file: !3, line: 564, type: !3761)
!5221 = !DILocation(line: 564, column: 54, scope: !5217)
!5222 = !DILocation(line: 566, column: 14, scope: !5217)
!5223 = !DILocation(line: 566, column: 23, scope: !5217)
!5224 = !DILocation(line: 566, column: 2, scope: !5217)
!5225 = !DILocation(line: 568, column: 9, scope: !5217)
!5226 = !DILocation(line: 568, column: 2, scope: !5217)
!5227 = distinct !DISubprogram(name: "gb_control_put", scope: !3, file: !3, line: 571, type: !5139, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5228 = !DILocalVariable(name: "control", arg: 1, scope: !5227, file: !3, line: 571, type: !3761)
!5229 = !DILocation(line: 571, column: 40, scope: !5227)
!5230 = !DILocation(line: 573, column: 14, scope: !5227)
!5231 = !DILocation(line: 573, column: 23, scope: !5227)
!5232 = !DILocation(line: 573, column: 2, scope: !5227)
!5233 = !DILocation(line: 574, column: 1, scope: !5227)
!5234 = distinct !DISubprogram(name: "gb_control_mode_switch_prepare", scope: !3, file: !3, line: 576, type: !5139, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5235 = !DILocalVariable(name: "control", arg: 1, scope: !5234, file: !3, line: 576, type: !3761)
!5236 = !DILocation(line: 576, column: 56, scope: !5234)
!5237 = !DILocation(line: 578, column: 36, scope: !5234)
!5238 = !DILocation(line: 578, column: 45, scope: !5234)
!5239 = !DILocation(line: 578, column: 2, scope: !5234)
!5240 = !DILocation(line: 579, column: 1, scope: !5234)
!5241 = distinct !DISubprogram(name: "gb_control_mode_switch_complete", scope: !3, file: !3, line: 581, type: !5139, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5242 = !DILocalVariable(name: "control", arg: 1, scope: !5241, file: !3, line: 581, type: !3761)
!5243 = !DILocation(line: 581, column: 57, scope: !5241)
!5244 = !DILocation(line: 583, column: 37, scope: !5241)
!5245 = !DILocation(line: 583, column: 46, scope: !5241)
!5246 = !DILocation(line: 583, column: 2, scope: !5241)
!5247 = !DILocation(line: 584, column: 1, scope: !5241)
!5248 = distinct !DISubprogram(name: "get_order", scope: !5249, file: !5249, line: 29, type: !5250, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5249 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!188, !254}
!5252 = !DILocalVariable(name: "x", arg: 1, scope: !5253, file: !5254, line: 366, type: !352)
!5253 = distinct !DISubprogram(name: "fls64", scope: !5254, file: !5254, line: 366, type: !5255, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5254 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!188, !352}
!5257 = !DILocation(line: 366, column: 40, scope: !5253, inlinedAt: !5258)
!5258 = distinct !DILocation(line: 46, column: 9, scope: !5248)
!5259 = !DILocalVariable(name: "bitpos", scope: !5253, file: !5254, line: 368, type: !188)
!5260 = !DILocation(line: 368, column: 6, scope: !5253, inlinedAt: !5258)
!5261 = !DILocalVariable(name: "size", arg: 1, scope: !5248, file: !5249, line: 29, type: !254)
!5262 = !DILocation(line: 29, column: 63, scope: !5248)
!5263 = !DILocation(line: 31, column: 27, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5248, file: !5249, line: 31, column: 6)
!5265 = !DILocation(line: 31, column: 6, scope: !5264)
!5266 = !DILocation(line: 31, column: 6, scope: !5248)
!5267 = !DILocation(line: 32, column: 8, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5269, file: !5249, line: 32, column: 7)
!5269 = distinct !DILexicalBlock(scope: !5264, file: !5249, line: 31, column: 34)
!5270 = !DILocation(line: 32, column: 7, scope: !5269)
!5271 = !DILocation(line: 33, column: 4, scope: !5268)
!5272 = !DILocation(line: 35, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5269, file: !5249, line: 35, column: 7)
!5274 = !DILocation(line: 35, column: 12, scope: !5273)
!5275 = !DILocation(line: 35, column: 7, scope: !5269)
!5276 = !DILocation(line: 36, column: 4, scope: !5273)
!5277 = !DILocation(line: 38, column: 10, scope: !5269)
!5278 = !DILocation(line: 38, column: 28, scope: !5269)
!5279 = !DILocation(line: 38, column: 41, scope: !5269)
!5280 = !DILocation(line: 38, column: 3, scope: !5269)
!5281 = !DILocation(line: 41, column: 6, scope: !5248)
!5282 = !DILocation(line: 42, column: 7, scope: !5248)
!5283 = !DILocation(line: 46, column: 15, scope: !5248)
!5284 = !DILocation(line: 374, column: 2, scope: !5253, inlinedAt: !5258)
!5285 = !DILocation(line: 376, column: 14, scope: !5253, inlinedAt: !5258)
!5286 = !{i32 253216}
!5287 = !DILocation(line: 377, column: 9, scope: !5253, inlinedAt: !5258)
!5288 = !DILocation(line: 377, column: 16, scope: !5253, inlinedAt: !5258)
!5289 = !DILocation(line: 46, column: 2, scope: !5248)
!5290 = !DILocation(line: 48, column: 1, scope: !5248)
!5291 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5292, file: !5292, line: 30, type: !5293, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5292 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!188, !351}
!5295 = !DILocation(line: 366, column: 40, scope: !5253, inlinedAt: !5296)
!5296 = distinct !DILocation(line: 32, column: 9, scope: !5291)
!5297 = !DILocation(line: 368, column: 6, scope: !5253, inlinedAt: !5296)
!5298 = !DILocalVariable(name: "n", arg: 1, scope: !5291, file: !5292, line: 30, type: !351)
!5299 = !DILocation(line: 30, column: 21, scope: !5291)
!5300 = !DILocation(line: 32, column: 15, scope: !5291)
!5301 = !DILocation(line: 374, column: 2, scope: !5253, inlinedAt: !5296)
!5302 = !DILocation(line: 376, column: 14, scope: !5253, inlinedAt: !5296)
!5303 = !DILocation(line: 377, column: 9, scope: !5253, inlinedAt: !5296)
!5304 = !DILocation(line: 377, column: 16, scope: !5253, inlinedAt: !5296)
!5305 = !DILocation(line: 32, column: 18, scope: !5291)
!5306 = !DILocation(line: 32, column: 2, scope: !5291)
!5307 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5308, file: !5308, line: 137, type: !5309, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5308 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!131, !869, !2063, !251, !677}
!5311 = !DILocalVariable(name: "s", arg: 1, scope: !5307, file: !5308, line: 137, type: !869)
!5312 = !DILocation(line: 137, column: 54, scope: !5307)
!5313 = !DILocalVariable(name: "object", arg: 2, scope: !5307, file: !5308, line: 137, type: !2063)
!5314 = !DILocation(line: 137, column: 69, scope: !5307)
!5315 = !DILocalVariable(name: "size", arg: 3, scope: !5307, file: !5308, line: 138, type: !251)
!5316 = !DILocation(line: 138, column: 12, scope: !5307)
!5317 = !DILocalVariable(name: "flags", arg: 4, scope: !5307, file: !5308, line: 138, type: !677)
!5318 = !DILocation(line: 138, column: 24, scope: !5307)
!5319 = !DILocation(line: 140, column: 17, scope: !5307)
!5320 = !DILocation(line: 140, column: 2, scope: !5307)
!5321 = distinct !DISubprogram(name: "vendor_string_show", scope: !3, file: !3, line: 402, type: !4002, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5322 = !DILocalVariable(name: "dev", arg: 1, scope: !5321, file: !3, line: 402, type: !3309)
!5323 = !DILocation(line: 402, column: 50, scope: !5321)
!5324 = !DILocalVariable(name: "attr", arg: 2, scope: !5321, file: !3, line: 403, type: !4004)
!5325 = !DILocation(line: 403, column: 32, scope: !5321)
!5326 = !DILocalVariable(name: "buf", arg: 3, scope: !5321, file: !3, line: 403, type: !204)
!5327 = !DILocation(line: 403, column: 44, scope: !5321)
!5328 = !DILocalVariable(name: "control", scope: !5321, file: !3, line: 405, type: !3761)
!5329 = !DILocation(line: 405, column: 21, scope: !5321)
!5330 = !DILocalVariable(name: "__mptr", scope: !5331, file: !3, line: 405, type: !131)
!5331 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 405, column: 31)
!5332 = !DILocation(line: 405, column: 31, scope: !5331)
!5333 = !DILocation(line: 405, column: 31, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 405, column: 31)
!5335 = !DILocation(line: 407, column: 19, scope: !5321)
!5336 = !DILocation(line: 407, column: 43, scope: !5321)
!5337 = !DILocation(line: 407, column: 52, scope: !5321)
!5338 = !DILocation(line: 407, column: 9, scope: !5321)
!5339 = !DILocation(line: 407, column: 2, scope: !5321)
!5340 = distinct !DISubprogram(name: "product_string_show", scope: !3, file: !3, line: 411, type: !4002, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5341 = !DILocalVariable(name: "dev", arg: 1, scope: !5340, file: !3, line: 411, type: !3309)
!5342 = !DILocation(line: 411, column: 51, scope: !5340)
!5343 = !DILocalVariable(name: "attr", arg: 2, scope: !5340, file: !3, line: 412, type: !4004)
!5344 = !DILocation(line: 412, column: 33, scope: !5340)
!5345 = !DILocalVariable(name: "buf", arg: 3, scope: !5340, file: !3, line: 412, type: !204)
!5346 = !DILocation(line: 412, column: 45, scope: !5340)
!5347 = !DILocalVariable(name: "control", scope: !5340, file: !3, line: 414, type: !3761)
!5348 = !DILocation(line: 414, column: 21, scope: !5340)
!5349 = !DILocalVariable(name: "__mptr", scope: !5350, file: !3, line: 414, type: !131)
!5350 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 414, column: 31)
!5351 = !DILocation(line: 414, column: 31, scope: !5350)
!5352 = !DILocation(line: 414, column: 31, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 414, column: 31)
!5354 = !DILocation(line: 416, column: 19, scope: !5340)
!5355 = !DILocation(line: 416, column: 43, scope: !5340)
!5356 = !DILocation(line: 416, column: 52, scope: !5340)
!5357 = !DILocation(line: 416, column: 9, scope: !5340)
!5358 = !DILocation(line: 416, column: 2, scope: !5340)
!5359 = distinct !DISubprogram(name: "kobject_name", scope: !141, file: !141, line: 88, type: !5360, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!144, !5362}
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!5364 = !DILocalVariable(name: "kobj", arg: 1, scope: !5359, file: !141, line: 88, type: !5362)
!5365 = !DILocation(line: 88, column: 62, scope: !5359)
!5366 = !DILocation(line: 90, column: 9, scope: !5359)
!5367 = !DILocation(line: 90, column: 15, scope: !5359)
!5368 = !DILocation(line: 90, column: 2, scope: !5359)
