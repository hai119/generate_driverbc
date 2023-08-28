; ModuleID = '../bcout/drivers/xen/xenbus/xenbus_probe.llvm.bc'
source_filename = "drivers/xen/xenbus/xenbus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_xenbus_probe_initcall6:\09\09\09"
module asm ".long\09xenbus_probe_initcall - .\09\09\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall2.init\22, \22a\22\09"
module asm "__initcall_xenbus_init2:\09\09\09"
module asm ".long\09xenbus_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.6 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.xenstore_domain_interface = type { [1024 x i8], [1024 x i8], i32, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, {}*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.68 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, %struct.anon.70, %union.anon.71 }
%struct.anon.70 = type { i16, i16, i32 }
%union.anon.71 = type { i8* }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kmem_cache = type opaque
%struct.start_info = type { [32 x i8], i64, i64, i32, i64, i32, %union.anon.72, i64, i64, i64, i64, i64, [1024 x i8], i64, i64 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i64, i32 }
%struct.xenbus_driver = type { i8*, %struct.xenbus_device_id*, i8, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)*, void (%struct.xenbus_device*, i32)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)*, %struct.device_driver, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, void (%struct.xenbus_device*)* }
%struct.xenbus_device_id = type { [32 x i8] }
%struct.xenbus_device = type { i8*, i8*, i8*, i32, %struct.xenbus_watch, %struct.device, i32, %struct.completion, %struct.work_struct, %struct.semaphore }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xenbus_transaction = type { i32 }
%struct.xen_bus_type = type { i8*, i32, i32 (i8*, i8*)*, i32 (%struct.xen_bus_type*, i8*, i8*)*, void (%struct.xenbus_watch*, i8*, i8*)*, %struct.bus_type }
%struct.xb_find_info = type { %struct.xenbus_device*, i8* }
%struct.evtchn_alloc_unbound = type { i16, i16, i32 }
%struct.xen_hvm_param = type { i16, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"reading other end details from %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"unable to read other end from %s.  missing or inaccessible.\00", align 1
@system_state = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"xenbus: talk_to_otherend on %s failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"xenbus: failed to acquire module reference on '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"xenbus: watch_otherend on %s failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"xenbus_dev_probe on %s\00", align 1
@xenbus_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @xenbus_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !0
@xenbus_dev_groups = dso_local global [2 x %struct.attribute_group*] [%struct.attribute_group* @xenbus_dev_group, %struct.attribute_group* null], align 16, !dbg !4339
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"xenbus: suspend failed: %i\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"xenbus: resume (talk_to_otherend) failed: %i\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"xenbus: resume failed: %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"xenbus: resume (watch_otherend) failed: %d\0A\00", align 1
@xenstored_ready = dso_local global i32 0, align 4, !dbg !4376
@xenstore_chain = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @xenstore_chain to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.blocking_notifier_head* @xenstore_chain to i8*), i64 16) to %struct.list_head*) } }, %struct.notifier_block* null }, align 8, !dbg !4414
@__UNIQUE_ID___addressable_xenbus_probe_initcall244 = internal global i8* bitcast (i32 ()* @xenbus_probe_initcall to i8*), section ".discard.addressable", align 8, !dbg !4342
@__UNIQUE_ID___addressable_xenbus_init246 = internal global i8* bitcast (i32 ()* @xenbus_init to i8*), section ".discard.addressable", align 8, !dbg !4344
@__UNIQUE_ID_file247 = internal constant [38 x i8] c"xenbus.file=drivers/xen/xenbus/xenbus\00", section ".modinfo", align 1, !dbg !4346
@__UNIQUE_ID_license248 = internal constant [19 x i8] c"xenbus.license=GPL\00", section ".modinfo", align 1, !dbg !4351
@xen_store_evtchn = dso_local global i32 0, align 4, !dbg !4356
@xen_store_interface = dso_local global %struct.xenstore_domain_interface* null, align 8, !dbg !4358
@xen_store_domain_type = dso_local global i32 0, align 4, !dbg !4374
@.str.15 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@xenbus_dev_attrs = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_nodename, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_devtype, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_modalias, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_state, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4378
@dev_attr_nodename = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @nodename_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4383
@dev_attr_devtype = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @devtype_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4397
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4399
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @state_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4401
@.str.17 = private unnamed_addr constant [9 x i8] c"nodename\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"devtype\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"%s:%s\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.22 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4403
@.str.23 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@sema_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4408
@.str.24 = private unnamed_addr constant [16 x i8] c"semaphore->lock\00", align 1
@xen_domain_type = external dso_local global i32, align 4
@xen_start_flags = external dso_local global i32, align 4
@xen_start_info = external dso_local global %struct.start_info*, align 8
@xen_store_gfn = internal global i64 0, align 8, !dbg !4431
@page_offset_base = external dso_local global i64, align 8
@.str.25 = private unnamed_addr constant [34 x i8] c"\014xenbus: Xenstore state unknown\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"\014xenbus: Error initializing xenstore comms: %i\0A\00", align 1
@xenbus_resume_nb = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @xenbus_resume_cb, %struct.notifier_block* null, i32 0 }, align 8, !dbg !4441
@.str.27 = private unnamed_addr constant [4 x i8] c"xen\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"drivers/xen/xenbus/xenbus_probe.c\00", align 1
@xen_features = external dso_local global [32 x i8], align 16
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@machine_to_phys_nr = external dso_local global i64, align 8
@machine_to_phys_mapping = external dso_local global i64*, align 8
@.str.29 = private unnamed_addr constant [49 x i8] c"\013xenbus: Cannot get hvm parameter %s (%d): %d!\0A\00", align 1
@param_name.names = internal constant [19 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0)], align 16, !dbg !4433
@.str.30 = private unnamed_addr constant [13 x i8] c"CALLBACK_IRQ\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"STORE_PFN\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"STORE_EVTCHN\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"PAE_ENABLED\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"IOREQ_PFN\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"BUFIOREQ_PFN\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"TIMER_MODE\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"HPET_ENABLED\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"IDENT_PT\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"DM_DOMAIN\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"ACPI_S_STATE\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"VM86_TSS\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"VPT_ALIGN\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"CONSOLE_PFN\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"CONSOLE_EVTCHN\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"\014xenbus: Cannot update xenstore event channel: %d\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_xenbus_probe_initcall244 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_xenbus_init246 to i8*), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__UNIQUE_ID_file247, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license248, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_match(%struct.device* %_dev, %struct.device_driver* %_drv) #0 !dbg !4449 {
entry:
  %retval = alloca i32, align 4
  %_dev.addr = alloca %struct.device*, align 8
  %_drv.addr = alloca %struct.device_driver*, align 8
  %drv = alloca %struct.xenbus_driver*, align 8
  store %struct.device* %_dev, %struct.device** %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %_dev.addr, metadata !4450, metadata !DIExpression()), !dbg !4451
  store %struct.device_driver* %_drv, %struct.device_driver** %_drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %_drv.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv, metadata !4454, metadata !DIExpression()), !dbg !4455
  %0 = load %struct.device_driver*, %struct.device_driver** %_drv.addr, align 8, !dbg !4456
  %call = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %0) #11, !dbg !4457
  store %struct.xenbus_driver* %call, %struct.xenbus_driver** %drv, align 8, !dbg !4455
  %1 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4458
  %ids = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %1, i32 0, i32 1, !dbg !4460
  %2 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %ids, align 8, !dbg !4460
  %tobool = icmp ne %struct.xenbus_device_id* %2, null, !dbg !4458
  br i1 %tobool, label %if.end, label %if.then, !dbg !4461

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4462
  br label %return, !dbg !4462

if.end:                                           ; preds = %entry
  %3 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4463
  %ids1 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %3, i32 0, i32 1, !dbg !4464
  %4 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %ids1, align 8, !dbg !4464
  %5 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !4465
  %call2 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %5) #11, !dbg !4466
  %call3 = call %struct.xenbus_device_id* @match_device(%struct.xenbus_device_id* %4, %struct.xenbus_device* %call2) #11, !dbg !4467
  %cmp = icmp ne %struct.xenbus_device_id* %call3, null, !dbg !4468
  %conv = zext i1 %cmp to i32, !dbg !4468
  store i32 %conv, i32* %retval, align 4, !dbg !4469
  br label %return, !dbg !4469

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4470
  ret i32 %6, !dbg !4470
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %drv) #0 !dbg !4471 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4476, metadata !DIExpression()), !dbg !4478
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4478
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4478
  store i8* %1, i8** %__mptr, align 8, !dbg !4478
  br label %do.body, !dbg !4478

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4479

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4478
  %add.ptr = getelementptr i8, i8* %2, i64 -72, !dbg !4478
  %3 = bitcast i8* %add.ptr to %struct.xenbus_driver*, !dbg !4478
  store %struct.xenbus_driver* %3, %struct.xenbus_driver** %tmp, align 8, !dbg !4479
  %4 = load %struct.xenbus_driver*, %struct.xenbus_driver** %tmp, align 8, !dbg !4478
  ret %struct.xenbus_driver* %4, !dbg !4481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_device_id* @match_device(%struct.xenbus_device_id* %arr, %struct.xenbus_device* %dev) #0 !dbg !4482 {
entry:
  %retval = alloca %struct.xenbus_device_id*, align 8
  %arr.addr = alloca %struct.xenbus_device_id*, align 8
  %dev.addr = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device_id* %arr, %struct.xenbus_device_id** %arr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device_id** %arr.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  br label %for.cond, !dbg !4489

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %arr.addr, align 8, !dbg !4490
  %devicetype = getelementptr inbounds %struct.xenbus_device_id, %struct.xenbus_device_id* %0, i32 0, i32 0, !dbg !4493
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %devicetype, i64 0, i64 0, !dbg !4494
  %1 = load i8, i8* %arraydecay, align 1, !dbg !4494
  %conv = sext i8 %1 to i32, !dbg !4494
  %cmp = icmp ne i32 %conv, 0, !dbg !4495
  br i1 %cmp, label %for.body, label %for.end, !dbg !4496

for.body:                                         ; preds = %for.cond
  %2 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %arr.addr, align 8, !dbg !4497
  %devicetype2 = getelementptr inbounds %struct.xenbus_device_id, %struct.xenbus_device_id* %2, i32 0, i32 0, !dbg !4500
  %arraydecay3 = getelementptr inbounds [32 x i8], [32 x i8]* %devicetype2, i64 0, i64 0, !dbg !4497
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4501
  %devicetype4 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 0, !dbg !4502
  %4 = load i8*, i8** %devicetype4, align 8, !dbg !4502
  %call = call i32 @strcmp(i8* %arraydecay3, i8* %4) #11, !dbg !4503
  %tobool = icmp ne i32 %call, 0, !dbg !4503
  br i1 %tobool, label %if.end, label %if.then, !dbg !4504

if.then:                                          ; preds = %for.body
  %5 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %arr.addr, align 8, !dbg !4505
  store %struct.xenbus_device_id* %5, %struct.xenbus_device_id** %retval, align 8, !dbg !4506
  br label %return, !dbg !4506

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4507

for.inc:                                          ; preds = %if.end
  %6 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %arr.addr, align 8, !dbg !4508
  %incdec.ptr = getelementptr %struct.xenbus_device_id, %struct.xenbus_device_id* %6, i32 1, !dbg !4508
  store %struct.xenbus_device_id* %incdec.ptr, %struct.xenbus_device_id** %arr.addr, align 8, !dbg !4508
  br label %for.cond, !dbg !4509, !llvm.loop !4510

for.end:                                          ; preds = %for.cond
  store %struct.xenbus_device_id* null, %struct.xenbus_device_id** %retval, align 8, !dbg !4512
  br label %return, !dbg !4512

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %retval, align 8, !dbg !4513
  ret %struct.xenbus_device_id* %7, !dbg !4513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_device* @to_xenbus_device(%struct.device* %dev) #0 !dbg !4514 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4517, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4519, metadata !DIExpression()), !dbg !4521
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4521
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4521
  store i8* %1, i8** %__mptr, align 8, !dbg !4521
  br label %do.body, !dbg !4521

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4522

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4521
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !4521
  %3 = bitcast i8* %add.ptr to %struct.xenbus_device*, !dbg !4521
  store %struct.xenbus_device* %3, %struct.xenbus_device** %tmp, align 8, !dbg !4522
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %tmp, align 8, !dbg !4521
  ret %struct.xenbus_device* %4, !dbg !4524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_read_otherend_details(%struct.xenbus_device* %xendev, i8* %id_node, i8* %path_node) #0 !dbg !4525 {
entry:
  %retval = alloca i32, align 4
  %xendev.addr = alloca %struct.xenbus_device*, align 8
  %id_node.addr = alloca i8*, align 8
  %path_node.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral4 = alloca %struct.xenbus_transaction, align 4
  store %struct.xenbus_device* %xendev, %struct.xenbus_device** %xendev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xendev.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i8* %id_node, i8** %id_node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id_node.addr, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i8* %path_node, i8** %path_node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path_node.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4534, metadata !DIExpression()), !dbg !4535
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4536
  store i32 0, i32* %id, align 4, !dbg !4536
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4537
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 1, !dbg !4538
  %1 = load i8*, i8** %nodename, align 8, !dbg !4538
  %2 = load i8*, i8** %id_node.addr, align 8, !dbg !4539
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4540
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 3, !dbg !4541
  %4 = load i8*, i8** %path_node.addr, align 8, !dbg !4542
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4543
  %otherend = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 2, !dbg !4544
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4545
  %6 = load i32, i32* %coerce.dive, align 4, !dbg !4545
  %call = call i32 (i32, i8*, ...) @xenbus_gather(i32 %6, i8* %1, i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %otherend_id, i8* %4, i8* null, i8** %otherend, i8* null) #11, !dbg !4545
  store i32 %call, i32* %err, align 4, !dbg !4535
  %7 = load i32, i32* %err, align 4, !dbg !4546
  %tobool = icmp ne i32 %7, 0, !dbg !4546
  br i1 %tobool, label %if.then, label %if.end, !dbg !4548

if.then:                                          ; preds = %entry
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4549
  %9 = load i32, i32* %err, align 4, !dbg !4551
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4552
  %nodename1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 1, !dbg !4553
  %11 = load i8*, i8** %nodename1, align 8, !dbg !4553
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %8, i32 %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %11) #11, !dbg !4554
  %12 = load i32, i32* %err, align 4, !dbg !4555
  store i32 %12, i32* %retval, align 4, !dbg !4556
  br label %return, !dbg !4556

if.end:                                           ; preds = %entry
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4557
  %otherend2 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 2, !dbg !4559
  %14 = load i8*, i8** %otherend2, align 8, !dbg !4559
  %call3 = call i64 @strlen(i8* %14) #11, !dbg !4560
  %cmp = icmp eq i64 %call3, 0, !dbg !4561
  br i1 %cmp, label %if.then10, label %lor.lhs.false, !dbg !4562

lor.lhs.false:                                    ; preds = %if.end
  %id5 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral4, i32 0, i32 0, !dbg !4563
  store i32 0, i32* %id5, align 4, !dbg !4563
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4564
  %otherend6 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 2, !dbg !4565
  %16 = load i8*, i8** %otherend6, align 8, !dbg !4565
  %coerce.dive7 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral4, i32 0, i32 0, !dbg !4566
  %17 = load i32, i32* %coerce.dive7, align 4, !dbg !4566
  %call8 = call i32 @xenbus_exists(i32 %17, i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !4566
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4566
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !4567

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4568
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4570
  %nodename11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %19, i32 0, i32 1, !dbg !4571
  %20 = load i8*, i8** %nodename11, align 8, !dbg !4571
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %18, i32 -2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %20) #11, !dbg !4572
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4573
  call void @free_otherend_details(%struct.xenbus_device* %21) #11, !dbg !4574
  store i32 -2, i32* %retval, align 4, !dbg !4575
  br label %return, !dbg !4575

if.end12:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4576
  br label %return, !dbg !4576

return:                                           ; preds = %if.end12, %if.then10, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4577
  ret i32 %22, !dbg !4577
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_gather(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_exists(i32, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_otherend_details(%struct.xenbus_device* %dev) #0 !dbg !4578 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4581
  %otherend = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 2, !dbg !4582
  %1 = load i8*, i8** %otherend, align 8, !dbg !4582
  call void @kfree(i8* %1) #11, !dbg !4583
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4584
  %otherend1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 2, !dbg !4585
  store i8* null, i8** %otherend1, align 8, !dbg !4586
  ret void, !dbg !4587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_otherend_changed(%struct.xenbus_watch* %watch, i8* %path, i8* %token, i32 %ignore_on_shutdown) #0 !dbg !4588 {
entry:
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %ignore_on_shutdown.addr = alloca i32, align 4
  %dev = alloca %struct.xenbus_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_device*, align 8
  %drv = alloca %struct.xenbus_driver*, align 8
  %state = alloca i32, align 4
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !4591, metadata !DIExpression()), !dbg !4592
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4593, metadata !DIExpression()), !dbg !4594
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  store i32 %ignore_on_shutdown, i32* %ignore_on_shutdown.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ignore_on_shutdown.addr, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev, metadata !4599, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4601, metadata !DIExpression()), !dbg !4603
  %0 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4603
  %1 = bitcast %struct.xenbus_watch* %0 to i8*, !dbg !4603
  store i8* %1, i8** %__mptr, align 8, !dbg !4603
  br label %do.body, !dbg !4603

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4604

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4603
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !4603
  %3 = bitcast i8* %add.ptr to %struct.xenbus_device*, !dbg !4603
  store %struct.xenbus_device* %3, %struct.xenbus_device** %tmp, align 8, !dbg !4604
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %tmp, align 8, !dbg !4603
  store %struct.xenbus_device* %4, %struct.xenbus_device** %dev, align 8, !dbg !4600
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv, metadata !4606, metadata !DIExpression()), !dbg !4607
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4608
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 5, !dbg !4609
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 6, !dbg !4610
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4610
  %call = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %6) #11, !dbg !4611
  store %struct.xenbus_driver* %call, %struct.xenbus_driver** %drv, align 8, !dbg !4607
  call void @llvm.dbg.declare(metadata i32* %state, metadata !4612, metadata !DIExpression()), !dbg !4613
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4614
  %otherend = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 2, !dbg !4616
  %8 = load i8*, i8** %otherend, align 8, !dbg !4616
  %tobool = icmp ne i8* %8, null, !dbg !4614
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4617

lor.lhs.false:                                    ; preds = %do.end
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4618
  %otherend2 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 2, !dbg !4619
  %10 = load i8*, i8** %otherend2, align 8, !dbg !4619
  %11 = load i8*, i8** %path.addr, align 8, !dbg !4620
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4621
  %otherend3 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 2, !dbg !4622
  %13 = load i8*, i8** %otherend3, align 8, !dbg !4622
  %call4 = call i64 @strlen(i8* %13) #11, !dbg !4623
  %call5 = call i32 @strncmp(i8* %10, i8* %11, i64 %call4) #11, !dbg !4624
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4624
  br i1 %tobool6, label %if.then, label %if.end, !dbg !4625

if.then:                                          ; preds = %lor.lhs.false, %do.end
  br label %if.end19, !dbg !4626

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4628
  %otherend7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %14, i32 0, i32 2, !dbg !4629
  %15 = load i8*, i8** %otherend7, align 8, !dbg !4629
  %call8 = call i32 @xenbus_read_driver_state(i8* %15) #11, !dbg !4630
  store i32 %call8, i32* %state, align 4, !dbg !4631
  %16 = load i32, i32* @system_state, align 4, !dbg !4632
  %cmp = icmp ugt i32 %16, 2, !dbg !4634
  br i1 %cmp, label %if.then9, label %if.end15, !dbg !4635

if.then9:                                         ; preds = %if.end
  %17 = load i32, i32* %ignore_on_shutdown.addr, align 4, !dbg !4636
  %tobool10 = icmp ne i32 %17, 0, !dbg !4636
  br i1 %tobool10, label %land.lhs.true, label %if.end14, !dbg !4639

land.lhs.true:                                    ; preds = %if.then9
  %18 = load i32, i32* %state, align 4, !dbg !4640
  %cmp11 = icmp eq i32 %18, 5, !dbg !4641
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !4642

if.then12:                                        ; preds = %land.lhs.true
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4643
  %call13 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %19) #11, !dbg !4644
  br label %if.end14, !dbg !4644

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %if.then9
  br label %if.end19, !dbg !4645

if.end15:                                         ; preds = %if.end
  %20 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4646
  %otherend_changed = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %20, i32 0, i32 4, !dbg !4648
  %21 = load void (%struct.xenbus_device*, i32)*, void (%struct.xenbus_device*, i32)** %otherend_changed, align 8, !dbg !4648
  %tobool16 = icmp ne void (%struct.xenbus_device*, i32)* %21, null, !dbg !4646
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4649

if.then17:                                        ; preds = %if.end15
  %22 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4650
  %otherend_changed18 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %22, i32 0, i32 4, !dbg !4651
  %23 = load void (%struct.xenbus_device*, i32)*, void (%struct.xenbus_device*, i32)** %otherend_changed18, align 8, !dbg !4651
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4652
  %25 = load i32, i32* %state, align 4, !dbg !4653
  call void %23(%struct.xenbus_device* %24, i32 %25) #11, !dbg !4650
  br label %if.end19, !dbg !4650

if.end19:                                         ; preds = %if.then, %if.end14, %if.then17, %if.end15
  ret void, !dbg !4654
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_read_driver_state(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_dev_probe(%struct.device* %_dev) #0 !dbg !4655 {
entry:
  %retval = alloca i32, align 4
  %_dev.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.xenbus_device*, align 8
  %drv = alloca %struct.xenbus_driver*, align 8
  %id = alloca %struct.xenbus_device_id*, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.device* %_dev, %struct.device** %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %_dev.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev, metadata !4658, metadata !DIExpression()), !dbg !4659
  %0 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !4660
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #11, !dbg !4661
  store %struct.xenbus_device* %call, %struct.xenbus_device** %dev, align 8, !dbg !4659
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv, metadata !4662, metadata !DIExpression()), !dbg !4663
  %1 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !4664
  %driver = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 6, !dbg !4665
  %2 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4665
  %call1 = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %2) #11, !dbg !4666
  store %struct.xenbus_driver* %call1, %struct.xenbus_driver** %drv, align 8, !dbg !4663
  call void @llvm.dbg.declare(metadata %struct.xenbus_device_id** %id, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4669, metadata !DIExpression()), !dbg !4670
  store i32 0, i32* %tmp, align 4, !dbg !4671
  %3 = load i32, i32* %tmp, align 4, !dbg !4674
  %4 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4675
  %probe = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %4, i32 0, i32 3, !dbg !4677
  %5 = load i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)*, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)** %probe, align 8, !dbg !4677
  %tobool = icmp ne i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* %5, null, !dbg !4675
  br i1 %tobool, label %if.end, label %if.then, !dbg !4678

if.then:                                          ; preds = %entry
  store i32 -19, i32* %err, align 4, !dbg !4679
  br label %fail, !dbg !4681

if.end:                                           ; preds = %entry
  %6 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4682
  %ids = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %6, i32 0, i32 1, !dbg !4683
  %7 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %ids, align 8, !dbg !4683
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4684
  %call2 = call %struct.xenbus_device_id* @match_device(%struct.xenbus_device_id* %7, %struct.xenbus_device* %8) #11, !dbg !4685
  store %struct.xenbus_device_id* %call2, %struct.xenbus_device_id** %id, align 8, !dbg !4686
  %9 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %id, align 8, !dbg !4687
  %tobool3 = icmp ne %struct.xenbus_device_id* %9, null, !dbg !4687
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4689

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %err, align 4, !dbg !4690
  br label %fail, !dbg !4692

if.end5:                                          ; preds = %if.end
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4693
  %call6 = call i32 @talk_to_otherend(%struct.xenbus_device* %10) #11, !dbg !4694
  store i32 %call6, i32* %err, align 4, !dbg !4695
  %11 = load i32, i32* %err, align 4, !dbg !4696
  %tobool7 = icmp ne i32 %11, 0, !dbg !4696
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4698

if.then8:                                         ; preds = %if.end5
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4699
  %dev9 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 5, !dbg !4699
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4699
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 1, !dbg !4699
  %14 = load i8*, i8** %nodename, align 8, !dbg !4699
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %14) #12, !dbg !4699
  %15 = load i32, i32* %err, align 4, !dbg !4701
  store i32 %15, i32* %retval, align 4, !dbg !4702
  br label %return, !dbg !4702

if.end10:                                         ; preds = %if.end5
  %16 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4703
  %driver11 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %16, i32 0, i32 9, !dbg !4705
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver11, i32 0, i32 2, !dbg !4706
  %17 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4706
  %call12 = call zeroext i1 @try_module_get(%struct.module* %17) #11, !dbg !4707
  br i1 %call12, label %if.end16, label %if.then13, !dbg !4708

if.then13:                                        ; preds = %if.end10
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4709
  %dev14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %18, i32 0, i32 5, !dbg !4709
  %19 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4709
  %driver15 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %19, i32 0, i32 9, !dbg !4709
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver15, i32 0, i32 0, !dbg !4709
  %20 = load i8*, i8** %name, align 8, !dbg !4709
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %20) #12, !dbg !4709
  store i32 -3, i32* %err, align 4, !dbg !4711
  br label %fail, !dbg !4712

if.end16:                                         ; preds = %if.end10
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4713
  %reclaim_sem = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 9, !dbg !4714
  call void @down(%struct.semaphore* %reclaim_sem) #11, !dbg !4715
  %22 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4716
  %probe17 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %22, i32 0, i32 3, !dbg !4717
  %23 = load i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)*, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)** %probe17, align 8, !dbg !4717
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4718
  %25 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %id, align 8, !dbg !4719
  %call18 = call i32 %23(%struct.xenbus_device* %24, %struct.xenbus_device_id* %25) #11, !dbg !4716
  store i32 %call18, i32* %err, align 4, !dbg !4720
  %26 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4721
  %reclaim_sem19 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %26, i32 0, i32 9, !dbg !4722
  call void @up(%struct.semaphore* %reclaim_sem19) #11, !dbg !4723
  %27 = load i32, i32* %err, align 4, !dbg !4724
  %tobool20 = icmp ne i32 %27, 0, !dbg !4724
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4726

if.then21:                                        ; preds = %if.end16
  br label %fail_put, !dbg !4727

if.end22:                                         ; preds = %if.end16
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4728
  %call23 = call i32 @watch_otherend(%struct.xenbus_device* %28) #11, !dbg !4729
  store i32 %call23, i32* %err, align 4, !dbg !4730
  %29 = load i32, i32* %err, align 4, !dbg !4731
  %tobool24 = icmp ne i32 %29, 0, !dbg !4731
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !4733

if.then25:                                        ; preds = %if.end22
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4734
  %dev26 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 5, !dbg !4734
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4734
  %nodename27 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 1, !dbg !4734
  %32 = load i8*, i8** %nodename27, align 8, !dbg !4734
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %32) #12, !dbg !4734
  %33 = load i32, i32* %err, align 4, !dbg !4736
  store i32 %33, i32* %retval, align 4, !dbg !4737
  br label %return, !dbg !4737

if.end28:                                         ; preds = %if.end22
  store i32 0, i32* %retval, align 4, !dbg !4738
  br label %return, !dbg !4738

fail_put:                                         ; preds = %if.then21
  call void @llvm.dbg.label(metadata !4739), !dbg !4740
  %34 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4741
  %driver29 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %34, i32 0, i32 9, !dbg !4742
  %owner30 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver29, i32 0, i32 2, !dbg !4743
  %35 = load %struct.module*, %struct.module** %owner30, align 8, !dbg !4743
  call void @module_put(%struct.module* %35) #11, !dbg !4744
  br label %fail, !dbg !4744

fail:                                             ; preds = %fail_put, %if.then13, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !4745), !dbg !4746
  %36 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4747
  %37 = load i32, i32* %err, align 4, !dbg !4748
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4749
  %nodename31 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 1, !dbg !4750
  %39 = load i8*, i8** %nodename31, align 8, !dbg !4750
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_error(%struct.xenbus_device* %36, i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %39) #11, !dbg !4751
  %40 = load i32, i32* %err, align 4, !dbg !4752
  store i32 %40, i32* %retval, align 4, !dbg !4753
  br label %return, !dbg !4753

return:                                           ; preds = %fail, %if.end28, %if.then25, %if.then8
  %41 = load i32, i32* %retval, align 4, !dbg !4754
  ret i32 %41, !dbg !4754
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @talk_to_otherend(%struct.xenbus_device* %dev) #0 !dbg !4755 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %drv = alloca %struct.xenbus_driver*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv, metadata !4758, metadata !DIExpression()), !dbg !4759
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4760
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !4761
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 6, !dbg !4762
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4762
  %call = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %1) #11, !dbg !4763
  store %struct.xenbus_driver* %call, %struct.xenbus_driver** %drv, align 8, !dbg !4759
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4764
  call void @free_otherend_watch(%struct.xenbus_device* %2) #11, !dbg !4765
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4766
  call void @free_otherend_details(%struct.xenbus_device* %3) #11, !dbg !4767
  %4 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4768
  %read_otherend_details = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %4, i32 0, i32 10, !dbg !4769
  %5 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %read_otherend_details, align 8, !dbg !4769
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4770
  %call2 = call i32 %5(%struct.xenbus_device* %6) #11, !dbg !4768
  ret i32 %call2, !dbg !4771
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !4772 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4776, metadata !DIExpression()), !dbg !4777
  ret i1 true, !dbg !4778
}

; Function Attrs: noredzone
declare dso_local void @down(%struct.semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up(%struct.semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @watch_otherend(%struct.xenbus_device* %dev) #0 !dbg !4779 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %bus = alloca %struct.xen_bus_type*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xen_bus_type*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4780, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata %struct.xen_bus_type** %bus, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4784, metadata !DIExpression()), !dbg !4786
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4786
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !4786
  %bus2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 5, !dbg !4786
  %1 = load %struct.bus_type*, %struct.bus_type** %bus2, align 8, !dbg !4786
  %2 = bitcast %struct.bus_type* %1 to i8*, !dbg !4786
  store i8* %2, i8** %__mptr, align 8, !dbg !4786
  br label %do.body, !dbg !4786

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4787

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4786
  %add.ptr = getelementptr i8, i8* %3, i64 -40, !dbg !4786
  %4 = bitcast i8* %add.ptr to %struct.xen_bus_type*, !dbg !4786
  store %struct.xen_bus_type* %4, %struct.xen_bus_type** %tmp, align 8, !dbg !4787
  %5 = load %struct.xen_bus_type*, %struct.xen_bus_type** %tmp, align 8, !dbg !4786
  store %struct.xen_bus_type* %5, %struct.xen_bus_type** %bus, align 8, !dbg !4783
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4789
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4790
  %otherend_watch = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 4, !dbg !4791
  %8 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus, align 8, !dbg !4792
  %otherend_changed = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %8, i32 0, i32 4, !dbg !4793
  %9 = load void (%struct.xenbus_watch*, i8*, i8*)*, void (%struct.xenbus_watch*, i8*, i8*)** %otherend_changed, align 8, !dbg !4793
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4794
  %otherend = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 2, !dbg !4795
  %11 = load i8*, i8** %otherend, align 8, !dbg !4795
  %call = call i32 (%struct.xenbus_device*, %struct.xenbus_watch*, void (%struct.xenbus_watch*, i8*, i8*)*, i8*, ...) @xenbus_watch_pathfmt(%struct.xenbus_device* %6, %struct.xenbus_watch* %otherend_watch, void (%struct.xenbus_watch*, i8*, i8*)* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0)) #11, !dbg !4796
  ret i32 %call, !dbg !4797
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !4798 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  ret void, !dbg !4803
}

; Function Attrs: noredzone
declare dso_local void @xenbus_dev_error(%struct.xenbus_device*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_dev_remove(%struct.device* %_dev) #0 !dbg !4804 {
entry:
  %_dev.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.xenbus_device*, align 8
  %drv = alloca %struct.xenbus_driver*, align 8
  %tmp = alloca i32, align 4
  store %struct.device* %_dev, %struct.device** %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %_dev.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev, metadata !4807, metadata !DIExpression()), !dbg !4808
  %0 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !4809
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #11, !dbg !4810
  store %struct.xenbus_device* %call, %struct.xenbus_device** %dev, align 8, !dbg !4808
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv, metadata !4811, metadata !DIExpression()), !dbg !4812
  %1 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !4813
  %driver = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 6, !dbg !4814
  %2 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4814
  %call1 = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %2) #11, !dbg !4815
  store %struct.xenbus_driver* %call1, %struct.xenbus_driver** %drv, align 8, !dbg !4812
  store i32 0, i32* %tmp, align 4, !dbg !4816
  %3 = load i32, i32* %tmp, align 4, !dbg !4819
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4820
  call void @free_otherend_watch(%struct.xenbus_device* %4) #11, !dbg !4821
  %5 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4822
  %remove = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %5, i32 0, i32 5, !dbg !4824
  %6 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %remove, align 8, !dbg !4824
  %tobool = icmp ne i32 (%struct.xenbus_device*)* %6, null, !dbg !4822
  br i1 %tobool, label %if.then, label %if.end, !dbg !4825

if.then:                                          ; preds = %entry
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4826
  %reclaim_sem = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 9, !dbg !4828
  call void @down(%struct.semaphore* %reclaim_sem) #11, !dbg !4829
  %8 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4830
  %remove2 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %8, i32 0, i32 5, !dbg !4831
  %9 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %remove2, align 8, !dbg !4831
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4832
  %call3 = call i32 %9(%struct.xenbus_device* %10) #11, !dbg !4830
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4833
  %reclaim_sem4 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 9, !dbg !4834
  call void @up(%struct.semaphore* %reclaim_sem4) #11, !dbg !4835
  br label %if.end, !dbg !4836

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4837
  %driver5 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %12, i32 0, i32 9, !dbg !4838
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver5, i32 0, i32 2, !dbg !4839
  %13 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4839
  call void @module_put(%struct.module* %13) #11, !dbg !4840
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4841
  call void @free_otherend_details(%struct.xenbus_device* %14) #11, !dbg !4842
  %15 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !4843
  %allow_rebind = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %15, i32 0, i32 2, !dbg !4845
  %16 = load i8, i8* %allow_rebind, align 8, !dbg !4845
  %tobool6 = trunc i8 %16 to i1, !dbg !4845
  br i1 %tobool6, label %lor.lhs.false, label %if.then8, !dbg !4846

lor.lhs.false:                                    ; preds = %if.end
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4847
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 1, !dbg !4848
  %18 = load i8*, i8** %nodename, align 8, !dbg !4848
  %call7 = call i32 @xenbus_read_driver_state(i8* %18) #11, !dbg !4849
  %cmp = icmp eq i32 %call7, 5, !dbg !4850
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !4851

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4852
  %call9 = call i32 @xenbus_switch_state(%struct.xenbus_device* %19, i32 6) #11, !dbg !4853
  br label %if.end10, !dbg !4853

if.end10:                                         ; preds = %if.then8, %lor.lhs.false
  ret i32 0, !dbg !4854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_otherend_watch(%struct.xenbus_device* %dev) #0 !dbg !4855 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4858
  %otherend_watch = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 4, !dbg !4860
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %otherend_watch, i32 0, i32 1, !dbg !4861
  %1 = load i8*, i8** %node, align 8, !dbg !4861
  %tobool = icmp ne i8* %1, null, !dbg !4858
  br i1 %tobool, label %if.then, label %if.end, !dbg !4862

if.then:                                          ; preds = %entry
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4863
  %otherend_watch1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 4, !dbg !4865
  call void @unregister_xenbus_watch(%struct.xenbus_watch* %otherend_watch1) #11, !dbg !4866
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4867
  %otherend_watch2 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 4, !dbg !4868
  %node3 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %otherend_watch2, i32 0, i32 1, !dbg !4869
  %4 = load i8*, i8** %node3, align 8, !dbg !4869
  call void @kfree(i8* %4) #11, !dbg !4870
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4871
  %otherend_watch4 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 4, !dbg !4872
  %node5 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %otherend_watch4, i32 0, i32 1, !dbg !4873
  store i8* null, i8** %node5, align 8, !dbg !4874
  br label %if.end, !dbg !4875

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4876
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_register_driver_common(%struct.xenbus_driver* %drv, %struct.xen_bus_type* %bus, %struct.module* %owner, i8* %mod_name) #0 !dbg !4877 {
entry:
  %drv.addr = alloca %struct.xenbus_driver*, align 8
  %bus.addr = alloca %struct.xen_bus_type*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  store %struct.xenbus_driver* %drv, %struct.xenbus_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  store %struct.xen_bus_type* %bus, %struct.xen_bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_bus_type** %bus.addr, metadata !4882, metadata !DIExpression()), !dbg !4883
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !4884, metadata !DIExpression()), !dbg !4885
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  %0 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4888
  %name = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %0, i32 0, i32 0, !dbg !4889
  %1 = load i8*, i8** %name, align 8, !dbg !4889
  %tobool = icmp ne i8* %1, null, !dbg !4888
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4888

cond.true:                                        ; preds = %entry
  %2 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4890
  %name1 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %2, i32 0, i32 0, !dbg !4891
  %3 = load i8*, i8** %name1, align 8, !dbg !4891
  br label %cond.end, !dbg !4888

cond.false:                                       ; preds = %entry
  %4 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4892
  %ids = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %4, i32 0, i32 1, !dbg !4893
  %5 = load %struct.xenbus_device_id*, %struct.xenbus_device_id** %ids, align 8, !dbg !4893
  %arrayidx = getelementptr %struct.xenbus_device_id, %struct.xenbus_device_id* %5, i64 0, !dbg !4892
  %devicetype = getelementptr inbounds %struct.xenbus_device_id, %struct.xenbus_device_id* %arrayidx, i32 0, i32 0, !dbg !4894
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %devicetype, i64 0, i64 0, !dbg !4892
  br label %cond.end, !dbg !4888

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ %arraydecay, %cond.false ], !dbg !4888
  %6 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4895
  %driver = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %6, i32 0, i32 9, !dbg !4896
  %name2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 0, !dbg !4897
  store i8* %cond, i8** %name2, align 8, !dbg !4898
  %7 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !4899
  %bus3 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %7, i32 0, i32 5, !dbg !4900
  %8 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4901
  %driver4 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %8, i32 0, i32 9, !dbg !4902
  %bus5 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver4, i32 0, i32 1, !dbg !4903
  store %struct.bus_type* %bus3, %struct.bus_type** %bus5, align 8, !dbg !4904
  %9 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !4905
  %10 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4906
  %driver6 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %10, i32 0, i32 9, !dbg !4907
  %owner7 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver6, i32 0, i32 2, !dbg !4908
  store %struct.module* %9, %struct.module** %owner7, align 8, !dbg !4909
  %11 = load i8*, i8** %mod_name.addr, align 8, !dbg !4910
  %12 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4911
  %driver8 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %12, i32 0, i32 9, !dbg !4912
  %mod_name9 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver8, i32 0, i32 3, !dbg !4913
  store i8* %11, i8** %mod_name9, align 8, !dbg !4914
  %13 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4915
  %driver10 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %13, i32 0, i32 9, !dbg !4916
  %call = call i32 @driver_register(%struct.device_driver* %driver10) #11, !dbg !4917
  ret i32 %call, !dbg !4918
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_unregister_driver(%struct.xenbus_driver* %drv) #0 !dbg !4919 {
entry:
  %drv.addr = alloca %struct.xenbus_driver*, align 8
  store %struct.xenbus_driver* %drv, %struct.xenbus_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  %0 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4924
  %driver = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %0, i32 0, i32 9, !dbg !4925
  call void @driver_unregister(%struct.device_driver* %driver) #11, !dbg !4926
  ret void, !dbg !4927
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_probe_node(%struct.xen_bus_type* %bus, i8* %type, i8* %nodename) #0 !dbg !4928 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.xen_bus_type*, align 8
  %type.addr = alloca i8*, align 8
  %nodename.addr = alloca i8*, align 8
  %devname = alloca [20 x i8], align 16
  %err = alloca i32, align 4
  %xendev = alloca %struct.xenbus_device*, align 8
  %stringlen = alloca i64, align 8
  %tmpstring = alloca i8*, align 8
  %state = alloca i32, align 4
  store %struct.xen_bus_type* %bus, %struct.xen_bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_bus_type** %bus.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  store i8* %type, i8** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %type.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  store i8* %nodename, i8** %nodename.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %nodename.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.declare(metadata [20 x i8]* %devname, metadata !4935, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4938, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xendev, metadata !4940, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.declare(metadata i64* %stringlen, metadata !4942, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.declare(metadata i8** %tmpstring, metadata !4944, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.declare(metadata i32* %state, metadata !4946, metadata !DIExpression()), !dbg !4947
  %0 = load i8*, i8** %nodename.addr, align 8, !dbg !4948
  %call = call i32 @xenbus_read_driver_state(i8* %0) #11, !dbg !4949
  store i32 %call, i32* %state, align 4, !dbg !4947
  %1 = load i32, i32* %state, align 4, !dbg !4950
  %cmp = icmp ne i32 %1, 1, !dbg !4952
  br i1 %cmp, label %if.then, label %if.end, !dbg !4953

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %nodename.addr, align 8, !dbg !4956
  %call1 = call i64 @strlen(i8* %2) #11, !dbg !4957
  %add = add i64 %call1, 1, !dbg !4958
  %3 = load i8*, i8** %type.addr, align 8, !dbg !4959
  %call2 = call i64 @strlen(i8* %3) #11, !dbg !4960
  %add3 = add i64 %add, %call2, !dbg !4961
  %add4 = add i64 %add3, 1, !dbg !4962
  store i64 %add4, i64* %stringlen, align 8, !dbg !4963
  %4 = load i64, i64* %stringlen, align 8, !dbg !4964
  %add5 = add i64 848, %4, !dbg !4965
  %call6 = call i8* @kzalloc(i64 %add5, i32 3264) #11, !dbg !4966
  %5 = bitcast i8* %call6 to %struct.xenbus_device*, !dbg !4966
  store %struct.xenbus_device* %5, %struct.xenbus_device** %xendev, align 8, !dbg !4967
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4968
  %tobool = icmp ne %struct.xenbus_device* %6, null, !dbg !4968
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !4970

if.then7:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4971
  br label %return, !dbg !4971

if.end8:                                          ; preds = %if.end
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4972
  %state9 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 6, !dbg !4973
  store i32 1, i32* %state9, align 8, !dbg !4974
  %8 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4975
  %add.ptr = getelementptr %struct.xenbus_device, %struct.xenbus_device* %8, i64 1, !dbg !4976
  %9 = bitcast %struct.xenbus_device* %add.ptr to i8*, !dbg !4977
  store i8* %9, i8** %tmpstring, align 8, !dbg !4978
  %10 = load i8*, i8** %tmpstring, align 8, !dbg !4979
  %11 = load i8*, i8** %nodename.addr, align 8, !dbg !4980
  %call10 = call i8* @strcpy(i8* %10, i8* %11) #11, !dbg !4981
  %12 = load i8*, i8** %tmpstring, align 8, !dbg !4982
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4983
  %nodename11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 1, !dbg !4984
  store i8* %12, i8** %nodename11, align 8, !dbg !4985
  %14 = load i8*, i8** %tmpstring, align 8, !dbg !4986
  %call12 = call i64 @strlen(i8* %14) #11, !dbg !4987
  %add13 = add i64 %call12, 1, !dbg !4988
  %15 = load i8*, i8** %tmpstring, align 8, !dbg !4989
  %add.ptr14 = getelementptr i8, i8* %15, i64 %add13, !dbg !4989
  store i8* %add.ptr14, i8** %tmpstring, align 8, !dbg !4989
  %16 = load i8*, i8** %tmpstring, align 8, !dbg !4990
  %17 = load i8*, i8** %type.addr, align 8, !dbg !4991
  %call15 = call i8* @strcpy(i8* %16, i8* %17) #11, !dbg !4992
  %18 = load i8*, i8** %tmpstring, align 8, !dbg !4993
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4994
  %devicetype = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %19, i32 0, i32 0, !dbg !4995
  store i8* %18, i8** %devicetype, align 8, !dbg !4996
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4997
  %down = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %20, i32 0, i32 7, !dbg !4997
  call void @__init_completion(%struct.completion* %down) #11, !dbg !4997
  %21 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !4998
  %bus16 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %21, i32 0, i32 5, !dbg !4999
  %22 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5000
  %dev = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %22, i32 0, i32 5, !dbg !5001
  %bus17 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 5, !dbg !5002
  store %struct.bus_type* %bus16, %struct.bus_type** %bus17, align 8, !dbg !5003
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5004
  %dev18 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %23, i32 0, i32 5, !dbg !5005
  %release = getelementptr inbounds %struct.device, %struct.device* %dev18, i32 0, i32 31, !dbg !5006
  store void (%struct.device*)* @xenbus_dev_release, void (%struct.device*)** %release, align 8, !dbg !5007
  %24 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5008
  %get_bus_id = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %24, i32 0, i32 2, !dbg !5009
  %25 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %get_bus_id, align 8, !dbg !5009
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %devname, i64 0, i64 0, !dbg !5010
  %26 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5011
  %nodename19 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %26, i32 0, i32 1, !dbg !5012
  %27 = load i8*, i8** %nodename19, align 8, !dbg !5012
  %call20 = call i32 %25(i8* %arraydecay, i8* %27) #11, !dbg !5008
  store i32 %call20, i32* %err, align 4, !dbg !5013
  %28 = load i32, i32* %err, align 4, !dbg !5014
  %tobool21 = icmp ne i32 %28, 0, !dbg !5014
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5016

if.then22:                                        ; preds = %if.end8
  br label %fail, !dbg !5017

if.end23:                                         ; preds = %if.end8
  %29 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5018
  %dev24 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %29, i32 0, i32 5, !dbg !5019
  %arraydecay25 = getelementptr inbounds [20 x i8], [20 x i8]* %devname, i64 0, i64 0, !dbg !5020
  %call26 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay25) #11, !dbg !5021
  %30 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5022
  %reclaim_sem = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %30, i32 0, i32 9, !dbg !5023
  call void @sema_init(%struct.semaphore* %reclaim_sem, i32 1) #11, !dbg !5024
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5025
  %dev27 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 5, !dbg !5026
  %call28 = call i32 @device_register(%struct.device* %dev27) #11, !dbg !5027
  store i32 %call28, i32* %err, align 4, !dbg !5028
  %32 = load i32, i32* %err, align 4, !dbg !5029
  %tobool29 = icmp ne i32 %32, 0, !dbg !5029
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !5031

if.then30:                                        ; preds = %if.end23
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5032
  %dev31 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %33, i32 0, i32 5, !dbg !5034
  call void @put_device(%struct.device* %dev31) #11, !dbg !5035
  store %struct.xenbus_device* null, %struct.xenbus_device** %xendev, align 8, !dbg !5036
  br label %fail, !dbg !5037

if.end32:                                         ; preds = %if.end23
  store i32 0, i32* %retval, align 4, !dbg !5038
  br label %return, !dbg !5038

fail:                                             ; preds = %if.then30, %if.then22
  call void @llvm.dbg.label(metadata !5039), !dbg !5040
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !5041
  %35 = bitcast %struct.xenbus_device* %34 to i8*, !dbg !5041
  call void @kfree(i8* %35) #11, !dbg !5042
  %36 = load i32, i32* %err, align 4, !dbg !5043
  store i32 %36, i32* %retval, align 4, !dbg !5044
  br label %return, !dbg !5044

return:                                           ; preds = %fail, %if.end32, %if.then7, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !5045
  ret i32 %37, !dbg !5045
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5046 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5049, metadata !DIExpression()), !dbg !5053
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5059, metadata !DIExpression()), !dbg !5060
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5061, metadata !DIExpression()), !dbg !5062
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5063, metadata !DIExpression()), !dbg !5064
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5065, metadata !DIExpression()), !dbg !5069
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5071, metadata !DIExpression()), !dbg !5075
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5077, metadata !DIExpression()), !dbg !5081
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5086, metadata !DIExpression()), !dbg !5087
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5088, metadata !DIExpression()), !dbg !5089
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5090, metadata !DIExpression()), !dbg !5091
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5092, metadata !DIExpression()), !dbg !5093
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5094, metadata !DIExpression()), !dbg !5095
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5096, metadata !DIExpression()), !dbg !5097
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5098, metadata !DIExpression()), !dbg !5099
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5100, metadata !DIExpression()), !dbg !5101
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  %0 = load i64, i64* %size.addr, align 8, !dbg !5106
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5107
  %or = or i32 %1, 256, !dbg !5108
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5109
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5110
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5111

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5112
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5113
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5114

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5115
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5116
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5117
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5118
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5095
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5119
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5120
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5121
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5122
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5123
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5124
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #14, !dbg !5125
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5125
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5125
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5125
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5125
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5126
  br label %kmalloc.exit, !dbg !5126

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5127
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5128
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5128
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5130

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5131
  br label %kmalloc_index.exit.i, !dbg !5131

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5132
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5134
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5135

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5136
  br label %kmalloc_index.exit.i, !dbg !5136

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5137
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5139
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5140

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5141
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5142
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5143

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5144
  br label %kmalloc_index.exit.i, !dbg !5144

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5145
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5147
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5148

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5149
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5150
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5151

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5152
  br label %kmalloc_index.exit.i, !dbg !5152

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5153
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5155
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5156

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5157
  br label %kmalloc_index.exit.i, !dbg !5157

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5158
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5160
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5161

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5162
  br label %kmalloc_index.exit.i, !dbg !5162

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5163
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5165
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5166

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5167
  br label %kmalloc_index.exit.i, !dbg !5167

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5168
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5170
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5171

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5172
  br label %kmalloc_index.exit.i, !dbg !5172

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5173
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5175
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5176

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5177
  br label %kmalloc_index.exit.i, !dbg !5177

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5178
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5180
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5181

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5182
  br label %kmalloc_index.exit.i, !dbg !5182

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5183
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5185
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5186

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5187
  br label %kmalloc_index.exit.i, !dbg !5187

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5188
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5190
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5191

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5192
  br label %kmalloc_index.exit.i, !dbg !5192

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5193
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5195
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5196

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5197
  br label %kmalloc_index.exit.i, !dbg !5197

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5198
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5200
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5201

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5202
  br label %kmalloc_index.exit.i, !dbg !5202

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5203
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5205
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5206

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5207
  br label %kmalloc_index.exit.i, !dbg !5207

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5208
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5210
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5211

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5212
  br label %kmalloc_index.exit.i, !dbg !5212

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5213
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5215
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5216

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5217
  br label %kmalloc_index.exit.i, !dbg !5217

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5218
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5220
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5221

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5222
  br label %kmalloc_index.exit.i, !dbg !5222

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5223
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5225
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5226

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5227
  br label %kmalloc_index.exit.i, !dbg !5227

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5228
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5230
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5231

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5232
  br label %kmalloc_index.exit.i, !dbg !5232

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5233
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5235
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5236

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5237
  br label %kmalloc_index.exit.i, !dbg !5237

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5238
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5240
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5241

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5242
  br label %kmalloc_index.exit.i, !dbg !5242

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5243
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5245
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5246

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5247
  br label %kmalloc_index.exit.i, !dbg !5247

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5248
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5250
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5251

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5252
  br label %kmalloc_index.exit.i, !dbg !5252

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5253
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5255
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5256

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5257
  br label %kmalloc_index.exit.i, !dbg !5257

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5258
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5260
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5261

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5262
  br label %kmalloc_index.exit.i, !dbg !5262

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5263
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5265
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5266

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5267
  br label %kmalloc_index.exit.i, !dbg !5267

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5268
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5270
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5271

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5272
  br label %kmalloc_index.exit.i, !dbg !5272

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5273, !srcloc !5276
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #10, !dbg !5277, !srcloc !5280
  unreachable, !dbg !5281

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5282
  store i32 %45, i32* %index.i, align 4, !dbg !5283
  %46 = load i32, i32* %index.i, align 4, !dbg !5284
  %tobool.i = icmp ne i32 %46, 0, !dbg !5284
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5286

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5287
  br label %kmalloc.exit, !dbg !5287

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5288
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5289
  %and.i.i = and i32 %48, 17, !dbg !5289
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5289
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5289
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5289
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5289
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5291

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5292
  br label %kmalloc_type.exit.i, !dbg !5292

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5293
  %and2.i.i = and i32 %49, 1, !dbg !5294
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5293
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5293
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5293
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5295
  br label %kmalloc_type.exit.i, !dbg !5295

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5296
  %idxprom.i = zext i32 %51 to i64, !dbg !5297
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5297
  %52 = load i32, i32* %index.i, align 4, !dbg !5298
  %idxprom6.i = zext i32 %52 to i64, !dbg !5297
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5297
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5297
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5299
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5300
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5301
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5302
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #14, !dbg !5303
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5303
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5303
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5303
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5303
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5064
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5304
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5305
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5306
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5307
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #14, !dbg !5308
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5309
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5310
  store i8* %62, i8** %retval.i, align 8, !dbg !5311
  br label %kmalloc.exit, !dbg !5311

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5312
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5313
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #14, !dbg !5314
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5314
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5314
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5314
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5314
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5315
  br label %kmalloc.exit, !dbg !5315

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5316
  ret i8* %65, !dbg !5317
}

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !4405 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5320
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !5321
  store i32 0, i32* %done, align 8, !dbg !5322
  br label %do.body, !dbg !5323

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5324
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !5324
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #11, !dbg !5324
  br label %do.end, !dbg !5324

do.end:                                           ; preds = %do.body
  ret void, !dbg !5326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_dev_release(%struct.device* %dev) #0 !dbg !5327 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5330
  %tobool = icmp ne %struct.device* %0, null, !dbg !5330
  br i1 %tobool, label %if.then, label %if.end, !dbg !5332

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5333
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %1) #11, !dbg !5334
  %2 = bitcast %struct.xenbus_device* %call to i8*, !dbg !5334
  call void @kfree(i8* %2) #11, !dbg !5335
  br label %if.end, !dbg !5335

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5336
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sema_init(%struct.semaphore* %sem, i32 %val) #0 !dbg !4410 {
entry:
  %sem.addr = alloca %struct.semaphore*, align 8
  %val.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.semaphore, align 8
  store %struct.semaphore* %sem, %struct.semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.semaphore** %sem.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  %0 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !5341
  %count = getelementptr inbounds %struct.semaphore, %struct.semaphore* %.compoundliteral, i32 0, i32 1, !dbg !5342
  %1 = load i32, i32* %val.addr, align 4, !dbg !5342
  store i32 %1, i32* %count, align 8, !dbg !5342
  %wait_list = getelementptr inbounds %struct.semaphore, %struct.semaphore* %.compoundliteral, i32 0, i32 2, !dbg !5342
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %wait_list, i32 0, i32 0, !dbg !5342
  %2 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !5342
  %wait_list1 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %2, i32 0, i32 2, !dbg !5342
  store %struct.list_head* %wait_list1, %struct.list_head** %next, align 8, !dbg !5342
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %wait_list, i32 0, i32 1, !dbg !5342
  %3 = load %struct.semaphore*, %struct.semaphore** %sem.addr, align 8, !dbg !5342
  %wait_list2 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %3, i32 0, i32 2, !dbg !5342
  store %struct.list_head* %wait_list2, %struct.list_head** %prev, align 8, !dbg !5342
  %4 = bitcast %struct.semaphore* %0 to i8*, !dbg !5343
  %5 = bitcast %struct.semaphore* %.compoundliteral to i8*, !dbg !5343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false), !dbg !5343
  br label %do.body, !dbg !5344

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5345

do.end:                                           ; preds = %do.body
  ret void, !dbg !5347
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_probe_devices(%struct.xen_bus_type* %bus) #0 !dbg !5348 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.xen_bus_type*, align 8
  %err = alloca i32, align 4
  %dir = alloca i8**, align 8
  %i = alloca i32, align 4
  %dir_n = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store %struct.xen_bus_type* %bus, %struct.xen_bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_bus_type** %bus.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5353, metadata !DIExpression()), !dbg !5354
  store i32 0, i32* %err, align 4, !dbg !5354
  call void @llvm.dbg.declare(metadata i8*** %dir, metadata !5355, metadata !DIExpression()), !dbg !5357
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata i32* %dir_n, metadata !5360, metadata !DIExpression()), !dbg !5361
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5362
  store i32 0, i32* %id, align 4, !dbg !5362
  %0 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5363
  %root = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %0, i32 0, i32 0, !dbg !5364
  %1 = load i8*, i8** %root, align 8, !dbg !5364
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5365
  %2 = load i32, i32* %coerce.dive, align 4, !dbg !5365
  %call = call i8** @xenbus_directory(i32 %2, i8* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %dir_n) #11, !dbg !5365
  store i8** %call, i8*** %dir, align 8, !dbg !5366
  %3 = load i8**, i8*** %dir, align 8, !dbg !5367
  %4 = bitcast i8** %3 to i8*, !dbg !5367
  %call1 = call zeroext i1 @IS_ERR(i8* %4) #11, !dbg !5369
  br i1 %call1, label %if.then, label %if.end, !dbg !5370

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %dir, align 8, !dbg !5371
  %6 = bitcast i8** %5 to i8*, !dbg !5371
  %call2 = call i64 @PTR_ERR(i8* %6) #11, !dbg !5372
  %conv = trunc i64 %call2 to i32, !dbg !5372
  store i32 %conv, i32* %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5374
  br label %for.cond, !dbg !5376

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4, !dbg !5377
  %8 = load i32, i32* %dir_n, align 4, !dbg !5379
  %cmp = icmp ult i32 %7, %8, !dbg !5380
  br i1 %cmp, label %for.body, label %for.end, !dbg !5381

for.body:                                         ; preds = %for.cond
  %9 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5382
  %10 = load i8**, i8*** %dir, align 8, !dbg !5384
  %11 = load i32, i32* %i, align 4, !dbg !5385
  %idxprom = zext i32 %11 to i64, !dbg !5384
  %arrayidx = getelementptr i8*, i8** %10, i64 %idxprom, !dbg !5384
  %12 = load i8*, i8** %arrayidx, align 8, !dbg !5384
  %call4 = call i32 @xenbus_probe_device_type(%struct.xen_bus_type* %9, i8* %12) #11, !dbg !5386
  store i32 %call4, i32* %err, align 4, !dbg !5387
  %13 = load i32, i32* %err, align 4, !dbg !5388
  %tobool = icmp ne i32 %13, 0, !dbg !5388
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5390

if.then5:                                         ; preds = %for.body
  br label %for.end, !dbg !5391

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !5392

for.inc:                                          ; preds = %if.end6
  %14 = load i32, i32* %i, align 4, !dbg !5393
  %inc = add i32 %14, 1, !dbg !5393
  store i32 %inc, i32* %i, align 4, !dbg !5393
  br label %for.cond, !dbg !5394, !llvm.loop !5395

for.end:                                          ; preds = %if.then5, %for.cond
  %15 = load i8**, i8*** %dir, align 8, !dbg !5397
  %16 = bitcast i8** %15 to i8*, !dbg !5397
  call void @kfree(i8* %16) #11, !dbg !5398
  %17 = load i32, i32* %err, align 4, !dbg !5399
  store i32 %17, i32* %retval, align 4, !dbg !5400
  br label %return, !dbg !5400

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5401
  ret i32 %18, !dbg !5401
}

; Function Attrs: noredzone
declare dso_local i8** @xenbus_directory(i32, i8*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5402 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5408
  %1 = ptrtoint i8* %0 to i64, !dbg !5408
  %2 = inttoptr i64 %1 to i8*, !dbg !5408
  %3 = ptrtoint i8* %2 to i64, !dbg !5408
  %cmp = icmp uge i64 %3, -4095, !dbg !5408
  %lnot = xor i1 %cmp, true, !dbg !5408
  %lnot1 = xor i1 %lnot, true, !dbg !5408
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5408
  %conv = sext i32 %lnot.ext to i64, !dbg !5408
  %tobool = icmp ne i64 %conv, 0, !dbg !5408
  ret i1 %tobool, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5410 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5415
  %1 = ptrtoint i8* %0 to i64, !dbg !5416
  ret i64 %1, !dbg !5417
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_probe_device_type(%struct.xen_bus_type* %bus, i8* %type) #0 !dbg !5418 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.xen_bus_type*, align 8
  %type.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %dir = alloca i8**, align 8
  %dir_n = alloca i32, align 4
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store %struct.xen_bus_type* %bus, %struct.xen_bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_bus_type** %bus.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  store i8* %type, i8** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %type.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5425, metadata !DIExpression()), !dbg !5426
  store i32 0, i32* %err, align 4, !dbg !5426
  call void @llvm.dbg.declare(metadata i8*** %dir, metadata !5427, metadata !DIExpression()), !dbg !5428
  call void @llvm.dbg.declare(metadata i32* %dir_n, metadata !5429, metadata !DIExpression()), !dbg !5430
  store i32 0, i32* %dir_n, align 4, !dbg !5430
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5431, metadata !DIExpression()), !dbg !5432
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5433
  store i32 0, i32* %id, align 4, !dbg !5433
  %0 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5434
  %root = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %0, i32 0, i32 0, !dbg !5435
  %1 = load i8*, i8** %root, align 8, !dbg !5435
  %2 = load i8*, i8** %type.addr, align 8, !dbg !5436
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5437
  %3 = load i32, i32* %coerce.dive, align 4, !dbg !5437
  %call = call i8** @xenbus_directory(i32 %3, i8* %1, i8* %2, i32* %dir_n) #11, !dbg !5437
  store i8** %call, i8*** %dir, align 8, !dbg !5438
  %4 = load i8**, i8*** %dir, align 8, !dbg !5439
  %5 = bitcast i8** %4 to i8*, !dbg !5439
  %call1 = call zeroext i1 @IS_ERR(i8* %5) #11, !dbg !5441
  br i1 %call1, label %if.then, label %if.end, !dbg !5442

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %dir, align 8, !dbg !5443
  %7 = bitcast i8** %6 to i8*, !dbg !5443
  %call2 = call i64 @PTR_ERR(i8* %7) #11, !dbg !5444
  %conv = trunc i64 %call2 to i32, !dbg !5444
  store i32 %conv, i32* %retval, align 4, !dbg !5445
  br label %return, !dbg !5445

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5446
  br label %for.cond, !dbg !5448

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !5449
  %9 = load i32, i32* %dir_n, align 4, !dbg !5451
  %cmp = icmp ult i32 %8, %9, !dbg !5452
  br i1 %cmp, label %for.body, label %for.end, !dbg !5453

for.body:                                         ; preds = %for.cond
  %10 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5454
  %probe = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %10, i32 0, i32 3, !dbg !5456
  %11 = load i32 (%struct.xen_bus_type*, i8*, i8*)*, i32 (%struct.xen_bus_type*, i8*, i8*)** %probe, align 8, !dbg !5456
  %12 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5457
  %13 = load i8*, i8** %type.addr, align 8, !dbg !5458
  %14 = load i8**, i8*** %dir, align 8, !dbg !5459
  %15 = load i32, i32* %i, align 4, !dbg !5460
  %idxprom = sext i32 %15 to i64, !dbg !5459
  %arrayidx = getelementptr i8*, i8** %14, i64 %idxprom, !dbg !5459
  %16 = load i8*, i8** %arrayidx, align 8, !dbg !5459
  %call4 = call i32 %11(%struct.xen_bus_type* %12, i8* %13, i8* %16) #11, !dbg !5454
  store i32 %call4, i32* %err, align 4, !dbg !5461
  %17 = load i32, i32* %err, align 4, !dbg !5462
  %tobool = icmp ne i32 %17, 0, !dbg !5462
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5464

if.then5:                                         ; preds = %for.body
  br label %for.end, !dbg !5465

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !5466

for.inc:                                          ; preds = %if.end6
  %18 = load i32, i32* %i, align 4, !dbg !5467
  %inc = add i32 %18, 1, !dbg !5467
  store i32 %inc, i32* %i, align 4, !dbg !5467
  br label %for.cond, !dbg !5468, !llvm.loop !5469

for.end:                                          ; preds = %if.then5, %for.cond
  %19 = load i8**, i8*** %dir, align 8, !dbg !5471
  %20 = bitcast i8** %19 to i8*, !dbg !5471
  call void @kfree(i8* %20) #11, !dbg !5472
  %21 = load i32, i32* %err, align 4, !dbg !5473
  store i32 %21, i32* %retval, align 4, !dbg !5474
  br label %return, !dbg !5474

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !5475
  ret i32 %22, !dbg !5475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_dev_changed(i8* %node, %struct.xen_bus_type* %bus) #0 !dbg !5476 {
entry:
  %node.addr = alloca i8*, align 8
  %bus.addr = alloca %struct.xen_bus_type*, align 8
  %exists = alloca i32, align 4
  %rootlen = alloca i32, align 4
  %dev = alloca %struct.xenbus_device*, align 8
  %type = alloca [20 x i8], align 16
  %p = alloca i8*, align 8
  %root = alloca i8*, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store i8* %node, i8** %node.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %node.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  store %struct.xen_bus_type* %bus, %struct.xen_bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_bus_type** %bus.addr, metadata !5481, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.declare(metadata i32* %exists, metadata !5483, metadata !DIExpression()), !dbg !5484
  call void @llvm.dbg.declare(metadata i32* %rootlen, metadata !5485, metadata !DIExpression()), !dbg !5486
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev, metadata !5487, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.declare(metadata [20 x i8]* %type, metadata !5489, metadata !DIExpression()), !dbg !5490
  call void @llvm.dbg.declare(metadata i8** %p, metadata !5491, metadata !DIExpression()), !dbg !5492
  call void @llvm.dbg.declare(metadata i8** %root, metadata !5493, metadata !DIExpression()), !dbg !5494
  %0 = load i8*, i8** %node.addr, align 8, !dbg !5495
  %call = call i32 @char_count(i8* %0, i8 signext 47) #11, !dbg !5497
  %cmp = icmp ult i32 %call, 2, !dbg !5498
  br i1 %cmp, label %if.then, label %if.end, !dbg !5499

if.then:                                          ; preds = %entry
  br label %return, !dbg !5500

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5501
  store i32 0, i32* %id, align 4, !dbg !5501
  %1 = load i8*, i8** %node.addr, align 8, !dbg !5502
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5503
  %2 = load i32, i32* %coerce.dive, align 4, !dbg !5503
  %call1 = call i32 @xenbus_exists(i32 %2, i8* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !5503
  store i32 %call1, i32* %exists, align 4, !dbg !5504
  %3 = load i32, i32* %exists, align 4, !dbg !5505
  %tobool = icmp ne i32 %3, 0, !dbg !5505
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !5507

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %node.addr, align 8, !dbg !5508
  %5 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5510
  %bus3 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %5, i32 0, i32 5, !dbg !5511
  call void @xenbus_cleanup_devices(i8* %4, %struct.bus_type* %bus3) #11, !dbg !5512
  br label %return, !dbg !5513

if.end4:                                          ; preds = %if.end
  %6 = load i8*, i8** %node.addr, align 8, !dbg !5514
  %call5 = call i8* @strchr(i8* %6, i32 47) #11, !dbg !5515
  %add.ptr = getelementptr i8, i8* %call5, i64 1, !dbg !5516
  store i8* %add.ptr, i8** %p, align 8, !dbg !5517
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !5518
  %7 = load i8*, i8** %p, align 8, !dbg !5519
  %call6 = call i64 @strcspn(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !5520
  %conv = trunc i64 %call6 to i32, !dbg !5521
  %8 = load i8*, i8** %p, align 8, !dbg !5522
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %conv, i8* %8) #11, !dbg !5523
  %arrayidx = getelementptr [20 x i8], [20 x i8]* %type, i64 0, i64 19, !dbg !5524
  store i8 0, i8* %arrayidx, align 1, !dbg !5525
  %9 = load i8*, i8** %node.addr, align 8, !dbg !5526
  %10 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5527
  %levels = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %10, i32 0, i32 1, !dbg !5528
  %11 = load i32, i32* %levels, align 8, !dbg !5528
  %call8 = call i32 @strsep_len(i8* %9, i8 signext 47, i32 %11) #11, !dbg !5529
  store i32 %call8, i32* %rootlen, align 4, !dbg !5530
  %12 = load i32, i32* %rootlen, align 4, !dbg !5531
  %cmp9 = icmp slt i32 %12, 0, !dbg !5533
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5534

if.then11:                                        ; preds = %if.end4
  br label %return, !dbg !5535

if.end12:                                         ; preds = %if.end4
  %13 = load i32, i32* %rootlen, align 4, !dbg !5536
  %14 = load i8*, i8** %node.addr, align 8, !dbg !5537
  %call13 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %13, i8* %14) #11, !dbg !5538
  store i8* %call13, i8** %root, align 8, !dbg !5539
  %15 = load i8*, i8** %root, align 8, !dbg !5540
  %tobool14 = icmp ne i8* %15, null, !dbg !5540
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5542

if.then15:                                        ; preds = %if.end12
  br label %return, !dbg !5543

if.end16:                                         ; preds = %if.end12
  %16 = load i8*, i8** %root, align 8, !dbg !5544
  %17 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5545
  %bus17 = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %17, i32 0, i32 5, !dbg !5546
  %call18 = call %struct.xenbus_device* @xenbus_device_find(i8* %16, %struct.bus_type* %bus17) #11, !dbg !5547
  store %struct.xenbus_device* %call18, %struct.xenbus_device** %dev, align 8, !dbg !5548
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !5549
  %tobool19 = icmp ne %struct.xenbus_device* %18, null, !dbg !5549
  br i1 %tobool19, label %if.else, label %if.then20, !dbg !5551

if.then20:                                        ; preds = %if.end16
  %19 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !5552
  %arraydecay21 = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !5553
  %20 = load i8*, i8** %root, align 8, !dbg !5554
  %call22 = call i32 @xenbus_probe_node(%struct.xen_bus_type* %19, i8* %arraydecay21, i8* %20) #11, !dbg !5555
  br label %if.end24, !dbg !5555

if.else:                                          ; preds = %if.end16
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !5556
  %dev23 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %21, i32 0, i32 5, !dbg !5557
  call void @put_device(%struct.device* %dev23) #11, !dbg !5558
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %22 = load i8*, i8** %root, align 8, !dbg !5559
  call void @kfree(i8* %22) #11, !dbg !5560
  br label %return, !dbg !5561

return:                                           ; preds = %if.end24, %if.then15, %if.then11, %if.then2, %if.then
  ret void, !dbg !5561
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @char_count(i8* %str, i8 signext %c) #0 !dbg !5562 {
entry:
  %str.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !5567, metadata !DIExpression()), !dbg !5568
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5569, metadata !DIExpression()), !dbg !5570
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5571, metadata !DIExpression()), !dbg !5572
  store i32 0, i32* %ret, align 4, !dbg !5572
  store i32 0, i32* %i, align 4, !dbg !5573
  br label %for.cond, !dbg !5575

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8, !dbg !5576
  %1 = load i32, i32* %i, align 4, !dbg !5578
  %idxprom = zext i32 %1 to i64, !dbg !5576
  %arrayidx = getelementptr i8, i8* %0, i64 %idxprom, !dbg !5576
  %2 = load i8, i8* %arrayidx, align 1, !dbg !5576
  %tobool = icmp ne i8 %2, 0, !dbg !5579
  br i1 %tobool, label %for.body, label %for.end, !dbg !5579

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %str.addr, align 8, !dbg !5580
  %4 = load i32, i32* %i, align 4, !dbg !5582
  %idxprom1 = zext i32 %4 to i64, !dbg !5580
  %arrayidx2 = getelementptr i8, i8* %3, i64 %idxprom1, !dbg !5580
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !5580
  %conv = sext i8 %5 to i32, !dbg !5580
  %6 = load i8, i8* %c.addr, align 1, !dbg !5583
  %conv3 = sext i8 %6 to i32, !dbg !5583
  %cmp = icmp eq i32 %conv, %conv3, !dbg !5584
  br i1 %cmp, label %if.then, label %if.end, !dbg !5585

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %ret, align 4, !dbg !5586
  %inc = add i32 %7, 1, !dbg !5586
  store i32 %inc, i32* %ret, align 4, !dbg !5586
  br label %if.end, !dbg !5587

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5583

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !5588
  %inc5 = add i32 %8, 1, !dbg !5588
  store i32 %inc5, i32* %i, align 4, !dbg !5588
  br label %for.cond, !dbg !5589, !llvm.loop !5590

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %ret, align 4, !dbg !5592
  ret i32 %9, !dbg !5593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_cleanup_devices(i8* %path, %struct.bus_type* %bus) #0 !dbg !5594 {
entry:
  %path.addr = alloca i8*, align 8
  %bus.addr = alloca %struct.bus_type*, align 8
  %info = alloca %struct.xb_find_info, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  call void @llvm.dbg.declare(metadata %struct.xb_find_info* %info, metadata !5601, metadata !DIExpression()), !dbg !5606
  %dev = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5607
  store %struct.xenbus_device* null, %struct.xenbus_device** %dev, align 8, !dbg !5607
  %nodename = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 1, !dbg !5607
  %0 = load i8*, i8** %path.addr, align 8, !dbg !5608
  store i8* %0, i8** %nodename, align 8, !dbg !5607
  br label %do.body, !dbg !5609

do.body:                                          ; preds = %do.cond, %entry
  %dev1 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5610
  store %struct.xenbus_device* null, %struct.xenbus_device** %dev1, align 8, !dbg !5612
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !5613
  %2 = bitcast %struct.xb_find_info* %info to i8*, !dbg !5614
  %call = call i32 @bus_for_each_dev(%struct.bus_type* %1, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @cleanup_dev) #11, !dbg !5615
  %dev2 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5616
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev2, align 8, !dbg !5616
  %tobool = icmp ne %struct.xenbus_device* %3, null, !dbg !5618
  br i1 %tobool, label %if.then, label %if.end, !dbg !5619

if.then:                                          ; preds = %do.body
  %dev3 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5620
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev3, align 8, !dbg !5620
  %dev4 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %4, i32 0, i32 5, !dbg !5622
  call void @device_unregister(%struct.device* %dev4) #11, !dbg !5623
  %dev5 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5624
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %dev5, align 8, !dbg !5624
  %dev6 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 5, !dbg !5625
  call void @put_device(%struct.device* %dev6) #11, !dbg !5626
  br label %if.end, !dbg !5627

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !5628

do.cond:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5629
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev7, align 8, !dbg !5629
  %tobool8 = icmp ne %struct.xenbus_device* %6, null, !dbg !5628
  br i1 %tobool8, label %do.body, label %do.end, !dbg !5628, !llvm.loop !5630

do.end:                                           ; preds = %do.cond
  ret void, !dbg !5632
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @strcspn(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @strsep_len(i8* %str, i8 signext %c, i32 %len) #0 !dbg !5633 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5642, metadata !DIExpression()), !dbg !5643
  store i32 0, i32* %i, align 4, !dbg !5644
  br label %for.cond, !dbg !5646

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8, !dbg !5647
  %1 = load i32, i32* %i, align 4, !dbg !5649
  %idxprom = zext i32 %1 to i64, !dbg !5647
  %arrayidx = getelementptr i8, i8* %0, i64 %idxprom, !dbg !5647
  %2 = load i8, i8* %arrayidx, align 1, !dbg !5647
  %tobool = icmp ne i8 %2, 0, !dbg !5650
  br i1 %tobool, label %for.body, label %for.end, !dbg !5650

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %str.addr, align 8, !dbg !5651
  %4 = load i32, i32* %i, align 4, !dbg !5653
  %idxprom1 = zext i32 %4 to i64, !dbg !5651
  %arrayidx2 = getelementptr i8, i8* %3, i64 %idxprom1, !dbg !5651
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !5651
  %conv = sext i8 %5 to i32, !dbg !5651
  %6 = load i8, i8* %c.addr, align 1, !dbg !5654
  %conv3 = sext i8 %6 to i32, !dbg !5654
  %cmp = icmp eq i32 %conv, %conv3, !dbg !5655
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5656

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %len.addr, align 4, !dbg !5657
  %cmp5 = icmp eq i32 %7, 0, !dbg !5660
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !5661

if.then7:                                         ; preds = %if.then
  %8 = load i32, i32* %i, align 4, !dbg !5662
  store i32 %8, i32* %retval, align 4, !dbg !5663
  br label %return, !dbg !5663

if.end:                                           ; preds = %if.then
  %9 = load i32, i32* %len.addr, align 4, !dbg !5664
  %dec = add i32 %9, -1, !dbg !5664
  store i32 %dec, i32* %len.addr, align 4, !dbg !5664
  br label %if.end8, !dbg !5665

if.end8:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !5654

for.inc:                                          ; preds = %if.end8
  %10 = load i32, i32* %i, align 4, !dbg !5666
  %inc = add i32 %10, 1, !dbg !5666
  store i32 %inc, i32* %i, align 4, !dbg !5666
  br label %for.cond, !dbg !5667, !llvm.loop !5668

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %len.addr, align 4, !dbg !5670
  %cmp9 = icmp eq i32 %11, 0, !dbg !5671
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !5672

cond.true:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4, !dbg !5673
  br label %cond.end, !dbg !5672

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !5672

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ -34, %cond.false ], !dbg !5672
  store i32 %cond, i32* %retval, align 4, !dbg !5674
  br label %return, !dbg !5674

return:                                           ; preds = %cond.end, %if.then7
  %13 = load i32, i32* %retval, align 4, !dbg !5675
  ret i32 %13, !dbg !5675
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_device* @xenbus_device_find(i8* %nodename, %struct.bus_type* %bus) #0 !dbg !5676 {
entry:
  %nodename.addr = alloca i8*, align 8
  %bus.addr = alloca %struct.bus_type*, align 8
  %info = alloca %struct.xb_find_info, align 8
  store i8* %nodename, i8** %nodename.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %nodename.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.declare(metadata %struct.xb_find_info* %info, metadata !5683, metadata !DIExpression()), !dbg !5684
  %dev = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5685
  store %struct.xenbus_device* null, %struct.xenbus_device** %dev, align 8, !dbg !5685
  %nodename1 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 1, !dbg !5685
  %0 = load i8*, i8** %nodename.addr, align 8, !dbg !5686
  store i8* %0, i8** %nodename1, align 8, !dbg !5685
  %1 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !5687
  %2 = bitcast %struct.xb_find_info* %info to i8*, !dbg !5688
  %call = call i32 @bus_for_each_dev(%struct.bus_type* %1, %struct.device* null, i8* %2, i32 (%struct.device*, i8*)* @cmp_dev) #11, !dbg !5689
  %dev2 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %info, i32 0, i32 0, !dbg !5690
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev2, align 8, !dbg !5690
  ret %struct.xenbus_device* %3, !dbg !5691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_dev_suspend(%struct.device* %dev) #0 !dbg !5692 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  %drv = alloca %struct.xenbus_driver*, align 8
  %xdev = alloca %struct.xenbus_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_device*, align 8
  %tmp1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5693, metadata !DIExpression()), !dbg !5694
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5695, metadata !DIExpression()), !dbg !5696
  store i32 0, i32* %err, align 4, !dbg !5696
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv, metadata !5697, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xdev, metadata !5699, metadata !DIExpression()), !dbg !5700
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5701, metadata !DIExpression()), !dbg !5703
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5703
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5703
  store i8* %1, i8** %__mptr, align 8, !dbg !5703
  br label %do.body, !dbg !5703

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5704

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5703
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !5703
  %3 = bitcast i8* %add.ptr to %struct.xenbus_device*, !dbg !5703
  store %struct.xenbus_device* %3, %struct.xenbus_device** %tmp, align 8, !dbg !5704
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %tmp, align 8, !dbg !5703
  store %struct.xenbus_device* %4, %struct.xenbus_device** %xdev, align 8, !dbg !5700
  store i32 0, i32* %tmp1, align 4, !dbg !5706
  %5 = load i32, i32* %tmp1, align 4, !dbg !5709
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5710
  %driver = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 6, !dbg !5712
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5712
  %cmp = icmp eq %struct.device_driver* %7, null, !dbg !5713
  br i1 %cmp, label %if.then, label %if.end, !dbg !5714

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5715
  br label %return, !dbg !5715

if.end:                                           ; preds = %do.end
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5716
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 6, !dbg !5717
  %9 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !5717
  %call = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %9) #11, !dbg !5718
  store %struct.xenbus_driver* %call, %struct.xenbus_driver** %drv, align 8, !dbg !5719
  %10 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !5720
  %suspend = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %10, i32 0, i32 6, !dbg !5722
  %11 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %suspend, align 8, !dbg !5722
  %tobool = icmp ne i32 (%struct.xenbus_device*)* %11, null, !dbg !5720
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5723

if.then3:                                         ; preds = %if.end
  %12 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !5724
  %suspend4 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %12, i32 0, i32 6, !dbg !5725
  %13 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %suspend4, align 8, !dbg !5725
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5726
  %call5 = call i32 %13(%struct.xenbus_device* %14) #11, !dbg !5724
  store i32 %call5, i32* %err, align 4, !dbg !5727
  br label %if.end6, !dbg !5728

if.end6:                                          ; preds = %if.then3, %if.end
  %15 = load i32, i32* %err, align 4, !dbg !5729
  %tobool7 = icmp ne i32 %15, 0, !dbg !5729
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5731

if.then8:                                         ; preds = %if.end6
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5732
  %17 = load i32, i32* %err, align 4, !dbg !5732
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %17) #12, !dbg !5732
  br label %if.end9, !dbg !5732

if.end9:                                          ; preds = %if.then8, %if.end6
  store i32 0, i32* %retval, align 4, !dbg !5733
  br label %return, !dbg !5733

return:                                           ; preds = %if.end9, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5734
  ret i32 %18, !dbg !5734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_dev_resume(%struct.device* %dev) #0 !dbg !5735 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  %drv = alloca %struct.xenbus_driver*, align 8
  %xdev = alloca %struct.xenbus_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_device*, align 8
  %tmp1 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5738, metadata !DIExpression()), !dbg !5739
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv, metadata !5740, metadata !DIExpression()), !dbg !5741
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xdev, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5744, metadata !DIExpression()), !dbg !5746
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5746
  %1 = bitcast %struct.device* %0 to i8*, !dbg !5746
  store i8* %1, i8** %__mptr, align 8, !dbg !5746
  br label %do.body, !dbg !5746

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5747

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5746
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !5746
  %3 = bitcast i8* %add.ptr to %struct.xenbus_device*, !dbg !5746
  store %struct.xenbus_device* %3, %struct.xenbus_device** %tmp, align 8, !dbg !5747
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %tmp, align 8, !dbg !5746
  store %struct.xenbus_device* %4, %struct.xenbus_device** %xdev, align 8, !dbg !5743
  store i32 0, i32* %tmp1, align 4, !dbg !5749
  %5 = load i32, i32* %tmp1, align 4, !dbg !5752
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5753
  %driver = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 6, !dbg !5755
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5755
  %cmp = icmp eq %struct.device_driver* %7, null, !dbg !5756
  br i1 %cmp, label %if.then, label %if.end, !dbg !5757

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5758
  br label %return, !dbg !5758

if.end:                                           ; preds = %do.end
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5759
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 6, !dbg !5760
  %9 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !5760
  %call = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %9) #11, !dbg !5761
  store %struct.xenbus_driver* %call, %struct.xenbus_driver** %drv, align 8, !dbg !5762
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5763
  %call3 = call i32 @talk_to_otherend(%struct.xenbus_device* %10) #11, !dbg !5764
  store i32 %call3, i32* %err, align 4, !dbg !5765
  %11 = load i32, i32* %err, align 4, !dbg !5766
  %tobool = icmp ne i32 %11, 0, !dbg !5766
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5768

if.then4:                                         ; preds = %if.end
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5769
  %13 = load i32, i32* %err, align 4, !dbg !5769
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %13) #12, !dbg !5769
  %14 = load i32, i32* %err, align 4, !dbg !5771
  store i32 %14, i32* %retval, align 4, !dbg !5772
  br label %return, !dbg !5772

if.end5:                                          ; preds = %if.end
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5773
  %state = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 6, !dbg !5774
  store i32 1, i32* %state, align 8, !dbg !5775
  %16 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !5776
  %resume = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %16, i32 0, i32 7, !dbg !5778
  %17 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %resume, align 8, !dbg !5778
  %tobool6 = icmp ne i32 (%struct.xenbus_device*)* %17, null, !dbg !5776
  br i1 %tobool6, label %if.then7, label %if.end13, !dbg !5779

if.then7:                                         ; preds = %if.end5
  %18 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv, align 8, !dbg !5780
  %resume8 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %18, i32 0, i32 7, !dbg !5782
  %19 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %resume8, align 8, !dbg !5782
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5783
  %call9 = call i32 %19(%struct.xenbus_device* %20) #11, !dbg !5780
  store i32 %call9, i32* %err, align 4, !dbg !5784
  %21 = load i32, i32* %err, align 4, !dbg !5785
  %tobool10 = icmp ne i32 %21, 0, !dbg !5785
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5787

if.then11:                                        ; preds = %if.then7
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5788
  %23 = load i32, i32* %err, align 4, !dbg !5788
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %23) #12, !dbg !5788
  %24 = load i32, i32* %err, align 4, !dbg !5790
  store i32 %24, i32* %retval, align 4, !dbg !5791
  br label %return, !dbg !5791

if.end12:                                         ; preds = %if.then7
  br label %if.end13, !dbg !5792

if.end13:                                         ; preds = %if.end12, %if.end5
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !5793
  %call14 = call i32 @watch_otherend(%struct.xenbus_device* %25) #11, !dbg !5794
  store i32 %call14, i32* %err, align 4, !dbg !5795
  %26 = load i32, i32* %err, align 4, !dbg !5796
  %tobool15 = icmp ne i32 %26, 0, !dbg !5796
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5798

if.then16:                                        ; preds = %if.end13
  %27 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5799
  %28 = load i32, i32* %err, align 4, !dbg !5799
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0), i32 %28) #12, !dbg !5799
  %29 = load i32, i32* %err, align 4, !dbg !5801
  store i32 %29, i32* %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end17:                                         ; preds = %if.end13
  store i32 0, i32* %retval, align 4, !dbg !5803
  br label %return, !dbg !5803

return:                                           ; preds = %if.end17, %if.then16, %if.then11, %if.then4, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !5804
  ret i32 %30, !dbg !5804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xenbus_dev_cancel(%struct.device* %dev) #0 !dbg !5805 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %tmp = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i32 0, i32* %tmp, align 4, !dbg !5808
  %0 = load i32, i32* %tmp, align 4, !dbg !5811
  ret i32 0, !dbg !5812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @register_xenstore_notifier(%struct.notifier_block* %nb) #0 !dbg !5813 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %ret = alloca i32, align 4
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5818, metadata !DIExpression()), !dbg !5819
  store i32 0, i32* %ret, align 4, !dbg !5819
  %0 = load i32, i32* @xenstored_ready, align 4, !dbg !5820
  %cmp = icmp sgt i32 %0, 0, !dbg !5822
  br i1 %cmp, label %if.then, label %if.else, !dbg !5823

if.then:                                          ; preds = %entry
  %1 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5824
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %1, i32 0, i32 0, !dbg !5825
  %2 = load i32 (%struct.notifier_block*, i64, i8*)*, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !5825
  %3 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5826
  %call = call i32 %2(%struct.notifier_block* %3, i64 0, i8* null) #11, !dbg !5824
  store i32 %call, i32* %ret, align 4, !dbg !5827
  br label %if.end, !dbg !5828

if.else:                                          ; preds = %entry
  %4 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5829
  %call1 = call i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* @xenstore_chain, %struct.notifier_block* %4) #11, !dbg !5830
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %ret, align 4, !dbg !5831
  ret i32 %5, !dbg !5832
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @unregister_xenstore_notifier(%struct.notifier_block* %nb) #0 !dbg !5833 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5836, metadata !DIExpression()), !dbg !5837
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5838
  %call = call i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head* @xenstore_chain, %struct.notifier_block* %0) #11, !dbg !5839
  ret void, !dbg !5840
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_chain_unregister(%struct.blocking_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_probe(%struct.work_struct* %unused) #0 !dbg !5841 {
entry:
  %unused.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %unused, %struct.work_struct** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %unused.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  store i32 1, i32* @xenstored_ready, align 4, !dbg !5844
  %call = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* @xenstore_chain, i64 0, i8* null) #11, !dbg !5845
  ret void, !dbg !5846
}

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head*, i64, i8*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_probe_initcall() #4 section ".init.text" !dbg !5847 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5850
  %cmp = icmp ne i32 %0, 0, !dbg !5850
  br i1 %cmp, label %if.end, label %if.then, !dbg !5852

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5853
  br label %return, !dbg !5853

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !5854
  %cmp1 = icmp ne i32 %1, 0, !dbg !5854
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false, !dbg !5854

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @xen_start_flags, align 4, !dbg !5854
  %and = and i32 %2, 2, !dbg !5854
  %tobool = icmp ne i32 %and, 0, !dbg !5854
  br i1 %tobool, label %if.then3, label %lor.lhs.false, !dbg !5856

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %3 = load i32, i32* @xen_domain_type, align 4, !dbg !5857
  %cmp2 = icmp eq i32 %3, 2, !dbg !5857
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5858

if.then3:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5859
  br label %return, !dbg !5859

if.end4:                                          ; preds = %lor.lhs.false
  call void @xenbus_probe(%struct.work_struct* null) #11, !dbg !5860
  store i32 0, i32* %retval, align 4, !dbg !5861
  br label %return, !dbg !5861

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5862
  ret i32 %4, !dbg !5862
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_init() #4 section ".init.text" !dbg !5863 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %v = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5864, metadata !DIExpression()), !dbg !5865
  store i32 0, i32* %err, align 4, !dbg !5865
  call void @llvm.dbg.declare(metadata i64* %v, metadata !5866, metadata !DIExpression()), !dbg !5868
  store i64 0, i64* %v, align 8, !dbg !5868
  store i32 0, i32* @xen_store_domain_type, align 4, !dbg !5869
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5870
  %cmp = icmp ne i32 %0, 0, !dbg !5870
  br i1 %cmp, label %if.end, label %if.then, !dbg !5872

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

if.end:                                           ; preds = %entry
  call void @xenbus_ring_ops_init() #11, !dbg !5874
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !5875
  %cmp1 = icmp eq i32 %1, 1, !dbg !5875
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5877

if.then2:                                         ; preds = %if.end
  store i32 1, i32* @xen_store_domain_type, align 4, !dbg !5878
  br label %if.end3, !dbg !5879

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, i32* @xen_domain_type, align 4, !dbg !5880
  %cmp4 = icmp eq i32 %2, 2, !dbg !5880
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5882

if.then5:                                         ; preds = %if.end3
  store i32 2, i32* @xen_store_domain_type, align 4, !dbg !5883
  br label %if.end6, !dbg !5884

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load i32, i32* @xen_domain_type, align 4, !dbg !5885
  %cmp7 = icmp eq i32 %3, 2, !dbg !5885
  br i1 %cmp7, label %land.lhs.true, label %if.end11, !dbg !5887

land.lhs.true:                                    ; preds = %if.end6
  %4 = load i32, i32* @xen_domain_type, align 4, !dbg !5888
  %cmp8 = icmp ne i32 %4, 0, !dbg !5888
  br i1 %cmp8, label %land.lhs.true9, label %if.end11, !dbg !5888

land.lhs.true9:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* @xen_start_flags, align 4, !dbg !5888
  %and = and i32 %5, 2, !dbg !5888
  %tobool = icmp ne i32 %and, 0, !dbg !5888
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !5889

if.then10:                                        ; preds = %land.lhs.true9
  store i32 3, i32* @xen_store_domain_type, align 4, !dbg !5890
  br label %if.end11, !dbg !5891

if.end11:                                         ; preds = %if.then10, %land.lhs.true9, %land.lhs.true, %if.end6
  %6 = load i32, i32* @xen_domain_type, align 4, !dbg !5892
  %cmp12 = icmp eq i32 %6, 1, !dbg !5892
  br i1 %cmp12, label %land.lhs.true13, label %if.end16, !dbg !5894

land.lhs.true13:                                  ; preds = %if.end11
  %7 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !5895
  %store_evtchn = getelementptr inbounds %struct.start_info, %struct.start_info* %7, i32 0, i32 5, !dbg !5896
  %8 = load i32, i32* %store_evtchn, align 8, !dbg !5896
  %tobool14 = icmp ne i32 %8, 0, !dbg !5895
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5897

if.then15:                                        ; preds = %land.lhs.true13
  store i32 3, i32* @xen_store_domain_type, align 4, !dbg !5898
  br label %if.end16, !dbg !5899

if.end16:                                         ; preds = %if.then15, %land.lhs.true13, %if.end11
  %9 = load i32, i32* @xen_domain_type, align 4, !dbg !5900
  %cmp17 = icmp eq i32 %9, 1, !dbg !5900
  br i1 %cmp17, label %land.lhs.true18, label %if.end22, !dbg !5902

land.lhs.true18:                                  ; preds = %if.end16
  %10 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !5903
  %store_evtchn19 = getelementptr inbounds %struct.start_info, %struct.start_info* %10, i32 0, i32 5, !dbg !5904
  %11 = load i32, i32* %store_evtchn19, align 8, !dbg !5904
  %tobool20 = icmp ne i32 %11, 0, !dbg !5903
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5905

if.then21:                                        ; preds = %land.lhs.true18
  store i32 1, i32* @xenstored_ready, align 4, !dbg !5906
  br label %if.end22, !dbg !5907

if.end22:                                         ; preds = %if.then21, %land.lhs.true18, %if.end16
  %12 = load i32, i32* @xen_store_domain_type, align 4, !dbg !5908
  switch i32 %12, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb27
    i32 2, label %sw.bb32
  ], !dbg !5909

sw.bb:                                            ; preds = %if.end22
  %call = call i32 @xenstored_local_init() #12, !dbg !5910
  store i32 %call, i32* %err, align 4, !dbg !5912
  %13 = load i32, i32* %err, align 4, !dbg !5913
  %tobool23 = icmp ne i32 %13, 0, !dbg !5913
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5915

if.then24:                                        ; preds = %sw.bb
  br label %out_error, !dbg !5916

if.end25:                                         ; preds = %sw.bb
  %14 = load i64, i64* @xen_store_gfn, align 8, !dbg !5917
  %call26 = call i64 @gfn_to_pfn(i64 %14) #11, !dbg !5917
  %shl = shl i64 %call26, 12, !dbg !5917
  %15 = load i64, i64* @page_offset_base, align 8, !dbg !5917
  %add = add i64 %shl, %15, !dbg !5917
  %16 = inttoptr i64 %add to i8*, !dbg !5917
  %17 = bitcast i8* %16 to %struct.xenstore_domain_interface*, !dbg !5917
  store %struct.xenstore_domain_interface* %17, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !5918
  br label %sw.epilog, !dbg !5919

sw.bb27:                                          ; preds = %if.end22
  %18 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !5920
  %store_evtchn28 = getelementptr inbounds %struct.start_info, %struct.start_info* %18, i32 0, i32 5, !dbg !5921
  %19 = load i32, i32* %store_evtchn28, align 8, !dbg !5921
  store i32 %19, i32* @xen_store_evtchn, align 4, !dbg !5922
  %20 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !5923
  %store_mfn = getelementptr inbounds %struct.start_info, %struct.start_info* %20, i32 0, i32 4, !dbg !5924
  %21 = load i64, i64* %store_mfn, align 8, !dbg !5924
  store i64 %21, i64* @xen_store_gfn, align 8, !dbg !5925
  %22 = load i64, i64* @xen_store_gfn, align 8, !dbg !5926
  %call29 = call i64 @gfn_to_pfn(i64 %22) #11, !dbg !5926
  %shl30 = shl i64 %call29, 12, !dbg !5926
  %23 = load i64, i64* @page_offset_base, align 8, !dbg !5926
  %add31 = add i64 %shl30, %23, !dbg !5926
  %24 = inttoptr i64 %add31 to i8*, !dbg !5926
  %25 = bitcast i8* %24 to %struct.xenstore_domain_interface*, !dbg !5926
  store %struct.xenstore_domain_interface* %25, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !5927
  br label %sw.epilog, !dbg !5928

sw.bb32:                                          ; preds = %if.end22
  %call33 = call i32 @hvm_get_parameter(i32 2, i64* %v) #11, !dbg !5929
  store i32 %call33, i32* %err, align 4, !dbg !5930
  %26 = load i32, i32* %err, align 4, !dbg !5931
  %tobool34 = icmp ne i32 %26, 0, !dbg !5931
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5933

if.then35:                                        ; preds = %sw.bb32
  br label %out_error, !dbg !5934

if.end36:                                         ; preds = %sw.bb32
  %27 = load i64, i64* %v, align 8, !dbg !5935
  %conv = trunc i64 %27 to i32, !dbg !5936
  store i32 %conv, i32* @xen_store_evtchn, align 4, !dbg !5937
  %call37 = call i32 @hvm_get_parameter(i32 1, i64* %v) #11, !dbg !5938
  store i32 %call37, i32* %err, align 4, !dbg !5939
  %28 = load i32, i32* %err, align 4, !dbg !5940
  %tobool38 = icmp ne i32 %28, 0, !dbg !5940
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5942

if.then39:                                        ; preds = %if.end36
  br label %out_error, !dbg !5943

if.end40:                                         ; preds = %if.end36
  %29 = load i64, i64* %v, align 8, !dbg !5944
  store i64 %29, i64* @xen_store_gfn, align 8, !dbg !5945
  %30 = load i64, i64* @xen_store_gfn, align 8, !dbg !5946
  %shl41 = shl i64 %30, 12, !dbg !5946
  %call42 = call i8* @ioremap(i64 %shl41, i64 4096) #11, !dbg !5946
  %31 = bitcast i8* %call42 to %struct.xenstore_domain_interface*, !dbg !5946
  store %struct.xenstore_domain_interface* %31, %struct.xenstore_domain_interface** @xen_store_interface, align 8, !dbg !5947
  br label %sw.epilog, !dbg !5948

sw.default:                                       ; preds = %if.end22
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !5949
  br label %sw.epilog, !dbg !5950

sw.epilog:                                        ; preds = %sw.default, %if.end40, %sw.bb27, %if.end25
  %call44 = call i32 @xs_init() #11, !dbg !5951
  store i32 %call44, i32* %err, align 4, !dbg !5952
  %32 = load i32, i32* %err, align 4, !dbg !5953
  %tobool45 = icmp ne i32 %32, 0, !dbg !5953
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !5955

if.then46:                                        ; preds = %sw.epilog
  %33 = load i32, i32* %err, align 4, !dbg !5956
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0), i32 %33) #12, !dbg !5956
  br label %out_error, !dbg !5958

if.end48:                                         ; preds = %sw.epilog
  %34 = load i32, i32* @xen_store_domain_type, align 4, !dbg !5959
  %cmp49 = icmp ne i32 %34, 3, !dbg !5961
  br i1 %cmp49, label %land.lhs.true51, label %if.end55, !dbg !5962

land.lhs.true51:                                  ; preds = %if.end48
  %35 = load i32, i32* @xen_store_domain_type, align 4, !dbg !5963
  %cmp52 = icmp ne i32 %35, 0, !dbg !5964
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !5965

if.then54:                                        ; preds = %land.lhs.true51
  call void @xen_resume_notifier_register(%struct.notifier_block* @xenbus_resume_nb) #11, !dbg !5966
  br label %if.end55, !dbg !5966

if.end55:                                         ; preds = %if.then54, %land.lhs.true51, %if.end48
  %call56 = call %struct.proc_dir_entry* @proc_create_mount_point(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0)) #11, !dbg !5967
  br label %out_error, !dbg !5967

out_error:                                        ; preds = %if.end55, %if.then46, %if.then39, %if.then35, %if.then24
  call void @llvm.dbg.label(metadata !5968), !dbg !5969
  %36 = load i32, i32* %err, align 4, !dbg !5970
  store i32 %36, i32* %retval, align 4, !dbg !5971
  br label %return, !dbg !5971

return:                                           ; preds = %out_error, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !5972
  ret i32 %37, !dbg !5972
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_watch_pathfmt(%struct.xenbus_device*, %struct.xenbus_watch*, void (%struct.xenbus_watch*, i8*, i8*)*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @unregister_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @nodename_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5973 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5978, metadata !DIExpression()), !dbg !5979
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5980
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5981
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %1) #11, !dbg !5982
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %call, i32 0, i32 1, !dbg !5983
  %2 = load i8*, i8** %nodename, align 8, !dbg !5983
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %2) #11, !dbg !5984
  %conv = sext i32 %call1 to i64, !dbg !5984
  ret i64 %conv, !dbg !5985
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @devtype_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5986 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5987, metadata !DIExpression()), !dbg !5988
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5991, metadata !DIExpression()), !dbg !5992
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5993
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5994
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %1) #11, !dbg !5995
  %devicetype = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %call, i32 0, i32 0, !dbg !5996
  %2 = load i8*, i8** %devicetype, align 8, !dbg !5996
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %2) #11, !dbg !5997
  %conv = sext i32 %call1 to i64, !dbg !5997
  ret i64 %conv, !dbg !5998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @modalias_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !5999 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6004, metadata !DIExpression()), !dbg !6005
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !6006
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6007
  %bus = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 5, !dbg !6008
  %2 = load %struct.bus_type*, %struct.bus_type** %bus, align 8, !dbg !6008
  %name = getelementptr inbounds %struct.bus_type, %struct.bus_type* %2, i32 0, i32 0, !dbg !6009
  %3 = load i8*, i8** %name, align 8, !dbg !6009
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6010
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %4) #11, !dbg !6011
  %devicetype = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %call, i32 0, i32 0, !dbg !6012
  %5 = load i8*, i8** %devicetype, align 8, !dbg !6012
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* %3, i8* %5) #11, !dbg !6013
  %conv = sext i32 %call1 to i64, !dbg !6013
  ret i64 %conv, !dbg !6014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @state_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6015 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6018, metadata !DIExpression()), !dbg !6019
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !6022
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6023
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %1) #11, !dbg !6024
  %state = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %call, i32 0, i32 6, !dbg !6025
  %2 = load i32, i32* %state, align 8, !dbg !6025
  %call1 = call i8* @xenbus_strstate(i32 %2) #11, !dbg !6026
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %call1) #11, !dbg !6027
  %conv = sext i32 %call2 to i64, !dbg !6027
  ret i64 %conv, !dbg !6028
}

; Function Attrs: noredzone
declare dso_local i8* @xenbus_strstate(i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6029 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6033, metadata !DIExpression()), !dbg !6038
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6040, metadata !DIExpression()), !dbg !6041
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  %0 = load i64, i64* %size.addr, align 8, !dbg !6044
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6046
  br i1 %1, label %if.then, label %if.end447, !dbg !6047

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6048
  %tobool = icmp ne i64 %2, 0, !dbg !6048
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6051

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6052
  br label %return, !dbg !6052

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6053
  %cmp = icmp ult i64 %3, 4096, !dbg !6055
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6056

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6057
  br label %return, !dbg !6057

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub = sub i64 %4, 1, !dbg !6058
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6058
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6058

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub4 = sub i64 %6, 1, !dbg !6058
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6058
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6058

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub6 = sub i64 %8, 1, !dbg !6058
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6058
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6058

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6058

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub9 = sub i64 %9, 1, !dbg !6058
  %and = and i64 %sub9, -9223372036854775808, !dbg !6058
  %tobool10 = icmp ne i64 %and, 0, !dbg !6058
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6058

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6058

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub13 = sub i64 %10, 1, !dbg !6058
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6058
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6058
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6058

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6058

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub18 = sub i64 %11, 1, !dbg !6058
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6058
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6058
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6058

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6058

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub23 = sub i64 %12, 1, !dbg !6058
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6058
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6058
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6058

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6058

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub28 = sub i64 %13, 1, !dbg !6058
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6058
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6058
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6058

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6058

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub33 = sub i64 %14, 1, !dbg !6058
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6058
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6058
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6058

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6058

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub38 = sub i64 %15, 1, !dbg !6058
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6058
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6058
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6058

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6058

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub43 = sub i64 %16, 1, !dbg !6058
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6058
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6058
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6058

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6058

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub48 = sub i64 %17, 1, !dbg !6058
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6058
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6058
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6058

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6058

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub53 = sub i64 %18, 1, !dbg !6058
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6058
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6058
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6058

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6058

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub58 = sub i64 %19, 1, !dbg !6058
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6058
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6058
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6058

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6058

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub63 = sub i64 %20, 1, !dbg !6058
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6058
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6058
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6058

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6058

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub68 = sub i64 %21, 1, !dbg !6058
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6058
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6058
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6058

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6058

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub73 = sub i64 %22, 1, !dbg !6058
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6058
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6058
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6058

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6058

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub78 = sub i64 %23, 1, !dbg !6058
  %and79 = and i64 %sub78, 562949953421312, !dbg !6058
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6058
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6058

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6058

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub83 = sub i64 %24, 1, !dbg !6058
  %and84 = and i64 %sub83, 281474976710656, !dbg !6058
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6058
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6058

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6058

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub88 = sub i64 %25, 1, !dbg !6058
  %and89 = and i64 %sub88, 140737488355328, !dbg !6058
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6058
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6058

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6058

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub93 = sub i64 %26, 1, !dbg !6058
  %and94 = and i64 %sub93, 70368744177664, !dbg !6058
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6058
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6058

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6058

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub98 = sub i64 %27, 1, !dbg !6058
  %and99 = and i64 %sub98, 35184372088832, !dbg !6058
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6058
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6058

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6058

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub103 = sub i64 %28, 1, !dbg !6058
  %and104 = and i64 %sub103, 17592186044416, !dbg !6058
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6058
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6058

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6058

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub108 = sub i64 %29, 1, !dbg !6058
  %and109 = and i64 %sub108, 8796093022208, !dbg !6058
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6058
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6058

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6058

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub113 = sub i64 %30, 1, !dbg !6058
  %and114 = and i64 %sub113, 4398046511104, !dbg !6058
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6058
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6058

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6058

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub118 = sub i64 %31, 1, !dbg !6058
  %and119 = and i64 %sub118, 2199023255552, !dbg !6058
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6058
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6058

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6058

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub123 = sub i64 %32, 1, !dbg !6058
  %and124 = and i64 %sub123, 1099511627776, !dbg !6058
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6058
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6058

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6058

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub128 = sub i64 %33, 1, !dbg !6058
  %and129 = and i64 %sub128, 549755813888, !dbg !6058
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6058
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6058

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6058

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub133 = sub i64 %34, 1, !dbg !6058
  %and134 = and i64 %sub133, 274877906944, !dbg !6058
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6058
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6058

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6058

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub138 = sub i64 %35, 1, !dbg !6058
  %and139 = and i64 %sub138, 137438953472, !dbg !6058
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6058
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6058

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6058

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub143 = sub i64 %36, 1, !dbg !6058
  %and144 = and i64 %sub143, 68719476736, !dbg !6058
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6058
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6058

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6058

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub148 = sub i64 %37, 1, !dbg !6058
  %and149 = and i64 %sub148, 34359738368, !dbg !6058
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6058
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6058

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6058

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub153 = sub i64 %38, 1, !dbg !6058
  %and154 = and i64 %sub153, 17179869184, !dbg !6058
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6058
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6058

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6058

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub158 = sub i64 %39, 1, !dbg !6058
  %and159 = and i64 %sub158, 8589934592, !dbg !6058
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6058
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6058

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6058

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub163 = sub i64 %40, 1, !dbg !6058
  %and164 = and i64 %sub163, 4294967296, !dbg !6058
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6058
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6058

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6058

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub168 = sub i64 %41, 1, !dbg !6058
  %and169 = and i64 %sub168, 2147483648, !dbg !6058
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6058
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6058

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6058

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub173 = sub i64 %42, 1, !dbg !6058
  %and174 = and i64 %sub173, 1073741824, !dbg !6058
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6058
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6058

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6058

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub178 = sub i64 %43, 1, !dbg !6058
  %and179 = and i64 %sub178, 536870912, !dbg !6058
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6058
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6058

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6058

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub183 = sub i64 %44, 1, !dbg !6058
  %and184 = and i64 %sub183, 268435456, !dbg !6058
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6058
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6058

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6058

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub188 = sub i64 %45, 1, !dbg !6058
  %and189 = and i64 %sub188, 134217728, !dbg !6058
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6058
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6058

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6058

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub193 = sub i64 %46, 1, !dbg !6058
  %and194 = and i64 %sub193, 67108864, !dbg !6058
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6058
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6058

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6058

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub198 = sub i64 %47, 1, !dbg !6058
  %and199 = and i64 %sub198, 33554432, !dbg !6058
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6058
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6058

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6058

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub203 = sub i64 %48, 1, !dbg !6058
  %and204 = and i64 %sub203, 16777216, !dbg !6058
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6058
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6058

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6058

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub208 = sub i64 %49, 1, !dbg !6058
  %and209 = and i64 %sub208, 8388608, !dbg !6058
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6058
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6058

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6058

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub213 = sub i64 %50, 1, !dbg !6058
  %and214 = and i64 %sub213, 4194304, !dbg !6058
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6058
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6058

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6058

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub218 = sub i64 %51, 1, !dbg !6058
  %and219 = and i64 %sub218, 2097152, !dbg !6058
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6058
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6058

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6058

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub223 = sub i64 %52, 1, !dbg !6058
  %and224 = and i64 %sub223, 1048576, !dbg !6058
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6058
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6058

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6058

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub228 = sub i64 %53, 1, !dbg !6058
  %and229 = and i64 %sub228, 524288, !dbg !6058
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6058
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6058

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6058

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub233 = sub i64 %54, 1, !dbg !6058
  %and234 = and i64 %sub233, 262144, !dbg !6058
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6058
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6058

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6058

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub238 = sub i64 %55, 1, !dbg !6058
  %and239 = and i64 %sub238, 131072, !dbg !6058
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6058
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6058

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6058

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub243 = sub i64 %56, 1, !dbg !6058
  %and244 = and i64 %sub243, 65536, !dbg !6058
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6058
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6058

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6058

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub248 = sub i64 %57, 1, !dbg !6058
  %and249 = and i64 %sub248, 32768, !dbg !6058
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6058
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6058

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6058

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub253 = sub i64 %58, 1, !dbg !6058
  %and254 = and i64 %sub253, 16384, !dbg !6058
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6058
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6058

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6058

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub258 = sub i64 %59, 1, !dbg !6058
  %and259 = and i64 %sub258, 8192, !dbg !6058
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6058
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6058

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6058

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub263 = sub i64 %60, 1, !dbg !6058
  %and264 = and i64 %sub263, 4096, !dbg !6058
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6058
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6058

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6058

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub268 = sub i64 %61, 1, !dbg !6058
  %and269 = and i64 %sub268, 2048, !dbg !6058
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6058
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6058

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6058

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub273 = sub i64 %62, 1, !dbg !6058
  %and274 = and i64 %sub273, 1024, !dbg !6058
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6058
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6058

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6058

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub278 = sub i64 %63, 1, !dbg !6058
  %and279 = and i64 %sub278, 512, !dbg !6058
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6058
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6058

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6058

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub283 = sub i64 %64, 1, !dbg !6058
  %and284 = and i64 %sub283, 256, !dbg !6058
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6058
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6058

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6058

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub288 = sub i64 %65, 1, !dbg !6058
  %and289 = and i64 %sub288, 128, !dbg !6058
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6058
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6058

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6058

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub293 = sub i64 %66, 1, !dbg !6058
  %and294 = and i64 %sub293, 64, !dbg !6058
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6058
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6058

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6058

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub298 = sub i64 %67, 1, !dbg !6058
  %and299 = and i64 %sub298, 32, !dbg !6058
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6058
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6058

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6058

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub303 = sub i64 %68, 1, !dbg !6058
  %and304 = and i64 %sub303, 16, !dbg !6058
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6058
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6058

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6058

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub308 = sub i64 %69, 1, !dbg !6058
  %and309 = and i64 %sub308, 8, !dbg !6058
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6058
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6058

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6058

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub313 = sub i64 %70, 1, !dbg !6058
  %and314 = and i64 %sub313, 4, !dbg !6058
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6058
  %71 = zext i1 %tobool315 to i64, !dbg !6058
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6058
  br label %cond.end, !dbg !6058

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6058
  br label %cond.end317, !dbg !6058

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6058
  br label %cond.end319, !dbg !6058

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6058
  br label %cond.end321, !dbg !6058

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6058
  br label %cond.end323, !dbg !6058

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6058
  br label %cond.end325, !dbg !6058

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6058
  br label %cond.end327, !dbg !6058

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6058
  br label %cond.end329, !dbg !6058

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6058
  br label %cond.end331, !dbg !6058

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6058
  br label %cond.end333, !dbg !6058

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6058
  br label %cond.end335, !dbg !6058

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6058
  br label %cond.end337, !dbg !6058

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6058
  br label %cond.end339, !dbg !6058

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6058
  br label %cond.end341, !dbg !6058

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6058
  br label %cond.end343, !dbg !6058

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6058
  br label %cond.end345, !dbg !6058

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6058
  br label %cond.end347, !dbg !6058

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6058
  br label %cond.end349, !dbg !6058

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6058
  br label %cond.end351, !dbg !6058

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6058
  br label %cond.end353, !dbg !6058

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6058
  br label %cond.end355, !dbg !6058

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6058
  br label %cond.end357, !dbg !6058

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6058
  br label %cond.end359, !dbg !6058

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6058
  br label %cond.end361, !dbg !6058

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6058
  br label %cond.end363, !dbg !6058

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6058
  br label %cond.end365, !dbg !6058

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6058
  br label %cond.end367, !dbg !6058

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6058
  br label %cond.end369, !dbg !6058

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6058
  br label %cond.end371, !dbg !6058

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6058
  br label %cond.end373, !dbg !6058

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6058
  br label %cond.end375, !dbg !6058

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6058
  br label %cond.end377, !dbg !6058

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6058
  br label %cond.end379, !dbg !6058

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6058
  br label %cond.end381, !dbg !6058

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6058
  br label %cond.end383, !dbg !6058

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6058
  br label %cond.end385, !dbg !6058

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6058
  br label %cond.end387, !dbg !6058

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6058
  br label %cond.end389, !dbg !6058

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6058
  br label %cond.end391, !dbg !6058

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6058
  br label %cond.end393, !dbg !6058

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6058
  br label %cond.end395, !dbg !6058

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6058
  br label %cond.end397, !dbg !6058

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6058
  br label %cond.end399, !dbg !6058

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6058
  br label %cond.end401, !dbg !6058

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6058
  br label %cond.end403, !dbg !6058

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6058
  br label %cond.end405, !dbg !6058

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6058
  br label %cond.end407, !dbg !6058

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6058
  br label %cond.end409, !dbg !6058

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6058
  br label %cond.end411, !dbg !6058

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6058
  br label %cond.end413, !dbg !6058

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6058
  br label %cond.end415, !dbg !6058

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6058
  br label %cond.end417, !dbg !6058

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6058
  br label %cond.end419, !dbg !6058

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6058
  br label %cond.end421, !dbg !6058

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6058
  br label %cond.end423, !dbg !6058

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6058
  br label %cond.end425, !dbg !6058

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6058
  br label %cond.end427, !dbg !6058

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6058
  br label %cond.end429, !dbg !6058

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6058
  br label %cond.end431, !dbg !6058

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6058
  br label %cond.end433, !dbg !6058

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6058
  br label %cond.end435, !dbg !6058

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6058
  br label %cond.end437, !dbg !6058

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6058
  br label %cond.end440, !dbg !6058

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6058

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6058
  br label %cond.end444, !dbg !6058

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6058
  %sub443 = sub i64 %72, 1, !dbg !6058
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6058
  br label %cond.end444, !dbg !6058

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6058
  %sub446 = sub i32 %cond445, 12, !dbg !6059
  %add = add i32 %sub446, 1, !dbg !6060
  store i32 %add, i32* %retval, align 4, !dbg !6061
  br label %return, !dbg !6061

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6062
  %dec = add i64 %73, -1, !dbg !6062
  store i64 %dec, i64* %size.addr, align 8, !dbg !6062
  %74 = load i64, i64* %size.addr, align 8, !dbg !6063
  %shr = lshr i64 %74, 12, !dbg !6063
  store i64 %shr, i64* %size.addr, align 8, !dbg !6063
  %75 = load i64, i64* %size.addr, align 8, !dbg !6064
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6041
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6065
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6066
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #9, !dbg !6065, !srcloc !6067
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6065
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6068
  %add.i = add i32 %79, 1, !dbg !6069
  store i32 %add.i, i32* %retval, align 4, !dbg !6070
  br label %return, !dbg !6070

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6071
  ret i32 %80, !dbg !6071
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6072 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6033, metadata !DIExpression()), !dbg !6076
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6040, metadata !DIExpression()), !dbg !6078
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6079, metadata !DIExpression()), !dbg !6080
  %0 = load i64, i64* %n.addr, align 8, !dbg !6081
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6078
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6082
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6083
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #9, !dbg !6082, !srcloc !6067
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6082
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6084
  %add.i = add i32 %4, 1, !dbg !6085
  %sub = sub i32 %add.i, 1, !dbg !6086
  ret i32 %sub, !dbg !6087
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6088 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6092, metadata !DIExpression()), !dbg !6093
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6094, metadata !DIExpression()), !dbg !6095
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6096, metadata !DIExpression()), !dbg !6097
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6100
  ret i8* %0, !dbg !6101
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i32 @bus_for_each_dev(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cleanup_dev(%struct.device* %dev, i8* %data) #0 !dbg !6102 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %xendev = alloca %struct.xenbus_device*, align 8
  %info = alloca %struct.xb_find_info*, align 8
  %len = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6105, metadata !DIExpression()), !dbg !6106
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6107, metadata !DIExpression()), !dbg !6108
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xendev, metadata !6109, metadata !DIExpression()), !dbg !6110
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6111
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #11, !dbg !6112
  store %struct.xenbus_device* %call, %struct.xenbus_device** %xendev, align 8, !dbg !6110
  call void @llvm.dbg.declare(metadata %struct.xb_find_info** %info, metadata !6113, metadata !DIExpression()), !dbg !6115
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6116
  %2 = bitcast i8* %1 to %struct.xb_find_info*, !dbg !6116
  store %struct.xb_find_info* %2, %struct.xb_find_info** %info, align 8, !dbg !6115
  call void @llvm.dbg.declare(metadata i32* %len, metadata !6117, metadata !DIExpression()), !dbg !6118
  %3 = load %struct.xb_find_info*, %struct.xb_find_info** %info, align 8, !dbg !6119
  %nodename = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %3, i32 0, i32 1, !dbg !6120
  %4 = load i8*, i8** %nodename, align 8, !dbg !6120
  %call1 = call i64 @strlen(i8* %4) #11, !dbg !6121
  %conv = trunc i64 %call1 to i32, !dbg !6121
  store i32 %conv, i32* %len, align 4, !dbg !6118
  store i32 0, i32* %tmp, align 4, !dbg !6122
  %5 = load i32, i32* %tmp, align 4, !dbg !6125
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !6126
  %nodename2 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 1, !dbg !6128
  %7 = load i8*, i8** %nodename2, align 8, !dbg !6128
  %8 = load %struct.xb_find_info*, %struct.xb_find_info** %info, align 8, !dbg !6129
  %nodename3 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %8, i32 0, i32 1, !dbg !6130
  %9 = load i8*, i8** %nodename3, align 8, !dbg !6130
  %10 = load i32, i32* %len, align 4, !dbg !6131
  %conv4 = sext i32 %10 to i64, !dbg !6131
  %call5 = call i32 @strncmp(i8* %7, i8* %9, i64 %conv4) #11, !dbg !6132
  %tobool = icmp ne i32 %call5, 0, !dbg !6132
  br i1 %tobool, label %if.then, label %if.end, !dbg !6133

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6134
  br label %return, !dbg !6134

if.end:                                           ; preds = %entry
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !6135
  %nodename6 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 1, !dbg !6137
  %12 = load i8*, i8** %nodename6, align 8, !dbg !6137
  %call7 = call i64 @strlen(i8* %12) #11, !dbg !6138
  %13 = load i32, i32* %len, align 4, !dbg !6139
  %conv8 = sext i32 %13 to i64, !dbg !6139
  %cmp = icmp ugt i64 %call7, %conv8, !dbg !6140
  br i1 %cmp, label %land.lhs.true, label %if.end15, !dbg !6141

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !6142
  %nodename10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %14, i32 0, i32 1, !dbg !6143
  %15 = load i8*, i8** %nodename10, align 8, !dbg !6143
  %16 = load i32, i32* %len, align 4, !dbg !6144
  %idxprom = sext i32 %16 to i64, !dbg !6142
  %arrayidx = getelementptr i8, i8* %15, i64 %idxprom, !dbg !6142
  %17 = load i8, i8* %arrayidx, align 1, !dbg !6142
  %conv11 = sext i8 %17 to i32, !dbg !6142
  %cmp12 = icmp ne i32 %conv11, 47, !dbg !6145
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6146

if.then14:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !6147
  br label %return, !dbg !6147

if.end15:                                         ; preds = %land.lhs.true, %if.end
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !6148
  %19 = load %struct.xb_find_info*, %struct.xb_find_info** %info, align 8, !dbg !6149
  %dev16 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %19, i32 0, i32 0, !dbg !6150
  store %struct.xenbus_device* %18, %struct.xenbus_device** %dev16, align 8, !dbg !6151
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6152
  %call17 = call %struct.device* @get_device(%struct.device* %20) #11, !dbg !6153
  store i32 1, i32* %retval, align 4, !dbg !6154
  br label %return, !dbg !6154

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !6155
  ret i32 %21, !dbg !6155
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cmp_dev(%struct.device* %dev, i8* %data) #0 !dbg !6156 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %xendev = alloca %struct.xenbus_device*, align 8
  %info = alloca %struct.xb_find_info*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6157, metadata !DIExpression()), !dbg !6158
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6159, metadata !DIExpression()), !dbg !6160
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xendev, metadata !6161, metadata !DIExpression()), !dbg !6162
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6163
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #11, !dbg !6164
  store %struct.xenbus_device* %call, %struct.xenbus_device** %xendev, align 8, !dbg !6162
  call void @llvm.dbg.declare(metadata %struct.xb_find_info** %info, metadata !6165, metadata !DIExpression()), !dbg !6166
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6167
  %2 = bitcast i8* %1 to %struct.xb_find_info*, !dbg !6167
  store %struct.xb_find_info* %2, %struct.xb_find_info** %info, align 8, !dbg !6166
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !6168
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 1, !dbg !6170
  %4 = load i8*, i8** %nodename, align 8, !dbg !6170
  %5 = load %struct.xb_find_info*, %struct.xb_find_info** %info, align 8, !dbg !6171
  %nodename1 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %5, i32 0, i32 1, !dbg !6172
  %6 = load i8*, i8** %nodename1, align 8, !dbg !6172
  %call2 = call i32 @strcmp(i8* %4, i8* %6) #11, !dbg !6173
  %tobool = icmp ne i32 %call2, 0, !dbg !6173
  br i1 %tobool, label %if.end, label %if.then, !dbg !6174

if.then:                                          ; preds = %entry
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !6175
  %8 = load %struct.xb_find_info*, %struct.xb_find_info** %info, align 8, !dbg !6177
  %dev3 = getelementptr inbounds %struct.xb_find_info, %struct.xb_find_info* %8, i32 0, i32 0, !dbg !6178
  store %struct.xenbus_device* %7, %struct.xenbus_device** %dev3, align 8, !dbg !6179
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6180
  %call4 = call %struct.device* @get_device(%struct.device* %9) #11, !dbg !6181
  store i32 1, i32* %retval, align 4, !dbg !6182
  br label %return, !dbg !6182

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6183
  br label %return, !dbg !6183

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6184
  ret i32 %10, !dbg !6184
}

; Function Attrs: noredzone
declare dso_local void @xenbus_ring_ops_init() #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xenstored_local_init() #4 section ".init.text" !dbg !6185 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %page = alloca i64, align 8
  %alloc_unbound = alloca %struct.evtchn_alloc_unbound, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6186, metadata !DIExpression()), !dbg !6187
  store i32 -12, i32* %err, align 4, !dbg !6187
  call void @llvm.dbg.declare(metadata i64* %page, metadata !6188, metadata !DIExpression()), !dbg !6189
  store i64 0, i64* %page, align 8, !dbg !6189
  call void @llvm.dbg.declare(metadata %struct.evtchn_alloc_unbound* %alloc_unbound, metadata !6190, metadata !DIExpression()), !dbg !6201
  %call = call i64 @get_zeroed_page(i32 3264) #11, !dbg !6202
  store i64 %call, i64* %page, align 8, !dbg !6203
  %0 = load i64, i64* %page, align 8, !dbg !6204
  %tobool = icmp ne i64 %0, 0, !dbg !6204
  br i1 %tobool, label %if.end, label %if.then, !dbg !6206

if.then:                                          ; preds = %entry
  br label %out_err, !dbg !6207

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %page, align 8, !dbg !6208
  %2 = inttoptr i64 %1 to i8*, !dbg !6208
  %3 = ptrtoint i8* %2 to i64, !dbg !6208
  %call1 = call i64 @__phys_addr_nodebug(i64 %3) #11, !dbg !6208
  %shr = lshr i64 %call1, 12, !dbg !6208
  %call2 = call i64 @pfn_to_gfn(i64 %shr) #11, !dbg !6208
  store i64 %call2, i64* @xen_store_gfn, align 8, !dbg !6209
  %dom = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %alloc_unbound, i32 0, i32 0, !dbg !6210
  store i16 32752, i16* %dom, align 4, !dbg !6211
  %remote_dom = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %alloc_unbound, i32 0, i32 1, !dbg !6212
  store i16 32752, i16* %remote_dom, align 2, !dbg !6213
  %4 = bitcast %struct.evtchn_alloc_unbound* %alloc_unbound to i8*, !dbg !6214
  %call3 = call i32 @HYPERVISOR_event_channel_op(i32 6, i8* %4) #11, !dbg !6215
  store i32 %call3, i32* %err, align 4, !dbg !6216
  %5 = load i32, i32* %err, align 4, !dbg !6217
  %cmp = icmp eq i32 %5, -38, !dbg !6219
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6220

if.then4:                                         ; preds = %if.end
  br label %out_err, !dbg !6221

if.end5:                                          ; preds = %if.end
  br label %do.body, !dbg !6222

do.body:                                          ; preds = %if.end5
  %6 = load i32, i32* %err, align 4, !dbg !6223
  %tobool6 = icmp ne i32 %6, 0, !dbg !6223
  %lnot = xor i1 %tobool6, true, !dbg !6223
  %lnot7 = xor i1 %lnot, true, !dbg !6223
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6223
  %conv = sext i32 %lnot.ext to i64, !dbg !6223
  %tobool8 = icmp ne i64 %conv, 0, !dbg !6223
  br i1 %tobool8, label %if.then9, label %if.end17, !dbg !6226

if.then9:                                         ; preds = %do.body
  br label %do.body10, !dbg !6223

do.body10:                                        ; preds = %if.then9
  br label %do.body11, !dbg !6227

do.body11:                                        ; preds = %do.body10
  br label %do.end, !dbg !6229

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !6227

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i32 733, i32 0, i64 12) #10, !dbg !6231, !srcloc !6233
  br label %do.end13, !dbg !6231

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !6227

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 245) #10, !dbg !6234, !srcloc !6237
  unreachable, !dbg !6238

do.end15:                                         ; No predecessors!
  br label %do.end16, !dbg !6227

do.end16:                                         ; preds = %do.end15
  br label %if.end17, !dbg !6227

if.end17:                                         ; preds = %do.end16, %do.body
  br label %do.end18, !dbg !6226

do.end18:                                         ; preds = %if.end17
  %port = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %alloc_unbound, i32 0, i32 2, !dbg !6239
  %7 = load i32, i32* %port, align 4, !dbg !6239
  store i32 %7, i32* @xen_store_evtchn, align 4, !dbg !6240
  store i32 0, i32* %retval, align 4, !dbg !6241
  br label %return, !dbg !6241

out_err:                                          ; preds = %if.then4, %if.then
  call void @llvm.dbg.label(metadata !6242), !dbg !6243
  %8 = load i64, i64* %page, align 8, !dbg !6244
  %cmp19 = icmp ne i64 %8, 0, !dbg !6246
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !6247

if.then21:                                        ; preds = %out_err
  %9 = load i64, i64* %page, align 8, !dbg !6248
  call void @free_pages(i64 %9, i32 0) #11, !dbg !6248
  br label %if.end22, !dbg !6248

if.end22:                                         ; preds = %if.then21, %out_err
  %10 = load i32, i32* %err, align 4, !dbg !6249
  store i32 %10, i32* %retval, align 4, !dbg !6250
  br label %return, !dbg !6250

return:                                           ; preds = %if.end22, %do.end18
  %11 = load i32, i32* %retval, align 4, !dbg !6251
  ret i32 %11, !dbg !6251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gfn_to_pfn(i64 %gfn) #0 !dbg !6252 {
entry:
  %retval = alloca i64, align 8
  %gfn.addr = alloca i64, align 8
  store i64 %gfn, i64* %gfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %gfn.addr, metadata !6256, metadata !DIExpression()), !dbg !6257
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6258
  %tobool = icmp ne i32 %call, 0, !dbg !6258
  br i1 %tobool, label %if.then, label %if.else, !dbg !6260

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %gfn.addr, align 8, !dbg !6261
  store i64 %0, i64* %retval, align 8, !dbg !6262
  br label %return, !dbg !6262

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %gfn.addr, align 8, !dbg !6263
  %call1 = call i64 @mfn_to_pfn(i64 %1) #11, !dbg !6264
  store i64 %call1, i64* %retval, align 8, !dbg !6265
  br label %return, !dbg !6265

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !6266
  ret i64 %2, !dbg !6266
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hvm_get_parameter(i32 %idx, i64* %value) #0 !dbg !6267 {
entry:
  %retval = alloca i32, align 4
  %idx.addr = alloca i32, align 4
  %value.addr = alloca i64*, align 8
  %xhv = alloca %struct.xen_hvm_param, align 8
  %r = alloca i32, align 4
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !6271, metadata !DIExpression()), !dbg !6272
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !6273, metadata !DIExpression()), !dbg !6274
  call void @llvm.dbg.declare(metadata %struct.xen_hvm_param* %xhv, metadata !6275, metadata !DIExpression()), !dbg !6282
  call void @llvm.dbg.declare(metadata i32* %r, metadata !6283, metadata !DIExpression()), !dbg !6284
  %domid = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %xhv, i32 0, i32 0, !dbg !6285
  store i16 32752, i16* %domid, align 8, !dbg !6286
  %0 = load i32, i32* %idx.addr, align 4, !dbg !6287
  %index = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %xhv, i32 0, i32 1, !dbg !6288
  store i32 %0, i32* %index, align 4, !dbg !6289
  %1 = bitcast %struct.xen_hvm_param* %xhv to i8*, !dbg !6290
  %call = call i64 @HYPERVISOR_hvm_op(i32 1, i8* %1) #11, !dbg !6291
  %conv = trunc i64 %call to i32, !dbg !6291
  store i32 %conv, i32* %r, align 4, !dbg !6292
  %2 = load i32, i32* %r, align 4, !dbg !6293
  %cmp = icmp slt i32 %2, 0, !dbg !6295
  br i1 %cmp, label %if.then, label %if.end, !dbg !6296

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %idx.addr, align 4, !dbg !6297
  %call2 = call i8* @param_name(i32 %3) #11, !dbg !6297
  %4 = load i32, i32* %idx.addr, align 4, !dbg !6297
  %5 = load i32, i32* %r, align 4, !dbg !6297
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0), i8* %call2, i32 %4, i32 %5) #12, !dbg !6297
  %6 = load i32, i32* %r, align 4, !dbg !6299
  store i32 %6, i32* %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

if.end:                                           ; preds = %entry
  %value4 = getelementptr inbounds %struct.xen_hvm_param, %struct.xen_hvm_param* %xhv, i32 0, i32 2, !dbg !6301
  %7 = load i64, i64* %value4, align 8, !dbg !6301
  %8 = load i64*, i64** %value.addr, align 8, !dbg !6302
  store i64 %7, i64* %8, align 8, !dbg !6303
  %9 = load i32, i32* %r, align 4, !dbg !6304
  store i32 %9, i32* %retval, align 4, !dbg !6305
  br label %return, !dbg !6305

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6306
  ret i32 %10, !dbg !6306
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @xs_init() #2

; Function Attrs: noredzone
declare dso_local void @xen_resume_notifier_register(%struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local %struct.proc_dir_entry* @proc_create_mount_point(i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @get_zeroed_page(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #0 !dbg !6307 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6308, metadata !DIExpression()), !dbg !6309
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6310
  %tobool = icmp ne i32 %call, 0, !dbg !6310
  br i1 %tobool, label %if.then, label %if.else, !dbg !6312

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6313
  store i64 %0, i64* %retval, align 8, !dbg !6314
  br label %return, !dbg !6314

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6315
  %call1 = call i64 @pfn_to_mfn(i64 %1) #11, !dbg !6316
  store i64 %call1, i64* %retval, align 8, !dbg !6317
  br label %return, !dbg !6317

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !6318
  ret i64 %2, !dbg !6318
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !6319 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !6321, metadata !DIExpression()), !dbg !6322
  call void @llvm.dbg.declare(metadata i64* %y, metadata !6323, metadata !DIExpression()), !dbg !6324
  %0 = load i64, i64* %x.addr, align 8, !dbg !6325
  %sub = sub i64 %0, -2147483648, !dbg !6326
  store i64 %sub, i64* %y, align 8, !dbg !6324
  %1 = load i64, i64* %y, align 8, !dbg !6327
  %2 = load i64, i64* %x.addr, align 8, !dbg !6328
  %3 = load i64, i64* %y, align 8, !dbg !6329
  %cmp = icmp ugt i64 %2, %3, !dbg !6330
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6331

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !6332
  br label %cond.end, !dbg !6331

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !6333
  %sub1 = sub i64 -2147483648, %5, !dbg !6334
  br label %cond.end, !dbg !6331

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !6331
  %add = add i64 %1, %cond, !dbg !6335
  store i64 %add, i64* %x.addr, align 8, !dbg !6336
  %6 = load i64, i64* %x.addr, align 8, !dbg !6337
  ret i64 %6, !dbg !6338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_event_channel_op(i32 %cmd, i8* %arg) #0 !dbg !6339 {
entry:
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !6343, metadata !DIExpression()), !dbg !6344
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !6347, metadata !DIExpression()), !dbg !6349
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !6350, metadata !DIExpression()), !dbg !6349
  %0 = load i64, i64* %__arg1, align 8, !dbg !6349
  store i64 %0, i64* %__arg1, align 8, !dbg !6349
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !6351, metadata !DIExpression()), !dbg !6349
  %1 = load i64, i64* %__arg2, align 8, !dbg !6349
  store i64 %1, i64* %__arg2, align 8, !dbg !6349
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !6352, metadata !DIExpression()), !dbg !6349
  %2 = load i64, i64* %__arg3, align 8, !dbg !6349
  store i64 %2, i64* %__arg3, align 8, !dbg !6349
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !6353, metadata !DIExpression()), !dbg !6349
  %3 = load i64, i64* %__arg4, align 8, !dbg !6349
  store i64 %3, i64* %__arg4, align 8, !dbg !6349
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !6354, metadata !DIExpression()), !dbg !6349
  %4 = load i64, i64* %__arg5, align 8, !dbg !6349
  store i64 %4, i64* %__arg5, align 8, !dbg !6349
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !6349
  %conv = sext i32 %5 to i64, !dbg !6349
  store i64 %conv, i64* %__arg1, align 8, !dbg !6349
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !6349
  %7 = ptrtoint i8* %6 to i64, !dbg !6349
  store i64 %7, i64* %__arg2, align 8, !dbg !6349
  %8 = call i64 @llvm.read_register.i64(metadata !4443), !dbg !6349
  %9 = load i64, i64* %__arg1, align 8, !dbg !6349
  %10 = load i64, i64* %__arg2, align 8, !dbg !6349
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1024, i64 %8, i64 %9, i64 %10) #10, !dbg !6349, !srcloc !6355
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !6349
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !6349
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !6349
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !6349
  store i64 %asmresult, i64* %__res, align 8, !dbg !6349
  call void @llvm.write_register.i64(metadata !4443, i64 %asmresult1), !dbg !6349
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !6349
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !6349
  %12 = load i64, i64* %__res, align 8, !dbg !6349
  %conv4 = trunc i64 %12 to i32, !dbg !6349
  store i32 %conv4, i32* %tmp, align 4, !dbg !6349
  %13 = load i32, i32* %tmp, align 4, !dbg !6349
  ret i32 %13, !dbg !6356
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #0 !dbg !6357 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6359, metadata !DIExpression()), !dbg !6360
  %0 = load i32, i32* %flag.addr, align 4, !dbg !6361
  %idxprom = sext i32 %0 to i64, !dbg !6362
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !6362
  %1 = load i8, i8* %arrayidx, align 1, !dbg !6362
  %conv = zext i8 %1 to i32, !dbg !6362
  ret i32 %conv, !dbg !6363
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #0 !dbg !6364 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6365, metadata !DIExpression()), !dbg !6366
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6367, metadata !DIExpression()), !dbg !6368
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6369
  %tobool = icmp ne i32 %call, 0, !dbg !6369
  br i1 %tobool, label %if.then, label %if.end, !dbg !6371

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6372
  store i64 %0, i64* %retval, align 8, !dbg !6373
  br label %return, !dbg !6373

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6374
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #11, !dbg !6375
  store i64 %call1, i64* %mfn, align 8, !dbg !6376
  %2 = load i64, i64* %mfn, align 8, !dbg !6377
  %cmp = icmp ne i64 %2, -1, !dbg !6379
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6380

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !6381
  %and = and i64 %3, 4611686018427387903, !dbg !6381
  store i64 %and, i64* %mfn, align 8, !dbg !6381
  br label %if.end3, !dbg !6382

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !6383
  store i64 %4, i64* %retval, align 8, !dbg !6384
  br label %return, !dbg !6384

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !6385
  ret i64 %5, !dbg !6385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #0 !dbg !6386 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6387, metadata !DIExpression()), !dbg !6388
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6389, metadata !DIExpression()), !dbg !6390
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6391
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !6393
  %cmp = icmp ult i64 %0, %1, !dbg !6394
  br i1 %cmp, label %if.then, label %if.else, !dbg !6395

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !6396
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !6397
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !6396
  %4 = load i64, i64* %arrayidx, align 8, !dbg !6396
  store i64 %4, i64* %mfn, align 8, !dbg !6398
  br label %if.end, !dbg !6399

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !6400
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !6400
  %cmp1 = icmp ult i64 %5, %6, !dbg !6400
  %lnot = xor i1 %cmp1, true, !dbg !6400
  %lnot2 = xor i1 %lnot, true, !dbg !6400
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6400
  %conv = sext i32 %lnot.ext to i64, !dbg !6400
  %tobool = icmp ne i64 %conv, 0, !dbg !6400
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !6402

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !6403
  %call = call i64 @get_phys_to_machine(i64 %7) #11, !dbg !6404
  store i64 %call, i64* %retval, align 8, !dbg !6405
  br label %return, !dbg !6405

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !6406
  %or = or i64 %8, 4611686018427387904, !dbg !6406
  store i64 %or, i64* %retval, align 8, !dbg !6407
  br label %return, !dbg !6407

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !6408
  %cmp5 = icmp eq i64 %9, -1, !dbg !6408
  %lnot7 = xor i1 %cmp5, true, !dbg !6408
  %lnot9 = xor i1 %lnot7, true, !dbg !6408
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6408
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6408
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !6408
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6410

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !6411
  %call14 = call i64 @get_phys_to_machine(i64 %10) #11, !dbg !6412
  store i64 %call14, i64* %retval, align 8, !dbg !6413
  br label %return, !dbg !6413

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !6414
  store i64 %11, i64* %retval, align 8, !dbg !6415
  br label %return, !dbg !6415

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !6416
  ret i64 %12, !dbg !6416
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #2

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn(i64 %mfn) #0 !dbg !6417 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !6418, metadata !DIExpression()), !dbg !6419
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !6420, metadata !DIExpression()), !dbg !6421
  %call = call i32 @xen_feature(i32 2) #11, !dbg !6422
  %tobool = icmp ne i32 %call, 0, !dbg !6422
  br i1 %tobool, label %if.then, label %if.end, !dbg !6424

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !6425
  store i64 %0, i64* %retval, align 8, !dbg !6426
  br label %return, !dbg !6426

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %mfn.addr, align 8, !dbg !6427
  %call1 = call i64 @mfn_to_pfn_no_overrides(i64 %1) #11, !dbg !6428
  store i64 %call1, i64* %pfn, align 8, !dbg !6429
  %2 = load i64, i64* %pfn, align 8, !dbg !6430
  %call2 = call i64 @__pfn_to_mfn(i64 %2) #11, !dbg !6432
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !6433
  %cmp = icmp ne i64 %call2, %3, !dbg !6434
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6435

if.then3:                                         ; preds = %if.end
  store i64 -1, i64* %pfn, align 8, !dbg !6436
  br label %if.end4, !dbg !6437

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i64, i64* %pfn, align 8, !dbg !6438
  %cmp5 = icmp eq i64 %4, -1, !dbg !6440
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !6441

land.lhs.true:                                    ; preds = %if.end4
  %5 = load i64, i64* %mfn.addr, align 8, !dbg !6442
  %call6 = call i64 @__pfn_to_mfn(i64 %5) #11, !dbg !6443
  %6 = load i64, i64* %mfn.addr, align 8, !dbg !6444
  %or = or i64 %6, 4611686018427387904, !dbg !6444
  %cmp7 = icmp eq i64 %call6, %or, !dbg !6445
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !6446

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i64, i64* %mfn.addr, align 8, !dbg !6447
  store i64 %7, i64* %pfn, align 8, !dbg !6448
  br label %if.end9, !dbg !6449

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end4
  %8 = load i64, i64* %pfn, align 8, !dbg !6450
  store i64 %8, i64* %retval, align 8, !dbg !6451
  br label %return, !dbg !6451

return:                                           ; preds = %if.end9, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !6452
  ret i64 %9, !dbg !6452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mfn_to_pfn_no_overrides(i64 %mfn) #0 !dbg !6453 {
entry:
  %retval = alloca i64, align 8
  %mfn.addr = alloca i64, align 8
  %pfn = alloca i64, align 8
  %ret = alloca i32, align 4
  store i64 %mfn, i64* %mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mfn.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  call void @llvm.dbg.declare(metadata i64* %pfn, metadata !6456, metadata !DIExpression()), !dbg !6457
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6458, metadata !DIExpression()), !dbg !6459
  %0 = load i64, i64* %mfn.addr, align 8, !dbg !6460
  %1 = load i64, i64* @machine_to_phys_nr, align 8, !dbg !6460
  %cmp = icmp uge i64 %0, %1, !dbg !6460
  %lnot = xor i1 %cmp, true, !dbg !6460
  %lnot1 = xor i1 %lnot, true, !dbg !6460
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6460
  %conv = sext i32 %lnot.ext to i64, !dbg !6460
  %tobool = icmp ne i64 %conv, 0, !dbg !6460
  br i1 %tobool, label %if.then, label %if.end, !dbg !6462

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !6463
  br label %return, !dbg !6463

if.end:                                           ; preds = %entry
  %2 = load i64*, i64** @machine_to_phys_mapping, align 8, !dbg !6464
  %3 = load i64, i64* %mfn.addr, align 8, !dbg !6465
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !6464
  %call = call i32 @xen_safe_read_ulong(i64* %arrayidx, i64* %pfn) #11, !dbg !6466
  store i32 %call, i32* %ret, align 4, !dbg !6467
  %4 = load i32, i32* %ret, align 4, !dbg !6468
  %cmp2 = icmp slt i32 %4, 0, !dbg !6470
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !6471

if.then4:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !6472
  br label %return, !dbg !6472

if.end5:                                          ; preds = %if.end
  %5 = load i64, i64* %pfn, align 8, !dbg !6473
  store i64 %5, i64* %retval, align 8, !dbg !6474
  br label %return, !dbg !6474

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !6475
  ret i64 %6, !dbg !6475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_safe_read_ulong(i64* %addr, i64* %val) #0 !dbg !6476 {
entry:
  %addr.addr = alloca i64*, align 8
  %val.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %rval = alloca i64, align 8
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6480, metadata !DIExpression()), !dbg !6481
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !6482, metadata !DIExpression()), !dbg !6483
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6484, metadata !DIExpression()), !dbg !6485
  store i32 0, i32* %ret, align 4, !dbg !6485
  call void @llvm.dbg.declare(metadata i64* %rval, metadata !6486, metadata !DIExpression()), !dbg !6487
  store i64 -1, i64* %rval, align 8, !dbg !6487
  %0 = load i32, i32* %ret, align 4, !dbg !6488
  %1 = load i64, i64* %rval, align 8, !dbg !6488
  %2 = load i64*, i64** %addr.addr, align 8, !dbg !6489
  %3 = call { i32, i64 } asm sideeffect "1: mov $2, $1\0A2:\0A.section .fixup, \22ax\22\0A3: sub $$1, $0\0A   jmp 2b\0A.previous\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (3b) - .\0A .long (ex_handler_default) - .\0A .popsection\0A", "=r,=r,*m,0,1,~{dirflag},~{fpsr},~{flags}"(i64* %2, i32 %0, i64 %1) #10, !dbg !6488, !srcloc !6490
  %asmresult = extractvalue { i32, i64 } %3, 0, !dbg !6488
  %asmresult1 = extractvalue { i32, i64 } %3, 1, !dbg !6488
  store i32 %asmresult, i32* %ret, align 4, !dbg !6488
  store i64 %asmresult1, i64* %rval, align 8, !dbg !6488
  %4 = load i64, i64* %rval, align 8, !dbg !6491
  %5 = load i64*, i64** %val.addr, align 8, !dbg !6492
  store i64 %4, i64* %5, align 8, !dbg !6493
  %6 = load i32, i32* %ret, align 4, !dbg !6494
  ret i32 %6, !dbg !6495
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @HYPERVISOR_hvm_op(i32 %op, i8* %arg) #0 !dbg !6496 {
entry:
  %op.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !6499, metadata !DIExpression()), !dbg !6500
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !6501, metadata !DIExpression()), !dbg !6502
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !6503, metadata !DIExpression()), !dbg !6505
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !6506, metadata !DIExpression()), !dbg !6505
  %0 = load i64, i64* %__arg1, align 8, !dbg !6505
  store i64 %0, i64* %__arg1, align 8, !dbg !6505
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !6507, metadata !DIExpression()), !dbg !6505
  %1 = load i64, i64* %__arg2, align 8, !dbg !6505
  store i64 %1, i64* %__arg2, align 8, !dbg !6505
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !6508, metadata !DIExpression()), !dbg !6505
  %2 = load i64, i64* %__arg3, align 8, !dbg !6505
  store i64 %2, i64* %__arg3, align 8, !dbg !6505
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !6509, metadata !DIExpression()), !dbg !6505
  %3 = load i64, i64* %__arg4, align 8, !dbg !6505
  store i64 %3, i64* %__arg4, align 8, !dbg !6505
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !6510, metadata !DIExpression()), !dbg !6505
  %4 = load i64, i64* %__arg5, align 8, !dbg !6505
  store i64 %4, i64* %__arg5, align 8, !dbg !6505
  %5 = load i32, i32* %op.addr, align 4, !dbg !6505
  %conv = sext i32 %5 to i64, !dbg !6505
  store i64 %conv, i64* %__arg1, align 8, !dbg !6505
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !6505
  %7 = ptrtoint i8* %6 to i64, !dbg !6505
  store i64 %7, i64* %__arg2, align 8, !dbg !6505
  %8 = call i64 @llvm.read_register.i64(metadata !4443), !dbg !6505
  %9 = load i64, i64* %__arg1, align 8, !dbg !6505
  %10 = load i64, i64* %__arg2, align 8, !dbg !6505
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1088, i64 %8, i64 %9, i64 %10) #10, !dbg !6505, !srcloc !6511
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !6505
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !6505
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !6505
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !6505
  store i64 %asmresult, i64* %__res, align 8, !dbg !6505
  call void @llvm.write_register.i64(metadata !4443, i64 %asmresult1), !dbg !6505
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !6505
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !6505
  %12 = load i64, i64* %__res, align 8, !dbg !6505
  store i64 %12, i64* %tmp, align 8, !dbg !6505
  %13 = load i64, i64* %tmp, align 8, !dbg !6505
  ret i64 %13, !dbg !6512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @param_name(i32 %op) #0 !dbg !4435 {
entry:
  %retval = alloca i8*, align 8
  %op.addr = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !6513, metadata !DIExpression()), !dbg !6514
  %0 = load i32, i32* %op.addr, align 4, !dbg !6515
  %conv = sext i32 %0 to i64, !dbg !6515
  %cmp = icmp uge i64 %conv, 19, !dbg !6517
  br i1 %cmp, label %if.then, label %if.end, !dbg !6518

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8** %retval, align 8, !dbg !6519
  br label %return, !dbg !6519

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4, !dbg !6520
  %idxprom = sext i32 %1 to i64, !dbg !6522
  %arrayidx = getelementptr [19 x i8*], [19 x i8*]* @param_name.names, i64 0, i64 %idxprom, !dbg !6522
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !6522
  %tobool = icmp ne i8* %2, null, !dbg !6522
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6523

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i8** %retval, align 8, !dbg !6524
  br label %return, !dbg !6524

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* %op.addr, align 4, !dbg !6525
  %idxprom4 = sext i32 %3 to i64, !dbg !6526
  %arrayidx5 = getelementptr [19 x i8*], [19 x i8*]* @param_name.names, i64 0, i64 %idxprom4, !dbg !6526
  %4 = load i8*, i8** %arrayidx5, align 8, !dbg !6526
  store i8* %4, i8** %retval, align 8, !dbg !6527
  br label %return, !dbg !6527

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !6528
  ret i8* %5, !dbg !6528
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_resume_cb(%struct.notifier_block* %nb, i64 %action, i8* %data) #0 !dbg !6529 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %action.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %v = alloca i64, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !6530, metadata !DIExpression()), !dbg !6531
  store i64 %action, i64* %action.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %action.addr, metadata !6532, metadata !DIExpression()), !dbg !6533
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6534, metadata !DIExpression()), !dbg !6535
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6536, metadata !DIExpression()), !dbg !6537
  store i32 0, i32* %err, align 4, !dbg !6537
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !6538
  %cmp = icmp eq i32 %0, 2, !dbg !6538
  br i1 %cmp, label %if.then, label %if.else4, !dbg !6540

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %v, metadata !6541, metadata !DIExpression()), !dbg !6543
  store i64 0, i64* %v, align 8, !dbg !6543
  %call = call i32 @hvm_get_parameter(i32 2, i64* %v) #11, !dbg !6544
  store i32 %call, i32* %err, align 4, !dbg !6545
  %1 = load i32, i32* %err, align 4, !dbg !6546
  %tobool = icmp ne i32 %1, 0, !dbg !6546
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !6548

land.lhs.true:                                    ; preds = %if.then
  %2 = load i64, i64* %v, align 8, !dbg !6549
  %tobool1 = icmp ne i64 %2, 0, !dbg !6549
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !6550

if.then2:                                         ; preds = %land.lhs.true
  %3 = load i64, i64* %v, align 8, !dbg !6551
  %conv = trunc i64 %3 to i32, !dbg !6551
  store i32 %conv, i32* @xen_store_evtchn, align 4, !dbg !6552
  br label %if.end, !dbg !6553

if.else:                                          ; preds = %land.lhs.true, %if.then
  %4 = load i32, i32* %err, align 4, !dbg !6554
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.47, i64 0, i64 0), i32 %4) #12, !dbg !6554
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5, !dbg !6555

if.else4:                                         ; preds = %entry
  %5 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !6556
  %store_evtchn = getelementptr inbounds %struct.start_info, %struct.start_info* %5, i32 0, i32 5, !dbg !6557
  %6 = load i32, i32* %store_evtchn, align 8, !dbg !6557
  store i32 %6, i32* @xen_store_evtchn, align 4, !dbg !6558
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.end
  %7 = load i32, i32* %err, align 4, !dbg !6559
  ret i32 %7, !dbg !6560
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4443}
!llvm.module.flags = !{!4444, !4445, !4446, !4447}
!llvm.ident = !{!4448}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xenbus_dev_group", scope: !2, file: !3, line: 422, type: !319, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !175, globals: !4338, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/xenbus/xenbus_probe.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !140, !150, !157, !162, !169}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !108, line: 478, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !115, line: 1084, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!121 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !123, line: 11, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xenbus_state", file: !129, line: 17, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/xen/interface/io/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIEnumerator(name: "XenbusStateUnknown", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "XenbusStateInitialising", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "XenbusStateInitWait", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "XenbusStateInitialised", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "XenbusStateConnected", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "XenbusStateClosing", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "XenbusStateClosed", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "XenbusStateReconfiguring", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "XenbusStateReconfigured", value: 8, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !141, line: 576, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146, !147, !148, !149}
!143 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "SYSTEM_HALT", value: 3, isUnsigned: true)
!147 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 4, isUnsigned: true)
!148 = !DIEnumerator(name: "SYSTEM_RESTART", value: 5, isUnsigned: true)
!149 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 6, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xenstore_init", file: !151, line: 52, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "drivers/xen/xenbus/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "XS_UNKNOWN", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "XS_PV", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "XS_HVM", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "XS_LOCAL", value: 3, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 10, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161}
!160 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !163, line: 305, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!164 = !{!165, !166, !167, !168}
!165 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!166 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!167 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!168 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !170, line: 5, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!174 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!175 = !{!176, !177, !784, !263, !188, !4287, !4323, !313, !298}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device", file: !179, line: 71, size: 6784, elements: !180)
!179 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!180 = !{!181, !185, !186, !187, !189, !205, !4277, !4278, !4279, !4280}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !178, file: !179, line: 72, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !178, file: !179, line: 73, baseType: !182, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "otherend", scope: !178, file: !179, line: 74, baseType: !182, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_id", scope: !178, file: !179, line: 75, baseType: !188, size: 32, offset: 192)
!188 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_watch", scope: !178, file: !179, line: 76, baseType: !190, size: 256, offset: 256)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !179, line: 57, size: 256, elements: !191)
!191 = !{!192, !199, !200}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !190, file: !179, line: 59, baseType: !193, size: 128)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !194, line: 178, size: 128, elements: !195)
!194 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !198}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !194, line: 179, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !193, file: !194, line: 179, baseType: !197, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !179, line: 62, baseType: !182, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !190, file: !179, line: 65, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !204, !182, !182}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !179, line: 77, baseType: !206, size: 5568, offset: 512)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !207)
!207 = !{!208, !3448, !3450, !3453, !3454, !3505, !3596, !3597, !3598, !3599, !3600, !3609, !3714, !3727, !4204, !4205, !4209, !4211, !4212, !4213, !4217, !4223, !4224, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4265, !4266, !4267, !4270, !4273, !4274, !4275, !4276}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !206, file: !73, line: 462, baseType: !209, size: 512)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !210, line: 64, size: 512, elements: !211)
!210 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212, !213, !214, !216, !276, !3310, !3438, !3443, !3444, !3445, !3446, !3447}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !210, line: 65, baseType: !182, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !209, file: !210, line: 66, baseType: !193, size: 128, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !210, line: 67, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !209, file: !210, line: 68, baseType: !217, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !210, line: 192, size: 704, elements: !219)
!219 = !{!220, !221, !237, !238}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !218, file: !210, line: 193, baseType: !193, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !218, file: !210, line: 194, baseType: !222, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !223, line: 83, baseType: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !223, line: 71, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !223, line: 72, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !223, line: 72, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !227, file: !223, line: 73, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !223, line: 20, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !230, file: !223, line: 21, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !234, line: 25, baseType: !235)
!234 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 25, elements: !236)
!236 = !{}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !218, file: !210, line: 195, baseType: !209, size: 512, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !218, file: !210, line: 196, baseType: !239, size: 64, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !210, line: 156, size: 192, elements: !242)
!242 = !{!243, !248, !253}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !241, file: !210, line: 157, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!188, !217, !215}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !210, line: 158, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!182, !217, !215}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !241, file: !210, line: 159, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!188, !217, !215, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !210, line: 148, size: 20736, elements: !260)
!260 = !{!261, !266, !270, !271, !275}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !259, file: !210, line: 149, baseType: !262, size: 192)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 192, elements: !264)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!264 = !{!265}
!265 = !DISubrange(count: 3)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !259, file: !210, line: 150, baseType: !267, size: 4096, offset: 192)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 4096, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !259, file: !210, line: 151, baseType: !188, size: 32, offset: 4288)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !259, file: !210, line: 152, baseType: !272, size: 16384, offset: 4320)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 16384, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !259, file: !210, line: 153, baseType: !188, size: 32, offset: 20704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !209, file: !210, line: 69, baseType: !277, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !210, line: 138, size: 448, elements: !279)
!279 = !{!280, !284, !314, !316, !3272, !3300, !3304}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !278, file: !210, line: 139, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !215}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !278, file: !210, line: 140, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !288, line: 230, size: 128, elements: !289)
!288 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!289 = !{!290, !306}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !287, file: !288, line: 231, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !215, !299, !263}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !194, line: 60, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !296, line: 73, baseType: !297)
!296 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !296, line: 15, baseType: !298)
!298 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !288, line: 30, size: 128, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !288, line: 31, baseType: !182, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !300, file: !288, line: 32, baseType: !304, size: 16, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !194, line: 19, baseType: !305)
!305 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !287, file: !288, line: 232, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!294, !215, !299, !182, !310}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 55, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !296, line: 72, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !296, line: 16, baseType: !313)
!313 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !278, file: !210, line: 141, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !278, file: !210, line: 142, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !288, line: 84, size: 320, elements: !321)
!321 = !{!322, !323, !327, !3269, !3270}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !288, line: 85, baseType: !182, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !320, file: !288, line: 86, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!304, !215, !299, !188}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !320, file: !288, line: 88, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!304, !215, !331, !188}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !288, line: 168, size: 448, elements: !333)
!333 = !{!334, !335, !336, !337, !3264, !3265}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !332, file: !288, line: 169, baseType: !300, size: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !332, file: !288, line: 170, baseType: !310, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !332, file: !288, line: 171, baseType: !176, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !332, file: !288, line: 172, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!294, !341, !215, !331, !263, !520, !310}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !343)
!343 = !{!344, !362, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3247, !3248, !3257, !3258, !3259, !3260, !3261, !3262, !3263}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !342, file: !44, line: 920, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !44, line: 917, size: 128, elements: !346)
!346 = !{!347, !353}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !345, file: !44, line: 918, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !349, line: 58, size: 64, elements: !350)
!349 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !349, line: 59, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !345, file: !44, line: 919, baseType: !354, size: 128, align: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !194, line: 216, size: 128, align: 64, elements: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !194, line: 217, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !354, file: !194, line: 218, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !357}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !342, file: !44, line: 921, baseType: !363, size: 128, offset: 128)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !364, line: 8, size: 128, elements: !365)
!364 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !363, file: !364, line: 9, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !369, line: 18, flags: DIFlagFwdDecl)
!369 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !363, file: !364, line: 10, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !369, line: 89, size: 1536, elements: !373)
!373 = !{!374, !375, !385, !393, !394, !417, !3198, !3200, !3212, !3213, !3214, !3215, !3216, !3221, !3222, !3223}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !372, file: !369, line: 91, baseType: !7, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !372, file: !369, line: 92, baseType: !376, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !377, line: 277, baseType: !378)
!377 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !377, line: 277, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !378, file: !377, line: 277, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !377, line: 70, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !377, line: 65, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !382, file: !377, line: 66, baseType: !7, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !372, file: !369, line: 93, baseType: !386, size: 128, offset: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !387, line: 38, size: 128, elements: !388)
!387 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!388 = !{!389, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !387, line: 39, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !386, file: !387, line: 39, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !372, file: !369, line: 94, baseType: !371, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !372, file: !369, line: 95, baseType: !395, size: 128, offset: 256)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !369, line: 47, size: 128, elements: !396)
!396 = !{!397, !413}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !369, line: 48, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !369, line: 48, size: 64, elements: !399)
!399 = !{!400, !409}
!400 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !369, line: 49, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !369, line: 49, size: 64, elements: !402)
!402 = !{!403, !408}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !401, file: !369, line: 50, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !405, line: 21, baseType: !406)
!405 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !407, line: 27, baseType: !7)
!407 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!408 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !401, file: !369, line: 50, baseType: !404, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !398, file: !369, line: 52, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !405, line: 23, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !407, line: 31, baseType: !412)
!412 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !395, file: !369, line: 54, baseType: !414, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !372, file: !369, line: 96, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !420)
!420 = !{!421, !422, !423, !431, !438, !439, !587, !2893, !2894, !2895, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !3166, !3174, !3175, !3176, !3194, !3195, !3196, !3197}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !419, file: !44, line: 611, baseType: !304, size: 16)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !419, file: !44, line: 612, baseType: !305, size: 16, offset: 16)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !419, file: !44, line: 613, baseType: !424, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !425, line: 23, baseType: !426)
!425 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 21, size: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !426, file: !425, line: 22, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !194, line: 32, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !296, line: 49, baseType: !7)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !419, file: !44, line: 614, baseType: !432, size: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !425, line: 28, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 26, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !433, file: !425, line: 27, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !194, line: 33, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !296, line: 50, baseType: !7)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !419, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !419, file: !44, line: 622, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !443)
!443 = !{!444, !448, !461, !465, !471, !475, !481, !485, !489, !493, !497, !498, !504, !508, !534, !563, !567, !573, !578, !582, !583}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !442, file: !44, line: 1865, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!371, !418, !371, !7}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !442, file: !44, line: 1866, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!182, !371, !418, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !454, line: 10, size: 128, elements: !455)
!454 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !460}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !453, file: !454, line: 11, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !176}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !453, file: !454, line: 12, baseType: !176, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !442, file: !44, line: 1867, baseType: !462, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!188, !418, !188}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !442, file: !44, line: 1868, baseType: !466, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !418, !188}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !442, file: !44, line: 1870, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!188, !371, !263, !188}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !442, file: !44, line: 1872, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!188, !418, !371, !304, !479}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !194, line: 30, baseType: !480)
!480 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !442, file: !44, line: 1873, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!188, !371, !418, !371}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !442, file: !44, line: 1874, baseType: !486, size: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!188, !418, !371}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !442, file: !44, line: 1875, baseType: !490, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!188, !418, !371, !182}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !442, file: !44, line: 1876, baseType: !494, size: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!188, !418, !371, !304}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !442, file: !44, line: 1877, baseType: !486, size: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !442, file: !44, line: 1878, baseType: !499, size: 64, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!188, !418, !371, !304, !502}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !194, line: 16, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !194, line: 13, baseType: !404)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !442, file: !44, line: 1879, baseType: !505, size: 64, offset: 768)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!188, !418, !371, !418, !371, !7}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !442, file: !44, line: 1881, baseType: !509, size: 64, offset: 832)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!188, !371, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !523, !531, !532, !533}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !513, file: !44, line: 220, baseType: !7, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !513, file: !44, line: 221, baseType: !304, size: 16, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !513, file: !44, line: 222, baseType: !424, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !513, file: !44, line: 223, baseType: !432, size: 32, offset: 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !513, file: !44, line: 224, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !194, line: 46, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !296, line: 88, baseType: !522)
!522 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !513, file: !44, line: 225, baseType: !524, size: 128, offset: 192)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !525, line: 13, size: 128, elements: !526)
!525 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !524, file: !525, line: 14, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !525, line: 8, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !407, line: 30, baseType: !522)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !524, file: !525, line: 15, baseType: !298, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !513, file: !44, line: 226, baseType: !524, size: 128, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !513, file: !44, line: 227, baseType: !524, size: 128, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !513, file: !44, line: 234, baseType: !341, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !442, file: !44, line: 1882, baseType: !535, size: 64, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!188, !538, !540, !404, !7}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !542, line: 22, size: 1152, elements: !543)
!542 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!543 = !{!544, !545, !546, !547, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !541, file: !542, line: 23, baseType: !404, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !541, file: !542, line: 24, baseType: !304, size: 16, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !541, file: !542, line: 25, baseType: !7, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !541, file: !542, line: 26, baseType: !548, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !194, line: 104, baseType: !404)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !541, file: !542, line: 27, baseType: !410, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !541, file: !542, line: 28, baseType: !410, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !541, file: !542, line: 37, baseType: !410, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !541, file: !542, line: 38, baseType: !502, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !541, file: !542, line: 39, baseType: !502, size: 32, offset: 352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !541, file: !542, line: 40, baseType: !424, size: 32, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !541, file: !542, line: 41, baseType: !432, size: 32, offset: 416)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !541, file: !542, line: 42, baseType: !520, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !541, file: !542, line: 43, baseType: !524, size: 128, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !541, file: !542, line: 44, baseType: !524, size: 128, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !541, file: !542, line: 45, baseType: !524, size: 128, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !541, file: !542, line: 46, baseType: !524, size: 128, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !541, file: !542, line: 47, baseType: !410, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !541, file: !542, line: 48, baseType: !410, size: 64, offset: 1088)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !442, file: !44, line: 1883, baseType: !564, size: 64, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!294, !371, !263, !310}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !442, file: !44, line: 1884, baseType: !568, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!188, !418, !571, !410, !410}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !442, file: !44, line: 1886, baseType: !574, size: 64, offset: 1088)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!188, !418, !577, !188}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !442, file: !44, line: 1887, baseType: !579, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!188, !418, !371, !341, !7, !304}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !442, file: !44, line: 1890, baseType: !494, size: 64, offset: 1216)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !442, file: !44, line: 1891, baseType: !584, size: 64, offset: 1280)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!188, !418, !469, !188}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !419, file: !44, line: 623, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !645, !2500, !2582, !2665, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2681, !2685, !2686, !2689, !2690, !2693, !2694, !2695, !2736, !2763, !2764, !2765, !2766, !2767, !2768, !2771, !2773, !2780, !2781, !2783, !2784, !2785, !2844, !2845, !2860, !2861, !2862, !2863, !2864, !2867, !2868, !2869, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !589, file: !44, line: 1417, baseType: !193, size: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !589, file: !44, line: 1418, baseType: !502, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !589, file: !44, line: 1419, baseType: !416, size: 8, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !589, file: !44, line: 1420, baseType: !313, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !589, file: !44, line: 1421, baseType: !520, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !589, file: !44, line: 1422, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !599)
!599 = !{!600, !601, !602, !608, !612, !616, !620, !624, !625, !635, !638, !639, !640, !642, !643, !644}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !44, line: 2229, baseType: !182, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !598, file: !44, line: 2230, baseType: !188, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !598, file: !44, line: 2238, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!188, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !598, file: !44, line: 2239, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !598, file: !44, line: 2240, baseType: !613, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!371, !597, !188, !182, !176}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !598, file: !44, line: 2242, baseType: !617, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !588}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !598, file: !44, line: 2243, baseType: !621, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !623, line: 76, flags: DIFlagFwdDecl)
!623 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !44, line: 2244, baseType: !597, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !598, file: !44, line: 2245, baseType: !626, size: 64, offset: 512)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !194, line: 182, size: 64, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !626, file: !194, line: 183, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !194, line: 186, size: 128, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !630, file: !194, line: 187, baseType: !629, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !630, file: !194, line: 187, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !598, file: !44, line: 2247, baseType: !636, offset: 576)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !637, line: 187, elements: !236)
!637 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !598, file: !44, line: 2248, baseType: !636, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !598, file: !44, line: 2249, baseType: !636, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !598, file: !44, line: 2250, baseType: !641, offset: 576)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, elements: !264)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !598, file: !44, line: 2252, baseType: !636, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !598, file: !44, line: 2253, baseType: !636, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !598, file: !44, line: 2254, baseType: !636, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !589, file: !44, line: 1423, baseType: !646, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !649)
!649 = !{!650, !654, !658, !659, !663, !669, !673, !674, !675, !679, !683, !684, !685, !686, !692, !697, !698, !754, !755, !756, !757, !2484, !2499}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !648, file: !44, line: 1936, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!418, !588}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !648, file: !44, line: 1937, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !418}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !648, file: !44, line: 1938, baseType: !655, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !648, file: !44, line: 1940, baseType: !660, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !418, !188}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !648, file: !44, line: 1941, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!188, !418, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !648, file: !44, line: 1942, baseType: !670, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!188, !418}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !648, file: !44, line: 1943, baseType: !655, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !648, file: !44, line: 1944, baseType: !617, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !648, file: !44, line: 1945, baseType: !676, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!188, !588, !188}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !648, file: !44, line: 1946, baseType: !680, size: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!188, !588}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !648, file: !44, line: 1947, baseType: !680, size: 64, offset: 640)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !648, file: !44, line: 1948, baseType: !680, size: 64, offset: 704)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !648, file: !44, line: 1949, baseType: !680, size: 64, offset: 768)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !648, file: !44, line: 1950, baseType: !687, size: 64, offset: 832)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!188, !371, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !648, file: !44, line: 1951, baseType: !693, size: 64, offset: 896)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!188, !588, !696, !263}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !648, file: !44, line: 1952, baseType: !617, size: 64, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !648, file: !44, line: 1954, baseType: !699, size: 64, offset: 1024)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!188, !702, !371}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !704, line: 16, size: 896, elements: !705)
!704 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !727, !749, !750, !753}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !703, file: !704, line: 17, baseType: !263, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !703, file: !704, line: 18, baseType: !310, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !703, file: !704, line: 19, baseType: !310, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !703, file: !704, line: 20, baseType: !310, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !703, file: !704, line: 21, baseType: !310, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !703, file: !704, line: 22, baseType: !520, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !703, file: !704, line: 23, baseType: !520, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !703, file: !704, line: 24, baseType: !714, size: 192, offset: 448)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !715, line: 53, size: 192, elements: !716)
!715 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!716 = !{!717, !725, !726}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !714, file: !715, line: 54, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !719, line: 13, baseType: !720)
!719 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !194, line: 175, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 173, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !721, file: !194, line: 174, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !405, line: 22, baseType: !529)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !714, file: !715, line: 55, baseType: !222, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !714, file: !715, line: 59, baseType: !193, size: 128, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !703, file: !704, line: 25, baseType: !728, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !704, line: 31, size: 256, elements: !731)
!731 = !{!732, !737, !741, !745}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !730, file: !704, line: 32, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!176, !702, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !730, file: !704, line: 33, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !702, !176}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !704, line: 34, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!176, !702, !176, !736}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !730, file: !704, line: 35, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!188, !702, !176}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !703, file: !704, line: 26, baseType: !188, size: 32, offset: 704)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !703, file: !704, line: 27, baseType: !751, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !342)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !703, file: !704, line: 28, baseType: !176, size: 64, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !648, file: !44, line: 1955, baseType: !699, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !648, file: !44, line: 1956, baseType: !699, size: 64, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !648, file: !44, line: 1957, baseType: !699, size: 64, offset: 1216)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !648, file: !44, line: 1963, baseType: !758, size: 64, offset: 1280)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!188, !588, !761, !784}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !763, line: 68, size: 512, align: 128, elements: !764)
!763 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!764 = !{!765, !766, !2476, !2483}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !763, line: 69, baseType: !313, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !763, line: 77, baseType: !767, size: 320, offset: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !763, line: 77, size: 320, elements: !768)
!768 = !{!769, !990, !995, !1023, !1031, !1037, !2407, !2475}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 78, baseType: !770, size: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 78, size: 320, elements: !771)
!771 = !{!772, !773, !988, !989}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !770, file: !763, line: 84, baseType: !193, size: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !770, file: !763, line: 86, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !776)
!776 = !{!777, !778, !786, !787, !792, !807, !816, !817, !818, !819, !981, !982, !985, !986, !987}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !775, file: !44, line: 452, baseType: !418, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !775, file: !44, line: 453, baseType: !779, size: 128, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !780, line: 292, size: 128, elements: !781)
!780 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!781 = !{!782, !783, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !779, file: !780, line: 293, baseType: !222)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !779, file: !780, line: 295, baseType: !784, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !194, line: 148, baseType: !7)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !779, file: !780, line: 296, baseType: !176, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !775, file: !44, line: 454, baseType: !784, size: 32, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !775, file: !44, line: 455, baseType: !788, size: 32, offset: 224)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !194, line: 168, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 166, size: 32, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !789, file: !194, line: 167, baseType: !188, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !775, file: !44, line: 460, baseType: !793, size: 128, offset: 256)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !794, line: 125, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !793, file: !794, line: 126, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !794, line: 31, size: 64, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !797, file: !794, line: 32, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !794, line: 24, size: 192, align: 64, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !801, file: !794, line: 25, baseType: !313, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !801, file: !794, line: 26, baseType: !800, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !801, file: !794, line: 27, baseType: !800, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !793, file: !794, line: 127, baseType: !800, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !775, file: !44, line: 461, baseType: !808, size: 256, offset: 384)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !809, line: 35, size: 256, elements: !810)
!809 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !812, !813, !815}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !808, file: !809, line: 36, baseType: !718, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !808, file: !809, line: 42, baseType: !718, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !808, file: !809, line: 46, baseType: !814, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 29, baseType: !230)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !808, file: !809, line: 47, baseType: !193, size: 128, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !775, file: !44, line: 462, baseType: !313, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !775, file: !44, line: 463, baseType: !313, size: 64, offset: 704)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !775, file: !44, line: 464, baseType: !313, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !775, file: !44, line: 465, baseType: !820, size: 64, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !823)
!823 = !{!824, !828, !832, !836, !840, !844, !850, !856, !860, !865, !869, !873, !877, !945, !949, !955, !956, !957, !961, !966, !970, !977}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !822, file: !44, line: 368, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!188, !761, !667}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !822, file: !44, line: 369, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!188, !341, !761}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !822, file: !44, line: 372, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!188, !774, !667}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !822, file: !44, line: 375, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!188, !761}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !822, file: !44, line: 381, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!188, !341, !774, !197, !7}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !822, file: !44, line: 383, baseType: !845, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !848}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !822, file: !44, line: 385, baseType: !851, size: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!188, !341, !774, !520, !7, !7, !854, !855}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !822, file: !44, line: 388, baseType: !857, size: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!188, !341, !774, !520, !7, !7, !761, !176}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !822, file: !44, line: 393, baseType: !861, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!864, !774, !864}
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !194, line: 125, baseType: !410)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !822, file: !44, line: 394, baseType: !866, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !761, !7, !7}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !822, file: !44, line: 395, baseType: !870, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!188, !761, !784}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !822, file: !44, line: 396, baseType: !874, size: 64, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !761}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !822, file: !44, line: 397, baseType: !878, size: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!294, !881, !903}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !883)
!883 = !{!884, !885, !886, !890, !891, !892, !895, !896}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !882, file: !44, line: 321, baseType: !341, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !882, file: !44, line: 326, baseType: !520, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !882, file: !44, line: 327, baseType: !887, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !881, !298, !298}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !882, file: !44, line: 328, baseType: !176, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !882, file: !44, line: 329, baseType: !188, size: 32, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !882, file: !44, line: 330, baseType: !893, size: 16, offset: 288)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !405, line: 19, baseType: !894)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !407, line: 24, baseType: !305)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !882, file: !44, line: 331, baseType: !893, size: 16, offset: 304)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !44, line: 332, baseType: !897, size: 64, offset: 320)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !44, line: 332, size: 64, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !897, file: !44, line: 333, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !897, file: !44, line: 334, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !905, line: 29, size: 320, elements: !906)
!905 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!906 = !{!907, !908, !909, !910, !936}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !904, file: !905, line: 35, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !904, file: !905, line: 36, baseType: !310, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !904, file: !905, line: 37, baseType: !310, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !905, line: 38, baseType: !911, size: 64, offset: 192)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !905, line: 38, size: 64, elements: !912)
!912 = !{!913, !921, !928, !932}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !911, file: !905, line: 39, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !917, line: 17, size: 128, elements: !918)
!917 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !916, file: !917, line: 19, baseType: !176, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !916, file: !917, line: 20, baseType: !311, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !911, file: !905, line: 40, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !905, line: 15, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !924, file: !905, line: 16, baseType: !176, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !924, file: !905, line: 17, baseType: !310, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !911, file: !905, line: 41, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !170, line: 45, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !911, file: !905, line: 42, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !935, line: 53, flags: DIFlagFwdDecl)
!935 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !905, line: 44, baseType: !937, size: 64, offset: 256)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !904, file: !905, line: 44, size: 64, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !937, file: !905, line: 45, baseType: !313, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !905, line: 46, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !905, line: 46, size: 64, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !941, file: !905, line: 47, baseType: !7, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !941, file: !905, line: 48, baseType: !7, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !822, file: !44, line: 402, baseType: !946, size: 64, offset: 832)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!188, !774, !761, !761, !5}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !822, file: !44, line: 404, baseType: !950, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!479, !761, !953}
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !954, line: 305, baseType: !7)
!954 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!955 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !822, file: !44, line: 405, baseType: !874, size: 64, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !822, file: !44, line: 406, baseType: !837, size: 64, offset: 1024)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !822, file: !44, line: 407, baseType: !958, size: 64, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!188, !761, !313, !313}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !822, file: !44, line: 409, baseType: !962, size: 64, offset: 1152)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !761, !965, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !822, file: !44, line: 410, baseType: !967, size: 64, offset: 1216)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!188, !774, !761}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !822, file: !44, line: 413, baseType: !971, size: 64, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!188, !974, !341, !976}
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !822, file: !44, line: 415, baseType: !978, size: 64, offset: 1344)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !341}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !44, line: 466, baseType: !313, size: 64, offset: 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !775, file: !44, line: 467, baseType: !983, size: 32, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !984, line: 8, baseType: !404)
!984 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!985 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !775, file: !44, line: 468, baseType: !222, offset: 992)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !775, file: !44, line: 469, baseType: !193, size: 128, offset: 1024)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !775, file: !44, line: 470, baseType: !176, size: 64, offset: 1152)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !770, file: !763, line: 87, baseType: !313, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !770, file: !763, line: 94, baseType: !313, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 96, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 96, size: 64, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !991, file: !763, line: 101, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !194, line: 143, baseType: !410)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 103, baseType: !996, size: 320)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 103, size: 320, elements: !997)
!997 = !{!998, !1008, !1011, !1012}
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !763, line: 104, baseType: !999, size: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !763, line: 104, size: 128, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !999, file: !763, line: 105, baseType: !193, size: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !763, line: 106, baseType: !1003, size: 128)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !763, line: 106, size: 128, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1003, file: !763, line: 107, baseType: !761, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1003, file: !763, line: 109, baseType: !188, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1003, file: !763, line: 110, baseType: !188, size: 32, offset: 96)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !996, file: !763, line: 117, baseType: !1009, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !763, line: 117, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !996, file: !763, line: 119, baseType: !176, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !763, line: 120, baseType: !1013, size: 64, offset: 256)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !763, line: 120, size: 64, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1013, file: !763, line: 121, baseType: !176, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1013, file: !763, line: 122, baseType: !313, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !763, line: 123, baseType: !1018, size: 32)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1013, file: !763, line: 123, size: 32, elements: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1018, file: !763, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1018, file: !763, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1018, file: !763, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 130, baseType: !1024, size: 192)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 130, size: 192, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1024, file: !763, line: 131, baseType: !313, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1024, file: !763, line: 134, baseType: !416, size: 8, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1024, file: !763, line: 135, baseType: !416, size: 8, offset: 72)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1024, file: !763, line: 136, baseType: !788, size: 32, offset: 96)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1024, file: !763, line: 137, baseType: !7, size: 32, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 139, baseType: !1032, size: 256)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 139, size: 256, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1032, file: !763, line: 140, baseType: !313, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1032, file: !763, line: 141, baseType: !788, size: 32, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1032, file: !763, line: 143, baseType: !193, size: 128, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 145, baseType: !1038, size: 256)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 145, size: 256, elements: !1039)
!1039 = !{!1040, !1041, !1044, !1045, !2406}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1038, file: !763, line: 146, baseType: !313, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1038, file: !763, line: 147, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1043, line: 509, baseType: !761)
!1043 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1038, file: !763, line: 148, baseType: !313, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !763, line: 149, baseType: !1046, size: 64, offset: 192)
!1046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !763, line: 149, size: 64, elements: !1047)
!1047 = !{!1048, !2405}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1046, file: !763, line: 150, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !763, line: 388, size: 7296, elements: !1051)
!1051 = !{!1052, !2401}
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !763, line: 389, baseType: !1053, size: 7296)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !763, line: 389, size: 7296, elements: !1054)
!1054 = !{!1055, !1173, !1174, !1175, !1179, !1180, !1181, !1182, !1183, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1224, !1232, !1235, !1275, !1276, !2385, !2386, !2389, !2390, !2391, !2394, !2395, !2396, !2399, !2400}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1053, file: !763, line: 390, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !763, line: 305, size: 1472, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1073, !1074, !1079, !1080, !1083, !1167, !1168, !1169, !1170, !1171}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1057, file: !763, line: 308, baseType: !313, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1057, file: !763, line: 309, baseType: !313, size: 64, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1057, file: !763, line: 313, baseType: !1056, size: 64, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1057, file: !763, line: 313, baseType: !1056, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1057, file: !763, line: 315, baseType: !801, size: 192, align: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1057, file: !763, line: 323, baseType: !313, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1057, file: !763, line: 327, baseType: !1049, size: 64, offset: 512)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1057, file: !763, line: 333, baseType: !1067, size: 64, offset: 576)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1043, line: 284, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1043, line: 284, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1068, file: !1043, line: 284, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1072, line: 19, baseType: !313)
!1072 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1057, file: !763, line: 334, baseType: !313, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1057, file: !763, line: 343, baseType: !1075, size: 256, offset: 704)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !763, line: 340, size: 256, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1075, file: !763, line: 341, baseType: !801, size: 192, align: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1075, file: !763, line: 342, baseType: !313, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1057, file: !763, line: 351, baseType: !193, size: 128, offset: 960)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1057, file: !763, line: 353, baseType: !1081, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !763, line: 353, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1057, file: !763, line: 356, baseType: !1084, size: 64, offset: 1152)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1087)
!1087 = !{!1088, !1092, !1093, !1097, !1101, !1141, !1145, !1149, !1153, !1154, !1155, !1159, !1163}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1086, file: !14, line: 558, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1056}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1086, file: !14, line: 559, baseType: !1089, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1086, file: !14, line: 560, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!188, !1056, !313}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1086, file: !14, line: 561, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!188, !1056}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1086, file: !14, line: 562, baseType: !1102, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !763, line: 682, baseType: !7)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1121, !1128, !1134, !1135, !1136, !1138, !1140}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1107, file: !14, line: 509, baseType: !1056, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1107, file: !14, line: 511, baseType: !784, size: 32, offset: 96)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1107, file: !14, line: 512, baseType: !313, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1107, file: !14, line: 513, baseType: !313, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1107, file: !14, line: 514, baseType: !1115, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1043, line: 385, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1043, line: 385, size: 64, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1117, file: !1043, line: 385, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1072, line: 15, baseType: !313)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1107, file: !14, line: 516, baseType: !1122, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1043, line: 359, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1043, line: 359, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1124, file: !1043, line: 359, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1072, line: 16, baseType: !313)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1107, file: !14, line: 519, baseType: !1129, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1072, line: 21, baseType: !1130)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1072, line: 21, size: 64, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1130, file: !1072, line: 21, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1072, line: 14, baseType: !313)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1107, file: !14, line: 521, baseType: !761, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1107, file: !14, line: 522, baseType: !761, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1107, file: !14, line: 528, baseType: !1137, size: 64, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1107, file: !14, line: 532, baseType: !1139, size: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1107, file: !14, line: 536, baseType: !1042, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1086, file: !14, line: 563, baseType: !1142, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!1105, !1106, !13}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1086, file: !14, line: 565, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1106, !313, !313}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1086, file: !14, line: 567, baseType: !1150, size: 64, offset: 448)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!313, !1056}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1086, file: !14, line: 571, baseType: !1102, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1086, file: !14, line: 574, baseType: !1102, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1086, file: !14, line: 579, baseType: !1156, size: 64, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!188, !1056, !313, !176, !188, !188}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1086, file: !14, line: 585, baseType: !1160, size: 64, offset: 704)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!182, !1056}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1086, file: !14, line: 615, baseType: !1164, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!761, !1056, !313}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1057, file: !763, line: 359, baseType: !313, size: 64, offset: 1216)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1057, file: !763, line: 361, baseType: !341, size: 64, offset: 1280)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1057, file: !763, line: 362, baseType: !176, size: 64, offset: 1344)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1057, file: !763, line: 365, baseType: !718, size: 64, offset: 1408)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1057, file: !763, line: 373, baseType: !1172, offset: 1472)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !763, line: 296, elements: !236)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1053, file: !763, line: 391, baseType: !797, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1053, file: !763, line: 392, baseType: !410, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1053, file: !763, line: 394, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!313, !341, !313, !313, !313, !313}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1053, file: !763, line: 398, baseType: !313, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1053, file: !763, line: 399, baseType: !313, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1053, file: !763, line: 405, baseType: !313, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1053, file: !763, line: 406, baseType: !313, size: 64, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1053, file: !763, line: 407, baseType: !1184, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1043, line: 286, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1043, line: 286, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1186, file: !1043, line: 286, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1072, line: 18, baseType: !313)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1053, file: !763, line: 416, baseType: !788, size: 32, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1053, file: !763, line: 428, baseType: !788, size: 32, offset: 608)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1053, file: !763, line: 437, baseType: !788, size: 32, offset: 640)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1053, file: !763, line: 447, baseType: !788, size: 32, offset: 672)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1053, file: !763, line: 450, baseType: !718, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1053, file: !763, line: 452, baseType: !188, size: 32, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1053, file: !763, line: 454, baseType: !222, offset: 800)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1053, file: !763, line: 457, baseType: !808, size: 256, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1053, file: !763, line: 459, baseType: !193, size: 128, offset: 1088)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1053, file: !763, line: 466, baseType: !313, size: 64, offset: 1216)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1053, file: !763, line: 467, baseType: !313, size: 64, offset: 1280)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1053, file: !763, line: 469, baseType: !313, size: 64, offset: 1344)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1053, file: !763, line: 470, baseType: !313, size: 64, offset: 1408)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1053, file: !763, line: 471, baseType: !720, size: 64, offset: 1472)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1053, file: !763, line: 472, baseType: !313, size: 64, offset: 1536)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1053, file: !763, line: 473, baseType: !313, size: 64, offset: 1600)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1053, file: !763, line: 474, baseType: !313, size: 64, offset: 1664)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1053, file: !763, line: 475, baseType: !313, size: 64, offset: 1728)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1053, file: !763, line: 477, baseType: !222, offset: 1792)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1053, file: !763, line: 478, baseType: !313, size: 64, offset: 1792)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1053, file: !763, line: 478, baseType: !313, size: 64, offset: 1856)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1053, file: !763, line: 478, baseType: !313, size: 64, offset: 1920)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1053, file: !763, line: 478, baseType: !313, size: 64, offset: 1984)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1053, file: !763, line: 479, baseType: !313, size: 64, offset: 2048)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1053, file: !763, line: 479, baseType: !313, size: 64, offset: 2112)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1053, file: !763, line: 479, baseType: !313, size: 64, offset: 2176)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1053, file: !763, line: 480, baseType: !313, size: 64, offset: 2240)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1053, file: !763, line: 480, baseType: !313, size: 64, offset: 2304)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1053, file: !763, line: 480, baseType: !313, size: 64, offset: 2368)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1053, file: !763, line: 480, baseType: !313, size: 64, offset: 2432)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1053, file: !763, line: 482, baseType: !1221, size: 2816, offset: 2496)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 2816, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: 44)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1053, file: !763, line: 488, baseType: !1225, size: 256, offset: 5312)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1226, line: 60, size: 256, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1225, file: !1226, line: 61, baseType: !1229, size: 256)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 256, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 4)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1053, file: !763, line: 490, baseType: !1233, size: 64, offset: 5568)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !763, line: 490, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1053, file: !763, line: 493, baseType: !1236, size: 896, offset: 5632)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1237, line: 53, baseType: !1238)
!1237 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1237, line: 13, size: 896, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1246, !1247, !1248, !1249, !1269, !1270, !1271}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1238, file: !1237, line: 18, baseType: !410, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1238, file: !1237, line: 28, baseType: !720, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1238, file: !1237, line: 31, baseType: !808, size: 256, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1238, file: !1237, line: 32, baseType: !1244, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1237, line: 32, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1238, file: !1237, line: 37, baseType: !305, size: 16, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1238, file: !1237, line: 40, baseType: !714, size: 192, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1238, file: !1237, line: 41, baseType: !176, size: 64, offset: 704)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1238, file: !1237, line: 42, baseType: !1250, size: 64, offset: 768)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1253, line: 13, size: 896, elements: !1254)
!1253 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1252, file: !1253, line: 14, baseType: !176, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1252, file: !1253, line: 15, baseType: !313, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1252, file: !1253, line: 17, baseType: !313, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1252, file: !1253, line: 17, baseType: !313, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1252, file: !1253, line: 19, baseType: !298, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1252, file: !1253, line: 21, baseType: !298, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1252, file: !1253, line: 22, baseType: !298, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1252, file: !1253, line: 23, baseType: !298, size: 64, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1252, file: !1253, line: 24, baseType: !298, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1252, file: !1253, line: 25, baseType: !298, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1252, file: !1253, line: 26, baseType: !298, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1252, file: !1253, line: 27, baseType: !298, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1252, file: !1253, line: 28, baseType: !298, size: 64, offset: 768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1252, file: !1253, line: 29, baseType: !298, size: 64, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1238, file: !1237, line: 44, baseType: !788, size: 32, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1238, file: !1237, line: 50, baseType: !893, size: 16, offset: 864)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1238, file: !1237, line: 51, baseType: !1272, size: 16, offset: 880)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !405, line: 18, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !407, line: 23, baseType: !1274)
!1274 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !763, line: 495, baseType: !313, size: 64, offset: 6528)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1053, file: !763, line: 497, baseType: !1277, size: 64, offset: 6592)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !763, line: 381, size: 384, elements: !1279)
!1279 = !{!1280, !1281, !2384}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1278, file: !763, line: 382, baseType: !788, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1278, file: !763, line: 383, baseType: !1282, size: 128, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !763, line: 376, size: 128, elements: !1283)
!1283 = !{!1284, !2382}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1282, file: !763, line: 377, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !935, line: 640, size: 48640, elements: !1287)
!1287 = !{!1288, !1294, !1296, !1297, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1314, !1332, !1343, !1428, !1429, !1430, !1441, !1442, !1444, !1445, !1446, !1447, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1531, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1569, !1571, !1572, !1573, !1585, !1586, !1587, !1588, !1589, !1590, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1614, !1619, !1803, !1804, !1805, !1806, !1810, !1813, !1816, !1819, !1822, !1825, !1926, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1972, !1973, !1974, !1975, !1976, !1981, !1982, !1983, !1986, !1987, !1990, !1993, !1996, !1999, !2042, !2045, !2046, !2125, !2126, !2129, !2130, !2133, !2134, !2135, !2139, !2140, !2141, !2154, !2155, !2156, !2166, !2171, !2172, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1286, file: !935, line: 646, baseType: !1289, size: 128)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1290, line: 56, size: 128, elements: !1291)
!1290 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !1290, line: 57, baseType: !313, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1289, file: !1290, line: 58, baseType: !404, size: 32, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1286, file: !935, line: 649, baseType: !1295, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !298)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1286, file: !935, line: 657, baseType: !176, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1286, file: !935, line: 658, baseType: !1298, size: 32, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1299, line: 113, baseType: !1300)
!1299 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1299, line: 111, size: 32, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1300, file: !1299, line: 112, baseType: !788, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !935, line: 660, baseType: !7, size: 32, offset: 288)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1286, file: !935, line: 661, baseType: !7, size: 32, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1286, file: !935, line: 684, baseType: !188, size: 32, offset: 352)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1286, file: !935, line: 686, baseType: !188, size: 32, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1286, file: !935, line: 687, baseType: !188, size: 32, offset: 416)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1286, file: !935, line: 688, baseType: !188, size: 32, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1286, file: !935, line: 689, baseType: !7, size: 32, offset: 480)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1286, file: !935, line: 691, baseType: !1311, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1313)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !935, line: 691, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1286, file: !935, line: 692, baseType: !1315, size: 832, offset: 576)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !935, line: 451, size: 832, elements: !1316)
!1316 = !{!1317, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1315, file: !935, line: 453, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !935, line: 325, size: 128, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1318, file: !935, line: 326, baseType: !313, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1318, file: !935, line: 327, baseType: !404, size: 32, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1315, file: !935, line: 454, baseType: !801, size: 192, align: 64, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1315, file: !935, line: 455, baseType: !193, size: 128, offset: 320)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1315, file: !935, line: 456, baseType: !7, size: 32, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1315, file: !935, line: 458, baseType: !410, size: 64, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1315, file: !935, line: 459, baseType: !410, size: 64, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1315, file: !935, line: 460, baseType: !410, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1315, file: !935, line: 461, baseType: !410, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1315, file: !935, line: 463, baseType: !410, size: 64, offset: 768)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1315, file: !935, line: 465, baseType: !1331, offset: 832)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !935, line: 415, elements: !236)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1286, file: !935, line: 693, baseType: !1333, size: 384, offset: 1408)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !935, line: 489, size: 384, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1333, file: !935, line: 490, baseType: !193, size: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1333, file: !935, line: 491, baseType: !313, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1333, file: !935, line: 492, baseType: !313, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1333, file: !935, line: 493, baseType: !7, size: 32, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1333, file: !935, line: 494, baseType: !305, size: 16, offset: 288)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1333, file: !935, line: 495, baseType: !305, size: 16, offset: 304)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1333, file: !935, line: 497, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1286, file: !935, line: 697, baseType: !1344, size: 1792, offset: 1792)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !935, line: 507, size: 1792, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1425, !1426}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1344, file: !935, line: 508, baseType: !801, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1344, file: !935, line: 515, baseType: !410, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1344, file: !935, line: 516, baseType: !410, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1344, file: !935, line: 517, baseType: !410, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1344, file: !935, line: 518, baseType: !410, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1344, file: !935, line: 519, baseType: !410, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1344, file: !935, line: 526, baseType: !724, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1344, file: !935, line: 527, baseType: !410, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !935, line: 528, baseType: !7, size: 32, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1344, file: !935, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1344, file: !935, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1344, file: !935, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1344, file: !935, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1344, file: !935, line: 563, baseType: !1360, size: 512, offset: 704)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1361)
!1361 = !{!1362, !1370, !1371, !1376, !1419, !1422, !1423, !1424}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1360, file: !20, line: 119, baseType: !1363, size: 256)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1364, line: 9, size: 256, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1363, file: !1364, line: 10, baseType: !801, size: 192, align: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1363, file: !1364, line: 11, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1369, line: 29, baseType: !724)
!1369 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1360, file: !20, line: 120, baseType: !1368, size: 64, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1360, file: !20, line: 121, baseType: !1372, size: 64, offset: 320)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!19, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1360, file: !20, line: 122, baseType: !1377, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1379)
!1379 = !{!1380, !1400, !1401, !1404, !1409, !1410, !1414, !1418}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1378, file: !20, line: 160, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !20, line: 215, baseType: !814)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1382, file: !20, line: 216, baseType: !7, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1382, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1382, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1382, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1382, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1382, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1382, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1382, file: !20, line: 233, baseType: !1368, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1382, file: !20, line: 234, baseType: !1375, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1382, file: !20, line: 235, baseType: !1368, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1382, file: !20, line: 236, baseType: !1375, size: 64, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1382, file: !20, line: 237, baseType: !1397, size: 4096, offset: 512)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 4096, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 8)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1378, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1378, file: !20, line: 162, baseType: !1402, size: 32, offset: 96)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !194, line: 27, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !296, line: 96, baseType: !188)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1378, file: !20, line: 163, baseType: !1405, size: 32, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !377, line: 276, baseType: !1406)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !377, line: 276, size: 32, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1406, file: !377, line: 276, baseType: !381, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1378, file: !20, line: 164, baseType: !1375, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1378, file: !20, line: 165, baseType: !1411, size: 128, offset: 256)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1364, line: 14, size: 128, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1411, file: !1364, line: 15, baseType: !793, size: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1378, file: !20, line: 166, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!1368}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1378, file: !20, line: 167, baseType: !1368, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1360, file: !20, line: 123, baseType: !1420, size: 8, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !405, line: 17, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !407, line: 21, baseType: !416)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1360, file: !20, line: 124, baseType: !1420, size: 8, offset: 456)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1360, file: !20, line: 125, baseType: !1420, size: 8, offset: 464)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1360, file: !20, line: 126, baseType: !1420, size: 8, offset: 472)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1344, file: !935, line: 572, baseType: !1360, size: 512, offset: 1216)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1344, file: !935, line: 580, baseType: !1427, size: 64, offset: 1728)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1286, file: !935, line: 721, baseType: !7, size: 32, offset: 3584)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1286, file: !935, line: 722, baseType: !188, size: 32, offset: 3616)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1286, file: !935, line: 723, baseType: !1431, size: 64, offset: 3648)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1434, line: 17, baseType: !1435)
!1434 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1434, line: 17, size: 64, elements: !1436)
!1436 = !{!1437}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1435, file: !1434, line: 17, baseType: !1438, size: 64)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 64, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 1)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1286, file: !935, line: 724, baseType: !1433, size: 64, offset: 3712)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1286, file: !935, line: 749, baseType: !1443, offset: 3776)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !935, line: 290, elements: !236)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1286, file: !935, line: 751, baseType: !193, size: 128, offset: 3776)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1286, file: !935, line: 757, baseType: !1049, size: 64, offset: 3904)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1286, file: !935, line: 758, baseType: !1049, size: 64, offset: 3968)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1286, file: !935, line: 761, baseType: !1448, size: 320, offset: 4032)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1226, line: 34, size: 320, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1448, file: !1226, line: 35, baseType: !410, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1448, file: !1226, line: 36, baseType: !1452, size: 256, offset: 64)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 256, elements: !1230)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1286, file: !935, line: 766, baseType: !188, size: 32, offset: 4352)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1286, file: !935, line: 767, baseType: !188, size: 32, offset: 4384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1286, file: !935, line: 768, baseType: !188, size: 32, offset: 4416)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1286, file: !935, line: 770, baseType: !188, size: 32, offset: 4448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1286, file: !935, line: 772, baseType: !313, size: 64, offset: 4480)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1286, file: !935, line: 775, baseType: !7, size: 32, offset: 4544)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1286, file: !935, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1286, file: !935, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1286, file: !935, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1286, file: !935, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1286, file: !935, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1286, file: !935, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1286, file: !935, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1286, file: !935, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1286, file: !935, line: 831, baseType: !313, size: 64, offset: 4672)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1286, file: !935, line: 833, baseType: !1469, size: 384, offset: 4736)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1470)
!1470 = !{!1471, !1476}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1469, file: !25, line: 26, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!298, !1475}
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !25, line: 27, baseType: !1477, size: 320, offset: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !25, line: 27, size: 320, elements: !1478)
!1478 = !{!1479, !1489, !1516}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1477, file: !25, line: 36, baseType: !1480, size: 320)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !25, line: 29, size: 320, elements: !1481)
!1481 = !{!1482, !1484, !1485, !1486, !1487, !1488}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1480, file: !25, line: 30, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1480, file: !25, line: 31, baseType: !404, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !25, line: 32, baseType: !404, size: 32, offset: 96)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1480, file: !25, line: 33, baseType: !404, size: 32, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1480, file: !25, line: 34, baseType: !410, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1480, file: !25, line: 35, baseType: !1483, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1477, file: !25, line: 46, baseType: !1490, size: 192)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !25, line: 38, size: 192, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1515}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1490, file: !25, line: 39, baseType: !1402, size: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1490, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1490, file: !25, line: 41, baseType: !1495, size: 64, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1490, file: !25, line: 41, size: 64, elements: !1496)
!1496 = !{!1497, !1505}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1495, file: !25, line: 42, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1500, line: 7, size: 128, elements: !1501)
!1500 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1499, file: !1500, line: 8, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !296, line: 93, baseType: !522)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1499, file: !1500, line: 9, baseType: !522, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1495, file: !25, line: 43, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1508, line: 7, size: 64, elements: !1509)
!1508 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1509 = !{!1510, !1514}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1507, file: !1508, line: 8, baseType: !1511, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1508, line: 5, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !405, line: 20, baseType: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !407, line: 26, baseType: !188)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1507, file: !1508, line: 9, baseType: !1512, size: 32, offset: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1490, file: !25, line: 45, baseType: !410, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1477, file: !25, line: 54, baseType: !1517, size: 256)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !25, line: 48, size: 256, elements: !1518)
!1518 = !{!1519, !1527, !1528, !1529, !1530}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1517, file: !25, line: 49, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1522, line: 36, size: 64, elements: !1523)
!1522 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1523 = !{!1524, !1525, !1526}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1521, file: !1522, line: 37, baseType: !188, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1521, file: !1522, line: 38, baseType: !1274, size: 16, offset: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1521, file: !1522, line: 39, baseType: !1274, size: 16, offset: 48)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1517, file: !25, line: 50, baseType: !188, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1517, file: !25, line: 51, baseType: !188, size: 32, offset: 96)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1517, file: !25, line: 52, baseType: !313, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1517, file: !25, line: 53, baseType: !313, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1286, file: !935, line: 835, baseType: !1532, size: 32, offset: 5120)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !194, line: 22, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !296, line: 28, baseType: !188)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1286, file: !935, line: 836, baseType: !1532, size: 32, offset: 5152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1286, file: !935, line: 840, baseType: !313, size: 64, offset: 5184)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1286, file: !935, line: 849, baseType: !1285, size: 64, offset: 5248)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1286, file: !935, line: 852, baseType: !1285, size: 64, offset: 5312)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1286, file: !935, line: 857, baseType: !193, size: 128, offset: 5376)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1286, file: !935, line: 858, baseType: !193, size: 128, offset: 5504)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1286, file: !935, line: 859, baseType: !1285, size: 64, offset: 5632)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1286, file: !935, line: 867, baseType: !193, size: 128, offset: 5696)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1286, file: !935, line: 868, baseType: !193, size: 128, offset: 5824)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1286, file: !935, line: 871, baseType: !1544, size: 64, offset: 5952)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1546)
!1546 = !{!1547, !1548, !1549, !1550, !1552, !1553, !1560, !1561}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1545, file: !53, line: 61, baseType: !1298, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1545, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !53, line: 63, baseType: !222, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1545, file: !53, line: 65, baseType: !1551, size: 256, offset: 64)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 256, elements: !1230)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1545, file: !53, line: 66, baseType: !626, size: 64, offset: 320)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1545, file: !53, line: 68, baseType: !1554, size: 128, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1555, line: 40, baseType: !1556)
!1555 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1555, line: 36, size: 128, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1556, file: !1555, line: 37, baseType: !222)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1556, file: !1555, line: 38, baseType: !193, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1545, file: !53, line: 69, baseType: !354, size: 128, align: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1545, file: !53, line: 70, baseType: !1562, size: 128, offset: 640)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 128, elements: !1439)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1563, file: !53, line: 55, baseType: !188, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1563, file: !53, line: 56, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1286, file: !935, line: 872, baseType: !1570, size: 512, offset: 6016)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 512, elements: !1230)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1286, file: !935, line: 873, baseType: !193, size: 128, offset: 6528)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1286, file: !935, line: 874, baseType: !193, size: 128, offset: 6656)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1286, file: !935, line: 876, baseType: !1574, size: 64, offset: 6784)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1576, line: 26, size: 192, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1575, file: !1576, line: 27, baseType: !7, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1575, file: !1576, line: 28, baseType: !1580, size: 128, offset: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1581, line: 43, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1580, file: !1581, line: 44, baseType: !814)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1580, file: !1581, line: 45, baseType: !193, size: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1286, file: !935, line: 879, baseType: !696, size: 64, offset: 6848)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1286, file: !935, line: 882, baseType: !696, size: 64, offset: 6912)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1286, file: !935, line: 884, baseType: !410, size: 64, offset: 6976)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1286, file: !935, line: 885, baseType: !410, size: 64, offset: 7040)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1286, file: !935, line: 890, baseType: !410, size: 64, offset: 7104)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1286, file: !935, line: 891, baseType: !1591, size: 128, offset: 7168)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !935, line: 242, size: 128, elements: !1592)
!1592 = !{!1593, !1594, !1595}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1591, file: !935, line: 244, baseType: !410, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1591, file: !935, line: 245, baseType: !410, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1591, file: !935, line: 246, baseType: !814, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1286, file: !935, line: 900, baseType: !313, size: 64, offset: 7296)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1286, file: !935, line: 901, baseType: !313, size: 64, offset: 7360)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1286, file: !935, line: 904, baseType: !410, size: 64, offset: 7424)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1286, file: !935, line: 907, baseType: !410, size: 64, offset: 7488)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1286, file: !935, line: 910, baseType: !313, size: 64, offset: 7552)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1286, file: !935, line: 911, baseType: !313, size: 64, offset: 7616)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1286, file: !935, line: 914, baseType: !1603, size: 640, offset: 7680)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1604, line: 123, size: 640, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1612, !1613}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1603, file: !1604, line: 124, baseType: !1607, size: 576)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1608, size: 576, elements: !264)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1604, line: 108, size: 192, elements: !1609)
!1609 = !{!1610, !1611}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1608, file: !1604, line: 109, baseType: !410, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1608, file: !1604, line: 110, baseType: !1411, size: 128, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1603, file: !1604, line: 125, baseType: !7, size: 32, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1603, file: !1604, line: 126, baseType: !7, size: 32, offset: 608)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1286, file: !935, line: 917, baseType: !1615, size: 192, offset: 8320)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1604, line: 134, size: 192, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1615, file: !1604, line: 135, baseType: !354, size: 128, align: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1615, file: !1604, line: 136, baseType: !7, size: 32, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1286, file: !935, line: 923, baseType: !1620, size: 64, offset: 8512)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1623, line: 111, size: 1280, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1644, !1645, !1646, !1647, !1648, !1649, !1756, !1757, !1758, !1759, !1785, !1788, !1798}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1622, file: !1623, line: 112, baseType: !788, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1622, file: !1623, line: 120, baseType: !424, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1622, file: !1623, line: 121, baseType: !432, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1622, file: !1623, line: 122, baseType: !424, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1622, file: !1623, line: 123, baseType: !432, size: 32, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1622, file: !1623, line: 124, baseType: !424, size: 32, offset: 160)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1622, file: !1623, line: 125, baseType: !432, size: 32, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1622, file: !1623, line: 126, baseType: !424, size: 32, offset: 224)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1622, file: !1623, line: 127, baseType: !432, size: 32, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1622, file: !1623, line: 128, baseType: !7, size: 32, offset: 288)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1622, file: !1623, line: 129, baseType: !1636, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1637, line: 26, baseType: !1638)
!1637 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1637, line: 24, size: 64, elements: !1639)
!1639 = !{!1640}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1638, file: !1637, line: 25, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DISubrange(count: 2)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1622, file: !1623, line: 130, baseType: !1636, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1622, file: !1623, line: 131, baseType: !1636, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1622, file: !1623, line: 132, baseType: !1636, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1622, file: !1623, line: 133, baseType: !1636, size: 64, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1622, file: !1623, line: 135, baseType: !416, size: 8, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1622, file: !1623, line: 137, baseType: !1650, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1652, line: 189, size: 1664, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654, !1655, !1658, !1663, !1664, !1667, !1668, !1673, !1674, !1675, !1676, !1678, !1679, !1680, !1681, !1682, !1720, !1741}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1651, file: !1652, line: 190, baseType: !1298, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1651, file: !1652, line: 191, baseType: !1656, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1652, line: 28, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !194, line: 98, baseType: !1512)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 192, baseType: !1659, size: 192, offset: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 192, size: 192, elements: !1660)
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1659, file: !1652, line: 193, baseType: !193, size: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1659, file: !1652, line: 194, baseType: !801, size: 192, align: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1651, file: !1652, line: 199, baseType: !808, size: 256, offset: 256)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1651, file: !1652, line: 200, baseType: !1665, size: 64, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1652, line: 200, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1651, file: !1652, line: 201, baseType: !176, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 202, baseType: !1669, size: 64, offset: 640)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 202, size: 64, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1669, file: !1652, line: 203, baseType: !528, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1669, file: !1652, line: 204, baseType: !528, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1651, file: !1652, line: 206, baseType: !528, size: 64, offset: 704)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1651, file: !1652, line: 207, baseType: !424, size: 32, offset: 768)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1651, file: !1652, line: 208, baseType: !432, size: 32, offset: 800)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1651, file: !1652, line: 209, baseType: !1677, size: 32, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1652, line: 31, baseType: !548)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1651, file: !1652, line: 210, baseType: !305, size: 16, offset: 864)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1651, file: !1652, line: 211, baseType: !305, size: 16, offset: 880)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1651, file: !1652, line: 215, baseType: !1274, size: 16, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1651, file: !1652, line: 222, baseType: !313, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 239, baseType: !1683, size: 320, offset: 1024)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 239, size: 320, elements: !1684)
!1684 = !{!1685, !1712}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1683, file: !1652, line: 240, baseType: !1686, size: 320)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1652, line: 108, size: 320, elements: !1687)
!1687 = !{!1688, !1689, !1701, !1704, !1711}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1686, file: !1652, line: 110, baseType: !313, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1686, file: !1652, line: 111, baseType: !1690, size: 64, offset: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1686, file: !1652, line: 111, size: 64, elements: !1691)
!1691 = !{!1692, !1700}
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1652, line: 112, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1652, line: 112, size: 64, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1693, file: !1652, line: 114, baseType: !893, size: 16)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1693, file: !1652, line: 115, baseType: !1697, size: 48, offset: 16)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !1698)
!1698 = !{!1699}
!1699 = !DISubrange(count: 6)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1690, file: !1652, line: 121, baseType: !313, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1686, file: !1652, line: 123, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1652, line: 96, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1686, file: !1652, line: 124, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1652, line: 102, size: 192, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1706, file: !1652, line: 103, baseType: !354, size: 128, align: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1706, file: !1652, line: 104, baseType: !1298, size: 32, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1706, file: !1652, line: 105, baseType: !479, size: 8, offset: 160)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1686, file: !1652, line: 125, baseType: !182, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1652, line: 241, baseType: !1713, size: 320)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1683, file: !1652, line: 241, size: 320, elements: !1714)
!1714 = !{!1715, !1716, !1717, !1718, !1719}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1713, file: !1652, line: 242, baseType: !313, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1713, file: !1652, line: 243, baseType: !313, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1713, file: !1652, line: 244, baseType: !1702, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1713, file: !1652, line: 245, baseType: !1705, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1713, file: !1652, line: 246, baseType: !263, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1651, file: !1652, line: 254, baseType: !1721, size: 256, offset: 1344)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1651, file: !1652, line: 254, size: 256, elements: !1722)
!1722 = !{!1723, !1729}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1721, file: !1652, line: 255, baseType: !1724, size: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1652, line: 128, size: 256, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1724, file: !1652, line: 129, baseType: !176, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1724, file: !1652, line: 130, baseType: !1728, size: 256)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !1230)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !1652, line: 256, baseType: !1730, size: 256)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !1652, line: 256, size: 256, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1730, file: !1652, line: 258, baseType: !193, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1730, file: !1652, line: 259, baseType: !1734, size: 128, offset: 128)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1735, line: 22, size: 128, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1740}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1734, file: !1735, line: 23, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1735, line: 23, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1734, file: !1735, line: 24, baseType: !313, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1651, file: !1652, line: 274, baseType: !1742, size: 64, offset: 1600)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1652, line: 170, size: 192, elements: !1744)
!1744 = !{!1745, !1754, !1755}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1743, file: !1652, line: 171, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1652, line: 165, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!188, !1650, !1750, !1752, !1650}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1743, file: !1652, line: 172, baseType: !1650, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1743, file: !1652, line: 173, baseType: !1702, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1622, file: !1623, line: 138, baseType: !1650, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1622, file: !1623, line: 139, baseType: !1650, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1622, file: !1623, line: 140, baseType: !1650, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1622, file: !1623, line: 145, baseType: !1760, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1762, line: 13, size: 896, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1761, file: !1762, line: 14, baseType: !1298, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1761, file: !1762, line: 15, baseType: !788, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1761, file: !1762, line: 16, baseType: !788, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1761, file: !1762, line: 21, baseType: !718, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1761, file: !1762, line: 27, baseType: !313, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1761, file: !1762, line: 28, baseType: !313, size: 64, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1761, file: !1762, line: 29, baseType: !718, size: 64, offset: 320)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1761, file: !1762, line: 32, baseType: !630, size: 128, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1761, file: !1762, line: 33, baseType: !424, size: 32, offset: 512)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1761, file: !1762, line: 37, baseType: !718, size: 64, offset: 576)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1761, file: !1762, line: 44, baseType: !1775, size: 256, offset: 640)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1776, line: 15, size: 256, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1775, file: !1776, line: 16, baseType: !814)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1775, file: !1776, line: 18, baseType: !188, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1775, file: !1776, line: 19, baseType: !188, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1775, file: !1776, line: 20, baseType: !188, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1775, file: !1776, line: 21, baseType: !188, size: 32, offset: 96)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1775, file: !1776, line: 22, baseType: !313, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1775, file: !1776, line: 23, baseType: !313, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1622, file: !1623, line: 146, baseType: !1786, size: 64, offset: 1024)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !425, line: 18, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1622, file: !1623, line: 147, baseType: !1789, size: 64, offset: 1088)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1623, line: 25, size: 64, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1790, file: !1623, line: 26, baseType: !788, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1790, file: !1623, line: 27, baseType: !188, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1790, file: !1623, line: 28, baseType: !1795, offset: 64)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, elements: !1796)
!1796 = !{!1797}
!1797 = !DISubrange(count: 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1622, file: !1623, line: 149, baseType: !1799, size: 128, offset: 1152)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1622, file: !1623, line: 149, size: 128, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1799, file: !1623, line: 150, baseType: !188, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1799, file: !1623, line: 151, baseType: !354, size: 128, align: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1286, file: !935, line: 926, baseType: !1620, size: 64, offset: 8576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1286, file: !935, line: 929, baseType: !1620, size: 64, offset: 8640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1286, file: !935, line: 933, baseType: !1650, size: 64, offset: 8704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1286, file: !935, line: 943, baseType: !1807, size: 128, offset: 8768)
!1807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !1808)
!1808 = !{!1809}
!1809 = !DISubrange(count: 16)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1286, file: !935, line: 945, baseType: !1811, size: 64, offset: 8896)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !935, line: 49, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1286, file: !935, line: 956, baseType: !1814, size: 64, offset: 8960)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !935, line: 45, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1286, file: !935, line: 959, baseType: !1817, size: 64, offset: 9024)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !935, line: 959, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1286, file: !935, line: 962, baseType: !1820, size: 64, offset: 9088)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !935, line: 66, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1286, file: !935, line: 966, baseType: !1823, size: 64, offset: 9152)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !935, line: 50, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1286, file: !935, line: 969, baseType: !1826, size: 64, offset: 9216)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1828, line: 82, size: 7296, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1865, !1874, !1875, !1877, !1878, !1879, !1882, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1912, !1913, !1920, !1921, !1922, !1923, !1924, !1925}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1827, file: !1828, line: 83, baseType: !1298, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1827, file: !1828, line: 84, baseType: !788, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1827, file: !1828, line: 85, baseType: !188, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1827, file: !1828, line: 86, baseType: !193, size: 128, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1827, file: !1828, line: 88, baseType: !1554, size: 128, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1827, file: !1828, line: 91, baseType: !1285, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1827, file: !1828, line: 94, baseType: !1837, size: 192, offset: 448)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1838, line: 30, size: 192, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1837, file: !1838, line: 31, baseType: !193, size: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1837, file: !1838, line: 32, baseType: !1842, size: 64, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1843, line: 25, baseType: !1844)
!1843 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1843, line: 23, size: 64, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1844, file: !1843, line: 24, baseType: !1438, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1827, file: !1828, line: 97, baseType: !626, size: 64, offset: 640)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1827, file: !1828, line: 100, baseType: !188, size: 32, offset: 704)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1827, file: !1828, line: 106, baseType: !188, size: 32, offset: 736)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1827, file: !1828, line: 107, baseType: !1285, size: 64, offset: 768)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1827, file: !1828, line: 110, baseType: !188, size: 32, offset: 832)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !1828, line: 111, baseType: !7, size: 32, offset: 864)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1827, file: !1828, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1827, file: !1828, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1827, file: !1828, line: 128, baseType: !188, size: 32, offset: 928)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1827, file: !1828, line: 129, baseType: !193, size: 128, offset: 960)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1827, file: !1828, line: 132, baseType: !1360, size: 512, offset: 1088)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1827, file: !1828, line: 133, baseType: !1368, size: 64, offset: 1600)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1827, file: !1828, line: 140, baseType: !1860, size: 256, offset: 1664)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1861, size: 256, elements: !1642)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1828, line: 38, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1861, file: !1828, line: 39, baseType: !410, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1861, file: !1828, line: 40, baseType: !410, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1827, file: !1828, line: 146, baseType: !1866, size: 192, offset: 1920)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1828, line: 66, size: 192, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1866, file: !1828, line: 67, baseType: !1869, size: 192)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1828, line: 47, size: 192, elements: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1869, file: !1828, line: 48, baseType: !720, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1869, file: !1828, line: 49, baseType: !720, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1869, file: !1828, line: 50, baseType: !720, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1827, file: !1828, line: 150, baseType: !1603, size: 640, offset: 2112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1827, file: !1828, line: 153, baseType: !1876, size: 256, offset: 2752)
!1876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1544, size: 256, elements: !1230)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1827, file: !1828, line: 159, baseType: !1544, size: 64, offset: 3008)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1827, file: !1828, line: 162, baseType: !188, size: 32, offset: 3072)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1827, file: !1828, line: 164, baseType: !1880, size: 64, offset: 3136)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1828, line: 164, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1827, file: !1828, line: 175, baseType: !1883, size: 32, offset: 3200)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !377, line: 805, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 798, size: 32, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1884, file: !377, line: 803, baseType: !376, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1884, file: !377, line: 804, baseType: !222, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1827, file: !1828, line: 176, baseType: !410, size: 64, offset: 3264)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1827, file: !1828, line: 176, baseType: !410, size: 64, offset: 3328)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1827, file: !1828, line: 176, baseType: !410, size: 64, offset: 3392)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1827, file: !1828, line: 176, baseType: !410, size: 64, offset: 3456)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1827, file: !1828, line: 177, baseType: !410, size: 64, offset: 3520)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1827, file: !1828, line: 178, baseType: !410, size: 64, offset: 3584)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1827, file: !1828, line: 179, baseType: !1591, size: 128, offset: 3648)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1827, file: !1828, line: 180, baseType: !313, size: 64, offset: 3776)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1827, file: !1828, line: 180, baseType: !313, size: 64, offset: 3840)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1827, file: !1828, line: 180, baseType: !313, size: 64, offset: 3904)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1827, file: !1828, line: 180, baseType: !313, size: 64, offset: 3968)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1827, file: !1828, line: 181, baseType: !313, size: 64, offset: 4032)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1827, file: !1828, line: 181, baseType: !313, size: 64, offset: 4096)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1827, file: !1828, line: 181, baseType: !313, size: 64, offset: 4160)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1827, file: !1828, line: 181, baseType: !313, size: 64, offset: 4224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1827, file: !1828, line: 182, baseType: !313, size: 64, offset: 4288)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1827, file: !1828, line: 182, baseType: !313, size: 64, offset: 4352)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1827, file: !1828, line: 182, baseType: !313, size: 64, offset: 4416)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1827, file: !1828, line: 182, baseType: !313, size: 64, offset: 4480)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1827, file: !1828, line: 183, baseType: !313, size: 64, offset: 4544)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1827, file: !1828, line: 183, baseType: !313, size: 64, offset: 4608)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1827, file: !1828, line: 184, baseType: !1910, offset: 4672)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1911, line: 12, elements: !236)
!1911 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1827, file: !1828, line: 192, baseType: !412, size: 64, offset: 4672)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1827, file: !1828, line: 203, baseType: !1914, size: 2048, offset: 4736)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1915, size: 2048, elements: !1808)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1916, line: 43, size: 128, elements: !1917)
!1916 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1915, file: !1916, line: 44, baseType: !312, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1915, file: !1916, line: 45, baseType: !312, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1827, file: !1828, line: 220, baseType: !479, size: 8, offset: 6784)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1827, file: !1828, line: 221, baseType: !1274, size: 16, offset: 6800)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1827, file: !1828, line: 222, baseType: !1274, size: 16, offset: 6816)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1827, file: !1828, line: 224, baseType: !1049, size: 64, offset: 6848)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1827, file: !1828, line: 227, baseType: !714, size: 192, offset: 6912)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1827, file: !1828, line: 233, baseType: !714, size: 192, offset: 7104)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1286, file: !935, line: 970, baseType: !1927, size: 64, offset: 9280)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1828, line: 20, size: 16576, elements: !1929)
!1929 = !{!1930, !1931, !1932, !1933}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1928, file: !1828, line: 21, baseType: !222)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1928, file: !1828, line: 22, baseType: !1298, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1928, file: !1828, line: 23, baseType: !1554, size: 128, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1928, file: !1828, line: 24, baseType: !1934, size: 16384, offset: 192)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1935, size: 16384, elements: !268)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1838, line: 49, size: 256, elements: !1936)
!1936 = !{!1937}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1935, file: !1838, line: 50, baseType: !1938, size: 256)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1838, line: 35, size: 256, elements: !1939)
!1939 = !{!1940, !1947, !1948, !1954}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1938, file: !1838, line: 37, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1942, line: 19, baseType: !1943)
!1942 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1942, line: 18, baseType: !1945)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !188}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1938, file: !1838, line: 38, baseType: !313, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1938, file: !1838, line: 44, baseType: !1949, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1942, line: 22, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1942, line: 21, baseType: !1952)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1938, file: !1838, line: 46, baseType: !1842, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1286, file: !935, line: 971, baseType: !1842, size: 64, offset: 9344)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1286, file: !935, line: 972, baseType: !1842, size: 64, offset: 9408)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1286, file: !935, line: 974, baseType: !1842, size: 64, offset: 9472)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1286, file: !935, line: 975, baseType: !1837, size: 192, offset: 9536)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1286, file: !935, line: 976, baseType: !313, size: 64, offset: 9728)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1286, file: !935, line: 977, baseType: !310, size: 64, offset: 9792)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1286, file: !935, line: 978, baseType: !7, size: 32, offset: 9856)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1286, file: !935, line: 980, baseType: !357, size: 64, offset: 9920)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1286, file: !935, line: 989, baseType: !1964, size: 128, offset: 9984)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1965, line: 35, size: 128, elements: !1966)
!1965 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1966 = !{!1967, !1968, !1969}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1964, file: !1965, line: 36, baseType: !188, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1964, file: !1965, line: 37, baseType: !788, size: 32, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1964, file: !1965, line: 38, baseType: !1970, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1965, line: 23, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1286, file: !935, line: 992, baseType: !410, size: 64, offset: 10112)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1286, file: !935, line: 993, baseType: !410, size: 64, offset: 10176)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1286, file: !935, line: 996, baseType: !222, offset: 10240)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1286, file: !935, line: 999, baseType: !814, offset: 10240)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1286, file: !935, line: 1001, baseType: !1977, size: 64, offset: 10240)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !935, line: 636, size: 64, elements: !1978)
!1978 = !{!1979}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1977, file: !935, line: 637, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1286, file: !935, line: 1005, baseType: !793, size: 128, offset: 10304)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1286, file: !935, line: 1007, baseType: !1285, size: 64, offset: 10432)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1286, file: !935, line: 1009, baseType: !1984, size: 64, offset: 10496)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !935, line: 1009, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1286, file: !935, line: 1043, baseType: !176, size: 64, offset: 10560)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1286, file: !935, line: 1046, baseType: !1988, size: 64, offset: 10624)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !935, line: 41, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1286, file: !935, line: 1050, baseType: !1991, size: 64, offset: 10688)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !935, line: 42, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1286, file: !935, line: 1054, baseType: !1994, size: 64, offset: 10752)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !935, line: 55, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1286, file: !935, line: 1056, baseType: !1997, size: 64, offset: 10816)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !935, line: 40, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1286, file: !935, line: 1058, baseType: !2000, size: 64, offset: 10880)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2002, line: 99, size: 704, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2029, !2030}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2001, file: !2002, line: 100, baseType: !718, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2001, file: !2002, line: 101, baseType: !788, size: 32, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2001, file: !2002, line: 102, baseType: !788, size: 32, offset: 96)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2001, file: !2002, line: 105, baseType: !222, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2001, file: !2002, line: 107, baseType: !305, size: 16, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2001, file: !2002, line: 109, baseType: !779, size: 128, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2001, file: !2002, line: 110, baseType: !2011, size: 64, offset: 320)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2002, line: 73, size: 448, elements: !2013)
!2013 = !{!2014, !2017, !2018, !2023, !2028}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2012, file: !2002, line: 74, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2002, line: 74, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2012, file: !2002, line: 75, baseType: !2000, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !2002, line: 83, baseType: !2019, size: 128, offset: 128)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !2002, line: 83, size: 128, elements: !2020)
!2020 = !{!2021, !2022}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2019, file: !2002, line: 84, baseType: !193, size: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2019, file: !2002, line: 85, baseType: !1009, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !2002, line: 87, baseType: !2024, size: 128, offset: 256)
!2024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !2002, line: 87, size: 128, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2024, file: !2002, line: 88, baseType: !630, size: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2024, file: !2002, line: 89, baseType: !354, size: 128, align: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2012, file: !2002, line: 92, baseType: !7, size: 32, offset: 384)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2001, file: !2002, line: 111, baseType: !626, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2001, file: !2002, line: 113, baseType: !2031, size: 256, offset: 448)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2032, line: 102, size: 256, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2031, file: !2032, line: 103, baseType: !718, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2031, file: !2032, line: 104, baseType: !193, size: 128, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2031, file: !2032, line: 105, baseType: !2037, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2032, line: 21, baseType: !2038)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1286, file: !935, line: 1061, baseType: !2043, size: 64, offset: 10944)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !935, line: 43, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1286, file: !935, line: 1064, baseType: !313, size: 64, offset: 11008)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1286, file: !935, line: 1065, baseType: !2047, size: 64, offset: 11072)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1838, line: 14, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1838, line: 12, size: 384, elements: !2050)
!2050 = !{!2051}
!2051 = !DIDerivedType(tag: DW_TAG_member, scope: !2049, file: !1838, line: 13, baseType: !2052, size: 384)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2049, file: !1838, line: 13, size: 384, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2052, file: !1838, line: 13, baseType: !188, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2052, file: !1838, line: 13, baseType: !188, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2052, file: !1838, line: 13, baseType: !188, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2052, file: !1838, line: 13, baseType: !2058, size: 256, offset: 128)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2059, line: 32, size: 256, elements: !2060)
!2059 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061, !2066, !2079, !2085, !2094, !2114, !2119}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2058, file: !2059, line: 37, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2059, line: 34, size: 64, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2062, file: !2059, line: 35, baseType: !1533, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2062, file: !2059, line: 36, baseType: !430, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2058, file: !2059, line: 45, baseType: !2067, size: 192)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2059, line: 40, size: 192, elements: !2068)
!2068 = !{!2069, !2071, !2072, !2078}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2067, file: !2059, line: 41, baseType: !2070, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !296, line: 95, baseType: !188)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2067, file: !2059, line: 42, baseType: !188, size: 32, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2067, file: !2059, line: 43, baseType: !2073, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2059, line: 11, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2059, line: 8, size: 64, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2074, file: !2059, line: 9, baseType: !188, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2074, file: !2059, line: 10, baseType: !176, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2067, file: !2059, line: 44, baseType: !188, size: 32, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2058, file: !2059, line: 52, baseType: !2080, size: 128)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2059, line: 48, size: 128, elements: !2081)
!2081 = !{!2082, !2083, !2084}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2080, file: !2059, line: 49, baseType: !1533, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2080, file: !2059, line: 50, baseType: !430, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2080, file: !2059, line: 51, baseType: !2073, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2058, file: !2059, line: 61, baseType: !2086, size: 256)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2059, line: 55, size: 256, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2091, !2093}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2086, file: !2059, line: 56, baseType: !1533, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2086, file: !2059, line: 57, baseType: !430, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2086, file: !2059, line: 58, baseType: !188, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2086, file: !2059, line: 59, baseType: !2092, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !296, line: 94, baseType: !297)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2086, file: !2059, line: 60, baseType: !2092, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2058, file: !2059, line: 95, baseType: !2095, size: 256)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2059, line: 64, size: 256, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2095, file: !2059, line: 65, baseType: !176, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, scope: !2095, file: !2059, line: 77, baseType: !2099, size: 192, offset: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2095, file: !2059, line: 77, size: 192, elements: !2100)
!2100 = !{!2101, !2102, !2109}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2099, file: !2059, line: 82, baseType: !1274, size: 16)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2099, file: !2059, line: 88, baseType: !2103, size: 192)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2099, file: !2059, line: 84, size: 192, elements: !2104)
!2104 = !{!2105, !2107, !2108}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2103, file: !2059, line: 85, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !1398)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2103, file: !2059, line: 86, baseType: !176, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2103, file: !2059, line: 87, baseType: !176, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2099, file: !2059, line: 93, baseType: !2110, size: 96)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2099, file: !2059, line: 90, size: 96, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2110, file: !2059, line: 91, baseType: !2106, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2110, file: !2059, line: 92, baseType: !406, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2058, file: !2059, line: 101, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2059, line: 98, size: 128, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2115, file: !2059, line: 99, baseType: !298, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2115, file: !2059, line: 100, baseType: !188, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2058, file: !2059, line: 108, baseType: !2120, size: 128)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2059, line: 104, size: 128, elements: !2121)
!2121 = !{!2122, !2123, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2120, file: !2059, line: 105, baseType: !176, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2120, file: !2059, line: 106, baseType: !188, size: 32, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2120, file: !2059, line: 107, baseType: !7, size: 32, offset: 96)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1286, file: !935, line: 1067, baseType: !1910, offset: 11136)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1286, file: !935, line: 1099, baseType: !2127, size: 64, offset: 11136)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !935, line: 56, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1286, file: !935, line: 1103, baseType: !193, size: 128, offset: 11200)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1286, file: !935, line: 1104, baseType: !2131, size: 64, offset: 11328)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !935, line: 46, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1286, file: !935, line: 1105, baseType: !714, size: 192, offset: 11392)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1286, file: !935, line: 1106, baseType: !7, size: 32, offset: 11584)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1286, file: !935, line: 1109, baseType: !2136, size: 128, offset: 11648)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 128, elements: !1642)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !935, line: 51, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1286, file: !935, line: 1110, baseType: !714, size: 192, offset: 11776)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1286, file: !935, line: 1111, baseType: !193, size: 128, offset: 11968)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1286, file: !935, line: 1173, baseType: !2142, size: 64, offset: 12096)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2144, line: 62, size: 256, align: 256, elements: !2145)
!2144 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2147, !2148, !2153}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2143, file: !2144, line: 75, baseType: !406, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2143, file: !2144, line: 90, baseType: !406, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2143, file: !2144, line: 124, baseType: !2149, size: 64, offset: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !2144, line: 109, size: 64, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2149, file: !2144, line: 110, baseType: !411, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2149, file: !2144, line: 112, baseType: !411, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2143, file: !2144, line: 144, baseType: !406, size: 32, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1286, file: !935, line: 1174, baseType: !404, size: 32, offset: 12160)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1286, file: !935, line: 1179, baseType: !313, size: 64, offset: 12224)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1286, file: !935, line: 1182, baseType: !2157, size: 128, offset: 12288)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1226, line: 76, size: 128, elements: !2158)
!2158 = !{!2159, !2164, !2165}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2157, file: !1226, line: 85, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2161, line: 7, size: 64, elements: !2162)
!2161 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2160, file: !2161, line: 12, baseType: !1435, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2157, file: !1226, line: 88, baseType: !479, size: 8, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2157, file: !1226, line: 95, baseType: !479, size: 8, offset: 72)
!2166 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !935, line: 1184, baseType: !2167, size: 128, offset: 12416)
!2167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1286, file: !935, line: 1184, size: 128, elements: !2168)
!2168 = !{!2169, !2170}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2167, file: !935, line: 1185, baseType: !1298, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2167, file: !935, line: 1186, baseType: !354, size: 128, align: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1286, file: !935, line: 1190, baseType: !933, size: 64, offset: 12544)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1286, file: !935, line: 1192, baseType: !2173, size: 128, offset: 12608)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1226, line: 64, size: 128, elements: !2174)
!2174 = !{!2175, !2176, !2177}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2173, file: !1226, line: 65, baseType: !761, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2173, file: !1226, line: 67, baseType: !406, size: 32, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2173, file: !1226, line: 68, baseType: !406, size: 32, offset: 96)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1286, file: !935, line: 1206, baseType: !188, size: 32, offset: 12736)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1286, file: !935, line: 1207, baseType: !188, size: 32, offset: 12768)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1286, file: !935, line: 1209, baseType: !313, size: 64, offset: 12800)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1286, file: !935, line: 1219, baseType: !410, size: 64, offset: 12864)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1286, file: !935, line: 1220, baseType: !410, size: 64, offset: 12928)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1286, file: !935, line: 1317, baseType: !188, size: 32, offset: 12992)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1286, file: !935, line: 1319, baseType: !1285, size: 64, offset: 13056)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1286, file: !935, line: 1322, baseType: !2186, size: 64, offset: 13120)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2188, line: 56, size: 512, elements: !2189)
!2188 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2198}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2187, file: !2188, line: 57, baseType: !2186, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2187, file: !2188, line: 58, baseType: !176, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2187, file: !2188, line: 59, baseType: !313, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2187, file: !2188, line: 60, baseType: !313, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2187, file: !2188, line: 61, baseType: !854, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2187, file: !2188, line: 62, baseType: !7, size: 32, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2187, file: !2188, line: 63, baseType: !2197, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !194, line: 153, baseType: !410)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2187, file: !2188, line: 64, baseType: !2199, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1286, file: !935, line: 1326, baseType: !1298, size: 32, offset: 13184)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1286, file: !935, line: 1342, baseType: !176, size: 64, offset: 13248)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1286, file: !935, line: 1343, baseType: !411, size: 64, offset: 13312)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1286, file: !935, line: 1344, baseType: !410, size: 64, offset: 13376)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1286, file: !935, line: 1345, baseType: !411, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1286, file: !935, line: 1346, baseType: !411, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1286, file: !935, line: 1347, baseType: !411, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1286, file: !935, line: 1348, baseType: !354, size: 128, align: 64, offset: 13504)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1286, file: !935, line: 1358, baseType: !2210, size: 34816, offset: 13824)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2211, line: 485, size: 34816, elements: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2242, !2243, !2244, !2245, !2246, !2247, !2250, !2251, !2252}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2210, file: !2211, line: 487, baseType: !2214, size: 192)
!2214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2215, size: 192, elements: !264)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2216, line: 16, size: 64, elements: !2217)
!2216 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2215, file: !2216, line: 17, baseType: !893, size: 16)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2215, file: !2216, line: 18, baseType: !893, size: 16, offset: 16)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2215, file: !2216, line: 19, baseType: !893, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2215, file: !2216, line: 19, baseType: !893, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2215, file: !2216, line: 19, baseType: !893, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2215, file: !2216, line: 19, baseType: !893, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2215, file: !2216, line: 19, baseType: !893, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2215, file: !2216, line: 20, baseType: !893, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2215, file: !2216, line: 20, baseType: !893, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2215, file: !2216, line: 20, baseType: !893, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2215, file: !2216, line: 20, baseType: !893, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2215, file: !2216, line: 20, baseType: !893, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2215, file: !2216, line: 20, baseType: !893, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2210, file: !2211, line: 491, baseType: !313, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2210, file: !2211, line: 495, baseType: !305, size: 16, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2210, file: !2211, line: 496, baseType: !305, size: 16, offset: 272)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2210, file: !2211, line: 497, baseType: !305, size: 16, offset: 288)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2210, file: !2211, line: 498, baseType: !305, size: 16, offset: 304)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2210, file: !2211, line: 502, baseType: !313, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2210, file: !2211, line: 503, baseType: !313, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2210, file: !2211, line: 514, baseType: !2239, size: 256, offset: 448)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2240, size: 256, elements: !1230)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2211, line: 483, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2210, file: !2211, line: 516, baseType: !313, size: 64, offset: 704)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2210, file: !2211, line: 518, baseType: !313, size: 64, offset: 768)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2210, file: !2211, line: 520, baseType: !313, size: 64, offset: 832)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2210, file: !2211, line: 521, baseType: !313, size: 64, offset: 896)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2210, file: !2211, line: 522, baseType: !313, size: 64, offset: 960)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2210, file: !2211, line: 528, baseType: !2248, size: 64, offset: 1024)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2211, line: 10, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2210, file: !2211, line: 535, baseType: !313, size: 64, offset: 1088)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2210, file: !2211, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2210, file: !2211, line: 540, baseType: !2253, size: 33280, offset: 1536)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2254, line: 317, size: 33280, elements: !2255)
!2254 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2253, file: !2254, line: 330, baseType: !7, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2253, file: !2254, line: 337, baseType: !313, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2253, file: !2254, line: 348, baseType: !2259, size: 32768, offset: 512)
!2259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2254, line: 304, size: 32768, elements: !2260)
!2260 = !{!2261, !2276, !2315, !2365, !2378}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2259, file: !2254, line: 305, baseType: !2262, size: 896)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2254, line: 12, size: 896, elements: !2263)
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2275}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2262, file: !2254, line: 13, baseType: !404, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2262, file: !2254, line: 14, baseType: !404, size: 32, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2262, file: !2254, line: 15, baseType: !404, size: 32, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2262, file: !2254, line: 16, baseType: !404, size: 32, offset: 96)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2262, file: !2254, line: 17, baseType: !404, size: 32, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2262, file: !2254, line: 18, baseType: !404, size: 32, offset: 160)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2262, file: !2254, line: 19, baseType: !404, size: 32, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2262, file: !2254, line: 22, baseType: !2272, size: 640, offset: 224)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 640, elements: !2273)
!2273 = !{!2274}
!2274 = !DISubrange(count: 20)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2262, file: !2254, line: 25, baseType: !404, size: 32, offset: 864)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2259, file: !2254, line: 306, baseType: !2277, size: 4096, align: 128)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2254, line: 34, size: 4096, align: 128, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2298, !2299, !2300, !2304, !2306, !2310}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2277, file: !2254, line: 35, baseType: !893, size: 16)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2277, file: !2254, line: 36, baseType: !893, size: 16, offset: 16)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2277, file: !2254, line: 37, baseType: !893, size: 16, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2277, file: !2254, line: 38, baseType: !893, size: 16, offset: 48)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !2254, line: 39, baseType: !2284, size: 128, offset: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2277, file: !2254, line: 39, size: 128, elements: !2285)
!2285 = !{!2286, !2291}
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !2254, line: 40, baseType: !2287, size: 128)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !2254, line: 40, size: 128, elements: !2288)
!2288 = !{!2289, !2290}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2287, file: !2254, line: 41, baseType: !410, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2287, file: !2254, line: 42, baseType: !410, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, scope: !2284, file: !2254, line: 44, baseType: !2292, size: 128)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2284, file: !2254, line: 44, size: 128, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2292, file: !2254, line: 45, baseType: !404, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2292, file: !2254, line: 46, baseType: !404, size: 32, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2292, file: !2254, line: 47, baseType: !404, size: 32, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2292, file: !2254, line: 48, baseType: !404, size: 32, offset: 96)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2277, file: !2254, line: 51, baseType: !404, size: 32, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2277, file: !2254, line: 52, baseType: !404, size: 32, offset: 224)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2277, file: !2254, line: 55, baseType: !2301, size: 1024, offset: 256)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 1024, elements: !2302)
!2302 = !{!2303}
!2303 = !DISubrange(count: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2277, file: !2254, line: 58, baseType: !2305, size: 2048, offset: 1280)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 2048, elements: !268)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2277, file: !2254, line: 60, baseType: !2307, size: 384, offset: 3328)
!2307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 384, elements: !2308)
!2308 = !{!2309}
!2309 = !DISubrange(count: 12)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !2254, line: 62, baseType: !2311, size: 384, offset: 3712)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2277, file: !2254, line: 62, size: 384, elements: !2312)
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2311, file: !2254, line: 63, baseType: !2307, size: 384)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2311, file: !2254, line: 64, baseType: !2307, size: 384)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2259, file: !2254, line: 307, baseType: !2316, size: 1088)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2254, line: 79, size: 1088, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2364}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2316, file: !2254, line: 80, baseType: !404, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2316, file: !2254, line: 81, baseType: !404, size: 32, offset: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2316, file: !2254, line: 82, baseType: !404, size: 32, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2316, file: !2254, line: 83, baseType: !404, size: 32, offset: 96)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2316, file: !2254, line: 84, baseType: !404, size: 32, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2316, file: !2254, line: 85, baseType: !404, size: 32, offset: 160)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2316, file: !2254, line: 86, baseType: !404, size: 32, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2316, file: !2254, line: 88, baseType: !2272, size: 640, offset: 224)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2316, file: !2254, line: 89, baseType: !1420, size: 8, offset: 864)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2316, file: !2254, line: 90, baseType: !1420, size: 8, offset: 872)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2316, file: !2254, line: 91, baseType: !1420, size: 8, offset: 880)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2316, file: !2254, line: 92, baseType: !1420, size: 8, offset: 888)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2316, file: !2254, line: 93, baseType: !1420, size: 8, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2316, file: !2254, line: 94, baseType: !1420, size: 8, offset: 904)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2316, file: !2254, line: 95, baseType: !2333, size: 64, offset: 960)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2335, line: 11, size: 128, elements: !2336)
!2335 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2334, file: !2335, line: 12, baseType: !298, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2334, file: !2335, line: 13, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2341, line: 56, size: 1344, elements: !2342)
!2341 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2340, file: !2341, line: 61, baseType: !313, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2340, file: !2341, line: 62, baseType: !313, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2340, file: !2341, line: 63, baseType: !313, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2340, file: !2341, line: 64, baseType: !313, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2340, file: !2341, line: 65, baseType: !313, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2340, file: !2341, line: 66, baseType: !313, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2340, file: !2341, line: 68, baseType: !313, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2340, file: !2341, line: 69, baseType: !313, size: 64, offset: 448)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2340, file: !2341, line: 70, baseType: !313, size: 64, offset: 512)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2340, file: !2341, line: 71, baseType: !313, size: 64, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2340, file: !2341, line: 72, baseType: !313, size: 64, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2340, file: !2341, line: 73, baseType: !313, size: 64, offset: 704)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2340, file: !2341, line: 74, baseType: !313, size: 64, offset: 768)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2340, file: !2341, line: 75, baseType: !313, size: 64, offset: 832)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2340, file: !2341, line: 76, baseType: !313, size: 64, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2340, file: !2341, line: 81, baseType: !313, size: 64, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2340, file: !2341, line: 83, baseType: !313, size: 64, offset: 1024)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2340, file: !2341, line: 84, baseType: !313, size: 64, offset: 1088)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2340, file: !2341, line: 85, baseType: !313, size: 64, offset: 1152)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2340, file: !2341, line: 86, baseType: !313, size: 64, offset: 1216)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2340, file: !2341, line: 87, baseType: !313, size: 64, offset: 1280)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2316, file: !2254, line: 96, baseType: !404, size: 32, offset: 1024)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2259, file: !2254, line: 308, baseType: !2366, size: 4608, align: 512)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2254, line: 289, size: 4608, align: 512, elements: !2367)
!2367 = !{!2368, !2369, !2376}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2366, file: !2254, line: 290, baseType: !2277, size: 4096, align: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2366, file: !2254, line: 291, baseType: !2370, size: 512, offset: 4096)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2254, line: 268, size: 512, elements: !2371)
!2371 = !{!2372, !2373, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2370, file: !2254, line: 269, baseType: !410, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2370, file: !2254, line: 270, baseType: !410, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2370, file: !2254, line: 271, baseType: !2375, size: 384, offset: 128)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 384, elements: !1698)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2366, file: !2254, line: 292, baseType: !2377, offset: 4608)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, elements: !1796)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2259, file: !2254, line: 309, baseType: !2379, size: 32768)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 32768, elements: !2380)
!2380 = !{!2381}
!2381 = !DISubrange(count: 4096)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1282, file: !763, line: 378, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1278, file: !763, line: 384, baseType: !1575, size: 192, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1053, file: !763, line: 500, baseType: !222, offset: 6656)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1053, file: !763, line: 501, baseType: !2387, size: 64, offset: 6656)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !763, line: 387, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1053, file: !763, line: 516, baseType: !1786, size: 64, offset: 6720)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1053, file: !763, line: 519, baseType: !341, size: 64, offset: 6784)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1053, file: !763, line: 521, baseType: !2392, size: 64, offset: 6848)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !763, line: 521, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1053, file: !763, line: 545, baseType: !788, size: 32, offset: 6912)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1053, file: !763, line: 548, baseType: !479, size: 8, offset: 6944)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1053, file: !763, line: 550, baseType: !2397, offset: 6952)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2398, line: 142, elements: !236)
!2398 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1053, file: !763, line: 554, baseType: !2031, size: 256, offset: 6976)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1053, file: !763, line: 557, baseType: !404, size: 32, offset: 7232)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1050, file: !763, line: 565, baseType: !2402, offset: 7296)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, elements: !2403)
!2403 = !{!2404}
!2404 = !DISubrange(count: -1)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1046, file: !763, line: 151, baseType: !788, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1038, file: !763, line: 156, baseType: !222, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !763, line: 159, baseType: !2408, size: 128)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !763, line: 159, size: 128, elements: !2409)
!2409 = !{!2410, !2474}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2408, file: !763, line: 161, baseType: !2411, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2413)
!2413 = !{!2414, !2424, !2445, !2446, !2447, !2448, !2449, !2461, !2462, !2463}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2412, file: !31, line: 111, baseType: !2415, size: 384)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2416)
!2416 = !{!2417, !2419, !2420, !2421, !2422, !2423}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2415, file: !31, line: 20, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2415, file: !31, line: 21, baseType: !2418, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2415, file: !31, line: 22, baseType: !2418, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2415, file: !31, line: 23, baseType: !313, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2415, file: !31, line: 24, baseType: !313, size: 64, offset: 256)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2415, file: !31, line: 25, baseType: !313, size: 64, offset: 320)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2412, file: !31, line: 112, baseType: !2425, size: 64, offset: 384)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2427, line: 105, size: 128, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2426, file: !2427, line: 110, baseType: !313, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2426, file: !2427, line: 118, baseType: !2431, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2427, line: 95, size: 448, elements: !2433)
!2433 = !{!2434, !2435, !2440, !2441, !2442, !2443, !2444}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2432, file: !2427, line: 96, baseType: !718, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2432, file: !2427, line: 97, baseType: !2436, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2427, line: 60, baseType: !2438)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !2425}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2432, file: !2427, line: 98, baseType: !2436, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2432, file: !2427, line: 99, baseType: !479, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2432, file: !2427, line: 100, baseType: !479, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2432, file: !2427, line: 101, baseType: !354, size: 128, align: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2432, file: !2427, line: 102, baseType: !2425, size: 64, offset: 384)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2412, file: !31, line: 113, baseType: !2426, size: 128, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2412, file: !31, line: 114, baseType: !1575, size: 192, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2412, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2412, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2412, file: !31, line: 117, baseType: !2450, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2453)
!2453 = !{!2454, !2455, !2459, !2460}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2452, file: !31, line: 73, baseType: !874, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2452, file: !31, line: 78, baseType: !2456, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2411}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2452, file: !31, line: 83, baseType: !2456, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2452, file: !31, line: 89, baseType: !1102, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2412, file: !31, line: 118, baseType: !176, size: 64, offset: 896)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2412, file: !31, line: 119, baseType: !188, size: 32, offset: 960)
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2412, file: !31, line: 120, baseType: !2464, size: 128, offset: 1024)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !31, line: 120, size: 128, elements: !2465)
!2465 = !{!2466, !2472}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2464, file: !31, line: 121, baseType: !2467, size: 128)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2468, line: 6, size: 128, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2469 = !{!2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2467, file: !2468, line: 7, baseType: !410, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2467, file: !2468, line: 8, baseType: !410, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2464, file: !31, line: 122, baseType: !2473)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2467, elements: !1796)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2408, file: !763, line: 162, baseType: !176, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !767, file: !763, line: 176, baseType: !354, size: 128, align: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !763, line: 179, baseType: !2477, size: 32, offset: 384)
!2477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !762, file: !763, line: 179, size: 32, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2477, file: !763, line: 184, baseType: !788, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2477, file: !763, line: 192, baseType: !7, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2477, file: !763, line: 194, baseType: !7, size: 32)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2477, file: !763, line: 195, baseType: !188, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !762, file: !763, line: 199, baseType: !788, size: 32, offset: 416)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !648, file: !44, line: 1964, baseType: !2485, size: 64, offset: 1344)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!298, !588, !2488}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2490, line: 12, size: 256, elements: !2491)
!2490 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2491 = !{!2492, !2493, !2494, !2495, !2496}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2489, file: !2490, line: 13, baseType: !784, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2489, file: !2490, line: 16, baseType: !188, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2489, file: !2490, line: 23, baseType: !313, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2489, file: !2490, line: 30, baseType: !313, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2489, file: !2490, line: 33, baseType: !2497, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !763, line: 27, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !648, file: !44, line: 1966, baseType: !2485, size: 64, offset: 1408)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !589, file: !44, line: 1424, baseType: !2501, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2504)
!2504 = !{!2505, !2551, !2555, !2559, !2560, !2561, !2562, !2563, !2568, !2573, !2577}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2503, file: !38, line: 323, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!188, !2509}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2536, !2537, !2538}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2510, file: !38, line: 295, baseType: !630, size: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2510, file: !38, line: 296, baseType: !193, size: 128, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2510, file: !38, line: 297, baseType: !193, size: 128, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2510, file: !38, line: 298, baseType: !193, size: 128, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2510, file: !38, line: 299, baseType: !714, size: 192, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2510, file: !38, line: 300, baseType: !222, offset: 704)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2510, file: !38, line: 301, baseType: !788, size: 32, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2510, file: !38, line: 302, baseType: !588, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2510, file: !38, line: 303, baseType: !2521, size: 64, offset: 832)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2522)
!2522 = !{!2523, !2535}
!2523 = !DIDerivedType(tag: DW_TAG_member, scope: !2521, file: !38, line: 69, baseType: !2524, size: 32)
!2524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2521, file: !38, line: 69, size: 32, elements: !2525)
!2525 = !{!2526, !2527, !2528}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2524, file: !38, line: 70, baseType: !424, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2524, file: !38, line: 71, baseType: !432, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2524, file: !38, line: 72, baseType: !2529, size: 32)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2530, line: 24, baseType: !2531)
!2530 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2530, line: 22, size: 32, elements: !2532)
!2532 = !{!2533}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2531, file: !2530, line: 23, baseType: !2534, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2530, line: 20, baseType: !430)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2521, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2510, file: !38, line: 304, baseType: !520, size: 64, offset: 896)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2510, file: !38, line: 305, baseType: !313, size: 64, offset: 960)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2510, file: !38, line: 306, baseType: !2539, size: 576, offset: 1024)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2540)
!2540 = !{!2541, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2539, file: !38, line: 206, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !522)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2539, file: !38, line: 207, baseType: !2542, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2539, file: !38, line: 208, baseType: !2542, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2539, file: !38, line: 209, baseType: !2542, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2539, file: !38, line: 210, baseType: !2542, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2539, file: !38, line: 211, baseType: !2542, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2539, file: !38, line: 212, baseType: !2542, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2539, file: !38, line: 213, baseType: !528, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2539, file: !38, line: 214, baseType: !528, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2503, file: !38, line: 324, baseType: !2552, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!2509, !588, !188}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2503, file: !38, line: 325, baseType: !2556, size: 64, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !2509}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2503, file: !38, line: 326, baseType: !2506, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2503, file: !38, line: 327, baseType: !2506, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2503, file: !38, line: 328, baseType: !2506, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2503, file: !38, line: 329, baseType: !676, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2503, file: !38, line: 332, baseType: !2564, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!2567, !418}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2503, file: !38, line: 333, baseType: !2569, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!188, !418, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2503, file: !38, line: 335, baseType: !2574, size: 64, offset: 576)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!188, !418, !2567}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2503, file: !38, line: 337, baseType: !2578, size: 64, offset: 640)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!188, !588, !2581}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !589, file: !44, line: 1425, baseType: !2583, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2586)
!2586 = !{!2587, !2591, !2592, !2596, !2597, !2598, !2613, !2636, !2640, !2641, !2664}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2585, file: !38, line: 429, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!188, !588, !188, !188, !538}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2585, file: !38, line: 430, baseType: !676, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2585, file: !38, line: 431, baseType: !2593, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!188, !588, !7}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2585, file: !38, line: 432, baseType: !2593, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2585, file: !38, line: 433, baseType: !676, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2585, file: !38, line: 434, baseType: !2599, size: 64, offset: 320)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!188, !588, !188, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2603, file: !38, line: 416, baseType: !188, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2603, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2603, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2603, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2603, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2603, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2603, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2603, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2585, file: !38, line: 435, baseType: !2614, size: 64, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!188, !588, !2521, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2618, file: !38, line: 344, baseType: !188, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2618, file: !38, line: 345, baseType: !410, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2618, file: !38, line: 346, baseType: !410, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2618, file: !38, line: 347, baseType: !410, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2618, file: !38, line: 348, baseType: !410, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2618, file: !38, line: 349, baseType: !410, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2618, file: !38, line: 350, baseType: !410, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2618, file: !38, line: 351, baseType: !724, size: 64, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2618, file: !38, line: 353, baseType: !724, size: 64, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2618, file: !38, line: 354, baseType: !188, size: 32, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2618, file: !38, line: 355, baseType: !188, size: 32, offset: 608)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2618, file: !38, line: 356, baseType: !410, size: 64, offset: 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2618, file: !38, line: 357, baseType: !410, size: 64, offset: 704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2618, file: !38, line: 358, baseType: !410, size: 64, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2618, file: !38, line: 359, baseType: !724, size: 64, offset: 832)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2618, file: !38, line: 360, baseType: !188, size: 32, offset: 896)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2585, file: !38, line: 436, baseType: !2637, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!188, !588, !2581, !2617}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2585, file: !38, line: 438, baseType: !2614, size: 64, offset: 512)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2585, file: !38, line: 439, baseType: !2642, size: 64, offset: 576)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!188, !588, !2645}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2646, file: !38, line: 410, baseType: !7, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2646, file: !38, line: 411, baseType: !2650, size: 1344, offset: 64)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2651, size: 1344, elements: !264)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2663}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2651, file: !38, line: 396, baseType: !7, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2651, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2651, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2651, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2651, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2651, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2651, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2651, file: !38, line: 404, baseType: !412, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2651, file: !38, line: 405, baseType: !2662, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !194, line: 126, baseType: !410)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2651, file: !38, line: 406, baseType: !2662, size: 64, offset: 384)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2585, file: !38, line: 440, baseType: !2593, size: 64, offset: 640)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !589, file: !44, line: 1426, baseType: !2666, size: 64, offset: 576)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2668)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !589, file: !44, line: 1427, baseType: !313, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !589, file: !44, line: 1428, baseType: !313, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !589, file: !44, line: 1429, baseType: !313, size: 64, offset: 768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !589, file: !44, line: 1430, baseType: !371, size: 64, offset: 832)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !589, file: !44, line: 1431, baseType: !808, size: 256, offset: 896)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !589, file: !44, line: 1432, baseType: !188, size: 32, offset: 1152)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !589, file: !44, line: 1433, baseType: !788, size: 32, offset: 1184)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !589, file: !44, line: 1437, baseType: !2677, size: 64, offset: 1216)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !589, file: !44, line: 1449, baseType: !2682, size: 64, offset: 1280)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !387, line: 34, size: 64, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2682, file: !387, line: 35, baseType: !390, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !589, file: !44, line: 1450, baseType: !193, size: 128, offset: 1344)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !589, file: !44, line: 1451, baseType: !2687, size: 64, offset: 1472)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !589, file: !44, line: 1452, baseType: !1997, size: 64, offset: 1536)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !589, file: !44, line: 1453, baseType: !2691, size: 64, offset: 1600)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !589, file: !44, line: 1454, baseType: !630, size: 128, offset: 1664)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !589, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !589, file: !44, line: 1456, baseType: !2696, size: 2432, offset: 1856)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2702, !2734}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2696, file: !38, line: 519, baseType: !7, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2696, file: !38, line: 520, baseType: !808, size: 256, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2696, file: !38, line: 521, baseType: !2701, size: 192, offset: 320)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 192, elements: !264)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2696, file: !38, line: 522, baseType: !2703, size: 1728, offset: 512)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2704, size: 1728, elements: !264)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2705)
!2705 = !{!2706, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2704, file: !38, line: 223, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2709)
!2709 = !{!2710, !2711, !2724, !2725}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2708, file: !38, line: 444, baseType: !188, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2708, file: !38, line: 445, baseType: !2712, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2715)
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2714, file: !38, line: 311, baseType: !676, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2714, file: !38, line: 312, baseType: !676, size: 64, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2714, file: !38, line: 313, baseType: !676, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2714, file: !38, line: 314, baseType: !676, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2714, file: !38, line: 315, baseType: !2506, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2714, file: !38, line: 316, baseType: !2506, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2714, file: !38, line: 317, baseType: !2506, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2714, file: !38, line: 318, baseType: !2578, size: 64, offset: 448)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2708, file: !38, line: 446, baseType: !621, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2708, file: !38, line: 447, baseType: !2707, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2704, file: !38, line: 224, baseType: !188, size: 32, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2704, file: !38, line: 226, baseType: !193, size: 128, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2704, file: !38, line: 227, baseType: !313, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2704, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2704, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2704, file: !38, line: 230, baseType: !2542, size: 64, offset: 384)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2704, file: !38, line: 231, baseType: !2542, size: 64, offset: 448)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2704, file: !38, line: 232, baseType: !176, size: 64, offset: 512)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2696, file: !38, line: 523, baseType: !2735, size: 192, offset: 2240)
!2735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2712, size: 192, elements: !264)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !589, file: !44, line: 1458, baseType: !2737, size: 2112, offset: 4288)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2738)
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2737, file: !44, line: 1411, baseType: !188, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2737, file: !44, line: 1412, baseType: !1554, size: 128, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2737, file: !44, line: 1413, baseType: !2742, size: 1920, offset: 192)
!2742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2743, size: 1920, elements: !264)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2744, line: 12, size: 640, elements: !2745)
!2744 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2745 = !{!2746, !2754, !2756, !2761, !2762}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2743, file: !2744, line: 13, baseType: !2747, size: 320)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2748, line: 17, size: 320, elements: !2749)
!2748 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2749 = !{!2750, !2751, !2752, !2753}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2747, file: !2748, line: 18, baseType: !188, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2747, file: !2748, line: 19, baseType: !188, size: 32, offset: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2747, file: !2748, line: 20, baseType: !1554, size: 128, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2747, file: !2748, line: 22, baseType: !354, size: 128, align: 64, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2743, file: !2744, line: 14, baseType: !2755, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2743, file: !2744, line: 15, baseType: !2757, size: 64, offset: 384)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2758, line: 16, size: 64, elements: !2759)
!2758 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2757, file: !2758, line: 17, baseType: !1285, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2743, file: !2744, line: 16, baseType: !1554, size: 128, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2743, file: !2744, line: 17, baseType: !788, size: 32, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !589, file: !44, line: 1465, baseType: !176, size: 64, offset: 6400)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !589, file: !44, line: 1468, baseType: !404, size: 32, offset: 6464)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !589, file: !44, line: 1470, baseType: !528, size: 64, offset: 6528)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !589, file: !44, line: 1471, baseType: !528, size: 64, offset: 6592)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !589, file: !44, line: 1473, baseType: !406, size: 32, offset: 6656)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !589, file: !44, line: 1474, baseType: !2769, size: 64, offset: 6720)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !589, file: !44, line: 1477, baseType: !2772, size: 256, offset: 6784)
!2772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !2302)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !589, file: !44, line: 1478, baseType: !2774, size: 128, offset: 7040)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2775, line: 18, baseType: !2776)
!2775 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2775, line: 16, size: 128, elements: !2777)
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2776, file: !2775, line: 17, baseType: !2779, size: 128)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 128, elements: !1808)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !589, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !589, file: !44, line: 1481, baseType: !2782, size: 32, offset: 7200)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !194, line: 150, baseType: !7)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !589, file: !44, line: 1487, baseType: !714, size: 192, offset: 7232)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !589, file: !44, line: 1493, baseType: !182, size: 64, offset: 7424)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !589, file: !44, line: 1495, baseType: !2786, size: 64, offset: 7488)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !369, line: 135, size: 1024, align: 512, elements: !2789)
!2789 = !{!2790, !2794, !2795, !2802, !2808, !2812, !2816, !2820, !2821, !2825, !2829, !2834, !2838}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2788, file: !369, line: 136, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!188, !371, !7}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2788, file: !369, line: 137, baseType: !2791, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2788, file: !369, line: 138, baseType: !2796, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!188, !2799, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2788, file: !369, line: 139, baseType: !2803, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!188, !2799, !7, !182, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2788, file: !369, line: 141, baseType: !2809, size: 64, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!188, !2799}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2788, file: !369, line: 142, baseType: !2813, size: 64, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!188, !371}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2788, file: !369, line: 143, baseType: !2817, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !371}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2788, file: !369, line: 144, baseType: !2817, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2788, file: !369, line: 145, baseType: !2822, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !371, !418}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2788, file: !369, line: 146, baseType: !2826, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!263, !371, !263, !188}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2788, file: !369, line: 147, baseType: !2830, size: 64, offset: 640)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!367, !2833}
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2788, file: !369, line: 148, baseType: !2835, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!188, !538, !479}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2788, file: !369, line: 149, baseType: !2839, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!371, !371, !2842}
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !589, file: !44, line: 1500, baseType: !188, size: 32, offset: 7552)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !589, file: !44, line: 1502, baseType: !2846, size: 448, offset: 7616)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2490, line: 60, size: 448, elements: !2847)
!2847 = !{!2848, !2853, !2854, !2855, !2856, !2857, !2858}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2846, file: !2490, line: 61, baseType: !2849, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!313, !2852, !2488}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2846, file: !2490, line: 63, baseType: !2849, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2846, file: !2490, line: 66, baseType: !298, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2846, file: !2490, line: 67, baseType: !188, size: 32, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2846, file: !2490, line: 68, baseType: !7, size: 32, offset: 224)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2846, file: !2490, line: 71, baseType: !193, size: 128, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2846, file: !2490, line: 77, baseType: !2859, size: 64, offset: 384)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !589, file: !44, line: 1505, baseType: !718, size: 64, offset: 8064)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !589, file: !44, line: 1508, baseType: !718, size: 64, offset: 8128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !589, file: !44, line: 1511, baseType: !188, size: 32, offset: 8192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !589, file: !44, line: 1514, baseType: !983, size: 32, offset: 8224)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !589, file: !44, line: 1517, baseType: !2865, size: 64, offset: 8256)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2032, line: 18, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !589, file: !44, line: 1518, baseType: !626, size: 64, offset: 8320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !589, file: !44, line: 1525, baseType: !1786, size: 64, offset: 8384)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !589, file: !44, line: 1532, baseType: !2870, size: 64, offset: 8448)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2871, line: 52, size: 64, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !{!2873}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2870, file: !2871, line: 53, baseType: !2874, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2871, line: 40, size: 256, elements: !2876)
!2876 = !{!2877, !2878, !2883}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2875, file: !2871, line: 42, baseType: !222)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2875, file: !2871, line: 44, baseType: !2879, size: 192)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2871, line: 28, size: 192, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2879, file: !2871, line: 29, baseType: !193, size: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2879, file: !2871, line: 31, baseType: !298, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2875, file: !2871, line: 49, baseType: !298, size: 64, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !589, file: !44, line: 1533, baseType: !2870, size: 64, offset: 8512)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !589, file: !44, line: 1534, baseType: !354, size: 128, align: 64, offset: 8576)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !589, file: !44, line: 1535, baseType: !2031, size: 256, offset: 8704)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !589, file: !44, line: 1537, baseType: !714, size: 192, offset: 8960)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !589, file: !44, line: 1542, baseType: !188, size: 32, offset: 9152)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !589, file: !44, line: 1545, baseType: !222, offset: 9184)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !589, file: !44, line: 1546, baseType: !193, size: 128, offset: 9216)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !589, file: !44, line: 1548, baseType: !222, offset: 9344)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !589, file: !44, line: 1549, baseType: !193, size: 128, offset: 9344)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !419, file: !44, line: 624, baseType: !774, size: 64, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !419, file: !44, line: 631, baseType: !313, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 639, baseType: !2896, size: 32, offset: 384)
!2896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 639, size: 32, elements: !2897)
!2897 = !{!2898, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2896, file: !44, line: 640, baseType: !2899, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2896, file: !44, line: 641, baseType: !7, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !419, file: !44, line: 643, baseType: !502, size: 32, offset: 416)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !419, file: !44, line: 644, baseType: !520, size: 64, offset: 448)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !419, file: !44, line: 645, baseType: !524, size: 128, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !419, file: !44, line: 646, baseType: !524, size: 128, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !419, file: !44, line: 647, baseType: !524, size: 128, offset: 768)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !419, file: !44, line: 648, baseType: !222, offset: 896)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !419, file: !44, line: 649, baseType: !305, size: 16, offset: 896)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !419, file: !44, line: 650, baseType: !1420, size: 8, offset: 912)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !419, file: !44, line: 651, baseType: !1420, size: 8, offset: 920)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !419, file: !44, line: 652, baseType: !2662, size: 64, offset: 960)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !419, file: !44, line: 659, baseType: !313, size: 64, offset: 1024)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !419, file: !44, line: 660, baseType: !808, size: 256, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !419, file: !44, line: 662, baseType: !313, size: 64, offset: 1344)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !419, file: !44, line: 663, baseType: !313, size: 64, offset: 1408)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !419, file: !44, line: 665, baseType: !630, size: 128, offset: 1472)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !419, file: !44, line: 666, baseType: !193, size: 128, offset: 1600)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !419, file: !44, line: 675, baseType: !193, size: 128, offset: 1728)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !419, file: !44, line: 676, baseType: !193, size: 128, offset: 1856)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !419, file: !44, line: 677, baseType: !193, size: 128, offset: 1984)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 678, baseType: !2921, size: 128, offset: 2112)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 678, size: 128, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2921, file: !44, line: 679, baseType: !626, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2921, file: !44, line: 680, baseType: !354, size: 128, align: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !419, file: !44, line: 682, baseType: !720, size: 64, offset: 2240)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !419, file: !44, line: 683, baseType: !720, size: 64, offset: 2304)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !419, file: !44, line: 684, baseType: !788, size: 32, offset: 2368)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !419, file: !44, line: 685, baseType: !788, size: 32, offset: 2400)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !419, file: !44, line: 686, baseType: !788, size: 32, offset: 2432)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !419, file: !44, line: 688, baseType: !788, size: 32, offset: 2464)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 690, baseType: !2932, size: 64, offset: 2496)
!2932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 690, size: 64, elements: !2933)
!2933 = !{!2934, !3165}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2932, file: !44, line: 691, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2938)
!2938 = !{!2939, !2940, !2944, !2948, !2952, !2953, !2954, !2958, !2971, !2972, !2989, !2993, !2994, !2998, !2999, !3003, !3008, !3009, !3013, !3017, !3125, !3129, !3130, !3134, !3135, !3139, !3143, !3148, !3152, !3156, !3160, !3164}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2937, file: !44, line: 1823, baseType: !621, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2937, file: !44, line: 1824, baseType: !2941, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!520, !341, !520, !188}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2937, file: !44, line: 1825, baseType: !2945, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!294, !341, !263, !310, !736}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2937, file: !44, line: 1826, baseType: !2949, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!294, !341, !182, !310, !736}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2937, file: !44, line: 1827, baseType: !878, size: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2937, file: !44, line: 1828, baseType: !878, size: 64, offset: 320)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2937, file: !44, line: 1829, baseType: !2955, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!188, !881, !479}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2937, file: !44, line: 1830, baseType: !2959, size: 64, offset: 448)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!188, !341, !2962}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2964)
!2964 = !{!2965, !2970}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2963, file: !44, line: 1777, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2967)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!188, !2962, !182, !188, !520, !410, !7}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2963, file: !44, line: 1778, baseType: !520, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2937, file: !44, line: 1831, baseType: !2959, size: 64, offset: 512)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2937, file: !44, line: 1832, baseType: !2973, size: 64, offset: 576)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!2976, !341, !2978}
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2977, line: 52, baseType: !7)
!2977 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2980, line: 43, size: 128, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2981 = !{!2982, !2988}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2979, file: !2980, line: 44, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2980, line: 37, baseType: !2984)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !341, !2987, !2978}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2979, file: !2980, line: 45, baseType: !2976, size: 32, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2937, file: !44, line: 1833, baseType: !2990, size: 64, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!298, !341, !7, !313}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2937, file: !44, line: 1834, baseType: !2990, size: 64, offset: 704)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2937, file: !44, line: 1835, baseType: !2995, size: 64, offset: 768)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!188, !341, !1056}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2937, file: !44, line: 1836, baseType: !313, size: 64, offset: 832)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2937, file: !44, line: 1837, baseType: !3000, size: 64, offset: 896)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!188, !418, !341}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2937, file: !44, line: 1838, baseType: !3004, size: 64, offset: 960)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!188, !341, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !176)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2937, file: !44, line: 1839, baseType: !3000, size: 64, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2937, file: !44, line: 1840, baseType: !3010, size: 64, offset: 1088)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!188, !341, !520, !520, !188}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2937, file: !44, line: 1841, baseType: !3014, size: 64, offset: 1152)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!188, !188, !341, !188}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2937, file: !44, line: 1842, baseType: !3018, size: 64, offset: 1216)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!188, !341, !188, !3021}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3023)
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3055, !3056, !3057, !3070, !3101}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3022, file: !44, line: 1063, baseType: !3021, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3022, file: !44, line: 1064, baseType: !193, size: 128, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3022, file: !44, line: 1065, baseType: !630, size: 128, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3022, file: !44, line: 1066, baseType: !193, size: 128, offset: 320)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3022, file: !44, line: 1069, baseType: !193, size: 128, offset: 448)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3022, file: !44, line: 1072, baseType: !3007, size: 64, offset: 576)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3022, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3022, file: !44, line: 1074, baseType: !416, size: 8, offset: 672)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3022, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3022, file: !44, line: 1076, baseType: !188, size: 32, offset: 736)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3022, file: !44, line: 1077, baseType: !1554, size: 128, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3022, file: !44, line: 1078, baseType: !341, size: 64, offset: 896)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3022, file: !44, line: 1079, baseType: !520, size: 64, offset: 960)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3022, file: !44, line: 1080, baseType: !520, size: 64, offset: 1024)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3022, file: !44, line: 1082, baseType: !3039, size: 64, offset: 1088)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3041)
!3041 = !{!3042, !3050, !3051, !3052, !3053, !3054}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3040, file: !44, line: 1315, baseType: !3043)
!3043 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3044, line: 20, baseType: !3045)
!3044 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3044, line: 11, elements: !3046)
!3046 = !{!3047}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3045, file: !3044, line: 12, baseType: !3048)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !234, line: 33, baseType: !3049)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 31, elements: !236)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3040, file: !44, line: 1316, baseType: !188, size: 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3040, file: !44, line: 1317, baseType: !188, size: 32, offset: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3040, file: !44, line: 1318, baseType: !3039, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3040, file: !44, line: 1319, baseType: !341, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3040, file: !44, line: 1320, baseType: !354, size: 128, align: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3022, file: !44, line: 1084, baseType: !313, size: 64, offset: 1152)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3022, file: !44, line: 1085, baseType: !313, size: 64, offset: 1216)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3022, file: !44, line: 1087, baseType: !3058, size: 64, offset: 1280)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3061)
!3061 = !{!3062, !3066}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3060, file: !44, line: 1012, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3021, !3021}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3060, file: !44, line: 1013, baseType: !3067, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !3021}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3022, file: !44, line: 1088, baseType: !3071, size: 64, offset: 1344)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3074)
!3074 = !{!3075, !3079, !3083, !3084, !3088, !3092, !3096, !3100}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3073, file: !44, line: 1017, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!3007, !3007}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3073, file: !44, line: 1018, baseType: !3080, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !3007}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3073, file: !44, line: 1019, baseType: !3067, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3073, file: !44, line: 1020, baseType: !3085, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!188, !3021, !188}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3073, file: !44, line: 1021, baseType: !3089, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!479, !3021}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3073, file: !44, line: 1022, baseType: !3093, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!188, !3021, !188, !197}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3073, file: !44, line: 1023, baseType: !3097, size: 64, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !3021, !855}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3073, file: !44, line: 1024, baseType: !3089, size: 64, offset: 448)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3022, file: !44, line: 1097, baseType: !3102, size: 256, offset: 1408)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3022, file: !44, line: 1089, size: 256, elements: !3103)
!3103 = !{!3104, !3113, !3119}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3102, file: !44, line: 1090, baseType: !3105, size: 256)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3106, line: 10, size: 256, elements: !3107)
!3106 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3107 = !{!3108, !3109, !3112}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3105, file: !3106, line: 11, baseType: !404, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3105, file: !3106, line: 12, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3106, line: 5, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3105, file: !3106, line: 13, baseType: !193, size: 128, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3102, file: !44, line: 1091, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3106, line: 17, size: 64, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3114, file: !3106, line: 18, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3106, line: 16, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3102, file: !44, line: 1096, baseType: !3120, size: 192)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3102, file: !44, line: 1092, size: 192, elements: !3121)
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3120, file: !44, line: 1093, baseType: !193, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3120, file: !44, line: 1094, baseType: !188, size: 32, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3120, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2937, file: !44, line: 1843, baseType: !3126, size: 64, offset: 1280)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!294, !341, !761, !188, !310, !736, !188}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2937, file: !44, line: 1844, baseType: !1176, size: 64, offset: 1344)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2937, file: !44, line: 1845, baseType: !3131, size: 64, offset: 1408)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!188, !188}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2937, file: !44, line: 1846, baseType: !3018, size: 64, offset: 1472)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2937, file: !44, line: 1847, baseType: !3136, size: 64, offset: 1536)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!294, !933, !341, !736, !310, !7}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2937, file: !44, line: 1848, baseType: !3140, size: 64, offset: 1600)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!294, !341, !736, !933, !310, !7}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2937, file: !44, line: 1849, baseType: !3144, size: 64, offset: 1664)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!188, !341, !298, !3147, !855}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2937, file: !44, line: 1850, baseType: !3149, size: 64, offset: 1728)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!298, !341, !188, !520, !520}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2937, file: !44, line: 1852, baseType: !3153, size: 64, offset: 1792)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !702, !341}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2937, file: !44, line: 1856, baseType: !3157, size: 64, offset: 1856)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!294, !341, !520, !341, !520, !310, !7}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2937, file: !44, line: 1858, baseType: !3161, size: 64, offset: 1920)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!520, !341, !520, !341, !520, !520, !7}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2937, file: !44, line: 1861, baseType: !3010, size: 64, offset: 1984)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2932, file: !44, line: 692, baseType: !655, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !419, file: !44, line: 694, baseType: !3167, size: 64, offset: 2560)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3168, file: !44, line: 1101, baseType: !222)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3168, file: !44, line: 1102, baseType: !193, size: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3168, file: !44, line: 1103, baseType: !193, size: 128, offset: 128)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3168, file: !44, line: 1104, baseType: !193, size: 128, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !419, file: !44, line: 695, baseType: !775, size: 1216, align: 64, offset: 2624)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !419, file: !44, line: 696, baseType: !193, size: 128, offset: 3840)
!3176 = !DIDerivedType(tag: DW_TAG_member, scope: !419, file: !44, line: 697, baseType: !3177, size: 64, offset: 3968)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !419, file: !44, line: 697, size: 64, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3192, !3193}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3177, file: !44, line: 698, baseType: !933, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3177, file: !44, line: 699, baseType: !2687, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3177, file: !44, line: 700, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3184, line: 14, size: 832, elements: !3185)
!3184 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3185 = !{!3186, !3187, !3188, !3189, !3190, !3191}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3183, file: !3184, line: 15, baseType: !209, size: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3183, file: !3184, line: 16, baseType: !621, size: 64, offset: 512)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3183, file: !3184, line: 17, baseType: !2935, size: 64, offset: 576)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3183, file: !3184, line: 18, baseType: !193, size: 128, offset: 640)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3183, file: !3184, line: 19, baseType: !502, size: 32, offset: 768)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3183, file: !3184, line: 20, baseType: !7, size: 32, offset: 800)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3177, file: !44, line: 701, baseType: !263, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3177, file: !44, line: 702, baseType: !7, size: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !419, file: !44, line: 705, baseType: !406, size: 32, offset: 4032)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !419, file: !44, line: 708, baseType: !406, size: 32, offset: 4064)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !419, file: !44, line: 709, baseType: !2769, size: 64, offset: 4096)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !419, file: !44, line: 720, baseType: !176, size: 64, offset: 4160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !372, file: !369, line: 98, baseType: !3199, size: 256, offset: 448)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 256, elements: !2302)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !372, file: !369, line: 101, baseType: !3201, size: 32, offset: 704)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3202, line: 25, size: 32, elements: !3203)
!3202 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !3202, line: 26, baseType: !3205, size: 32)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !3202, line: 26, size: 32, elements: !3206)
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !3202, line: 30, baseType: !3208, size: 32)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3205, file: !3202, line: 30, size: 32, elements: !3209)
!3209 = !{!3210, !3211}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3208, file: !3202, line: 31, baseType: !222)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3208, file: !3202, line: 32, baseType: !188, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !372, file: !369, line: 102, baseType: !2786, size: 64, offset: 768)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !372, file: !369, line: 103, baseType: !588, size: 64, offset: 832)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !372, file: !369, line: 104, baseType: !313, size: 64, offset: 896)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !372, file: !369, line: 105, baseType: !176, size: 64, offset: 960)
!3216 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !369, line: 107, baseType: !3217, size: 128, offset: 1024)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !369, line: 107, size: 128, elements: !3218)
!3218 = !{!3219, !3220}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3217, file: !369, line: 108, baseType: !193, size: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3217, file: !369, line: 109, baseType: !2987, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !372, file: !369, line: 111, baseType: !193, size: 128, offset: 1152)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !372, file: !369, line: 112, baseType: !193, size: 128, offset: 1280)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !372, file: !369, line: 120, baseType: !3224, size: 128, offset: 1408)
!3224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !369, line: 116, size: 128, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3224, file: !369, line: 117, baseType: !630, size: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3224, file: !369, line: 118, baseType: !386, size: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3224, file: !369, line: 119, baseType: !354, size: 128, align: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !342, file: !44, line: 922, baseType: !418, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !342, file: !44, line: 923, baseType: !2935, size: 64, offset: 320)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !342, file: !44, line: 929, baseType: !222, offset: 384)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !342, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !342, file: !44, line: 931, baseType: !718, size: 64, offset: 448)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !342, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !342, file: !44, line: 933, baseType: !2782, size: 32, offset: 544)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !342, file: !44, line: 934, baseType: !714, size: 192, offset: 576)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !342, file: !44, line: 935, baseType: !520, size: 64, offset: 768)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !342, file: !44, line: 936, baseType: !3239, size: 192, offset: 832)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3239, file: !44, line: 886, baseType: !3043)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3239, file: !44, line: 887, baseType: !1544, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3239, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3239, file: !44, line: 889, baseType: !424, size: 32, offset: 96)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3239, file: !44, line: 889, baseType: !424, size: 32, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3239, file: !44, line: 890, baseType: !188, size: 32, offset: 160)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !342, file: !44, line: 937, baseType: !1620, size: 64, offset: 1024)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !342, file: !44, line: 938, baseType: !3249, size: 256, offset: 1088)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3250)
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3249, file: !44, line: 897, baseType: !313, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3249, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3249, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3249, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3249, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3249, file: !44, line: 904, baseType: !520, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !342, file: !44, line: 940, baseType: !410, size: 64, offset: 1344)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !342, file: !44, line: 945, baseType: !176, size: 64, offset: 1408)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !342, file: !44, line: 949, baseType: !193, size: 128, offset: 1472)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !342, file: !44, line: 950, baseType: !193, size: 128, offset: 1600)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !342, file: !44, line: 952, baseType: !774, size: 64, offset: 1728)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !342, file: !44, line: 953, baseType: !983, size: 32, offset: 1792)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !342, file: !44, line: 954, baseType: !983, size: 32, offset: 1824)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !332, file: !288, line: 174, baseType: !338, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !332, file: !288, line: 176, baseType: !3266, size: 64, offset: 384)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!188, !341, !215, !331, !1056}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !320, file: !288, line: 90, baseType: !315, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !320, file: !288, line: 91, baseType: !3271, size: 64, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !278, file: !210, line: 143, baseType: !3273, size: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!3276, !215}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3278)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3279)
!3279 = !{!3280, !3281, !3285, !3289, !3295, !3299}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3278, file: !61, line: 40, baseType: !60, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3278, file: !61, line: 41, baseType: !3282, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!479}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3278, file: !61, line: 42, baseType: !3286, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!176}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3278, file: !61, line: 43, baseType: !3290, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!2199, !3293}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3278, file: !61, line: 44, baseType: !3296, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!2199}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3278, file: !61, line: 45, baseType: !457, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !278, file: !210, line: 144, baseType: !3301, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!2199, !215}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !278, file: !210, line: 145, baseType: !3305, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !215, !3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !209, file: !210, line: 70, baseType: !3311, size: 64, offset: 384)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3313, line: 123, size: 1024, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3431, !3432, !3433, !3434, !3435}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3312, file: !3313, line: 124, baseType: !788, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3312, file: !3313, line: 125, baseType: !788, size: 32, offset: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3312, file: !3313, line: 135, baseType: !3311, size: 64, offset: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3312, file: !3313, line: 136, baseType: !182, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3312, file: !3313, line: 138, baseType: !801, size: 192, align: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3312, file: !3313, line: 140, baseType: !2199, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3312, file: !3313, line: 141, baseType: !7, size: 32, offset: 448)
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3312, file: !3313, line: 142, baseType: !3323, size: 256, offset: 512)
!3323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3312, file: !3313, line: 142, size: 256, elements: !3324)
!3324 = !{!3325, !3371, !3375}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3323, file: !3313, line: 143, baseType: !3326, size: 192)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3313, line: 91, size: 192, elements: !3327)
!3327 = !{!3328, !3329, !3330}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3326, file: !3313, line: 92, baseType: !313, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3326, file: !3313, line: 94, baseType: !797, size: 64, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3326, file: !3313, line: 100, baseType: !3331, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3313, line: 180, size: 704, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3343, !3344, !3345, !3369, !3370}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3332, file: !3313, line: 182, baseType: !3311, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3332, file: !3313, line: 183, baseType: !7, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3332, file: !3313, line: 186, baseType: !3337, size: 192, offset: 128)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3338, line: 19, size: 192, elements: !3339)
!3338 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3339 = !{!3340, !3341, !3342}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3337, file: !3338, line: 20, baseType: !779, size: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3337, file: !3338, line: 21, baseType: !7, size: 32, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3337, file: !3338, line: 22, baseType: !7, size: 32, offset: 160)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3332, file: !3313, line: 187, baseType: !404, size: 32, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3332, file: !3313, line: 188, baseType: !404, size: 32, offset: 352)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3332, file: !3313, line: 189, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3313, line: 168, size: 320, elements: !3348)
!3348 = !{!3349, !3353, !3357, !3361, !3365}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3347, file: !3313, line: 169, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!188, !702, !3331}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3347, file: !3313, line: 171, baseType: !3354, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!188, !3311, !182, !304}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3347, file: !3313, line: 173, baseType: !3358, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!188, !3311}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3347, file: !3313, line: 174, baseType: !3362, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!188, !3311, !3311, !182}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3347, file: !3313, line: 176, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!188, !702, !3311, !3331}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3332, file: !3313, line: 192, baseType: !193, size: 128, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3332, file: !3313, line: 194, baseType: !1554, size: 128, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3323, file: !3313, line: 144, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3313, line: 103, size: 64, elements: !3373)
!3373 = !{!3374}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3372, file: !3313, line: 104, baseType: !3311, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3323, file: !3313, line: 145, baseType: !3376, size: 256)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3313, line: 107, size: 256, elements: !3377)
!3377 = !{!3378, !3426, !3429, !3430}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3376, file: !3313, line: 108, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3313, line: 217, size: 768, elements: !3382)
!3382 = !{!3383, !3403, !3407, !3408, !3409, !3410, !3411, !3415, !3416, !3417, !3418, !3422}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3381, file: !3313, line: 222, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!188, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3313, line: 197, size: 1088, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3388, file: !3313, line: 199, baseType: !3311, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3388, file: !3313, line: 200, baseType: !341, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3388, file: !3313, line: 201, baseType: !702, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3388, file: !3313, line: 202, baseType: !176, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3388, file: !3313, line: 205, baseType: !714, size: 192, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3388, file: !3313, line: 206, baseType: !714, size: 192, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3388, file: !3313, line: 207, baseType: !188, size: 32, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3388, file: !3313, line: 208, baseType: !193, size: 128, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3388, file: !3313, line: 209, baseType: !263, size: 64, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3388, file: !3313, line: 211, baseType: !310, size: 64, offset: 896)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3388, file: !3313, line: 212, baseType: !479, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3388, file: !3313, line: 213, baseType: !479, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3388, file: !3313, line: 214, baseType: !1084, size: 64, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3381, file: !3313, line: 223, baseType: !3404, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !3387}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3381, file: !3313, line: 236, baseType: !746, size: 64, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3381, file: !3313, line: 238, baseType: !733, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3381, file: !3313, line: 239, baseType: !742, size: 64, offset: 256)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3381, file: !3313, line: 240, baseType: !738, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3381, file: !3313, line: 242, baseType: !3412, size: 64, offset: 384)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!294, !3387, !263, !310, !520}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3381, file: !3313, line: 252, baseType: !310, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3381, file: !3313, line: 259, baseType: !479, size: 8, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3381, file: !3313, line: 260, baseType: !3412, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3381, file: !3313, line: 263, baseType: !3419, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!2976, !3387, !2978}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3381, file: !3313, line: 266, baseType: !3423, size: 64, offset: 704)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!188, !3387, !1056}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3376, file: !3313, line: 109, baseType: !3427, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3313, line: 31, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3376, file: !3313, line: 110, baseType: !520, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3376, file: !3313, line: 111, baseType: !3311, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3312, file: !3313, line: 148, baseType: !176, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3312, file: !3313, line: 154, baseType: !410, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3312, file: !3313, line: 156, baseType: !305, size: 16, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3312, file: !3313, line: 157, baseType: !304, size: 16, offset: 912)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3312, file: !3313, line: 158, baseType: !3436, size: 64, offset: 960)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3313, line: 32, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !209, file: !210, line: 71, baseType: !3439, size: 32, offset: 448)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3440, line: 19, size: 32, elements: !3441)
!3440 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3441 = !{!3442}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3439, file: !3440, line: 20, baseType: !1298, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !209, file: !210, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !209, file: !210, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !209, file: !210, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !209, file: !210, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !209, file: !210, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !73, line: 463, baseType: !3449, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !206, file: !73, line: 465, baseType: !3451, size: 64, offset: 576)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !206, file: !73, line: 467, baseType: !182, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !206, file: !73, line: 468, baseType: !3455, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3457)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3465, !3470, !3474}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3457, file: !73, line: 88, baseType: !182, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3457, file: !73, line: 89, baseType: !317, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3457, file: !73, line: 90, baseType: !3462, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!188, !3449, !258}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3457, file: !73, line: 91, baseType: !3466, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!263, !3449, !3469, !3308, !3309}
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3457, file: !73, line: 93, baseType: !3471, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{null, !3449}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3457, file: !73, line: 95, baseType: !3475, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3477)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3478)
!3478 = !{!3479, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3477, file: !80, line: 279, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!188, !3449}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3477, file: !80, line: 280, baseType: !3471, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3477, file: !80, line: 281, baseType: !3480, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3477, file: !80, line: 282, baseType: !3480, size: 64, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3477, file: !80, line: 283, baseType: !3480, size: 64, offset: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3477, file: !80, line: 284, baseType: !3480, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3477, file: !80, line: 285, baseType: !3480, size: 64, offset: 384)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3477, file: !80, line: 286, baseType: !3480, size: 64, offset: 448)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3477, file: !80, line: 287, baseType: !3480, size: 64, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3477, file: !80, line: 288, baseType: !3480, size: 64, offset: 576)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3477, file: !80, line: 289, baseType: !3480, size: 64, offset: 640)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3477, file: !80, line: 290, baseType: !3480, size: 64, offset: 704)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3477, file: !80, line: 291, baseType: !3480, size: 64, offset: 768)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3477, file: !80, line: 292, baseType: !3480, size: 64, offset: 832)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3477, file: !80, line: 293, baseType: !3480, size: 64, offset: 896)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3477, file: !80, line: 294, baseType: !3480, size: 64, offset: 960)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3477, file: !80, line: 295, baseType: !3480, size: 64, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3477, file: !80, line: 296, baseType: !3480, size: 64, offset: 1088)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3477, file: !80, line: 297, baseType: !3480, size: 64, offset: 1152)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3477, file: !80, line: 298, baseType: !3480, size: 64, offset: 1216)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3477, file: !80, line: 299, baseType: !3480, size: 64, offset: 1280)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3477, file: !80, line: 300, baseType: !3480, size: 64, offset: 1344)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3477, file: !80, line: 301, baseType: !3480, size: 64, offset: 1408)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !206, file: !73, line: 470, baseType: !3506, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3508, line: 82, size: 1408, elements: !3509)
!3508 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3591, !3594, !3595}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3507, file: !3508, line: 83, baseType: !182, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3507, file: !3508, line: 84, baseType: !182, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3507, file: !3508, line: 85, baseType: !3449, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3507, file: !3508, line: 86, baseType: !317, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3507, file: !3508, line: 87, baseType: !317, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3507, file: !3508, line: 88, baseType: !317, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3507, file: !3508, line: 90, baseType: !3517, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!188, !3449, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529, !3542, !3555, !3556, !3557, !3558, !3559, !3567, !3568, !3569, !3570, !3571, !3572}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3521, file: !67, line: 96, baseType: !182, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3521, file: !67, line: 97, baseType: !3506, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3521, file: !67, line: 99, baseType: !621, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3521, file: !67, line: 100, baseType: !182, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3521, file: !67, line: 102, baseType: !479, size: 8, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3521, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3521, file: !67, line: 105, baseType: !3530, size: 64, offset: 320)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3532)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3533, line: 262, size: 1600, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3541}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !3533, line: 263, baseType: !2772, size: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3532, file: !3533, line: 264, baseType: !2772, size: 256, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3532, file: !3533, line: 265, baseType: !3538, size: 1024, offset: 512)
!3538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 1024, elements: !3539)
!3539 = !{!3540}
!3540 = !DISubrange(count: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3532, file: !3533, line: 266, baseType: !2199, size: 64, offset: 1536)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3521, file: !67, line: 106, baseType: !3543, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3533, line: 210, size: 256, elements: !3546)
!3546 = !{!3547, !3551, !3553, !3554}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3545, file: !3533, line: 211, baseType: !3548, size: 72)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1421, size: 72, elements: !3549)
!3549 = !{!3550}
!3550 = !DISubrange(count: 9)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3545, file: !3533, line: 212, baseType: !3552, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3533, line: 14, baseType: !313)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3545, file: !3533, line: 213, baseType: !406, size: 32, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3545, file: !3533, line: 214, baseType: !406, size: 32, offset: 224)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3521, file: !67, line: 108, baseType: !3480, size: 64, offset: 448)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3521, file: !67, line: 109, baseType: !3471, size: 64, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3521, file: !67, line: 110, baseType: !3480, size: 64, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3521, file: !67, line: 111, baseType: !3471, size: 64, offset: 640)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3521, file: !67, line: 112, baseType: !3560, size: 64, offset: 704)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!188, !3449, !3563}
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3565)
!3565 = !{!3566}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3564, file: !80, line: 51, baseType: !188, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3521, file: !67, line: 113, baseType: !3480, size: 64, offset: 768)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3521, file: !67, line: 114, baseType: !317, size: 64, offset: 832)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3521, file: !67, line: 115, baseType: !317, size: 64, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3521, file: !67, line: 117, baseType: !3475, size: 64, offset: 960)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3521, file: !67, line: 118, baseType: !3471, size: 64, offset: 1024)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3521, file: !67, line: 120, baseType: !3573, size: 64, offset: 1088)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3507, file: !3508, line: 91, baseType: !3462, size: 64, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3507, file: !3508, line: 92, baseType: !3480, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3507, file: !3508, line: 93, baseType: !3471, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3507, file: !3508, line: 94, baseType: !3480, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3507, file: !3508, line: 95, baseType: !3471, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3507, file: !3508, line: 97, baseType: !3480, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3507, file: !3508, line: 98, baseType: !3480, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3507, file: !3508, line: 100, baseType: !3560, size: 64, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3507, file: !3508, line: 101, baseType: !3480, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3507, file: !3508, line: 103, baseType: !3480, size: 64, offset: 1024)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3507, file: !3508, line: 105, baseType: !3480, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3507, file: !3508, line: 107, baseType: !3475, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3507, file: !3508, line: 109, baseType: !3588, size: 64, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3590)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3508, line: 109, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3507, file: !3508, line: 111, baseType: !3592, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3508, line: 111, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3507, file: !3508, line: 112, baseType: !636, offset: 1344)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3507, file: !3508, line: 114, baseType: !479, size: 8, offset: 1344)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !206, file: !73, line: 471, baseType: !3520, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !206, file: !73, line: 473, baseType: !176, size: 64, offset: 896)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !206, file: !73, line: 475, baseType: !176, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !206, file: !73, line: 480, baseType: !714, size: 192, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !206, file: !73, line: 484, baseType: !3601, size: 576, offset: 1216)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3601, file: !73, line: 362, baseType: !193, size: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3601, file: !73, line: 363, baseType: !193, size: 128, offset: 128)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3601, file: !73, line: 364, baseType: !193, size: 128, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3601, file: !73, line: 365, baseType: !193, size: 128, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3601, file: !73, line: 366, baseType: !479, size: 8, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3601, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !206, file: !73, line: 485, baseType: !3610, size: 2304, offset: 1792)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3707, !3711}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3610, file: !80, line: 566, baseType: !3563, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3610, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3610, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3610, file: !80, line: 569, baseType: !479, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3610, file: !80, line: 570, baseType: !479, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3610, file: !80, line: 571, baseType: !479, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3610, file: !80, line: 572, baseType: !479, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3610, file: !80, line: 573, baseType: !479, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3610, file: !80, line: 574, baseType: !479, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3610, file: !80, line: 575, baseType: !479, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3610, file: !80, line: 576, baseType: !479, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3610, file: !80, line: 577, baseType: !404, size: 32, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3610, file: !80, line: 578, baseType: !222, offset: 96)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3610, file: !80, line: 580, baseType: !193, size: 128, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3610, file: !80, line: 581, baseType: !1575, size: 192, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3610, file: !80, line: 582, baseType: !3628, size: 64, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3630, line: 43, size: 1472, elements: !3631)
!3630 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3639, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3629, file: !3630, line: 44, baseType: !182, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3629, file: !3630, line: 45, baseType: !188, size: 32, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3629, file: !3630, line: 46, baseType: !193, size: 128, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3629, file: !3630, line: 47, baseType: !222, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3629, file: !3630, line: 48, baseType: !3637, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3629, file: !3630, line: 49, baseType: !3640, size: 320, offset: 320)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3641, line: 11, size: 320, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3642 = !{!3643, !3644, !3645, !3650}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3640, file: !3641, line: 16, baseType: !630, size: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3640, file: !3641, line: 17, baseType: !313, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3640, file: !3641, line: 18, baseType: !3646, size: 64, offset: 192)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !3649}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3640, file: !3641, line: 19, baseType: !404, size: 32, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3629, file: !3630, line: 50, baseType: !313, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3629, file: !3630, line: 51, baseType: !1368, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3629, file: !3630, line: 52, baseType: !1368, size: 64, offset: 768)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3629, file: !3630, line: 53, baseType: !1368, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3629, file: !3630, line: 54, baseType: !1368, size: 64, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3629, file: !3630, line: 55, baseType: !1368, size: 64, offset: 960)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3629, file: !3630, line: 56, baseType: !313, size: 64, offset: 1024)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3629, file: !3630, line: 57, baseType: !313, size: 64, offset: 1088)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3629, file: !3630, line: 58, baseType: !313, size: 64, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3629, file: !3630, line: 59, baseType: !313, size: 64, offset: 1216)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3629, file: !3630, line: 60, baseType: !313, size: 64, offset: 1280)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3629, file: !3630, line: 61, baseType: !3449, size: 64, offset: 1344)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3629, file: !3630, line: 62, baseType: !479, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3629, file: !3630, line: 63, baseType: !479, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3610, file: !80, line: 583, baseType: !479, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3610, file: !80, line: 584, baseType: !479, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3610, file: !80, line: 585, baseType: !479, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3610, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3610, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3610, file: !80, line: 592, baseType: !1360, size: 512, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3610, file: !80, line: 593, baseType: !410, size: 64, offset: 1088)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3610, file: !80, line: 594, baseType: !2031, size: 256, offset: 1152)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3610, file: !80, line: 595, baseType: !1554, size: 128, offset: 1408)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3610, file: !80, line: 596, baseType: !3637, size: 64, offset: 1536)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3610, file: !80, line: 597, baseType: !788, size: 32, offset: 1600)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3610, file: !80, line: 598, baseType: !788, size: 32, offset: 1632)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3610, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3610, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3610, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3610, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3610, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3610, file: !80, line: 604, baseType: !479, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3610, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3610, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3610, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3610, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3610, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3610, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3610, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3610, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3610, file: !80, line: 613, baseType: !188, size: 32, offset: 1792)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3610, file: !80, line: 614, baseType: !188, size: 32, offset: 1824)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3610, file: !80, line: 615, baseType: !410, size: 64, offset: 1856)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3610, file: !80, line: 616, baseType: !410, size: 64, offset: 1920)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3610, file: !80, line: 617, baseType: !410, size: 64, offset: 1984)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3610, file: !80, line: 618, baseType: !410, size: 64, offset: 2048)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3610, file: !80, line: 620, baseType: !3698, size: 64, offset: 2112)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3704}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3699, file: !80, line: 537, baseType: !222)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3699, file: !80, line: 538, baseType: !7, size: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3699, file: !80, line: 540, baseType: !193, size: 128, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3699, file: !80, line: 543, baseType: !3705, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3610, file: !80, line: 621, baseType: !3708, size: 64, offset: 2176)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{null, !3449, !1512}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3610, file: !80, line: 622, baseType: !3712, size: 64, offset: 2240)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !206, file: !73, line: 486, baseType: !3715, size: 64, offset: 4096)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3724, !3725, !3726}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3716, file: !80, line: 643, baseType: !3477, size: 1472)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3716, file: !80, line: 644, baseType: !3480, size: 64, offset: 1472)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3716, file: !80, line: 645, baseType: !3721, size: 64, offset: 1536)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3449, !479}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3716, file: !80, line: 646, baseType: !3480, size: 64, offset: 1600)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3716, file: !80, line: 647, baseType: !3471, size: 64, offset: 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3716, file: !80, line: 648, baseType: !3471, size: 64, offset: 1728)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !206, file: !73, line: 493, baseType: !3728, size: 64, offset: 4160)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3730)
!3730 = !{!3731, !3732, !3733, !4064, !4065, !4066, !4067, !4068, !4069, !4196, !4197, !4198, !4199, !4200, !4201, !4202}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3729, file: !94, line: 163, baseType: !193, size: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3729, file: !94, line: 164, baseType: !182, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3729, file: !94, line: 165, baseType: !3734, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3736)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3737)
!3737 = !{!3738, !3856, !3867, !3872, !3876, !3883, !3887, !3891, !4056, !4060}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3736, file: !94, line: 106, baseType: !3739, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!188, !3728, !3742, !93}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3744, line: 51, size: 1344, elements: !3745)
!3744 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3745 = !{!3746, !3747, !3749, !3750, !3840, !3849, !3850, !3851, !3852, !3853, !3854, !3855}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3743, file: !3744, line: 52, baseType: !182, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3743, file: !3744, line: 53, baseType: !3748, size: 32, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3744, line: 28, baseType: !404)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3743, file: !3744, line: 54, baseType: !182, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3743, file: !3744, line: 55, baseType: !3751, size: 192, offset: 192)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3752, line: 17, size: 192, elements: !3753)
!3752 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3753 = !{!3754, !3756, !3839}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3751, file: !3752, line: 18, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3751, file: !3752, line: 19, baseType: !3757, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3759)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3752, line: 110, size: 1152, elements: !3760)
!3760 = !{!3761, !3765, !3769, !3775, !3781, !3785, !3789, !3794, !3798, !3799, !3803, !3807, !3811, !3822, !3823, !3824, !3825, !3835}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3759, file: !3752, line: 111, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!3755, !3755}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3759, file: !3752, line: 112, baseType: !3766, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !3755}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3759, file: !3752, line: 113, baseType: !3770, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!479, !3773}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3751)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3759, file: !3752, line: 114, baseType: !3776, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!2199, !3773, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3759, file: !3752, line: 116, baseType: !3782, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!479, !3773, !182}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3759, file: !3752, line: 118, baseType: !3786, size: 64, offset: 320)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!188, !3773, !182, !7, !176, !310}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3759, file: !3752, line: 123, baseType: !3790, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!188, !3773, !182, !3793, !310}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3759, file: !3752, line: 126, baseType: !3795, size: 64, offset: 448)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!182, !3773}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3759, file: !3752, line: 127, baseType: !3795, size: 64, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3759, file: !3752, line: 128, baseType: !3800, size: 64, offset: 576)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!3755, !3773}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3759, file: !3752, line: 130, baseType: !3804, size: 64, offset: 640)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!3755, !3773, !3755}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3759, file: !3752, line: 133, baseType: !3808, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!3755, !3773, !182}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3759, file: !3752, line: 135, baseType: !3812, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!188, !3773, !182, !182, !7, !7, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3752, line: 43, size: 640, elements: !3817)
!3817 = !{!3818, !3819, !3820}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3816, file: !3752, line: 44, baseType: !3755, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3816, file: !3752, line: 45, baseType: !7, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3816, file: !3752, line: 46, baseType: !3821, size: 512, offset: 128)
!3821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 512, elements: !1398)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3759, file: !3752, line: 140, baseType: !3804, size: 64, offset: 832)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3759, file: !3752, line: 143, baseType: !3800, size: 64, offset: 896)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3759, file: !3752, line: 145, baseType: !3762, size: 64, offset: 960)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3759, file: !3752, line: 146, baseType: !3826, size: 64, offset: 1024)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!188, !3773, !3829}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3752, line: 29, size: 128, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3830, file: !3752, line: 30, baseType: !7, size: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3830, file: !3752, line: 31, baseType: !7, size: 32, offset: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3830, file: !3752, line: 32, baseType: !3773, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3759, file: !3752, line: 148, baseType: !3836, size: 64, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!188, !3773, !3449}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3751, file: !3752, line: 20, baseType: !3449, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3743, file: !3744, line: 57, baseType: !3841, size: 64, offset: 384)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3744, line: 31, size: 704, elements: !3843)
!3843 = !{!3844, !3845, !3846, !3847, !3848}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3842, file: !3744, line: 32, baseType: !263, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3842, file: !3744, line: 33, baseType: !188, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3842, file: !3744, line: 34, baseType: !176, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3842, file: !3744, line: 35, baseType: !3841, size: 64, offset: 192)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3842, file: !3744, line: 43, baseType: !332, size: 448, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3743, file: !3744, line: 58, baseType: !3841, size: 64, offset: 448)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3743, file: !3744, line: 59, baseType: !3742, size: 64, offset: 512)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3743, file: !3744, line: 60, baseType: !3742, size: 64, offset: 576)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3743, file: !3744, line: 61, baseType: !3742, size: 64, offset: 640)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3743, file: !3744, line: 63, baseType: !209, size: 512, offset: 704)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3743, file: !3744, line: 65, baseType: !313, size: 64, offset: 1216)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3743, file: !3744, line: 66, baseType: !176, size: 64, offset: 1280)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3736, file: !94, line: 108, baseType: !3857, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!188, !3728, !3860, !93}
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3862)
!3862 = !{!3863, !3864, !3865}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3861, file: !94, line: 64, baseType: !3755, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3861, file: !94, line: 65, baseType: !188, size: 32, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3861, file: !94, line: 66, baseType: !3866, size: 512, offset: 96)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 512, elements: !1808)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3736, file: !94, line: 110, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!188, !3728, !7, !3871}
!3871 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !194, line: 164, baseType: !313)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3736, file: !94, line: 111, baseType: !3873, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3728, !7}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3736, file: !94, line: 112, baseType: !3877, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!188, !3728, !3742, !3880, !7, !3882, !2755}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3736, file: !94, line: 117, baseType: !3884, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!188, !3728, !7, !7, !176}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3736, file: !94, line: 119, baseType: !3888, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3728, !7, !7}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3736, file: !94, line: 121, baseType: !3892, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!188, !3728, !3895, !479}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3974, !4053, !4054, !4055}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3896, file: !115, line: 176, baseType: !404, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3896, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3896, file: !115, line: 178, baseType: !313, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3896, file: !115, line: 179, baseType: !3902, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3971}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3903, file: !115, line: 146, baseType: !7, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3903, file: !115, line: 150, baseType: !176, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3903, file: !115, line: 151, baseType: !3908, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3910, line: 85, size: 768, elements: !3911)
!3910 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3922, !3928, !3932, !3933}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3909, file: !3910, line: 87, baseType: !193, size: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3909, file: !3910, line: 88, baseType: !7, size: 32, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !3909, file: !3910, line: 89, baseType: !7, size: 32, offset: 160)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3909, file: !3910, line: 90, baseType: !3449, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3909, file: !3910, line: 91, baseType: !3917, size: 96, offset: 256)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3910, line: 8, size: 96, elements: !3918)
!3918 = !{!3919, !3920, !3921}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !3917, file: !3910, line: 9, baseType: !404, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !3917, file: !3910, line: 10, baseType: !404, size: 32, offset: 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3917, file: !3910, line: 11, baseType: !404, size: 32, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3909, file: !3910, line: 92, baseType: !3923, size: 64, offset: 384)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !108, line: 308, size: 128, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3924, file: !108, line: 309, baseType: !1435, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3924, file: !108, line: 310, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !3909, file: !3910, line: 97, baseType: !3929, size: 64, offset: 448)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{null, !3908, !176}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !3909, file: !3910, line: 98, baseType: !176, size: 64, offset: 512)
!3933 = !DIDerivedType(tag: DW_TAG_member, scope: !3909, file: !3910, line: 100, baseType: !3934, size: 192, offset: 576)
!3934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3909, file: !3910, line: 100, size: 192, elements: !3935)
!3935 = !{!3936, !3956, !3963, !3967}
!3936 = !DIDerivedType(tag: DW_TAG_member, scope: !3934, file: !3910, line: 102, baseType: !3937, size: 192)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3934, file: !3910, line: 102, size: 192, elements: !3938)
!3938 = !{!3939, !3940, !3951}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !3937, file: !3910, line: 103, baseType: !404, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !3937, file: !3910, line: 113, baseType: !3941, size: 64, offset: 32)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3937, file: !3910, line: 104, size: 64, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !3941, file: !3910, line: 105, baseType: !1420, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !3941, file: !3910, line: 106, baseType: !1420, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !3941, file: !3910, line: 107, baseType: !1420, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !3941, file: !3910, line: 108, baseType: !1420, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !3941, file: !3910, line: 109, baseType: !1420, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !3941, file: !3910, line: 110, baseType: !1420, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !3941, file: !3910, line: 111, baseType: !893, size: 16, offset: 16)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !3941, file: !3910, line: 112, baseType: !7, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !3910, line: 114, baseType: !3952, size: 64, offset: 128)
!3952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !3910, line: 114, size: 64, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !3952, file: !3910, line: 115, baseType: !1420, size: 8)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !3952, file: !3910, line: 116, baseType: !176, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !3934, file: !3910, line: 127, baseType: !3957, size: 128)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3910, line: 37, size: 128, elements: !3958)
!3958 = !{!3959, !3962}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !3957, file: !3910, line: 38, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3910, line: 19, flags: DIFlagFwdDecl)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3957, file: !3910, line: 39, baseType: !893, size: 16, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !3934, file: !3910, line: 128, baseType: !3964, size: 16)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3910, line: 46, size: 16, elements: !3965)
!3965 = !{!3966}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3964, file: !3910, line: 47, baseType: !893, size: 16)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !3934, file: !3910, line: 129, baseType: !3968, size: 16)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3910, line: 54, size: 16, elements: !3969)
!3969 = !{!3970}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !3968, file: !3910, line: 55, baseType: !893, size: 16)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3903, file: !115, line: 152, baseType: !3972, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1434, line: 756, baseType: !3973)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 64, elements: !1439)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3896, file: !115, line: 180, baseType: !3975, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3984, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4001, !4005, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4022, !4023, !4024, !4029, !4030, !4034, !4038, !4042, !4046, !4050, !4051, !4052}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3976, file: !115, line: 504, baseType: !3449, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3976, file: !115, line: 505, baseType: !182, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3976, file: !115, line: 506, baseType: !3981, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!7, !3895}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3976, file: !115, line: 507, baseType: !3985, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{null, !3895}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3976, file: !115, line: 508, baseType: !3985, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3976, file: !115, line: 509, baseType: !3985, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3976, file: !115, line: 511, baseType: !3985, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3976, file: !115, line: 512, baseType: !3985, size: 64, offset: 448)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3976, file: !115, line: 513, baseType: !3985, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3976, file: !115, line: 514, baseType: !3985, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3976, file: !115, line: 515, baseType: !3985, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3976, file: !115, line: 517, baseType: !3996, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!188, !3895, !3999, !479}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3976, file: !115, line: 518, baseType: !4002, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!188, !3895}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3976, file: !115, line: 519, baseType: !4006, size: 64, offset: 832)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!188, !3895, !7}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3976, file: !115, line: 520, baseType: !4006, size: 64, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3976, file: !115, line: 522, baseType: !3985, size: 64, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3976, file: !115, line: 523, baseType: !3985, size: 64, offset: 1024)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3976, file: !115, line: 525, baseType: !3985, size: 64, offset: 1088)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3976, file: !115, line: 526, baseType: !3985, size: 64, offset: 1152)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3976, file: !115, line: 528, baseType: !3985, size: 64, offset: 1216)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3976, file: !115, line: 529, baseType: !3985, size: 64, offset: 1280)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3976, file: !115, line: 530, baseType: !3985, size: 64, offset: 1344)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3976, file: !115, line: 532, baseType: !3985, size: 64, offset: 1408)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3976, file: !115, line: 534, baseType: !4019, size: 64, offset: 1472)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !3895, !702}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3976, file: !115, line: 535, baseType: !4002, size: 64, offset: 1536)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3976, file: !115, line: 536, baseType: !3985, size: 64, offset: 1600)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3976, file: !115, line: 538, baseType: !4025, size: 64, offset: 1664)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !3895, !4028}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3976, file: !115, line: 539, baseType: !4025, size: 64, offset: 1728)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3976, file: !115, line: 541, baseType: !4031, size: 64, offset: 1792)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!188, !3895, !107, !965}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3976, file: !115, line: 542, baseType: !4035, size: 64, offset: 1856)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!188, !3895, !107, !479}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3976, file: !115, line: 544, baseType: !4039, size: 64, offset: 1920)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!188, !3895, !176}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3976, file: !115, line: 546, baseType: !4043, size: 64, offset: 1984)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !3895, !7}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3976, file: !115, line: 547, baseType: !4047, size: 64, offset: 2048)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !3895, !3999}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3976, file: !115, line: 549, baseType: !4002, size: 64, offset: 2112)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3976, file: !115, line: 550, baseType: !3985, size: 64, offset: 2176)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3976, file: !115, line: 552, baseType: !313, size: 64, offset: 2240)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3896, file: !115, line: 181, baseType: !3728, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3896, file: !115, line: 183, baseType: !3895, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3896, file: !115, line: 185, baseType: !176, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3736, file: !94, line: 122, baseType: !4057, size: 64, offset: 512)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !3728, !3895}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3736, file: !94, line: 123, baseType: !4061, size: 64, offset: 576)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!188, !3728, !3860, !3882, !2755}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3729, file: !94, line: 166, baseType: !176, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3729, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3729, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3729, file: !94, line: 171, baseType: !3755, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3729, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3729, file: !94, line: 173, baseType: !4070, size: 64, offset: 512)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076, !4077, !4078}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4071, file: !115, line: 1102, baseType: !7, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4071, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4071, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4071, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4071, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4071, file: !115, line: 1107, baseType: !4079, offset: 192)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4080, elements: !2403)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !4082)
!4082 = !{!4083, !4084, !4085, !4089, !4093, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4081, file: !115, line: 1052, baseType: !814)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4081, file: !115, line: 1053, baseType: !176, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4081, file: !115, line: 1054, baseType: !4086, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!404, !176}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4081, file: !115, line: 1055, baseType: !4090, size: 64, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !404, !176}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4081, file: !115, line: 1056, baseType: !4094, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !4080}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4081, file: !115, line: 1057, baseType: !4094, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4081, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4081, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4081, file: !115, line: 1060, baseType: !404, size: 32, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4081, file: !115, line: 1061, baseType: !404, size: 32, offset: 416)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4081, file: !115, line: 1062, baseType: !404, size: 32, offset: 448)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4081, file: !115, line: 1063, baseType: !404, size: 32, offset: 480)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4081, file: !115, line: 1064, baseType: !404, size: 32, offset: 512)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4081, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4081, file: !115, line: 1066, baseType: !176, size: 64, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4081, file: !115, line: 1067, baseType: !313, size: 64, offset: 640)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4081, file: !115, line: 1068, baseType: !313, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4081, file: !115, line: 1069, baseType: !3728, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4081, file: !115, line: 1070, baseType: !193, size: 128, offset: 832)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4081, file: !115, line: 1071, baseType: !4112, offset: 960)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4113, elements: !2403)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4114)
!4114 = !{!4115, !4116, !4126, !4193, !4194, !4195}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4113, file: !115, line: 1010, baseType: !3976, size: 2304)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4113, file: !115, line: 1011, baseType: !4117, size: 448, offset: 2304)
!4117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123, !4124, !4125}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4117, file: !115, line: 987, baseType: !313, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4117, file: !115, line: 988, baseType: !313, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4117, file: !115, line: 989, baseType: !313, size: 64, offset: 128)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4117, file: !115, line: 990, baseType: !313, size: 64, offset: 192)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4117, file: !115, line: 991, baseType: !313, size: 64, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4117, file: !115, line: 992, baseType: !313, size: 64, offset: 320)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4117, file: !115, line: 993, baseType: !313, size: 64, offset: 384)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4113, file: !115, line: 1012, baseType: !4127, size: 64, offset: 2752)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4128, line: 12, baseType: !4129)
!4128 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !4132}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4134, line: 55, size: 2880, elements: !4135)
!4134 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4133, file: !4134, line: 56, baseType: !3903, size: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4133, file: !4134, line: 57, baseType: !3896, size: 448, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4133, file: !4134, line: 58, baseType: !2755, size: 64, offset: 704)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4133, file: !4134, line: 59, baseType: !4127, size: 64, offset: 768)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4133, file: !4134, line: 60, baseType: !4141, size: 64, offset: 832)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4143)
!4143 = !{!4144, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4142, file: !108, line: 111, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4146)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!4149, !188, !176}
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4142, file: !108, line: 112, baseType: !176, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4142, file: !108, line: 113, baseType: !176, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4142, file: !108, line: 114, baseType: !4141, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4142, file: !108, line: 115, baseType: !4145, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4142, file: !108, line: 116, baseType: !1285, size: 64, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4142, file: !108, line: 117, baseType: !4141, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4142, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4142, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4142, file: !108, line: 120, baseType: !313, size: 64, offset: 512)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4142, file: !108, line: 121, baseType: !313, size: 64, offset: 576)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4142, file: !108, line: 122, baseType: !182, size: 64, offset: 640)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4142, file: !108, line: 123, baseType: !4162, size: 64, offset: 704)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4164, line: 12, flags: DIFlagFwdDecl)
!4164 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/lizy2001/genbc/linux")
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4133, file: !4134, line: 61, baseType: !7, size: 32, offset: 896)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4133, file: !4134, line: 62, baseType: !7, size: 32, offset: 928)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4133, file: !4134, line: 63, baseType: !7, size: 32, offset: 960)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4133, file: !4134, line: 64, baseType: !7, size: 32, offset: 992)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4133, file: !4134, line: 65, baseType: !7, size: 32, offset: 1024)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4133, file: !4134, line: 66, baseType: !7, size: 32, offset: 1056)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4133, file: !4134, line: 67, baseType: !313, size: 64, offset: 1088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4133, file: !4134, line: 68, baseType: !7, size: 32, offset: 1152)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4133, file: !4134, line: 69, baseType: !788, size: 32, offset: 1184)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4133, file: !4134, line: 70, baseType: !188, size: 32, offset: 1216)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4133, file: !4134, line: 71, baseType: !814, offset: 1248)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4133, file: !4134, line: 72, baseType: !4177, size: 64, offset: 1280)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4133, file: !4134, line: 73, baseType: !3999, size: 64, offset: 1344)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4133, file: !4134, line: 81, baseType: !313, size: 64, offset: 1408)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4133, file: !4134, line: 82, baseType: !788, size: 32, offset: 1472)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4133, file: !4134, line: 83, baseType: !1554, size: 128, offset: 1536)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4133, file: !4134, line: 85, baseType: !7, size: 32, offset: 1664)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4133, file: !4134, line: 86, baseType: !7, size: 32, offset: 1696)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4133, file: !4134, line: 87, baseType: !7, size: 32, offset: 1728)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4133, file: !4134, line: 88, baseType: !7, size: 32, offset: 1760)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4133, file: !4134, line: 91, baseType: !4162, size: 64, offset: 1792)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4133, file: !4134, line: 98, baseType: !354, size: 128, align: 64, offset: 1856)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4133, file: !4134, line: 99, baseType: !209, size: 512, offset: 1984)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4133, file: !4134, line: 101, baseType: !714, size: 192, offset: 2496)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4133, file: !4134, line: 102, baseType: !188, size: 32, offset: 2688)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4133, file: !4134, line: 103, baseType: !621, size: 64, offset: 2752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4133, file: !4134, line: 104, baseType: !182, size: 64, offset: 2816)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4113, file: !115, line: 1013, baseType: !404, size: 32, offset: 2816)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4113, file: !115, line: 1014, baseType: !404, size: 32, offset: 2848)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4113, file: !115, line: 1015, baseType: !1483, size: 64, offset: 2880)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3729, file: !94, line: 175, baseType: !3728, size: 64, offset: 576)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3729, file: !94, line: 182, baseType: !3871, size: 64, offset: 640)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3729, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3729, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3729, file: !94, line: 185, baseType: !779, size: 128, offset: 768)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3729, file: !94, line: 186, baseType: !714, size: 192, offset: 896)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3729, file: !94, line: 187, baseType: !4203, offset: 1088)
!4203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2403)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !206, file: !73, line: 499, baseType: !193, size: 128, offset: 4224)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !206, file: !73, line: 502, baseType: !4206, size: 64, offset: 4352)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4208)
!4208 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !206, file: !73, line: 504, baseType: !4210, size: 64, offset: 4416)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !206, file: !73, line: 505, baseType: !410, size: 64, offset: 4480)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !206, file: !73, line: 510, baseType: !410, size: 64, offset: 4544)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !206, file: !73, line: 511, baseType: !4214, size: 64, offset: 4608)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4216)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !206, file: !73, line: 513, baseType: !4218, size: 64, offset: 4672)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4220)
!4220 = !{!4221, !4222}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4219, file: !73, line: 293, baseType: !7, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4219, file: !73, line: 294, baseType: !313, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !206, file: !73, line: 515, baseType: !193, size: 128, offset: 4736)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !206, file: !73, line: 526, baseType: !4225, offset: 4864)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4226, line: 5, elements: !236)
!4226 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !206, file: !73, line: 528, baseType: !3742, size: 64, offset: 4864)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !206, file: !73, line: 529, baseType: !3755, size: 64, offset: 4928)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !206, file: !73, line: 534, baseType: !502, size: 32, offset: 4992)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !206, file: !73, line: 535, baseType: !404, size: 32, offset: 5024)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !206, file: !73, line: 537, baseType: !222, offset: 5056)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !206, file: !73, line: 538, baseType: !193, size: 128, offset: 5056)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !206, file: !73, line: 540, baseType: !4234, size: 64, offset: 5184)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4236, line: 54, size: 960, elements: !4237)
!4236 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243, !4244, !4248, !4252, !4253, !4254, !4255, !4259, !4263, !4264}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4235, file: !4236, line: 55, baseType: !182, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4235, file: !4236, line: 56, baseType: !621, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4235, file: !4236, line: 58, baseType: !317, size: 64, offset: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4235, file: !4236, line: 59, baseType: !317, size: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4235, file: !4236, line: 60, baseType: !215, size: 64, offset: 256)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4235, file: !4236, line: 62, baseType: !3462, size: 64, offset: 320)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4235, file: !4236, line: 63, baseType: !4245, size: 64, offset: 384)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!263, !3449, !3469}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4235, file: !4236, line: 65, baseType: !4249, size: 64, offset: 448)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{null, !4234}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4235, file: !4236, line: 66, baseType: !3471, size: 64, offset: 512)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4235, file: !4236, line: 68, baseType: !3480, size: 64, offset: 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4235, file: !4236, line: 70, baseType: !3276, size: 64, offset: 640)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4235, file: !4236, line: 71, baseType: !4256, size: 64, offset: 704)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!2199, !3449}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4235, file: !4236, line: 73, baseType: !4260, size: 64, offset: 768)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !3449, !3308, !3309}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4235, file: !4236, line: 75, baseType: !3475, size: 64, offset: 832)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4235, file: !4236, line: 77, baseType: !3592, size: 64, offset: 896)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !206, file: !73, line: 541, baseType: !317, size: 64, offset: 5248)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !206, file: !73, line: 543, baseType: !3471, size: 64, offset: 5312)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !206, file: !73, line: 544, baseType: !4268, size: 64, offset: 5376)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !206, file: !73, line: 545, baseType: !4271, size: 64, offset: 5440)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !206, file: !73, line: 547, baseType: !479, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !206, file: !73, line: 548, baseType: !479, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !206, file: !73, line: 549, baseType: !479, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !206, file: !73, line: 550, baseType: !479, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !178, file: !179, line: 78, baseType: !128, size: 32, offset: 6080)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !178, file: !179, line: 79, baseType: !1575, size: 192, offset: 6144)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !178, file: !179, line: 80, baseType: !2031, size: 256, offset: 6336)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_sem", scope: !178, file: !179, line: 81, baseType: !4281, size: 192, offset: 6592)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4282, line: 15, size: 192, elements: !4283)
!4282 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4283 = !{!4284, !4285, !4286}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4281, file: !4282, line: 16, baseType: !814)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4281, file: !4282, line: 17, baseType: !7, size: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4281, file: !4282, line: 18, baseType: !193, size: 128, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_driver", file: !179, line: 96, size: 1920, elements: !4289)
!4289 = !{!4290, !4291, !4297, !4298, !4302, !4306, !4310, !4311, !4312, !4316, !4317, !4318, !4319}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4288, file: !179, line: 97, baseType: !182, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4288, file: !179, line: 98, baseType: !4292, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device_id", file: !179, line: 89, size: 256, elements: !4295)
!4295 = !{!4296}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !4294, file: !179, line: 92, baseType: !2772, size: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "allow_rebind", scope: !4288, file: !179, line: 99, baseType: !479, size: 8, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4288, file: !179, line: 100, baseType: !4299, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!188, !177, !4292}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_changed", scope: !4288, file: !179, line: 102, baseType: !4303, size: 64, offset: 256)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !177, !128}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4288, file: !179, line: 104, baseType: !4307, size: 64, offset: 320)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!188, !177}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4288, file: !179, line: 105, baseType: !4307, size: 64, offset: 384)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4288, file: !179, line: 106, baseType: !4307, size: 64, offset: 448)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4288, file: !179, line: 107, baseType: !4313, size: 64, offset: 512)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!188, !177, !258}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4288, file: !179, line: 108, baseType: !3521, size: 1152, offset: 576)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "read_otherend_details", scope: !4288, file: !179, line: 109, baseType: !4307, size: 64, offset: 1728)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "is_ready", scope: !4288, file: !179, line: 110, baseType: !4307, size: 64, offset: 1792)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_memory", scope: !4288, file: !179, line: 111, baseType: !4320, size: 64, offset: 1856)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{null, !177}
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_bus_type", file: !151, line: 41, size: 1728, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4332, !4336, !4337}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4324, file: !151, line: 42, baseType: !263, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "levels", scope: !4324, file: !151, line: 43, baseType: !7, size: 32, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_id", scope: !4324, file: !151, line: 44, baseType: !4329, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!188, !263, !182}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4324, file: !151, line: 45, baseType: !4333, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!188, !4323, !182, !182}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_changed", scope: !4324, file: !151, line: 47, baseType: !201, size: 64, offset: 256)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4324, file: !151, line: 49, baseType: !3507, size: 1408, offset: 320)
!4338 = !{!4339, !4342, !4344, !4346, !4351, !4356, !4358, !4374, !4376, !0, !4378, !4383, !4397, !4399, !4401, !4403, !4408, !4414, !4431, !4433, !4441}
!4339 = !DIGlobalVariableExpression(var: !4340, expr: !DIExpression())
!4340 = distinct !DIGlobalVariable(name: "xenbus_dev_groups", scope: !2, file: !3, line: 426, type: !4341, isLocal: false, isDefinition: true)
!4341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 128, elements: !1642)
!4342 = !DIGlobalVariableExpression(var: !4343, expr: !DIExpression())
!4343 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xenbus_probe_initcall244", scope: !2, file: !3, line: 706, type: !176, isLocal: true, isDefinition: true)
!4344 = !DIGlobalVariableExpression(var: !4345, expr: !DIExpression())
!4345 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xenbus_init246", scope: !2, file: !3, line: 843, type: !176, isLocal: true, isDefinition: true)
!4346 = !DIGlobalVariableExpression(var: !4347, expr: !DIExpression())
!4347 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file247", scope: !2, file: !3, line: 845, type: !4348, isLocal: true, isDefinition: true, align: 8)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 304, elements: !4349)
!4349 = !{!4350}
!4350 = !DISubrange(count: 38)
!4351 = !DIGlobalVariableExpression(var: !4352, expr: !DIExpression())
!4352 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license248", scope: !2, file: !3, line: 845, type: !4353, isLocal: true, isDefinition: true, align: 8)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 152, elements: !4354)
!4354 = !{!4355}
!4355 = !DISubrange(count: 19)
!4356 = !DIGlobalVariableExpression(var: !4357, expr: !DIExpression())
!4357 = distinct !DIGlobalVariable(name: "xen_store_evtchn", scope: !2, file: !3, line: 68, type: !188, isLocal: false, isDefinition: true)
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(name: "xen_store_interface", scope: !2, file: !3, line: 71, type: !4360, isLocal: false, isDefinition: true)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenstore_domain_interface", file: !4362, line: 85, size: 16512, elements: !4363)
!4362 = !DIFile(filename: "./include/xen/interface/io/xs_wire.h", directory: "/home/lizy2001/genbc/linux")
!4363 = !{!4364, !4368, !4369, !4371, !4372, !4373}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !4361, file: !4362, line: 86, baseType: !4365, size: 8192)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 8192, elements: !4366)
!4366 = !{!4367}
!4367 = !DISubrange(count: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !4361, file: !4362, line: 87, baseType: !4365, size: 8192, offset: 8192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "req_cons", scope: !4361, file: !4362, line: 88, baseType: !4370, size: 32, offset: 16384)
!4370 = !DIDerivedType(tag: DW_TAG_typedef, name: "XENSTORE_RING_IDX", file: !4362, line: 83, baseType: !548)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "req_prod", scope: !4361, file: !4362, line: 88, baseType: !4370, size: 32, offset: 16416)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_cons", scope: !4361, file: !4362, line: 89, baseType: !4370, size: 32, offset: 16448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "rsp_prod", scope: !4361, file: !4362, line: 89, baseType: !4370, size: 32, offset: 16480)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "xen_store_domain_type", scope: !2, file: !3, line: 74, type: !150, isLocal: false, isDefinition: true)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "xenstored_ready", scope: !2, file: !3, line: 663, type: !188, isLocal: false, isDefinition: true)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(name: "xenbus_dev_attrs", scope: !2, file: !3, line: 414, type: !4380, isLocal: true, isDefinition: true)
!4380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 320, elements: !4381)
!4381 = !{!4382}
!4382 = !DISubrange(count: 5)
!4383 = !DIGlobalVariableExpression(var: !4384, expr: !DIExpression())
!4384 = distinct !DIGlobalVariable(name: "dev_attr_nodename", scope: !2, file: !3, line: 389, type: !4385, isLocal: true, isDefinition: true)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !4386)
!4386 = !{!4387, !4388, !4393}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4385, file: !73, line: 100, baseType: !300, size: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4385, file: !73, line: 101, baseType: !4389, size: 64, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!294, !3449, !4392, !263}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4385, file: !73, line: 103, baseType: !4394, size: 64, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!294, !3449, !4392, !182, !310}
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(name: "dev_attr_devtype", scope: !2, file: !3, line: 396, type: !4385, isLocal: true, isDefinition: true)
!4399 = !DIGlobalVariableExpression(var: !4400, expr: !DIExpression())
!4400 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 404, type: !4385, isLocal: true, isDefinition: true)
!4401 = !DIGlobalVariableExpression(var: !4402, expr: !DIExpression())
!4402 = distinct !DIGlobalVariable(name: "dev_attr_state", scope: !2, file: !3, line: 412, type: !4385, isLocal: true, isDefinition: true)
!4403 = !DIGlobalVariableExpression(var: !4404, expr: !DIExpression())
!4404 = distinct !DIGlobalVariable(name: "__key", scope: !4405, file: !1576, line: 88, type: !636, isLocal: true, isDefinition: true)
!4405 = distinct !DISubprogram(name: "__init_completion", scope: !1576, file: !1576, line: 85, type: !4406, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{null, !1574}
!4408 = !DIGlobalVariableExpression(var: !4409, expr: !DIExpression())
!4409 = distinct !DIGlobalVariable(name: "__key", scope: !4410, file: !4282, line: 33, type: !636, isLocal: true, isDefinition: true)
!4410 = distinct !DISubprogram(name: "sema_init", scope: !4282, file: !4282, line: 31, type: !4411, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4413, !188}
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4414 = !DIGlobalVariableExpression(var: !4415, expr: !DIExpression())
!4415 = distinct !DIGlobalVariable(name: "xenstore_chain", scope: !2, file: !3, line: 79, type: !4416, isLocal: true, isDefinition: true)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4417, line: 65, size: 320, elements: !4418)
!4417 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4418 = !{!4419, !4420}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4416, file: !4417, line: 66, baseType: !808, size: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4416, file: !4417, line: 67, baseType: !4421, size: 64, offset: 256)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4417, line: 54, size: 192, elements: !4423)
!4423 = !{!4424, !4429, !4430}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4422, file: !4417, line: 55, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4417, line: 51, baseType: !4426)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!188, !4421, !313, !176}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4422, file: !4417, line: 56, baseType: !4421, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4422, file: !4417, line: 57, baseType: !188, size: 32, offset: 128)
!4431 = !DIGlobalVariableExpression(var: !4432, expr: !DIExpression())
!4432 = distinct !DIGlobalVariable(name: "xen_store_gfn", scope: !2, file: !3, line: 77, type: !313, isLocal: true, isDefinition: true)
!4433 = !DIGlobalVariableExpression(var: !4434, expr: !DIExpression())
!4434 = distinct !DIGlobalVariable(name: "names", scope: !4435, file: !4436, line: 12, type: !4439, isLocal: true, isDefinition: true)
!4435 = distinct !DISubprogram(name: "param_name", scope: !4436, file: !4436, line: 9, type: !4437, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4436 = !DIFile(filename: "./include/xen/hvm.h", directory: "/home/lizy2001/genbc/linux")
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!182, !188}
!4439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4440, size: 1216, elements: !4354)
!4440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!4441 = !DIGlobalVariableExpression(var: !4442, expr: !DIExpression())
!4442 = distinct !DIGlobalVariable(name: "xenbus_resume_nb", scope: !2, file: !3, line: 764, type: !4422, isLocal: true, isDefinition: true)
!4443 = !{!"rsp"}
!4444 = !{i32 7, !"Dwarf Version", i32 4}
!4445 = !{i32 2, !"Debug Info Version", i32 3}
!4446 = !{i32 1, !"wchar_size", i32 2}
!4447 = !{i32 1, !"Code Model", i32 2}
!4448 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4449 = distinct !DISubprogram(name: "xenbus_match", scope: !3, file: !3, line: 92, type: !3518, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4450 = !DILocalVariable(name: "_dev", arg: 1, scope: !4449, file: !3, line: 92, type: !3449)
!4451 = !DILocation(line: 92, column: 33, scope: !4449)
!4452 = !DILocalVariable(name: "_drv", arg: 2, scope: !4449, file: !3, line: 92, type: !3520)
!4453 = !DILocation(line: 92, column: 61, scope: !4449)
!4454 = !DILocalVariable(name: "drv", scope: !4449, file: !3, line: 94, type: !4287)
!4455 = !DILocation(line: 94, column: 24, scope: !4449)
!4456 = !DILocation(line: 94, column: 47, scope: !4449)
!4457 = !DILocation(line: 94, column: 30, scope: !4449)
!4458 = !DILocation(line: 96, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 96, column: 6)
!4460 = !DILocation(line: 96, column: 12, scope: !4459)
!4461 = !DILocation(line: 96, column: 6, scope: !4449)
!4462 = !DILocation(line: 97, column: 3, scope: !4459)
!4463 = !DILocation(line: 99, column: 22, scope: !4449)
!4464 = !DILocation(line: 99, column: 27, scope: !4449)
!4465 = !DILocation(line: 99, column: 49, scope: !4449)
!4466 = !DILocation(line: 99, column: 32, scope: !4449)
!4467 = !DILocation(line: 99, column: 9, scope: !4449)
!4468 = !DILocation(line: 99, column: 56, scope: !4449)
!4469 = !DILocation(line: 99, column: 2, scope: !4449)
!4470 = !DILocation(line: 100, column: 1, scope: !4449)
!4471 = distinct !DISubprogram(name: "to_xenbus_driver", scope: !179, file: !179, line: 114, type: !4472, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!4287, !3520}
!4474 = !DILocalVariable(name: "drv", arg: 1, scope: !4471, file: !179, line: 114, type: !3520)
!4475 = !DILocation(line: 114, column: 76, scope: !4471)
!4476 = !DILocalVariable(name: "__mptr", scope: !4477, file: !179, line: 116, type: !176)
!4477 = distinct !DILexicalBlock(scope: !4471, file: !179, line: 116, column: 9)
!4478 = !DILocation(line: 116, column: 9, scope: !4477)
!4479 = !DILocation(line: 116, column: 9, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !179, line: 116, column: 9)
!4481 = !DILocation(line: 116, column: 2, scope: !4471)
!4482 = distinct !DISubprogram(name: "match_device", scope: !3, file: !3, line: 83, type: !4483, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!4292, !4292, !177}
!4485 = !DILocalVariable(name: "arr", arg: 1, scope: !4482, file: !3, line: 83, type: !4292)
!4486 = !DILocation(line: 83, column: 45, scope: !4482)
!4487 = !DILocalVariable(name: "dev", arg: 2, scope: !4482, file: !3, line: 83, type: !177)
!4488 = !DILocation(line: 83, column: 72, scope: !4482)
!4489 = !DILocation(line: 85, column: 2, scope: !4482)
!4490 = !DILocation(line: 85, column: 10, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 85, column: 2)
!4492 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 85, column: 2)
!4493 = !DILocation(line: 85, column: 15, scope: !4491)
!4494 = !DILocation(line: 85, column: 9, scope: !4491)
!4495 = !DILocation(line: 85, column: 26, scope: !4491)
!4496 = !DILocation(line: 85, column: 2, scope: !4492)
!4497 = !DILocation(line: 86, column: 15, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 86, column: 7)
!4499 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 85, column: 42)
!4500 = !DILocation(line: 86, column: 20, scope: !4498)
!4501 = !DILocation(line: 86, column: 32, scope: !4498)
!4502 = !DILocation(line: 86, column: 37, scope: !4498)
!4503 = !DILocation(line: 86, column: 8, scope: !4498)
!4504 = !DILocation(line: 86, column: 7, scope: !4499)
!4505 = !DILocation(line: 87, column: 11, scope: !4498)
!4506 = !DILocation(line: 87, column: 4, scope: !4498)
!4507 = !DILocation(line: 88, column: 2, scope: !4499)
!4508 = !DILocation(line: 85, column: 38, scope: !4491)
!4509 = !DILocation(line: 85, column: 2, scope: !4491)
!4510 = distinct !{!4510, !4496, !4511}
!4511 = !DILocation(line: 88, column: 2, scope: !4492)
!4512 = !DILocation(line: 89, column: 2, scope: !4482)
!4513 = !DILocation(line: 90, column: 1, scope: !4482)
!4514 = distinct !DISubprogram(name: "to_xenbus_device", scope: !179, file: !179, line: 84, type: !4515, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!177, !3449}
!4517 = !DILocalVariable(name: "dev", arg: 1, scope: !4514, file: !179, line: 84, type: !3449)
!4518 = !DILocation(line: 84, column: 69, scope: !4514)
!4519 = !DILocalVariable(name: "__mptr", scope: !4520, file: !179, line: 86, type: !176)
!4520 = distinct !DILexicalBlock(scope: !4514, file: !179, line: 86, column: 9)
!4521 = !DILocation(line: 86, column: 9, scope: !4520)
!4522 = !DILocation(line: 86, column: 9, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4520, file: !179, line: 86, column: 9)
!4524 = !DILocation(line: 86, column: 2, scope: !4514)
!4525 = distinct !DISubprogram(name: "xenbus_read_otherend_details", scope: !3, file: !3, line: 144, type: !4526, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!188, !177, !263, !263}
!4528 = !DILocalVariable(name: "xendev", arg: 1, scope: !4525, file: !3, line: 144, type: !177)
!4529 = !DILocation(line: 144, column: 56, scope: !4525)
!4530 = !DILocalVariable(name: "id_node", arg: 2, scope: !4525, file: !3, line: 145, type: !263)
!4531 = !DILocation(line: 145, column: 12, scope: !4525)
!4532 = !DILocalVariable(name: "path_node", arg: 3, scope: !4525, file: !3, line: 145, type: !263)
!4533 = !DILocation(line: 145, column: 27, scope: !4525)
!4534 = !DILocalVariable(name: "err", scope: !4525, file: !3, line: 147, type: !188)
!4535 = !DILocation(line: 147, column: 6, scope: !4525)
!4536 = !DILocation(line: 147, column: 26, scope: !4525)
!4537 = !DILocation(line: 147, column: 35, scope: !4525)
!4538 = !DILocation(line: 147, column: 43, scope: !4525)
!4539 = !DILocation(line: 148, column: 5, scope: !4525)
!4540 = !DILocation(line: 148, column: 21, scope: !4525)
!4541 = !DILocation(line: 148, column: 29, scope: !4525)
!4542 = !DILocation(line: 149, column: 5, scope: !4525)
!4543 = !DILocation(line: 149, column: 23, scope: !4525)
!4544 = !DILocation(line: 149, column: 31, scope: !4525)
!4545 = !DILocation(line: 147, column: 12, scope: !4525)
!4546 = !DILocation(line: 151, column: 6, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 151, column: 6)
!4548 = !DILocation(line: 151, column: 6, scope: !4525)
!4549 = !DILocation(line: 152, column: 20, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 151, column: 11)
!4551 = !DILocation(line: 152, column: 28, scope: !4550)
!4552 = !DILocation(line: 154, column: 6, scope: !4550)
!4553 = !DILocation(line: 154, column: 14, scope: !4550)
!4554 = !DILocation(line: 152, column: 3, scope: !4550)
!4555 = !DILocation(line: 155, column: 10, scope: !4550)
!4556 = !DILocation(line: 155, column: 3, scope: !4550)
!4557 = !DILocation(line: 157, column: 13, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 157, column: 6)
!4559 = !DILocation(line: 157, column: 21, scope: !4558)
!4560 = !DILocation(line: 157, column: 6, scope: !4558)
!4561 = !DILocation(line: 157, column: 31, scope: !4558)
!4562 = !DILocation(line: 157, column: 36, scope: !4558)
!4563 = !DILocation(line: 158, column: 21, scope: !4558)
!4564 = !DILocation(line: 158, column: 30, scope: !4558)
!4565 = !DILocation(line: 158, column: 38, scope: !4558)
!4566 = !DILocation(line: 158, column: 7, scope: !4558)
!4567 = !DILocation(line: 157, column: 6, scope: !4525)
!4568 = !DILocation(line: 159, column: 20, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 158, column: 53)
!4570 = !DILocation(line: 162, column: 6, scope: !4569)
!4571 = !DILocation(line: 162, column: 14, scope: !4569)
!4572 = !DILocation(line: 159, column: 3, scope: !4569)
!4573 = !DILocation(line: 163, column: 25, scope: !4569)
!4574 = !DILocation(line: 163, column: 3, scope: !4569)
!4575 = !DILocation(line: 164, column: 3, scope: !4569)
!4576 = !DILocation(line: 167, column: 2, scope: !4525)
!4577 = !DILocation(line: 168, column: 1, scope: !4525)
!4578 = distinct !DISubprogram(name: "free_otherend_details", scope: !3, file: !3, line: 104, type: !4321, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4579 = !DILocalVariable(name: "dev", arg: 1, scope: !4578, file: !3, line: 104, type: !177)
!4580 = !DILocation(line: 104, column: 57, scope: !4578)
!4581 = !DILocation(line: 106, column: 8, scope: !4578)
!4582 = !DILocation(line: 106, column: 13, scope: !4578)
!4583 = !DILocation(line: 106, column: 2, scope: !4578)
!4584 = !DILocation(line: 107, column: 2, scope: !4578)
!4585 = !DILocation(line: 107, column: 7, scope: !4578)
!4586 = !DILocation(line: 107, column: 16, scope: !4578)
!4587 = !DILocation(line: 108, column: 1, scope: !4578)
!4588 = distinct !DISubprogram(name: "xenbus_otherend_changed", scope: !3, file: !3, line: 171, type: !4589, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !204, !182, !182, !188}
!4591 = !DILocalVariable(name: "watch", arg: 1, scope: !4588, file: !3, line: 171, type: !204)
!4592 = !DILocation(line: 171, column: 51, scope: !4588)
!4593 = !DILocalVariable(name: "path", arg: 2, scope: !4588, file: !3, line: 172, type: !182)
!4594 = !DILocation(line: 172, column: 21, scope: !4588)
!4595 = !DILocalVariable(name: "token", arg: 3, scope: !4588, file: !3, line: 172, type: !182)
!4596 = !DILocation(line: 172, column: 39, scope: !4588)
!4597 = !DILocalVariable(name: "ignore_on_shutdown", arg: 4, scope: !4588, file: !3, line: 173, type: !188)
!4598 = !DILocation(line: 173, column: 13, scope: !4588)
!4599 = !DILocalVariable(name: "dev", scope: !4588, file: !3, line: 175, type: !177)
!4600 = !DILocation(line: 175, column: 24, scope: !4588)
!4601 = !DILocalVariable(name: "__mptr", scope: !4602, file: !3, line: 176, type: !176)
!4602 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 176, column: 3)
!4603 = !DILocation(line: 176, column: 3, scope: !4602)
!4604 = !DILocation(line: 176, column: 3, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 176, column: 3)
!4606 = !DILocalVariable(name: "drv", scope: !4588, file: !3, line: 177, type: !4287)
!4607 = !DILocation(line: 177, column: 24, scope: !4588)
!4608 = !DILocation(line: 177, column: 47, scope: !4588)
!4609 = !DILocation(line: 177, column: 52, scope: !4588)
!4610 = !DILocation(line: 177, column: 56, scope: !4588)
!4611 = !DILocation(line: 177, column: 30, scope: !4588)
!4612 = !DILocalVariable(name: "state", scope: !4588, file: !3, line: 178, type: !128)
!4613 = !DILocation(line: 178, column: 20, scope: !4588)
!4614 = !DILocation(line: 182, column: 7, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 182, column: 6)
!4616 = !DILocation(line: 182, column: 12, scope: !4615)
!4617 = !DILocation(line: 182, column: 21, scope: !4615)
!4618 = !DILocation(line: 183, column: 14, scope: !4615)
!4619 = !DILocation(line: 183, column: 19, scope: !4615)
!4620 = !DILocation(line: 183, column: 29, scope: !4615)
!4621 = !DILocation(line: 183, column: 42, scope: !4615)
!4622 = !DILocation(line: 183, column: 47, scope: !4615)
!4623 = !DILocation(line: 183, column: 35, scope: !4615)
!4624 = !DILocation(line: 183, column: 6, scope: !4615)
!4625 = !DILocation(line: 182, column: 6, scope: !4588)
!4626 = !DILocation(line: 185, column: 3, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 183, column: 59)
!4628 = !DILocation(line: 188, column: 35, scope: !4588)
!4629 = !DILocation(line: 188, column: 40, scope: !4588)
!4630 = !DILocation(line: 188, column: 10, scope: !4588)
!4631 = !DILocation(line: 188, column: 8, scope: !4588)
!4632 = !DILocation(line: 197, column: 6, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 197, column: 6)
!4634 = !DILocation(line: 197, column: 19, scope: !4633)
!4635 = !DILocation(line: 197, column: 6, scope: !4588)
!4636 = !DILocation(line: 198, column: 7, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 198, column: 7)
!4638 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 197, column: 37)
!4639 = !DILocation(line: 198, column: 26, scope: !4637)
!4640 = !DILocation(line: 198, column: 30, scope: !4637)
!4641 = !DILocation(line: 198, column: 36, scope: !4637)
!4642 = !DILocation(line: 198, column: 7, scope: !4638)
!4643 = !DILocation(line: 199, column: 27, scope: !4637)
!4644 = !DILocation(line: 199, column: 4, scope: !4637)
!4645 = !DILocation(line: 200, column: 3, scope: !4638)
!4646 = !DILocation(line: 203, column: 6, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 203, column: 6)
!4648 = !DILocation(line: 203, column: 11, scope: !4647)
!4649 = !DILocation(line: 203, column: 6, scope: !4588)
!4650 = !DILocation(line: 204, column: 3, scope: !4647)
!4651 = !DILocation(line: 204, column: 8, scope: !4647)
!4652 = !DILocation(line: 204, column: 25, scope: !4647)
!4653 = !DILocation(line: 204, column: 30, scope: !4647)
!4654 = !DILocation(line: 205, column: 1, scope: !4588)
!4655 = distinct !DISubprogram(name: "xenbus_dev_probe", scope: !3, file: !3, line: 208, type: !3481, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4656 = !DILocalVariable(name: "_dev", arg: 1, scope: !4655, file: !3, line: 208, type: !3449)
!4657 = !DILocation(line: 208, column: 37, scope: !4655)
!4658 = !DILocalVariable(name: "dev", scope: !4655, file: !3, line: 210, type: !177)
!4659 = !DILocation(line: 210, column: 24, scope: !4655)
!4660 = !DILocation(line: 210, column: 47, scope: !4655)
!4661 = !DILocation(line: 210, column: 30, scope: !4655)
!4662 = !DILocalVariable(name: "drv", scope: !4655, file: !3, line: 211, type: !4287)
!4663 = !DILocation(line: 211, column: 24, scope: !4655)
!4664 = !DILocation(line: 211, column: 47, scope: !4655)
!4665 = !DILocation(line: 211, column: 53, scope: !4655)
!4666 = !DILocation(line: 211, column: 30, scope: !4655)
!4667 = !DILocalVariable(name: "id", scope: !4655, file: !3, line: 212, type: !4292)
!4668 = !DILocation(line: 212, column: 33, scope: !4655)
!4669 = !DILocalVariable(name: "err", scope: !4655, file: !3, line: 213, type: !188)
!4670 = !DILocation(line: 213, column: 6, scope: !4655)
!4671 = !DILocation(line: 215, column: 2, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 215, column: 2)
!4673 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 215, column: 2)
!4674 = !DILocation(line: 215, column: 2, scope: !4673)
!4675 = !DILocation(line: 217, column: 7, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 217, column: 6)
!4677 = !DILocation(line: 217, column: 12, scope: !4676)
!4678 = !DILocation(line: 217, column: 6, scope: !4655)
!4679 = !DILocation(line: 218, column: 7, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 217, column: 19)
!4681 = !DILocation(line: 219, column: 3, scope: !4680)
!4682 = !DILocation(line: 222, column: 20, scope: !4655)
!4683 = !DILocation(line: 222, column: 25, scope: !4655)
!4684 = !DILocation(line: 222, column: 30, scope: !4655)
!4685 = !DILocation(line: 222, column: 7, scope: !4655)
!4686 = !DILocation(line: 222, column: 5, scope: !4655)
!4687 = !DILocation(line: 223, column: 7, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 223, column: 6)
!4689 = !DILocation(line: 223, column: 6, scope: !4655)
!4690 = !DILocation(line: 224, column: 7, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 223, column: 11)
!4692 = !DILocation(line: 225, column: 3, scope: !4691)
!4693 = !DILocation(line: 228, column: 25, scope: !4655)
!4694 = !DILocation(line: 228, column: 8, scope: !4655)
!4695 = !DILocation(line: 228, column: 6, scope: !4655)
!4696 = !DILocation(line: 229, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 229, column: 6)
!4698 = !DILocation(line: 229, column: 6, scope: !4655)
!4699 = !DILocation(line: 230, column: 3, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 229, column: 11)
!4701 = !DILocation(line: 232, column: 10, scope: !4700)
!4702 = !DILocation(line: 232, column: 3, scope: !4700)
!4703 = !DILocation(line: 235, column: 22, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 235, column: 6)
!4705 = !DILocation(line: 235, column: 27, scope: !4704)
!4706 = !DILocation(line: 235, column: 34, scope: !4704)
!4707 = !DILocation(line: 235, column: 7, scope: !4704)
!4708 = !DILocation(line: 235, column: 6, scope: !4655)
!4709 = !DILocation(line: 236, column: 3, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 235, column: 42)
!4711 = !DILocation(line: 238, column: 7, scope: !4710)
!4712 = !DILocation(line: 239, column: 3, scope: !4710)
!4713 = !DILocation(line: 242, column: 8, scope: !4655)
!4714 = !DILocation(line: 242, column: 13, scope: !4655)
!4715 = !DILocation(line: 242, column: 2, scope: !4655)
!4716 = !DILocation(line: 243, column: 8, scope: !4655)
!4717 = !DILocation(line: 243, column: 13, scope: !4655)
!4718 = !DILocation(line: 243, column: 19, scope: !4655)
!4719 = !DILocation(line: 243, column: 24, scope: !4655)
!4720 = !DILocation(line: 243, column: 6, scope: !4655)
!4721 = !DILocation(line: 244, column: 6, scope: !4655)
!4722 = !DILocation(line: 244, column: 11, scope: !4655)
!4723 = !DILocation(line: 244, column: 2, scope: !4655)
!4724 = !DILocation(line: 245, column: 6, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 245, column: 6)
!4726 = !DILocation(line: 245, column: 6, scope: !4655)
!4727 = !DILocation(line: 246, column: 3, scope: !4725)
!4728 = !DILocation(line: 248, column: 23, scope: !4655)
!4729 = !DILocation(line: 248, column: 8, scope: !4655)
!4730 = !DILocation(line: 248, column: 6, scope: !4655)
!4731 = !DILocation(line: 249, column: 6, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 249, column: 6)
!4733 = !DILocation(line: 249, column: 6, scope: !4655)
!4734 = !DILocation(line: 250, column: 3, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 249, column: 11)
!4736 = !DILocation(line: 252, column: 10, scope: !4735)
!4737 = !DILocation(line: 252, column: 3, scope: !4735)
!4738 = !DILocation(line: 255, column: 2, scope: !4655)
!4739 = !DILabel(scope: !4655, name: "fail_put", file: !3, line: 256)
!4740 = !DILocation(line: 256, column: 1, scope: !4655)
!4741 = !DILocation(line: 257, column: 13, scope: !4655)
!4742 = !DILocation(line: 257, column: 18, scope: !4655)
!4743 = !DILocation(line: 257, column: 25, scope: !4655)
!4744 = !DILocation(line: 257, column: 2, scope: !4655)
!4745 = !DILabel(scope: !4655, name: "fail", file: !3, line: 258)
!4746 = !DILocation(line: 258, column: 1, scope: !4655)
!4747 = !DILocation(line: 259, column: 19, scope: !4655)
!4748 = !DILocation(line: 259, column: 24, scope: !4655)
!4749 = !DILocation(line: 259, column: 55, scope: !4655)
!4750 = !DILocation(line: 259, column: 60, scope: !4655)
!4751 = !DILocation(line: 259, column: 2, scope: !4655)
!4752 = !DILocation(line: 260, column: 9, scope: !4655)
!4753 = !DILocation(line: 260, column: 2, scope: !4655)
!4754 = !DILocation(line: 261, column: 1, scope: !4655)
!4755 = distinct !DISubprogram(name: "talk_to_otherend", scope: !3, file: !3, line: 121, type: !4308, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4756 = !DILocalVariable(name: "dev", arg: 1, scope: !4755, file: !3, line: 121, type: !177)
!4757 = !DILocation(line: 121, column: 51, scope: !4755)
!4758 = !DILocalVariable(name: "drv", scope: !4755, file: !3, line: 123, type: !4287)
!4759 = !DILocation(line: 123, column: 24, scope: !4755)
!4760 = !DILocation(line: 123, column: 47, scope: !4755)
!4761 = !DILocation(line: 123, column: 52, scope: !4755)
!4762 = !DILocation(line: 123, column: 56, scope: !4755)
!4763 = !DILocation(line: 123, column: 30, scope: !4755)
!4764 = !DILocation(line: 125, column: 22, scope: !4755)
!4765 = !DILocation(line: 125, column: 2, scope: !4755)
!4766 = !DILocation(line: 126, column: 24, scope: !4755)
!4767 = !DILocation(line: 126, column: 2, scope: !4755)
!4768 = !DILocation(line: 128, column: 9, scope: !4755)
!4769 = !DILocation(line: 128, column: 14, scope: !4755)
!4770 = !DILocation(line: 128, column: 36, scope: !4755)
!4771 = !DILocation(line: 128, column: 2, scope: !4755)
!4772 = distinct !DISubprogram(name: "try_module_get", scope: !4773, file: !4773, line: 751, type: !4774, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4773 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4774 = !DISubroutineType(types: !4775)
!4775 = !{!479, !621}
!4776 = !DILocalVariable(name: "module", arg: 1, scope: !4772, file: !4773, line: 751, type: !621)
!4777 = !DILocation(line: 751, column: 50, scope: !4772)
!4778 = !DILocation(line: 753, column: 2, scope: !4772)
!4779 = distinct !DISubprogram(name: "watch_otherend", scope: !3, file: !3, line: 133, type: !4308, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4780 = !DILocalVariable(name: "dev", arg: 1, scope: !4779, file: !3, line: 133, type: !177)
!4781 = !DILocation(line: 133, column: 49, scope: !4779)
!4782 = !DILocalVariable(name: "bus", scope: !4779, file: !3, line: 135, type: !4323)
!4783 = !DILocation(line: 135, column: 23, scope: !4779)
!4784 = !DILocalVariable(name: "__mptr", scope: !4785, file: !3, line: 136, type: !176)
!4785 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 136, column: 3)
!4786 = !DILocation(line: 136, column: 3, scope: !4785)
!4787 = !DILocation(line: 136, column: 3, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 136, column: 3)
!4789 = !DILocation(line: 138, column: 30, scope: !4779)
!4790 = !DILocation(line: 138, column: 36, scope: !4779)
!4791 = !DILocation(line: 138, column: 41, scope: !4779)
!4792 = !DILocation(line: 139, column: 9, scope: !4779)
!4793 = !DILocation(line: 139, column: 14, scope: !4779)
!4794 = !DILocation(line: 140, column: 18, scope: !4779)
!4795 = !DILocation(line: 140, column: 23, scope: !4779)
!4796 = !DILocation(line: 138, column: 9, scope: !4779)
!4797 = !DILocation(line: 138, column: 2, scope: !4779)
!4798 = distinct !DISubprogram(name: "module_put", scope: !4773, file: !4773, line: 756, type: !4799, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{null, !621}
!4801 = !DILocalVariable(name: "module", arg: 1, scope: !4798, file: !4773, line: 756, type: !621)
!4802 = !DILocation(line: 756, column: 46, scope: !4798)
!4803 = !DILocation(line: 758, column: 1, scope: !4798)
!4804 = distinct !DISubprogram(name: "xenbus_dev_remove", scope: !3, file: !3, line: 264, type: !3481, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4805 = !DILocalVariable(name: "_dev", arg: 1, scope: !4804, file: !3, line: 264, type: !3449)
!4806 = !DILocation(line: 264, column: 38, scope: !4804)
!4807 = !DILocalVariable(name: "dev", scope: !4804, file: !3, line: 266, type: !177)
!4808 = !DILocation(line: 266, column: 24, scope: !4804)
!4809 = !DILocation(line: 266, column: 47, scope: !4804)
!4810 = !DILocation(line: 266, column: 30, scope: !4804)
!4811 = !DILocalVariable(name: "drv", scope: !4804, file: !3, line: 267, type: !4287)
!4812 = !DILocation(line: 267, column: 24, scope: !4804)
!4813 = !DILocation(line: 267, column: 47, scope: !4804)
!4814 = !DILocation(line: 267, column: 53, scope: !4804)
!4815 = !DILocation(line: 267, column: 30, scope: !4804)
!4816 = !DILocation(line: 269, column: 2, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 269, column: 2)
!4818 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 269, column: 2)
!4819 = !DILocation(line: 269, column: 2, scope: !4818)
!4820 = !DILocation(line: 271, column: 22, scope: !4804)
!4821 = !DILocation(line: 271, column: 2, scope: !4804)
!4822 = !DILocation(line: 273, column: 6, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 273, column: 6)
!4824 = !DILocation(line: 273, column: 11, scope: !4823)
!4825 = !DILocation(line: 273, column: 6, scope: !4804)
!4826 = !DILocation(line: 274, column: 9, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 273, column: 19)
!4828 = !DILocation(line: 274, column: 14, scope: !4827)
!4829 = !DILocation(line: 274, column: 3, scope: !4827)
!4830 = !DILocation(line: 275, column: 3, scope: !4827)
!4831 = !DILocation(line: 275, column: 8, scope: !4827)
!4832 = !DILocation(line: 275, column: 15, scope: !4827)
!4833 = !DILocation(line: 276, column: 7, scope: !4827)
!4834 = !DILocation(line: 276, column: 12, scope: !4827)
!4835 = !DILocation(line: 276, column: 3, scope: !4827)
!4836 = !DILocation(line: 277, column: 2, scope: !4827)
!4837 = !DILocation(line: 279, column: 13, scope: !4804)
!4838 = !DILocation(line: 279, column: 18, scope: !4804)
!4839 = !DILocation(line: 279, column: 25, scope: !4804)
!4840 = !DILocation(line: 279, column: 2, scope: !4804)
!4841 = !DILocation(line: 281, column: 24, scope: !4804)
!4842 = !DILocation(line: 281, column: 2, scope: !4804)
!4843 = !DILocation(line: 289, column: 7, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 289, column: 6)
!4845 = !DILocation(line: 289, column: 12, scope: !4844)
!4846 = !DILocation(line: 289, column: 25, scope: !4844)
!4847 = !DILocation(line: 290, column: 31, scope: !4844)
!4848 = !DILocation(line: 290, column: 36, scope: !4844)
!4849 = !DILocation(line: 290, column: 6, scope: !4844)
!4850 = !DILocation(line: 290, column: 46, scope: !4844)
!4851 = !DILocation(line: 289, column: 6, scope: !4804)
!4852 = !DILocation(line: 291, column: 23, scope: !4844)
!4853 = !DILocation(line: 291, column: 3, scope: !4844)
!4854 = !DILocation(line: 293, column: 2, scope: !4804)
!4855 = distinct !DISubprogram(name: "free_otherend_watch", scope: !3, file: !3, line: 111, type: !4321, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4856 = !DILocalVariable(name: "dev", arg: 1, scope: !4855, file: !3, line: 111, type: !177)
!4857 = !DILocation(line: 111, column: 55, scope: !4855)
!4858 = !DILocation(line: 113, column: 6, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 113, column: 6)
!4860 = !DILocation(line: 113, column: 11, scope: !4859)
!4861 = !DILocation(line: 113, column: 26, scope: !4859)
!4862 = !DILocation(line: 113, column: 6, scope: !4855)
!4863 = !DILocation(line: 114, column: 28, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 113, column: 32)
!4865 = !DILocation(line: 114, column: 33, scope: !4864)
!4866 = !DILocation(line: 114, column: 3, scope: !4864)
!4867 = !DILocation(line: 115, column: 9, scope: !4864)
!4868 = !DILocation(line: 115, column: 14, scope: !4864)
!4869 = !DILocation(line: 115, column: 29, scope: !4864)
!4870 = !DILocation(line: 115, column: 3, scope: !4864)
!4871 = !DILocation(line: 116, column: 3, scope: !4864)
!4872 = !DILocation(line: 116, column: 8, scope: !4864)
!4873 = !DILocation(line: 116, column: 23, scope: !4864)
!4874 = !DILocation(line: 116, column: 28, scope: !4864)
!4875 = !DILocation(line: 117, column: 2, scope: !4864)
!4876 = !DILocation(line: 118, column: 1, scope: !4855)
!4877 = distinct !DISubprogram(name: "xenbus_register_driver_common", scope: !3, file: !3, line: 297, type: !4878, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!188, !4287, !4323, !621, !182}
!4880 = !DILocalVariable(name: "drv", arg: 1, scope: !4877, file: !3, line: 297, type: !4287)
!4881 = !DILocation(line: 297, column: 57, scope: !4877)
!4882 = !DILocalVariable(name: "bus", arg: 2, scope: !4877, file: !3, line: 298, type: !4323)
!4883 = !DILocation(line: 298, column: 28, scope: !4877)
!4884 = !DILocalVariable(name: "owner", arg: 3, scope: !4877, file: !3, line: 299, type: !621)
!4885 = !DILocation(line: 299, column: 22, scope: !4877)
!4886 = !DILocalVariable(name: "mod_name", arg: 4, scope: !4877, file: !3, line: 299, type: !182)
!4887 = !DILocation(line: 299, column: 41, scope: !4877)
!4888 = !DILocation(line: 301, column: 21, scope: !4877)
!4889 = !DILocation(line: 301, column: 26, scope: !4877)
!4890 = !DILocation(line: 301, column: 33, scope: !4877)
!4891 = !DILocation(line: 301, column: 38, scope: !4877)
!4892 = !DILocation(line: 301, column: 45, scope: !4877)
!4893 = !DILocation(line: 301, column: 50, scope: !4877)
!4894 = !DILocation(line: 301, column: 57, scope: !4877)
!4895 = !DILocation(line: 301, column: 2, scope: !4877)
!4896 = !DILocation(line: 301, column: 7, scope: !4877)
!4897 = !DILocation(line: 301, column: 14, scope: !4877)
!4898 = !DILocation(line: 301, column: 19, scope: !4877)
!4899 = !DILocation(line: 302, column: 21, scope: !4877)
!4900 = !DILocation(line: 302, column: 26, scope: !4877)
!4901 = !DILocation(line: 302, column: 2, scope: !4877)
!4902 = !DILocation(line: 302, column: 7, scope: !4877)
!4903 = !DILocation(line: 302, column: 14, scope: !4877)
!4904 = !DILocation(line: 302, column: 18, scope: !4877)
!4905 = !DILocation(line: 303, column: 22, scope: !4877)
!4906 = !DILocation(line: 303, column: 2, scope: !4877)
!4907 = !DILocation(line: 303, column: 7, scope: !4877)
!4908 = !DILocation(line: 303, column: 14, scope: !4877)
!4909 = !DILocation(line: 303, column: 20, scope: !4877)
!4910 = !DILocation(line: 304, column: 25, scope: !4877)
!4911 = !DILocation(line: 304, column: 2, scope: !4877)
!4912 = !DILocation(line: 304, column: 7, scope: !4877)
!4913 = !DILocation(line: 304, column: 14, scope: !4877)
!4914 = !DILocation(line: 304, column: 23, scope: !4877)
!4915 = !DILocation(line: 306, column: 26, scope: !4877)
!4916 = !DILocation(line: 306, column: 31, scope: !4877)
!4917 = !DILocation(line: 306, column: 9, scope: !4877)
!4918 = !DILocation(line: 306, column: 2, scope: !4877)
!4919 = distinct !DISubprogram(name: "xenbus_unregister_driver", scope: !3, file: !3, line: 310, type: !4920, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !4287}
!4922 = !DILocalVariable(name: "drv", arg: 1, scope: !4919, file: !3, line: 310, type: !4287)
!4923 = !DILocation(line: 310, column: 53, scope: !4919)
!4924 = !DILocation(line: 312, column: 21, scope: !4919)
!4925 = !DILocation(line: 312, column: 26, scope: !4919)
!4926 = !DILocation(line: 312, column: 2, scope: !4919)
!4927 = !DILocation(line: 313, column: 1, scope: !4919)
!4928 = distinct !DISubprogram(name: "xenbus_probe_node", scope: !3, file: !3, line: 432, type: !4334, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4929 = !DILocalVariable(name: "bus", arg: 1, scope: !4928, file: !3, line: 432, type: !4323)
!4930 = !DILocation(line: 432, column: 44, scope: !4928)
!4931 = !DILocalVariable(name: "type", arg: 2, scope: !4928, file: !3, line: 433, type: !182)
!4932 = !DILocation(line: 433, column: 21, scope: !4928)
!4933 = !DILocalVariable(name: "nodename", arg: 3, scope: !4928, file: !3, line: 434, type: !182)
!4934 = !DILocation(line: 434, column: 21, scope: !4928)
!4935 = !DILocalVariable(name: "devname", scope: !4928, file: !3, line: 436, type: !4936)
!4936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 160, elements: !2273)
!4937 = !DILocation(line: 436, column: 7, scope: !4928)
!4938 = !DILocalVariable(name: "err", scope: !4928, file: !3, line: 437, type: !188)
!4939 = !DILocation(line: 437, column: 6, scope: !4928)
!4940 = !DILocalVariable(name: "xendev", scope: !4928, file: !3, line: 438, type: !177)
!4941 = !DILocation(line: 438, column: 24, scope: !4928)
!4942 = !DILocalVariable(name: "stringlen", scope: !4928, file: !3, line: 439, type: !310)
!4943 = !DILocation(line: 439, column: 9, scope: !4928)
!4944 = !DILocalVariable(name: "tmpstring", scope: !4928, file: !3, line: 440, type: !263)
!4945 = !DILocation(line: 440, column: 8, scope: !4928)
!4946 = !DILocalVariable(name: "state", scope: !4928, file: !3, line: 442, type: !128)
!4947 = !DILocation(line: 442, column: 20, scope: !4928)
!4948 = !DILocation(line: 442, column: 53, scope: !4928)
!4949 = !DILocation(line: 442, column: 28, scope: !4928)
!4950 = !DILocation(line: 444, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 444, column: 6)
!4952 = !DILocation(line: 444, column: 12, scope: !4951)
!4953 = !DILocation(line: 444, column: 6, scope: !4928)
!4954 = !DILocation(line: 447, column: 3, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 444, column: 40)
!4956 = !DILocation(line: 450, column: 21, scope: !4928)
!4957 = !DILocation(line: 450, column: 14, scope: !4928)
!4958 = !DILocation(line: 450, column: 31, scope: !4928)
!4959 = !DILocation(line: 450, column: 44, scope: !4928)
!4960 = !DILocation(line: 450, column: 37, scope: !4928)
!4961 = !DILocation(line: 450, column: 35, scope: !4928)
!4962 = !DILocation(line: 450, column: 50, scope: !4928)
!4963 = !DILocation(line: 450, column: 12, scope: !4928)
!4964 = !DILocation(line: 451, column: 37, scope: !4928)
!4965 = !DILocation(line: 451, column: 35, scope: !4928)
!4966 = !DILocation(line: 451, column: 11, scope: !4928)
!4967 = !DILocation(line: 451, column: 9, scope: !4928)
!4968 = !DILocation(line: 452, column: 7, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 452, column: 6)
!4970 = !DILocation(line: 452, column: 6, scope: !4928)
!4971 = !DILocation(line: 453, column: 3, scope: !4969)
!4972 = !DILocation(line: 455, column: 2, scope: !4928)
!4973 = !DILocation(line: 455, column: 10, scope: !4928)
!4974 = !DILocation(line: 455, column: 16, scope: !4928)
!4975 = !DILocation(line: 459, column: 23, scope: !4928)
!4976 = !DILocation(line: 459, column: 30, scope: !4928)
!4977 = !DILocation(line: 459, column: 14, scope: !4928)
!4978 = !DILocation(line: 459, column: 12, scope: !4928)
!4979 = !DILocation(line: 460, column: 9, scope: !4928)
!4980 = !DILocation(line: 460, column: 20, scope: !4928)
!4981 = !DILocation(line: 460, column: 2, scope: !4928)
!4982 = !DILocation(line: 461, column: 21, scope: !4928)
!4983 = !DILocation(line: 461, column: 2, scope: !4928)
!4984 = !DILocation(line: 461, column: 10, scope: !4928)
!4985 = !DILocation(line: 461, column: 19, scope: !4928)
!4986 = !DILocation(line: 463, column: 22, scope: !4928)
!4987 = !DILocation(line: 463, column: 15, scope: !4928)
!4988 = !DILocation(line: 463, column: 33, scope: !4928)
!4989 = !DILocation(line: 463, column: 12, scope: !4928)
!4990 = !DILocation(line: 464, column: 9, scope: !4928)
!4991 = !DILocation(line: 464, column: 20, scope: !4928)
!4992 = !DILocation(line: 464, column: 2, scope: !4928)
!4993 = !DILocation(line: 465, column: 23, scope: !4928)
!4994 = !DILocation(line: 465, column: 2, scope: !4928)
!4995 = !DILocation(line: 465, column: 10, scope: !4928)
!4996 = !DILocation(line: 465, column: 21, scope: !4928)
!4997 = !DILocation(line: 466, column: 2, scope: !4928)
!4998 = !DILocation(line: 468, column: 21, scope: !4928)
!4999 = !DILocation(line: 468, column: 26, scope: !4928)
!5000 = !DILocation(line: 468, column: 2, scope: !4928)
!5001 = !DILocation(line: 468, column: 10, scope: !4928)
!5002 = !DILocation(line: 468, column: 14, scope: !4928)
!5003 = !DILocation(line: 468, column: 18, scope: !4928)
!5004 = !DILocation(line: 469, column: 2, scope: !4928)
!5005 = !DILocation(line: 469, column: 10, scope: !4928)
!5006 = !DILocation(line: 469, column: 14, scope: !4928)
!5007 = !DILocation(line: 469, column: 22, scope: !4928)
!5008 = !DILocation(line: 471, column: 8, scope: !4928)
!5009 = !DILocation(line: 471, column: 13, scope: !4928)
!5010 = !DILocation(line: 471, column: 24, scope: !4928)
!5011 = !DILocation(line: 471, column: 33, scope: !4928)
!5012 = !DILocation(line: 471, column: 41, scope: !4928)
!5013 = !DILocation(line: 471, column: 6, scope: !4928)
!5014 = !DILocation(line: 472, column: 6, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 472, column: 6)
!5016 = !DILocation(line: 472, column: 6, scope: !4928)
!5017 = !DILocation(line: 473, column: 3, scope: !5015)
!5018 = !DILocation(line: 475, column: 16, scope: !4928)
!5019 = !DILocation(line: 475, column: 24, scope: !4928)
!5020 = !DILocation(line: 475, column: 35, scope: !4928)
!5021 = !DILocation(line: 475, column: 2, scope: !4928)
!5022 = !DILocation(line: 476, column: 13, scope: !4928)
!5023 = !DILocation(line: 476, column: 21, scope: !4928)
!5024 = !DILocation(line: 476, column: 2, scope: !4928)
!5025 = !DILocation(line: 479, column: 25, scope: !4928)
!5026 = !DILocation(line: 479, column: 33, scope: !4928)
!5027 = !DILocation(line: 479, column: 8, scope: !4928)
!5028 = !DILocation(line: 479, column: 6, scope: !4928)
!5029 = !DILocation(line: 480, column: 6, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 480, column: 6)
!5031 = !DILocation(line: 480, column: 6, scope: !4928)
!5032 = !DILocation(line: 481, column: 15, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 480, column: 11)
!5034 = !DILocation(line: 481, column: 23, scope: !5033)
!5035 = !DILocation(line: 481, column: 3, scope: !5033)
!5036 = !DILocation(line: 482, column: 10, scope: !5033)
!5037 = !DILocation(line: 483, column: 3, scope: !5033)
!5038 = !DILocation(line: 486, column: 2, scope: !4928)
!5039 = !DILabel(scope: !4928, name: "fail", file: !3, line: 487)
!5040 = !DILocation(line: 487, column: 1, scope: !4928)
!5041 = !DILocation(line: 488, column: 8, scope: !4928)
!5042 = !DILocation(line: 488, column: 2, scope: !4928)
!5043 = !DILocation(line: 489, column: 9, scope: !4928)
!5044 = !DILocation(line: 489, column: 2, scope: !4928)
!5045 = !DILocation(line: 490, column: 1, scope: !4928)
!5046 = distinct !DISubprogram(name: "kzalloc", scope: !163, file: !163, line: 662, type: !5047, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!176, !310, !784}
!5049 = !DILocalVariable(name: "s", arg: 1, scope: !5050, file: !163, line: 445, type: !1009)
!5050 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !163, file: !163, line: 445, type: !5051, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!176, !1009, !784, !310}
!5053 = !DILocation(line: 445, column: 72, scope: !5050, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 552, column: 10, scope: !5055, inlinedAt: !5058)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !163, line: 540, column: 34)
!5056 = distinct !DILexicalBlock(scope: !5057, file: !163, line: 540, column: 6)
!5057 = distinct !DISubprogram(name: "kmalloc", scope: !163, file: !163, line: 538, type: !5047, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5058 = distinct !DILocation(line: 664, column: 9, scope: !5046)
!5059 = !DILocalVariable(name: "flags", arg: 2, scope: !5050, file: !163, line: 446, type: !784)
!5060 = !DILocation(line: 446, column: 9, scope: !5050, inlinedAt: !5054)
!5061 = !DILocalVariable(name: "size", arg: 3, scope: !5050, file: !163, line: 446, type: !310)
!5062 = !DILocation(line: 446, column: 23, scope: !5050, inlinedAt: !5054)
!5063 = !DILocalVariable(name: "ret", scope: !5050, file: !163, line: 448, type: !176)
!5064 = !DILocation(line: 448, column: 8, scope: !5050, inlinedAt: !5054)
!5065 = !DILocalVariable(name: "flags", arg: 1, scope: !5066, file: !163, line: 318, type: !784)
!5066 = distinct !DISubprogram(name: "kmalloc_type", scope: !163, file: !163, line: 318, type: !5067, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!162, !784}
!5069 = !DILocation(line: 318, column: 67, scope: !5066, inlinedAt: !5070)
!5070 = distinct !DILocation(line: 553, column: 20, scope: !5055, inlinedAt: !5058)
!5071 = !DILocalVariable(name: "size", arg: 1, scope: !5072, file: !163, line: 346, type: !310)
!5072 = distinct !DISubprogram(name: "kmalloc_index", scope: !163, file: !163, line: 346, type: !5073, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!7, !310}
!5075 = !DILocation(line: 346, column: 58, scope: !5072, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 547, column: 11, scope: !5055, inlinedAt: !5058)
!5077 = !DILocalVariable(name: "size", arg: 1, scope: !5078, file: !163, line: 472, type: !310)
!5078 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !163, file: !163, line: 472, type: !5079, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!176, !310, !784, !7}
!5081 = !DILocation(line: 472, column: 28, scope: !5078, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 481, column: 9, scope: !5083, inlinedAt: !5084)
!5083 = distinct !DISubprogram(name: "kmalloc_large", scope: !163, file: !163, line: 478, type: !5047, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5084 = distinct !DILocation(line: 545, column: 11, scope: !5085, inlinedAt: !5058)
!5085 = distinct !DILexicalBlock(scope: !5055, file: !163, line: 544, column: 7)
!5086 = !DILocalVariable(name: "flags", arg: 2, scope: !5078, file: !163, line: 472, type: !784)
!5087 = !DILocation(line: 472, column: 40, scope: !5078, inlinedAt: !5082)
!5088 = !DILocalVariable(name: "order", arg: 3, scope: !5078, file: !163, line: 472, type: !7)
!5089 = !DILocation(line: 472, column: 60, scope: !5078, inlinedAt: !5082)
!5090 = !DILocalVariable(name: "size", arg: 1, scope: !5083, file: !163, line: 478, type: !310)
!5091 = !DILocation(line: 478, column: 51, scope: !5083, inlinedAt: !5084)
!5092 = !DILocalVariable(name: "flags", arg: 2, scope: !5083, file: !163, line: 478, type: !784)
!5093 = !DILocation(line: 478, column: 63, scope: !5083, inlinedAt: !5084)
!5094 = !DILocalVariable(name: "order", scope: !5083, file: !163, line: 480, type: !7)
!5095 = !DILocation(line: 480, column: 15, scope: !5083, inlinedAt: !5084)
!5096 = !DILocalVariable(name: "size", arg: 1, scope: !5057, file: !163, line: 538, type: !310)
!5097 = !DILocation(line: 538, column: 45, scope: !5057, inlinedAt: !5058)
!5098 = !DILocalVariable(name: "flags", arg: 2, scope: !5057, file: !163, line: 538, type: !784)
!5099 = !DILocation(line: 538, column: 57, scope: !5057, inlinedAt: !5058)
!5100 = !DILocalVariable(name: "index", scope: !5055, file: !163, line: 542, type: !7)
!5101 = !DILocation(line: 542, column: 16, scope: !5055, inlinedAt: !5058)
!5102 = !DILocalVariable(name: "size", arg: 1, scope: !5046, file: !163, line: 662, type: !310)
!5103 = !DILocation(line: 662, column: 36, scope: !5046)
!5104 = !DILocalVariable(name: "flags", arg: 2, scope: !5046, file: !163, line: 662, type: !784)
!5105 = !DILocation(line: 662, column: 48, scope: !5046)
!5106 = !DILocation(line: 664, column: 17, scope: !5046)
!5107 = !DILocation(line: 664, column: 23, scope: !5046)
!5108 = !DILocation(line: 664, column: 29, scope: !5046)
!5109 = !DILocation(line: 540, column: 27, scope: !5056, inlinedAt: !5058)
!5110 = !DILocation(line: 540, column: 6, scope: !5056, inlinedAt: !5058)
!5111 = !DILocation(line: 540, column: 6, scope: !5057, inlinedAt: !5058)
!5112 = !DILocation(line: 544, column: 7, scope: !5085, inlinedAt: !5058)
!5113 = !DILocation(line: 544, column: 12, scope: !5085, inlinedAt: !5058)
!5114 = !DILocation(line: 544, column: 7, scope: !5055, inlinedAt: !5058)
!5115 = !DILocation(line: 545, column: 25, scope: !5085, inlinedAt: !5058)
!5116 = !DILocation(line: 545, column: 31, scope: !5085, inlinedAt: !5058)
!5117 = !DILocation(line: 480, column: 33, scope: !5083, inlinedAt: !5084)
!5118 = !DILocation(line: 480, column: 23, scope: !5083, inlinedAt: !5084)
!5119 = !DILocation(line: 481, column: 29, scope: !5083, inlinedAt: !5084)
!5120 = !DILocation(line: 481, column: 35, scope: !5083, inlinedAt: !5084)
!5121 = !DILocation(line: 481, column: 42, scope: !5083, inlinedAt: !5084)
!5122 = !DILocation(line: 474, column: 23, scope: !5078, inlinedAt: !5082)
!5123 = !DILocation(line: 474, column: 29, scope: !5078, inlinedAt: !5082)
!5124 = !DILocation(line: 474, column: 36, scope: !5078, inlinedAt: !5082)
!5125 = !DILocation(line: 474, column: 9, scope: !5078, inlinedAt: !5082)
!5126 = !DILocation(line: 545, column: 4, scope: !5085, inlinedAt: !5058)
!5127 = !DILocation(line: 547, column: 25, scope: !5055, inlinedAt: !5058)
!5128 = !DILocation(line: 348, column: 7, scope: !5129, inlinedAt: !5076)
!5129 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 348, column: 6)
!5130 = !DILocation(line: 348, column: 6, scope: !5072, inlinedAt: !5076)
!5131 = !DILocation(line: 349, column: 3, scope: !5129, inlinedAt: !5076)
!5132 = !DILocation(line: 351, column: 6, scope: !5133, inlinedAt: !5076)
!5133 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 351, column: 6)
!5134 = !DILocation(line: 351, column: 11, scope: !5133, inlinedAt: !5076)
!5135 = !DILocation(line: 351, column: 6, scope: !5072, inlinedAt: !5076)
!5136 = !DILocation(line: 352, column: 3, scope: !5133, inlinedAt: !5076)
!5137 = !DILocation(line: 354, column: 32, scope: !5138, inlinedAt: !5076)
!5138 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 354, column: 6)
!5139 = !DILocation(line: 354, column: 37, scope: !5138, inlinedAt: !5076)
!5140 = !DILocation(line: 354, column: 42, scope: !5138, inlinedAt: !5076)
!5141 = !DILocation(line: 354, column: 45, scope: !5138, inlinedAt: !5076)
!5142 = !DILocation(line: 354, column: 50, scope: !5138, inlinedAt: !5076)
!5143 = !DILocation(line: 354, column: 6, scope: !5072, inlinedAt: !5076)
!5144 = !DILocation(line: 355, column: 3, scope: !5138, inlinedAt: !5076)
!5145 = !DILocation(line: 356, column: 32, scope: !5146, inlinedAt: !5076)
!5146 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 356, column: 6)
!5147 = !DILocation(line: 356, column: 37, scope: !5146, inlinedAt: !5076)
!5148 = !DILocation(line: 356, column: 43, scope: !5146, inlinedAt: !5076)
!5149 = !DILocation(line: 356, column: 46, scope: !5146, inlinedAt: !5076)
!5150 = !DILocation(line: 356, column: 51, scope: !5146, inlinedAt: !5076)
!5151 = !DILocation(line: 356, column: 6, scope: !5072, inlinedAt: !5076)
!5152 = !DILocation(line: 357, column: 3, scope: !5146, inlinedAt: !5076)
!5153 = !DILocation(line: 358, column: 6, scope: !5154, inlinedAt: !5076)
!5154 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 358, column: 6)
!5155 = !DILocation(line: 358, column: 11, scope: !5154, inlinedAt: !5076)
!5156 = !DILocation(line: 358, column: 6, scope: !5072, inlinedAt: !5076)
!5157 = !DILocation(line: 358, column: 26, scope: !5154, inlinedAt: !5076)
!5158 = !DILocation(line: 359, column: 6, scope: !5159, inlinedAt: !5076)
!5159 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 359, column: 6)
!5160 = !DILocation(line: 359, column: 11, scope: !5159, inlinedAt: !5076)
!5161 = !DILocation(line: 359, column: 6, scope: !5072, inlinedAt: !5076)
!5162 = !DILocation(line: 359, column: 26, scope: !5159, inlinedAt: !5076)
!5163 = !DILocation(line: 360, column: 6, scope: !5164, inlinedAt: !5076)
!5164 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 360, column: 6)
!5165 = !DILocation(line: 360, column: 11, scope: !5164, inlinedAt: !5076)
!5166 = !DILocation(line: 360, column: 6, scope: !5072, inlinedAt: !5076)
!5167 = !DILocation(line: 360, column: 26, scope: !5164, inlinedAt: !5076)
!5168 = !DILocation(line: 361, column: 6, scope: !5169, inlinedAt: !5076)
!5169 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 361, column: 6)
!5170 = !DILocation(line: 361, column: 11, scope: !5169, inlinedAt: !5076)
!5171 = !DILocation(line: 361, column: 6, scope: !5072, inlinedAt: !5076)
!5172 = !DILocation(line: 361, column: 26, scope: !5169, inlinedAt: !5076)
!5173 = !DILocation(line: 362, column: 6, scope: !5174, inlinedAt: !5076)
!5174 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 362, column: 6)
!5175 = !DILocation(line: 362, column: 11, scope: !5174, inlinedAt: !5076)
!5176 = !DILocation(line: 362, column: 6, scope: !5072, inlinedAt: !5076)
!5177 = !DILocation(line: 362, column: 26, scope: !5174, inlinedAt: !5076)
!5178 = !DILocation(line: 363, column: 6, scope: !5179, inlinedAt: !5076)
!5179 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 363, column: 6)
!5180 = !DILocation(line: 363, column: 11, scope: !5179, inlinedAt: !5076)
!5181 = !DILocation(line: 363, column: 6, scope: !5072, inlinedAt: !5076)
!5182 = !DILocation(line: 363, column: 26, scope: !5179, inlinedAt: !5076)
!5183 = !DILocation(line: 364, column: 6, scope: !5184, inlinedAt: !5076)
!5184 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 364, column: 6)
!5185 = !DILocation(line: 364, column: 11, scope: !5184, inlinedAt: !5076)
!5186 = !DILocation(line: 364, column: 6, scope: !5072, inlinedAt: !5076)
!5187 = !DILocation(line: 364, column: 26, scope: !5184, inlinedAt: !5076)
!5188 = !DILocation(line: 365, column: 6, scope: !5189, inlinedAt: !5076)
!5189 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 365, column: 6)
!5190 = !DILocation(line: 365, column: 11, scope: !5189, inlinedAt: !5076)
!5191 = !DILocation(line: 365, column: 6, scope: !5072, inlinedAt: !5076)
!5192 = !DILocation(line: 365, column: 26, scope: !5189, inlinedAt: !5076)
!5193 = !DILocation(line: 366, column: 6, scope: !5194, inlinedAt: !5076)
!5194 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 366, column: 6)
!5195 = !DILocation(line: 366, column: 11, scope: !5194, inlinedAt: !5076)
!5196 = !DILocation(line: 366, column: 6, scope: !5072, inlinedAt: !5076)
!5197 = !DILocation(line: 366, column: 26, scope: !5194, inlinedAt: !5076)
!5198 = !DILocation(line: 367, column: 6, scope: !5199, inlinedAt: !5076)
!5199 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 367, column: 6)
!5200 = !DILocation(line: 367, column: 11, scope: !5199, inlinedAt: !5076)
!5201 = !DILocation(line: 367, column: 6, scope: !5072, inlinedAt: !5076)
!5202 = !DILocation(line: 367, column: 26, scope: !5199, inlinedAt: !5076)
!5203 = !DILocation(line: 368, column: 6, scope: !5204, inlinedAt: !5076)
!5204 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 368, column: 6)
!5205 = !DILocation(line: 368, column: 11, scope: !5204, inlinedAt: !5076)
!5206 = !DILocation(line: 368, column: 6, scope: !5072, inlinedAt: !5076)
!5207 = !DILocation(line: 368, column: 26, scope: !5204, inlinedAt: !5076)
!5208 = !DILocation(line: 369, column: 6, scope: !5209, inlinedAt: !5076)
!5209 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 369, column: 6)
!5210 = !DILocation(line: 369, column: 11, scope: !5209, inlinedAt: !5076)
!5211 = !DILocation(line: 369, column: 6, scope: !5072, inlinedAt: !5076)
!5212 = !DILocation(line: 369, column: 26, scope: !5209, inlinedAt: !5076)
!5213 = !DILocation(line: 370, column: 6, scope: !5214, inlinedAt: !5076)
!5214 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 370, column: 6)
!5215 = !DILocation(line: 370, column: 11, scope: !5214, inlinedAt: !5076)
!5216 = !DILocation(line: 370, column: 6, scope: !5072, inlinedAt: !5076)
!5217 = !DILocation(line: 370, column: 26, scope: !5214, inlinedAt: !5076)
!5218 = !DILocation(line: 371, column: 6, scope: !5219, inlinedAt: !5076)
!5219 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 371, column: 6)
!5220 = !DILocation(line: 371, column: 11, scope: !5219, inlinedAt: !5076)
!5221 = !DILocation(line: 371, column: 6, scope: !5072, inlinedAt: !5076)
!5222 = !DILocation(line: 371, column: 26, scope: !5219, inlinedAt: !5076)
!5223 = !DILocation(line: 372, column: 6, scope: !5224, inlinedAt: !5076)
!5224 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 372, column: 6)
!5225 = !DILocation(line: 372, column: 11, scope: !5224, inlinedAt: !5076)
!5226 = !DILocation(line: 372, column: 6, scope: !5072, inlinedAt: !5076)
!5227 = !DILocation(line: 372, column: 26, scope: !5224, inlinedAt: !5076)
!5228 = !DILocation(line: 373, column: 6, scope: !5229, inlinedAt: !5076)
!5229 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 373, column: 6)
!5230 = !DILocation(line: 373, column: 11, scope: !5229, inlinedAt: !5076)
!5231 = !DILocation(line: 373, column: 6, scope: !5072, inlinedAt: !5076)
!5232 = !DILocation(line: 373, column: 26, scope: !5229, inlinedAt: !5076)
!5233 = !DILocation(line: 374, column: 6, scope: !5234, inlinedAt: !5076)
!5234 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 374, column: 6)
!5235 = !DILocation(line: 374, column: 11, scope: !5234, inlinedAt: !5076)
!5236 = !DILocation(line: 374, column: 6, scope: !5072, inlinedAt: !5076)
!5237 = !DILocation(line: 374, column: 26, scope: !5234, inlinedAt: !5076)
!5238 = !DILocation(line: 375, column: 6, scope: !5239, inlinedAt: !5076)
!5239 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 375, column: 6)
!5240 = !DILocation(line: 375, column: 11, scope: !5239, inlinedAt: !5076)
!5241 = !DILocation(line: 375, column: 6, scope: !5072, inlinedAt: !5076)
!5242 = !DILocation(line: 375, column: 27, scope: !5239, inlinedAt: !5076)
!5243 = !DILocation(line: 376, column: 6, scope: !5244, inlinedAt: !5076)
!5244 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 376, column: 6)
!5245 = !DILocation(line: 376, column: 11, scope: !5244, inlinedAt: !5076)
!5246 = !DILocation(line: 376, column: 6, scope: !5072, inlinedAt: !5076)
!5247 = !DILocation(line: 376, column: 32, scope: !5244, inlinedAt: !5076)
!5248 = !DILocation(line: 377, column: 6, scope: !5249, inlinedAt: !5076)
!5249 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 377, column: 6)
!5250 = !DILocation(line: 377, column: 11, scope: !5249, inlinedAt: !5076)
!5251 = !DILocation(line: 377, column: 6, scope: !5072, inlinedAt: !5076)
!5252 = !DILocation(line: 377, column: 32, scope: !5249, inlinedAt: !5076)
!5253 = !DILocation(line: 378, column: 6, scope: !5254, inlinedAt: !5076)
!5254 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 378, column: 6)
!5255 = !DILocation(line: 378, column: 11, scope: !5254, inlinedAt: !5076)
!5256 = !DILocation(line: 378, column: 6, scope: !5072, inlinedAt: !5076)
!5257 = !DILocation(line: 378, column: 32, scope: !5254, inlinedAt: !5076)
!5258 = !DILocation(line: 379, column: 6, scope: !5259, inlinedAt: !5076)
!5259 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 379, column: 6)
!5260 = !DILocation(line: 379, column: 11, scope: !5259, inlinedAt: !5076)
!5261 = !DILocation(line: 379, column: 6, scope: !5072, inlinedAt: !5076)
!5262 = !DILocation(line: 379, column: 33, scope: !5259, inlinedAt: !5076)
!5263 = !DILocation(line: 380, column: 6, scope: !5264, inlinedAt: !5076)
!5264 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 380, column: 6)
!5265 = !DILocation(line: 380, column: 11, scope: !5264, inlinedAt: !5076)
!5266 = !DILocation(line: 380, column: 6, scope: !5072, inlinedAt: !5076)
!5267 = !DILocation(line: 380, column: 33, scope: !5264, inlinedAt: !5076)
!5268 = !DILocation(line: 381, column: 6, scope: !5269, inlinedAt: !5076)
!5269 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 381, column: 6)
!5270 = !DILocation(line: 381, column: 11, scope: !5269, inlinedAt: !5076)
!5271 = !DILocation(line: 381, column: 6, scope: !5072, inlinedAt: !5076)
!5272 = !DILocation(line: 381, column: 33, scope: !5269, inlinedAt: !5076)
!5273 = !DILocation(line: 382, column: 2, scope: !5274, inlinedAt: !5076)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !163, line: 382, column: 2)
!5275 = distinct !DILexicalBlock(scope: !5072, file: !163, line: 382, column: 2)
!5276 = !{i32 -2142559078, i32 -2142559049, i32 -2142559003, i32 -2142558945, i32 -2142558891, i32 -2142558837, i32 -2142558782, i32 -2142558751}
!5277 = !DILocation(line: 382, column: 2, scope: !5278, inlinedAt: !5076)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !163, line: 382, column: 2)
!5279 = distinct !DILexicalBlock(scope: !5275, file: !163, line: 382, column: 2)
!5280 = !{i32 -2142558308, i32 -2142558301, i32 -2142558247, i32 -2142558216, i32 -2142558186}
!5281 = !DILocation(line: 382, column: 2, scope: !5279, inlinedAt: !5076)
!5282 = !DILocation(line: 386, column: 1, scope: !5072, inlinedAt: !5076)
!5283 = !DILocation(line: 547, column: 9, scope: !5055, inlinedAt: !5058)
!5284 = !DILocation(line: 549, column: 8, scope: !5285, inlinedAt: !5058)
!5285 = distinct !DILexicalBlock(scope: !5055, file: !163, line: 549, column: 7)
!5286 = !DILocation(line: 549, column: 7, scope: !5055, inlinedAt: !5058)
!5287 = !DILocation(line: 550, column: 4, scope: !5285, inlinedAt: !5058)
!5288 = !DILocation(line: 553, column: 33, scope: !5055, inlinedAt: !5058)
!5289 = !DILocation(line: 325, column: 6, scope: !5290, inlinedAt: !5070)
!5290 = distinct !DILexicalBlock(scope: !5066, file: !163, line: 325, column: 6)
!5291 = !DILocation(line: 325, column: 6, scope: !5066, inlinedAt: !5070)
!5292 = !DILocation(line: 326, column: 3, scope: !5290, inlinedAt: !5070)
!5293 = !DILocation(line: 332, column: 9, scope: !5066, inlinedAt: !5070)
!5294 = !DILocation(line: 332, column: 15, scope: !5066, inlinedAt: !5070)
!5295 = !DILocation(line: 332, column: 2, scope: !5066, inlinedAt: !5070)
!5296 = !DILocation(line: 336, column: 1, scope: !5066, inlinedAt: !5070)
!5297 = !DILocation(line: 553, column: 5, scope: !5055, inlinedAt: !5058)
!5298 = !DILocation(line: 553, column: 41, scope: !5055, inlinedAt: !5058)
!5299 = !DILocation(line: 554, column: 5, scope: !5055, inlinedAt: !5058)
!5300 = !DILocation(line: 554, column: 12, scope: !5055, inlinedAt: !5058)
!5301 = !DILocation(line: 448, column: 31, scope: !5050, inlinedAt: !5054)
!5302 = !DILocation(line: 448, column: 34, scope: !5050, inlinedAt: !5054)
!5303 = !DILocation(line: 448, column: 14, scope: !5050, inlinedAt: !5054)
!5304 = !DILocation(line: 450, column: 22, scope: !5050, inlinedAt: !5054)
!5305 = !DILocation(line: 450, column: 25, scope: !5050, inlinedAt: !5054)
!5306 = !DILocation(line: 450, column: 30, scope: !5050, inlinedAt: !5054)
!5307 = !DILocation(line: 450, column: 36, scope: !5050, inlinedAt: !5054)
!5308 = !DILocation(line: 450, column: 8, scope: !5050, inlinedAt: !5054)
!5309 = !DILocation(line: 450, column: 6, scope: !5050, inlinedAt: !5054)
!5310 = !DILocation(line: 451, column: 9, scope: !5050, inlinedAt: !5054)
!5311 = !DILocation(line: 552, column: 3, scope: !5055, inlinedAt: !5058)
!5312 = !DILocation(line: 557, column: 19, scope: !5057, inlinedAt: !5058)
!5313 = !DILocation(line: 557, column: 25, scope: !5057, inlinedAt: !5058)
!5314 = !DILocation(line: 557, column: 9, scope: !5057, inlinedAt: !5058)
!5315 = !DILocation(line: 557, column: 2, scope: !5057, inlinedAt: !5058)
!5316 = !DILocation(line: 558, column: 1, scope: !5057, inlinedAt: !5058)
!5317 = !DILocation(line: 664, column: 2, scope: !5046)
!5318 = !DILocalVariable(name: "x", arg: 1, scope: !4405, file: !1576, line: 85, type: !1574)
!5319 = !DILocation(line: 85, column: 57, scope: !4405)
!5320 = !DILocation(line: 87, column: 2, scope: !4405)
!5321 = !DILocation(line: 87, column: 5, scope: !4405)
!5322 = !DILocation(line: 87, column: 10, scope: !4405)
!5323 = !DILocation(line: 88, column: 2, scope: !4405)
!5324 = !DILocation(line: 88, column: 2, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !4405, file: !1576, line: 88, column: 2)
!5326 = !DILocation(line: 89, column: 1, scope: !4405)
!5327 = distinct !DISubprogram(name: "xenbus_dev_release", scope: !3, file: !3, line: 378, type: !3472, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5328 = !DILocalVariable(name: "dev", arg: 1, scope: !5327, file: !3, line: 378, type: !3449)
!5329 = !DILocation(line: 378, column: 47, scope: !5327)
!5330 = !DILocation(line: 380, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 380, column: 6)
!5332 = !DILocation(line: 380, column: 6, scope: !5327)
!5333 = !DILocation(line: 381, column: 26, scope: !5331)
!5334 = !DILocation(line: 381, column: 9, scope: !5331)
!5335 = !DILocation(line: 381, column: 3, scope: !5331)
!5336 = !DILocation(line: 382, column: 1, scope: !5327)
!5337 = !DILocalVariable(name: "sem", arg: 1, scope: !4410, file: !4282, line: 31, type: !4413)
!5338 = !DILocation(line: 31, column: 48, scope: !4410)
!5339 = !DILocalVariable(name: "val", arg: 2, scope: !4410, file: !4282, line: 31, type: !188)
!5340 = !DILocation(line: 31, column: 57, scope: !4410)
!5341 = !DILocation(line: 34, column: 3, scope: !4410)
!5342 = !DILocation(line: 34, column: 28, scope: !4410)
!5343 = !DILocation(line: 34, column: 9, scope: !4410)
!5344 = !DILocation(line: 35, column: 2, scope: !4410)
!5345 = !DILocation(line: 35, column: 2, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !4410, file: !4282, line: 35, column: 2)
!5347 = !DILocation(line: 36, column: 1, scope: !4410)
!5348 = distinct !DISubprogram(name: "xenbus_probe_devices", scope: !3, file: !3, line: 514, type: !5349, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5349 = !DISubroutineType(types: !5350)
!5350 = !{!188, !4323}
!5351 = !DILocalVariable(name: "bus", arg: 1, scope: !5348, file: !3, line: 514, type: !4323)
!5352 = !DILocation(line: 514, column: 47, scope: !5348)
!5353 = !DILocalVariable(name: "err", scope: !5348, file: !3, line: 516, type: !188)
!5354 = !DILocation(line: 516, column: 6, scope: !5348)
!5355 = !DILocalVariable(name: "dir", scope: !5348, file: !3, line: 517, type: !5356)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!5357 = !DILocation(line: 517, column: 9, scope: !5348)
!5358 = !DILocalVariable(name: "i", scope: !5348, file: !3, line: 518, type: !7)
!5359 = !DILocation(line: 518, column: 15, scope: !5348)
!5360 = !DILocalVariable(name: "dir_n", scope: !5348, file: !3, line: 518, type: !7)
!5361 = !DILocation(line: 518, column: 18, scope: !5348)
!5362 = !DILocation(line: 520, column: 25, scope: !5348)
!5363 = !DILocation(line: 520, column: 34, scope: !5348)
!5364 = !DILocation(line: 520, column: 39, scope: !5348)
!5365 = !DILocation(line: 520, column: 8, scope: !5348)
!5366 = !DILocation(line: 520, column: 6, scope: !5348)
!5367 = !DILocation(line: 521, column: 13, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 521, column: 6)
!5369 = !DILocation(line: 521, column: 6, scope: !5368)
!5370 = !DILocation(line: 521, column: 6, scope: !5348)
!5371 = !DILocation(line: 522, column: 18, scope: !5368)
!5372 = !DILocation(line: 522, column: 10, scope: !5368)
!5373 = !DILocation(line: 522, column: 3, scope: !5368)
!5374 = !DILocation(line: 524, column: 9, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 524, column: 2)
!5376 = !DILocation(line: 524, column: 7, scope: !5375)
!5377 = !DILocation(line: 524, column: 14, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 524, column: 2)
!5379 = !DILocation(line: 524, column: 18, scope: !5378)
!5380 = !DILocation(line: 524, column: 16, scope: !5378)
!5381 = !DILocation(line: 524, column: 2, scope: !5375)
!5382 = !DILocation(line: 525, column: 34, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 524, column: 30)
!5384 = !DILocation(line: 525, column: 39, scope: !5383)
!5385 = !DILocation(line: 525, column: 43, scope: !5383)
!5386 = !DILocation(line: 525, column: 9, scope: !5383)
!5387 = !DILocation(line: 525, column: 7, scope: !5383)
!5388 = !DILocation(line: 526, column: 7, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 526, column: 7)
!5390 = !DILocation(line: 526, column: 7, scope: !5383)
!5391 = !DILocation(line: 527, column: 4, scope: !5389)
!5392 = !DILocation(line: 528, column: 2, scope: !5383)
!5393 = !DILocation(line: 524, column: 26, scope: !5378)
!5394 = !DILocation(line: 524, column: 2, scope: !5378)
!5395 = distinct !{!5395, !5381, !5396}
!5396 = !DILocation(line: 528, column: 2, scope: !5375)
!5397 = !DILocation(line: 530, column: 8, scope: !5348)
!5398 = !DILocation(line: 530, column: 2, scope: !5348)
!5399 = !DILocation(line: 531, column: 9, scope: !5348)
!5400 = !DILocation(line: 531, column: 2, scope: !5348)
!5401 = !DILocation(line: 532, column: 1, scope: !5348)
!5402 = distinct !DISubprogram(name: "IS_ERR", scope: !5403, file: !5403, line: 34, type: !5404, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5403 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!479, !2199}
!5406 = !DILocalVariable(name: "ptr", arg: 1, scope: !5402, file: !5403, line: 34, type: !2199)
!5407 = !DILocation(line: 34, column: 60, scope: !5402)
!5408 = !DILocation(line: 36, column: 9, scope: !5402)
!5409 = !DILocation(line: 36, column: 2, scope: !5402)
!5410 = distinct !DISubprogram(name: "PTR_ERR", scope: !5403, file: !5403, line: 29, type: !5411, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!298, !2199}
!5413 = !DILocalVariable(name: "ptr", arg: 1, scope: !5410, file: !5403, line: 29, type: !2199)
!5414 = !DILocation(line: 29, column: 61, scope: !5410)
!5415 = !DILocation(line: 31, column: 16, scope: !5410)
!5416 = !DILocation(line: 31, column: 9, scope: !5410)
!5417 = !DILocation(line: 31, column: 2, scope: !5410)
!5418 = distinct !DISubprogram(name: "xenbus_probe_device_type", scope: !3, file: !3, line: 493, type: !5419, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5419 = !DISubroutineType(types: !5420)
!5420 = !{!188, !4323, !182}
!5421 = !DILocalVariable(name: "bus", arg: 1, scope: !5418, file: !3, line: 493, type: !4323)
!5422 = !DILocation(line: 493, column: 58, scope: !5418)
!5423 = !DILocalVariable(name: "type", arg: 2, scope: !5418, file: !3, line: 493, type: !182)
!5424 = !DILocation(line: 493, column: 75, scope: !5418)
!5425 = !DILocalVariable(name: "err", scope: !5418, file: !3, line: 495, type: !188)
!5426 = !DILocation(line: 495, column: 6, scope: !5418)
!5427 = !DILocalVariable(name: "dir", scope: !5418, file: !3, line: 496, type: !5356)
!5428 = !DILocation(line: 496, column: 9, scope: !5418)
!5429 = !DILocalVariable(name: "dir_n", scope: !5418, file: !3, line: 497, type: !7)
!5430 = !DILocation(line: 497, column: 15, scope: !5418)
!5431 = !DILocalVariable(name: "i", scope: !5418, file: !3, line: 498, type: !188)
!5432 = !DILocation(line: 498, column: 6, scope: !5418)
!5433 = !DILocation(line: 500, column: 25, scope: !5418)
!5434 = !DILocation(line: 500, column: 34, scope: !5418)
!5435 = !DILocation(line: 500, column: 39, scope: !5418)
!5436 = !DILocation(line: 500, column: 45, scope: !5418)
!5437 = !DILocation(line: 500, column: 8, scope: !5418)
!5438 = !DILocation(line: 500, column: 6, scope: !5418)
!5439 = !DILocation(line: 501, column: 13, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 501, column: 6)
!5441 = !DILocation(line: 501, column: 6, scope: !5440)
!5442 = !DILocation(line: 501, column: 6, scope: !5418)
!5443 = !DILocation(line: 502, column: 18, scope: !5440)
!5444 = !DILocation(line: 502, column: 10, scope: !5440)
!5445 = !DILocation(line: 502, column: 3, scope: !5440)
!5446 = !DILocation(line: 504, column: 9, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5418, file: !3, line: 504, column: 2)
!5448 = !DILocation(line: 504, column: 7, scope: !5447)
!5449 = !DILocation(line: 504, column: 14, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5447, file: !3, line: 504, column: 2)
!5451 = !DILocation(line: 504, column: 18, scope: !5450)
!5452 = !DILocation(line: 504, column: 16, scope: !5450)
!5453 = !DILocation(line: 504, column: 2, scope: !5447)
!5454 = !DILocation(line: 505, column: 9, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 504, column: 30)
!5456 = !DILocation(line: 505, column: 14, scope: !5455)
!5457 = !DILocation(line: 505, column: 20, scope: !5455)
!5458 = !DILocation(line: 505, column: 25, scope: !5455)
!5459 = !DILocation(line: 505, column: 31, scope: !5455)
!5460 = !DILocation(line: 505, column: 35, scope: !5455)
!5461 = !DILocation(line: 505, column: 7, scope: !5455)
!5462 = !DILocation(line: 506, column: 7, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 506, column: 7)
!5464 = !DILocation(line: 506, column: 7, scope: !5455)
!5465 = !DILocation(line: 507, column: 4, scope: !5463)
!5466 = !DILocation(line: 508, column: 2, scope: !5455)
!5467 = !DILocation(line: 504, column: 26, scope: !5450)
!5468 = !DILocation(line: 504, column: 2, scope: !5450)
!5469 = distinct !{!5469, !5453, !5470}
!5470 = !DILocation(line: 508, column: 2, scope: !5447)
!5471 = !DILocation(line: 510, column: 8, scope: !5418)
!5472 = !DILocation(line: 510, column: 2, scope: !5418)
!5473 = !DILocation(line: 511, column: 9, scope: !5418)
!5474 = !DILocation(line: 511, column: 2, scope: !5418)
!5475 = !DILocation(line: 512, column: 1, scope: !5418)
!5476 = distinct !DISubprogram(name: "xenbus_dev_changed", scope: !3, file: !3, line: 558, type: !5477, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{null, !182, !4323}
!5479 = !DILocalVariable(name: "node", arg: 1, scope: !5476, file: !3, line: 558, type: !182)
!5480 = !DILocation(line: 558, column: 37, scope: !5476)
!5481 = !DILocalVariable(name: "bus", arg: 2, scope: !5476, file: !3, line: 558, type: !4323)
!5482 = !DILocation(line: 558, column: 64, scope: !5476)
!5483 = !DILocalVariable(name: "exists", scope: !5476, file: !3, line: 560, type: !188)
!5484 = !DILocation(line: 560, column: 6, scope: !5476)
!5485 = !DILocalVariable(name: "rootlen", scope: !5476, file: !3, line: 560, type: !188)
!5486 = !DILocation(line: 560, column: 14, scope: !5476)
!5487 = !DILocalVariable(name: "dev", scope: !5476, file: !3, line: 561, type: !177)
!5488 = !DILocation(line: 561, column: 24, scope: !5476)
!5489 = !DILocalVariable(name: "type", scope: !5476, file: !3, line: 562, type: !4936)
!5490 = !DILocation(line: 562, column: 7, scope: !5476)
!5491 = !DILocalVariable(name: "p", scope: !5476, file: !3, line: 563, type: !182)
!5492 = !DILocation(line: 563, column: 14, scope: !5476)
!5493 = !DILocalVariable(name: "root", scope: !5476, file: !3, line: 563, type: !182)
!5494 = !DILocation(line: 563, column: 18, scope: !5476)
!5495 = !DILocation(line: 565, column: 17, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 565, column: 6)
!5497 = !DILocation(line: 565, column: 6, scope: !5496)
!5498 = !DILocation(line: 565, column: 28, scope: !5496)
!5499 = !DILocation(line: 565, column: 6, scope: !5476)
!5500 = !DILocation(line: 566, column: 3, scope: !5496)
!5501 = !DILocation(line: 568, column: 25, scope: !5476)
!5502 = !DILocation(line: 568, column: 34, scope: !5476)
!5503 = !DILocation(line: 568, column: 11, scope: !5476)
!5504 = !DILocation(line: 568, column: 9, scope: !5476)
!5505 = !DILocation(line: 569, column: 7, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 569, column: 6)
!5507 = !DILocation(line: 569, column: 6, scope: !5476)
!5508 = !DILocation(line: 570, column: 26, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 569, column: 15)
!5510 = !DILocation(line: 570, column: 33, scope: !5509)
!5511 = !DILocation(line: 570, column: 38, scope: !5509)
!5512 = !DILocation(line: 570, column: 3, scope: !5509)
!5513 = !DILocation(line: 571, column: 3, scope: !5509)
!5514 = !DILocation(line: 575, column: 13, scope: !5476)
!5515 = !DILocation(line: 575, column: 6, scope: !5476)
!5516 = !DILocation(line: 575, column: 24, scope: !5476)
!5517 = !DILocation(line: 575, column: 4, scope: !5476)
!5518 = !DILocation(line: 576, column: 11, scope: !5476)
!5519 = !DILocation(line: 576, column: 55, scope: !5476)
!5520 = !DILocation(line: 576, column: 47, scope: !5476)
!5521 = !DILocation(line: 576, column: 42, scope: !5476)
!5522 = !DILocation(line: 576, column: 64, scope: !5476)
!5523 = !DILocation(line: 576, column: 2, scope: !5476)
!5524 = !DILocation(line: 577, column: 2, scope: !5476)
!5525 = !DILocation(line: 577, column: 26, scope: !5476)
!5526 = !DILocation(line: 579, column: 23, scope: !5476)
!5527 = !DILocation(line: 579, column: 34, scope: !5476)
!5528 = !DILocation(line: 579, column: 39, scope: !5476)
!5529 = !DILocation(line: 579, column: 12, scope: !5476)
!5530 = !DILocation(line: 579, column: 10, scope: !5476)
!5531 = !DILocation(line: 580, column: 6, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 580, column: 6)
!5533 = !DILocation(line: 580, column: 14, scope: !5532)
!5534 = !DILocation(line: 580, column: 6, scope: !5476)
!5535 = !DILocation(line: 581, column: 3, scope: !5532)
!5536 = !DILocation(line: 582, column: 39, scope: !5476)
!5537 = !DILocation(line: 582, column: 48, scope: !5476)
!5538 = !DILocation(line: 582, column: 9, scope: !5476)
!5539 = !DILocation(line: 582, column: 7, scope: !5476)
!5540 = !DILocation(line: 583, column: 7, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 583, column: 6)
!5542 = !DILocation(line: 583, column: 6, scope: !5476)
!5543 = !DILocation(line: 584, column: 3, scope: !5541)
!5544 = !DILocation(line: 586, column: 27, scope: !5476)
!5545 = !DILocation(line: 586, column: 34, scope: !5476)
!5546 = !DILocation(line: 586, column: 39, scope: !5476)
!5547 = !DILocation(line: 586, column: 8, scope: !5476)
!5548 = !DILocation(line: 586, column: 6, scope: !5476)
!5549 = !DILocation(line: 587, column: 7, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 587, column: 6)
!5551 = !DILocation(line: 587, column: 6, scope: !5476)
!5552 = !DILocation(line: 588, column: 21, scope: !5550)
!5553 = !DILocation(line: 588, column: 26, scope: !5550)
!5554 = !DILocation(line: 588, column: 32, scope: !5550)
!5555 = !DILocation(line: 588, column: 3, scope: !5550)
!5556 = !DILocation(line: 590, column: 15, scope: !5550)
!5557 = !DILocation(line: 590, column: 20, scope: !5550)
!5558 = !DILocation(line: 590, column: 3, scope: !5550)
!5559 = !DILocation(line: 592, column: 8, scope: !5476)
!5560 = !DILocation(line: 592, column: 2, scope: !5476)
!5561 = !DILocation(line: 593, column: 1, scope: !5476)
!5562 = distinct !DISubprogram(name: "char_count", scope: !3, file: !3, line: 535, type: !5563, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!7, !182, !184}
!5565 = !DILocalVariable(name: "str", arg: 1, scope: !5562, file: !3, line: 535, type: !182)
!5566 = !DILocation(line: 535, column: 44, scope: !5562)
!5567 = !DILocalVariable(name: "c", arg: 2, scope: !5562, file: !3, line: 535, type: !184)
!5568 = !DILocation(line: 535, column: 54, scope: !5562)
!5569 = !DILocalVariable(name: "i", scope: !5562, file: !3, line: 537, type: !7)
!5570 = !DILocation(line: 537, column: 15, scope: !5562)
!5571 = !DILocalVariable(name: "ret", scope: !5562, file: !3, line: 537, type: !7)
!5572 = !DILocation(line: 537, column: 18, scope: !5562)
!5573 = !DILocation(line: 539, column: 9, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 539, column: 2)
!5575 = !DILocation(line: 539, column: 7, scope: !5574)
!5576 = !DILocation(line: 539, column: 14, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 539, column: 2)
!5578 = !DILocation(line: 539, column: 18, scope: !5577)
!5579 = !DILocation(line: 539, column: 2, scope: !5574)
!5580 = !DILocation(line: 540, column: 7, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 540, column: 7)
!5582 = !DILocation(line: 540, column: 11, scope: !5581)
!5583 = !DILocation(line: 540, column: 17, scope: !5581)
!5584 = !DILocation(line: 540, column: 14, scope: !5581)
!5585 = !DILocation(line: 540, column: 7, scope: !5577)
!5586 = !DILocation(line: 541, column: 7, scope: !5581)
!5587 = !DILocation(line: 541, column: 4, scope: !5581)
!5588 = !DILocation(line: 539, column: 23, scope: !5577)
!5589 = !DILocation(line: 539, column: 2, scope: !5577)
!5590 = distinct !{!5590, !5579, !5591}
!5591 = !DILocation(line: 541, column: 7, scope: !5574)
!5592 = !DILocation(line: 542, column: 9, scope: !5562)
!5593 = !DILocation(line: 542, column: 2, scope: !5562)
!5594 = distinct !DISubprogram(name: "xenbus_cleanup_devices", scope: !3, file: !3, line: 364, type: !5595, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5595 = !DISubroutineType(types: !5596)
!5596 = !{null, !182, !3506}
!5597 = !DILocalVariable(name: "path", arg: 1, scope: !5594, file: !3, line: 364, type: !182)
!5598 = !DILocation(line: 364, column: 48, scope: !5594)
!5599 = !DILocalVariable(name: "bus", arg: 2, scope: !5594, file: !3, line: 364, type: !3506)
!5600 = !DILocation(line: 364, column: 71, scope: !5594)
!5601 = !DILocalVariable(name: "info", scope: !5594, file: !3, line: 366, type: !5602)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xb_find_info", file: !3, line: 316, size: 128, elements: !5603)
!5603 = !{!5604, !5605}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5602, file: !3, line: 317, baseType: !177, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !5602, file: !3, line: 318, baseType: !182, size: 64, offset: 64)
!5606 = !DILocation(line: 366, column: 22, scope: !5594)
!5607 = !DILocation(line: 366, column: 29, scope: !5594)
!5608 = !DILocation(line: 366, column: 43, scope: !5594)
!5609 = !DILocation(line: 368, column: 2, scope: !5594)
!5610 = !DILocation(line: 369, column: 8, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 368, column: 5)
!5612 = !DILocation(line: 369, column: 12, scope: !5611)
!5613 = !DILocation(line: 370, column: 20, scope: !5611)
!5614 = !DILocation(line: 370, column: 31, scope: !5611)
!5615 = !DILocation(line: 370, column: 3, scope: !5611)
!5616 = !DILocation(line: 371, column: 12, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 371, column: 7)
!5618 = !DILocation(line: 371, column: 7, scope: !5617)
!5619 = !DILocation(line: 371, column: 7, scope: !5611)
!5620 = !DILocation(line: 372, column: 28, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 371, column: 17)
!5622 = !DILocation(line: 372, column: 33, scope: !5621)
!5623 = !DILocation(line: 372, column: 4, scope: !5621)
!5624 = !DILocation(line: 373, column: 21, scope: !5621)
!5625 = !DILocation(line: 373, column: 26, scope: !5621)
!5626 = !DILocation(line: 373, column: 4, scope: !5621)
!5627 = !DILocation(line: 374, column: 3, scope: !5621)
!5628 = !DILocation(line: 375, column: 2, scope: !5611)
!5629 = !DILocation(line: 375, column: 16, scope: !5594)
!5630 = distinct !{!5630, !5609, !5631}
!5631 = !DILocation(line: 375, column: 19, scope: !5594)
!5632 = !DILocation(line: 376, column: 1, scope: !5594)
!5633 = distinct !DISubprogram(name: "strsep_len", scope: !3, file: !3, line: 545, type: !5634, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!188, !182, !184, !7}
!5636 = !DILocalVariable(name: "str", arg: 1, scope: !5633, file: !3, line: 545, type: !182)
!5637 = !DILocation(line: 545, column: 35, scope: !5633)
!5638 = !DILocalVariable(name: "c", arg: 2, scope: !5633, file: !3, line: 545, type: !184)
!5639 = !DILocation(line: 545, column: 45, scope: !5633)
!5640 = !DILocalVariable(name: "len", arg: 3, scope: !5633, file: !3, line: 545, type: !7)
!5641 = !DILocation(line: 545, column: 61, scope: !5633)
!5642 = !DILocalVariable(name: "i", scope: !5633, file: !3, line: 547, type: !7)
!5643 = !DILocation(line: 547, column: 15, scope: !5633)
!5644 = !DILocation(line: 549, column: 9, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 549, column: 2)
!5646 = !DILocation(line: 549, column: 7, scope: !5645)
!5647 = !DILocation(line: 549, column: 14, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 549, column: 2)
!5649 = !DILocation(line: 549, column: 18, scope: !5648)
!5650 = !DILocation(line: 549, column: 2, scope: !5645)
!5651 = !DILocation(line: 550, column: 7, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 550, column: 7)
!5653 = !DILocation(line: 550, column: 11, scope: !5652)
!5654 = !DILocation(line: 550, column: 17, scope: !5652)
!5655 = !DILocation(line: 550, column: 14, scope: !5652)
!5656 = !DILocation(line: 550, column: 7, scope: !5648)
!5657 = !DILocation(line: 551, column: 8, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 551, column: 8)
!5659 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 550, column: 20)
!5660 = !DILocation(line: 551, column: 12, scope: !5658)
!5661 = !DILocation(line: 551, column: 8, scope: !5659)
!5662 = !DILocation(line: 552, column: 12, scope: !5658)
!5663 = !DILocation(line: 552, column: 5, scope: !5658)
!5664 = !DILocation(line: 553, column: 7, scope: !5659)
!5665 = !DILocation(line: 554, column: 3, scope: !5659)
!5666 = !DILocation(line: 549, column: 23, scope: !5648)
!5667 = !DILocation(line: 549, column: 2, scope: !5648)
!5668 = distinct !{!5668, !5650, !5669}
!5669 = !DILocation(line: 554, column: 3, scope: !5645)
!5670 = !DILocation(line: 555, column: 10, scope: !5633)
!5671 = !DILocation(line: 555, column: 14, scope: !5633)
!5672 = !DILocation(line: 555, column: 9, scope: !5633)
!5673 = !DILocation(line: 555, column: 22, scope: !5633)
!5674 = !DILocation(line: 555, column: 2, scope: !5633)
!5675 = !DILocation(line: 556, column: 1, scope: !5633)
!5676 = distinct !DISubprogram(name: "xenbus_device_find", scope: !3, file: !3, line: 334, type: !5677, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!177, !182, !3506}
!5679 = !DILocalVariable(name: "nodename", arg: 1, scope: !5676, file: !3, line: 334, type: !182)
!5680 = !DILocation(line: 334, column: 61, scope: !5676)
!5681 = !DILocalVariable(name: "bus", arg: 2, scope: !5676, file: !3, line: 335, type: !3506)
!5682 = !DILocation(line: 335, column: 24, scope: !5676)
!5683 = !DILocalVariable(name: "info", scope: !5676, file: !3, line: 337, type: !5602)
!5684 = !DILocation(line: 337, column: 22, scope: !5676)
!5685 = !DILocation(line: 337, column: 29, scope: !5676)
!5686 = !DILocation(line: 337, column: 56, scope: !5676)
!5687 = !DILocation(line: 339, column: 19, scope: !5676)
!5688 = !DILocation(line: 339, column: 30, scope: !5676)
!5689 = !DILocation(line: 339, column: 2, scope: !5676)
!5690 = !DILocation(line: 340, column: 14, scope: !5676)
!5691 = !DILocation(line: 340, column: 2, scope: !5676)
!5692 = distinct !DISubprogram(name: "xenbus_dev_suspend", scope: !3, file: !3, line: 596, type: !3481, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5693 = !DILocalVariable(name: "dev", arg: 1, scope: !5692, file: !3, line: 596, type: !3449)
!5694 = !DILocation(line: 596, column: 39, scope: !5692)
!5695 = !DILocalVariable(name: "err", scope: !5692, file: !3, line: 598, type: !188)
!5696 = !DILocation(line: 598, column: 6, scope: !5692)
!5697 = !DILocalVariable(name: "drv", scope: !5692, file: !3, line: 599, type: !4287)
!5698 = !DILocation(line: 599, column: 24, scope: !5692)
!5699 = !DILocalVariable(name: "xdev", scope: !5692, file: !3, line: 600, type: !177)
!5700 = !DILocation(line: 600, column: 24, scope: !5692)
!5701 = !DILocalVariable(name: "__mptr", scope: !5702, file: !3, line: 601, type: !176)
!5702 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 601, column: 5)
!5703 = !DILocation(line: 601, column: 5, scope: !5702)
!5704 = !DILocation(line: 601, column: 5, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 601, column: 5)
!5706 = !DILocation(line: 603, column: 2, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 603, column: 2)
!5708 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 603, column: 2)
!5709 = !DILocation(line: 603, column: 2, scope: !5708)
!5710 = !DILocation(line: 605, column: 6, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 605, column: 6)
!5712 = !DILocation(line: 605, column: 11, scope: !5711)
!5713 = !DILocation(line: 605, column: 18, scope: !5711)
!5714 = !DILocation(line: 605, column: 6, scope: !5692)
!5715 = !DILocation(line: 606, column: 3, scope: !5711)
!5716 = !DILocation(line: 607, column: 25, scope: !5692)
!5717 = !DILocation(line: 607, column: 30, scope: !5692)
!5718 = !DILocation(line: 607, column: 8, scope: !5692)
!5719 = !DILocation(line: 607, column: 6, scope: !5692)
!5720 = !DILocation(line: 608, column: 6, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 608, column: 6)
!5722 = !DILocation(line: 608, column: 11, scope: !5721)
!5723 = !DILocation(line: 608, column: 6, scope: !5692)
!5724 = !DILocation(line: 609, column: 9, scope: !5721)
!5725 = !DILocation(line: 609, column: 14, scope: !5721)
!5726 = !DILocation(line: 609, column: 22, scope: !5721)
!5727 = !DILocation(line: 609, column: 7, scope: !5721)
!5728 = !DILocation(line: 609, column: 3, scope: !5721)
!5729 = !DILocation(line: 610, column: 6, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 610, column: 6)
!5731 = !DILocation(line: 610, column: 6, scope: !5692)
!5732 = !DILocation(line: 611, column: 3, scope: !5730)
!5733 = !DILocation(line: 612, column: 2, scope: !5692)
!5734 = !DILocation(line: 613, column: 1, scope: !5692)
!5735 = distinct !DISubprogram(name: "xenbus_dev_resume", scope: !3, file: !3, line: 616, type: !3481, scopeLine: 617, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5736 = !DILocalVariable(name: "dev", arg: 1, scope: !5735, file: !3, line: 616, type: !3449)
!5737 = !DILocation(line: 616, column: 38, scope: !5735)
!5738 = !DILocalVariable(name: "err", scope: !5735, file: !3, line: 618, type: !188)
!5739 = !DILocation(line: 618, column: 6, scope: !5735)
!5740 = !DILocalVariable(name: "drv", scope: !5735, file: !3, line: 619, type: !4287)
!5741 = !DILocation(line: 619, column: 24, scope: !5735)
!5742 = !DILocalVariable(name: "xdev", scope: !5735, file: !3, line: 620, type: !177)
!5743 = !DILocation(line: 620, column: 24, scope: !5735)
!5744 = !DILocalVariable(name: "__mptr", scope: !5745, file: !3, line: 621, type: !176)
!5745 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 621, column: 5)
!5746 = !DILocation(line: 621, column: 5, scope: !5745)
!5747 = !DILocation(line: 621, column: 5, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 621, column: 5)
!5749 = !DILocation(line: 623, column: 2, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5751, file: !3, line: 623, column: 2)
!5751 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 623, column: 2)
!5752 = !DILocation(line: 623, column: 2, scope: !5751)
!5753 = !DILocation(line: 625, column: 6, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 625, column: 6)
!5755 = !DILocation(line: 625, column: 11, scope: !5754)
!5756 = !DILocation(line: 625, column: 18, scope: !5754)
!5757 = !DILocation(line: 625, column: 6, scope: !5735)
!5758 = !DILocation(line: 626, column: 3, scope: !5754)
!5759 = !DILocation(line: 627, column: 25, scope: !5735)
!5760 = !DILocation(line: 627, column: 30, scope: !5735)
!5761 = !DILocation(line: 627, column: 8, scope: !5735)
!5762 = !DILocation(line: 627, column: 6, scope: !5735)
!5763 = !DILocation(line: 628, column: 25, scope: !5735)
!5764 = !DILocation(line: 628, column: 8, scope: !5735)
!5765 = !DILocation(line: 628, column: 6, scope: !5735)
!5766 = !DILocation(line: 629, column: 6, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 629, column: 6)
!5768 = !DILocation(line: 629, column: 6, scope: !5735)
!5769 = !DILocation(line: 630, column: 3, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5767, file: !3, line: 629, column: 11)
!5771 = !DILocation(line: 631, column: 10, scope: !5770)
!5772 = !DILocation(line: 631, column: 3, scope: !5770)
!5773 = !DILocation(line: 634, column: 2, scope: !5735)
!5774 = !DILocation(line: 634, column: 8, scope: !5735)
!5775 = !DILocation(line: 634, column: 14, scope: !5735)
!5776 = !DILocation(line: 636, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 636, column: 6)
!5778 = !DILocation(line: 636, column: 11, scope: !5777)
!5779 = !DILocation(line: 636, column: 6, scope: !5735)
!5780 = !DILocation(line: 637, column: 9, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 636, column: 19)
!5782 = !DILocation(line: 637, column: 14, scope: !5781)
!5783 = !DILocation(line: 637, column: 21, scope: !5781)
!5784 = !DILocation(line: 637, column: 7, scope: !5781)
!5785 = !DILocation(line: 638, column: 7, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 638, column: 7)
!5787 = !DILocation(line: 638, column: 7, scope: !5781)
!5788 = !DILocation(line: 639, column: 4, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 638, column: 12)
!5790 = !DILocation(line: 640, column: 11, scope: !5789)
!5791 = !DILocation(line: 640, column: 4, scope: !5789)
!5792 = !DILocation(line: 642, column: 2, scope: !5781)
!5793 = !DILocation(line: 644, column: 23, scope: !5735)
!5794 = !DILocation(line: 644, column: 8, scope: !5735)
!5795 = !DILocation(line: 644, column: 6, scope: !5735)
!5796 = !DILocation(line: 645, column: 6, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 645, column: 6)
!5798 = !DILocation(line: 645, column: 6, scope: !5735)
!5799 = !DILocation(line: 646, column: 3, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 645, column: 11)
!5801 = !DILocation(line: 647, column: 10, scope: !5800)
!5802 = !DILocation(line: 647, column: 3, scope: !5800)
!5803 = !DILocation(line: 650, column: 2, scope: !5735)
!5804 = !DILocation(line: 651, column: 1, scope: !5735)
!5805 = distinct !DISubprogram(name: "xenbus_dev_cancel", scope: !3, file: !3, line: 654, type: !3481, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5806 = !DILocalVariable(name: "dev", arg: 1, scope: !5805, file: !3, line: 654, type: !3449)
!5807 = !DILocation(line: 654, column: 38, scope: !5805)
!5808 = !DILocation(line: 657, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 657, column: 2)
!5810 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 657, column: 2)
!5811 = !DILocation(line: 657, column: 2, scope: !5810)
!5812 = !DILocation(line: 658, column: 2, scope: !5805)
!5813 = distinct !DISubprogram(name: "register_xenstore_notifier", scope: !3, file: !3, line: 666, type: !5814, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!188, !4421}
!5816 = !DILocalVariable(name: "nb", arg: 1, scope: !5813, file: !3, line: 666, type: !4421)
!5817 = !DILocation(line: 666, column: 55, scope: !5813)
!5818 = !DILocalVariable(name: "ret", scope: !5813, file: !3, line: 668, type: !188)
!5819 = !DILocation(line: 668, column: 6, scope: !5813)
!5820 = !DILocation(line: 670, column: 6, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5813, file: !3, line: 670, column: 6)
!5822 = !DILocation(line: 670, column: 22, scope: !5821)
!5823 = !DILocation(line: 670, column: 6, scope: !5813)
!5824 = !DILocation(line: 671, column: 9, scope: !5821)
!5825 = !DILocation(line: 671, column: 13, scope: !5821)
!5826 = !DILocation(line: 671, column: 27, scope: !5821)
!5827 = !DILocation(line: 671, column: 7, scope: !5821)
!5828 = !DILocation(line: 671, column: 3, scope: !5821)
!5829 = !DILocation(line: 673, column: 53, scope: !5821)
!5830 = !DILocation(line: 673, column: 3, scope: !5821)
!5831 = !DILocation(line: 675, column: 9, scope: !5813)
!5832 = !DILocation(line: 675, column: 2, scope: !5813)
!5833 = distinct !DISubprogram(name: "unregister_xenstore_notifier", scope: !3, file: !3, line: 679, type: !5834, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{null, !4421}
!5836 = !DILocalVariable(name: "nb", arg: 1, scope: !5833, file: !3, line: 679, type: !4421)
!5837 = !DILocation(line: 679, column: 58, scope: !5833)
!5838 = !DILocation(line: 681, column: 54, scope: !5833)
!5839 = !DILocation(line: 681, column: 2, scope: !5833)
!5840 = !DILocation(line: 682, column: 1, scope: !5833)
!5841 = distinct !DISubprogram(name: "xenbus_probe", scope: !3, file: !3, line: 685, type: !2039, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5842 = !DILocalVariable(name: "unused", arg: 1, scope: !5841, file: !3, line: 685, type: !2041)
!5843 = !DILocation(line: 685, column: 39, scope: !5841)
!5844 = !DILocation(line: 687, column: 18, scope: !5841)
!5845 = !DILocation(line: 690, column: 2, scope: !5841)
!5846 = !DILocation(line: 691, column: 1, scope: !5841)
!5847 = distinct !DISubprogram(name: "xenbus_probe_initcall", scope: !3, file: !3, line: 694, type: !5848, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!188}
!5850 = !DILocation(line: 696, column: 7, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 696, column: 6)
!5852 = !DILocation(line: 696, column: 6, scope: !5847)
!5853 = !DILocation(line: 697, column: 3, scope: !5851)
!5854 = !DILocation(line: 699, column: 6, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 699, column: 6)
!5856 = !DILocation(line: 699, column: 27, scope: !5855)
!5857 = !DILocation(line: 699, column: 30, scope: !5855)
!5858 = !DILocation(line: 699, column: 6, scope: !5847)
!5859 = !DILocation(line: 700, column: 3, scope: !5855)
!5860 = !DILocation(line: 702, column: 2, scope: !5847)
!5861 = !DILocation(line: 703, column: 2, scope: !5847)
!5862 = !DILocation(line: 704, column: 1, scope: !5847)
!5863 = distinct !DISubprogram(name: "xenbus_init", scope: !3, file: !3, line: 768, type: !5848, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5864 = !DILocalVariable(name: "err", scope: !5863, file: !3, line: 770, type: !188)
!5865 = !DILocation(line: 770, column: 6, scope: !5863)
!5866 = !DILocalVariable(name: "v", scope: !5863, file: !3, line: 771, type: !5867)
!5867 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !194, line: 107, baseType: !410)
!5868 = !DILocation(line: 771, column: 11, scope: !5863)
!5869 = !DILocation(line: 772, column: 24, scope: !5863)
!5870 = !DILocation(line: 774, column: 7, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 774, column: 6)
!5872 = !DILocation(line: 774, column: 6, scope: !5863)
!5873 = !DILocation(line: 775, column: 3, scope: !5871)
!5874 = !DILocation(line: 777, column: 2, scope: !5863)
!5875 = !DILocation(line: 779, column: 6, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 779, column: 6)
!5877 = !DILocation(line: 779, column: 6, scope: !5863)
!5878 = !DILocation(line: 780, column: 25, scope: !5876)
!5879 = !DILocation(line: 780, column: 3, scope: !5876)
!5880 = !DILocation(line: 781, column: 6, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 781, column: 6)
!5882 = !DILocation(line: 781, column: 6, scope: !5863)
!5883 = !DILocation(line: 782, column: 25, scope: !5881)
!5884 = !DILocation(line: 782, column: 3, scope: !5881)
!5885 = !DILocation(line: 783, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 783, column: 6)
!5887 = !DILocation(line: 783, column: 23, scope: !5886)
!5888 = !DILocation(line: 783, column: 26, scope: !5886)
!5889 = !DILocation(line: 783, column: 6, scope: !5863)
!5890 = !DILocation(line: 784, column: 25, scope: !5886)
!5891 = !DILocation(line: 784, column: 3, scope: !5886)
!5892 = !DILocation(line: 785, column: 6, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 785, column: 6)
!5894 = !DILocation(line: 785, column: 22, scope: !5893)
!5895 = !DILocation(line: 785, column: 26, scope: !5893)
!5896 = !DILocation(line: 785, column: 42, scope: !5893)
!5897 = !DILocation(line: 785, column: 6, scope: !5863)
!5898 = !DILocation(line: 786, column: 25, scope: !5893)
!5899 = !DILocation(line: 786, column: 3, scope: !5893)
!5900 = !DILocation(line: 787, column: 6, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 787, column: 6)
!5902 = !DILocation(line: 787, column: 22, scope: !5901)
!5903 = !DILocation(line: 787, column: 25, scope: !5901)
!5904 = !DILocation(line: 787, column: 41, scope: !5901)
!5905 = !DILocation(line: 787, column: 6, scope: !5863)
!5906 = !DILocation(line: 788, column: 19, scope: !5901)
!5907 = !DILocation(line: 788, column: 3, scope: !5901)
!5908 = !DILocation(line: 790, column: 10, scope: !5863)
!5909 = !DILocation(line: 790, column: 2, scope: !5863)
!5910 = !DILocation(line: 792, column: 9, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 790, column: 33)
!5912 = !DILocation(line: 792, column: 7, scope: !5911)
!5913 = !DILocation(line: 793, column: 7, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 793, column: 7)
!5915 = !DILocation(line: 793, column: 7, scope: !5911)
!5916 = !DILocation(line: 794, column: 4, scope: !5914)
!5917 = !DILocation(line: 795, column: 25, scope: !5911)
!5918 = !DILocation(line: 795, column: 23, scope: !5911)
!5919 = !DILocation(line: 796, column: 3, scope: !5911)
!5920 = !DILocation(line: 798, column: 22, scope: !5911)
!5921 = !DILocation(line: 798, column: 38, scope: !5911)
!5922 = !DILocation(line: 798, column: 20, scope: !5911)
!5923 = !DILocation(line: 799, column: 19, scope: !5911)
!5924 = !DILocation(line: 799, column: 35, scope: !5911)
!5925 = !DILocation(line: 799, column: 17, scope: !5911)
!5926 = !DILocation(line: 800, column: 25, scope: !5911)
!5927 = !DILocation(line: 800, column: 23, scope: !5911)
!5928 = !DILocation(line: 801, column: 3, scope: !5911)
!5929 = !DILocation(line: 803, column: 9, scope: !5911)
!5930 = !DILocation(line: 803, column: 7, scope: !5911)
!5931 = !DILocation(line: 804, column: 7, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 804, column: 7)
!5933 = !DILocation(line: 804, column: 7, scope: !5911)
!5934 = !DILocation(line: 805, column: 4, scope: !5932)
!5935 = !DILocation(line: 806, column: 27, scope: !5911)
!5936 = !DILocation(line: 806, column: 22, scope: !5911)
!5937 = !DILocation(line: 806, column: 20, scope: !5911)
!5938 = !DILocation(line: 807, column: 9, scope: !5911)
!5939 = !DILocation(line: 807, column: 7, scope: !5911)
!5940 = !DILocation(line: 808, column: 7, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 808, column: 7)
!5942 = !DILocation(line: 808, column: 7, scope: !5911)
!5943 = !DILocation(line: 809, column: 4, scope: !5941)
!5944 = !DILocation(line: 810, column: 34, scope: !5911)
!5945 = !DILocation(line: 810, column: 17, scope: !5911)
!5946 = !DILocation(line: 812, column: 4, scope: !5911)
!5947 = !DILocation(line: 811, column: 23, scope: !5911)
!5948 = !DILocation(line: 814, column: 3, scope: !5911)
!5949 = !DILocation(line: 816, column: 3, scope: !5911)
!5950 = !DILocation(line: 817, column: 3, scope: !5911)
!5951 = !DILocation(line: 821, column: 8, scope: !5863)
!5952 = !DILocation(line: 821, column: 6, scope: !5863)
!5953 = !DILocation(line: 822, column: 6, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 822, column: 6)
!5955 = !DILocation(line: 822, column: 6, scope: !5863)
!5956 = !DILocation(line: 823, column: 3, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5954, file: !3, line: 822, column: 11)
!5958 = !DILocation(line: 824, column: 3, scope: !5957)
!5959 = !DILocation(line: 827, column: 7, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5863, file: !3, line: 827, column: 6)
!5961 = !DILocation(line: 827, column: 29, scope: !5960)
!5962 = !DILocation(line: 827, column: 42, scope: !5960)
!5963 = !DILocation(line: 828, column: 7, scope: !5960)
!5964 = !DILocation(line: 828, column: 29, scope: !5960)
!5965 = !DILocation(line: 827, column: 6, scope: !5863)
!5966 = !DILocation(line: 829, column: 3, scope: !5960)
!5967 = !DILocation(line: 836, column: 2, scope: !5863)
!5968 = !DILabel(scope: !5863, name: "out_error", file: !3, line: 839)
!5969 = !DILocation(line: 839, column: 1, scope: !5863)
!5970 = !DILocation(line: 840, column: 9, scope: !5863)
!5971 = !DILocation(line: 840, column: 2, scope: !5863)
!5972 = !DILocation(line: 841, column: 1, scope: !5863)
!5973 = distinct !DISubprogram(name: "nodename_show", scope: !3, file: !3, line: 384, type: !4390, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5974 = !DILocalVariable(name: "dev", arg: 1, scope: !5973, file: !3, line: 384, type: !3449)
!5975 = !DILocation(line: 384, column: 45, scope: !5973)
!5976 = !DILocalVariable(name: "attr", arg: 2, scope: !5973, file: !3, line: 385, type: !4392)
!5977 = !DILocation(line: 385, column: 34, scope: !5973)
!5978 = !DILocalVariable(name: "buf", arg: 3, scope: !5973, file: !3, line: 385, type: !263)
!5979 = !DILocation(line: 385, column: 46, scope: !5973)
!5980 = !DILocation(line: 387, column: 17, scope: !5973)
!5981 = !DILocation(line: 387, column: 47, scope: !5973)
!5982 = !DILocation(line: 387, column: 30, scope: !5973)
!5983 = !DILocation(line: 387, column: 53, scope: !5973)
!5984 = !DILocation(line: 387, column: 9, scope: !5973)
!5985 = !DILocation(line: 387, column: 2, scope: !5973)
!5986 = distinct !DISubprogram(name: "devtype_show", scope: !3, file: !3, line: 391, type: !4390, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!5987 = !DILocalVariable(name: "dev", arg: 1, scope: !5986, file: !3, line: 391, type: !3449)
!5988 = !DILocation(line: 391, column: 44, scope: !5986)
!5989 = !DILocalVariable(name: "attr", arg: 2, scope: !5986, file: !3, line: 392, type: !4392)
!5990 = !DILocation(line: 392, column: 33, scope: !5986)
!5991 = !DILocalVariable(name: "buf", arg: 3, scope: !5986, file: !3, line: 392, type: !263)
!5992 = !DILocation(line: 392, column: 45, scope: !5986)
!5993 = !DILocation(line: 394, column: 17, scope: !5986)
!5994 = !DILocation(line: 394, column: 47, scope: !5986)
!5995 = !DILocation(line: 394, column: 30, scope: !5986)
!5996 = !DILocation(line: 394, column: 53, scope: !5986)
!5997 = !DILocation(line: 394, column: 9, scope: !5986)
!5998 = !DILocation(line: 394, column: 2, scope: !5986)
!5999 = distinct !DISubprogram(name: "modalias_show", scope: !3, file: !3, line: 398, type: !4390, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6000 = !DILocalVariable(name: "dev", arg: 1, scope: !5999, file: !3, line: 398, type: !3449)
!6001 = !DILocation(line: 398, column: 45, scope: !5999)
!6002 = !DILocalVariable(name: "attr", arg: 2, scope: !5999, file: !3, line: 399, type: !4392)
!6003 = !DILocation(line: 399, column: 34, scope: !5999)
!6004 = !DILocalVariable(name: "buf", arg: 3, scope: !5999, file: !3, line: 399, type: !263)
!6005 = !DILocation(line: 399, column: 46, scope: !5999)
!6006 = !DILocation(line: 401, column: 17, scope: !5999)
!6007 = !DILocation(line: 401, column: 33, scope: !5999)
!6008 = !DILocation(line: 401, column: 38, scope: !5999)
!6009 = !DILocation(line: 401, column: 43, scope: !5999)
!6010 = !DILocation(line: 402, column: 27, scope: !5999)
!6011 = !DILocation(line: 402, column: 10, scope: !5999)
!6012 = !DILocation(line: 402, column: 33, scope: !5999)
!6013 = !DILocation(line: 401, column: 9, scope: !5999)
!6014 = !DILocation(line: 401, column: 2, scope: !5999)
!6015 = distinct !DISubprogram(name: "state_show", scope: !3, file: !3, line: 406, type: !4390, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6016 = !DILocalVariable(name: "dev", arg: 1, scope: !6015, file: !3, line: 406, type: !3449)
!6017 = !DILocation(line: 406, column: 42, scope: !6015)
!6018 = !DILocalVariable(name: "attr", arg: 2, scope: !6015, file: !3, line: 407, type: !4392)
!6019 = !DILocation(line: 407, column: 33, scope: !6015)
!6020 = !DILocalVariable(name: "buf", arg: 3, scope: !6015, file: !3, line: 407, type: !263)
!6021 = !DILocation(line: 407, column: 45, scope: !6015)
!6022 = !DILocation(line: 409, column: 17, scope: !6015)
!6023 = !DILocation(line: 410, column: 37, scope: !6015)
!6024 = !DILocation(line: 410, column: 20, scope: !6015)
!6025 = !DILocation(line: 410, column: 43, scope: !6015)
!6026 = !DILocation(line: 410, column: 4, scope: !6015)
!6027 = !DILocation(line: 409, column: 9, scope: !6015)
!6028 = !DILocation(line: 409, column: 2, scope: !6015)
!6029 = distinct !DISubprogram(name: "get_order", scope: !6030, file: !6030, line: 29, type: !6031, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6030 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6031 = !DISubroutineType(types: !6032)
!6032 = !{!188, !313}
!6033 = !DILocalVariable(name: "x", arg: 1, scope: !6034, file: !6035, line: 366, type: !411)
!6034 = distinct !DISubprogram(name: "fls64", scope: !6035, file: !6035, line: 366, type: !6036, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6035 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6036 = !DISubroutineType(types: !6037)
!6037 = !{!188, !411}
!6038 = !DILocation(line: 366, column: 40, scope: !6034, inlinedAt: !6039)
!6039 = distinct !DILocation(line: 46, column: 9, scope: !6029)
!6040 = !DILocalVariable(name: "bitpos", scope: !6034, file: !6035, line: 368, type: !188)
!6041 = !DILocation(line: 368, column: 6, scope: !6034, inlinedAt: !6039)
!6042 = !DILocalVariable(name: "size", arg: 1, scope: !6029, file: !6030, line: 29, type: !313)
!6043 = !DILocation(line: 29, column: 63, scope: !6029)
!6044 = !DILocation(line: 31, column: 27, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6029, file: !6030, line: 31, column: 6)
!6046 = !DILocation(line: 31, column: 6, scope: !6045)
!6047 = !DILocation(line: 31, column: 6, scope: !6029)
!6048 = !DILocation(line: 32, column: 8, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6050, file: !6030, line: 32, column: 7)
!6050 = distinct !DILexicalBlock(scope: !6045, file: !6030, line: 31, column: 34)
!6051 = !DILocation(line: 32, column: 7, scope: !6050)
!6052 = !DILocation(line: 33, column: 4, scope: !6049)
!6053 = !DILocation(line: 35, column: 7, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6050, file: !6030, line: 35, column: 7)
!6055 = !DILocation(line: 35, column: 12, scope: !6054)
!6056 = !DILocation(line: 35, column: 7, scope: !6050)
!6057 = !DILocation(line: 36, column: 4, scope: !6054)
!6058 = !DILocation(line: 38, column: 10, scope: !6050)
!6059 = !DILocation(line: 38, column: 28, scope: !6050)
!6060 = !DILocation(line: 38, column: 41, scope: !6050)
!6061 = !DILocation(line: 38, column: 3, scope: !6050)
!6062 = !DILocation(line: 41, column: 6, scope: !6029)
!6063 = !DILocation(line: 42, column: 7, scope: !6029)
!6064 = !DILocation(line: 46, column: 15, scope: !6029)
!6065 = !DILocation(line: 374, column: 2, scope: !6034, inlinedAt: !6039)
!6066 = !DILocation(line: 376, column: 14, scope: !6034, inlinedAt: !6039)
!6067 = !{i32 258947}
!6068 = !DILocation(line: 377, column: 9, scope: !6034, inlinedAt: !6039)
!6069 = !DILocation(line: 377, column: 16, scope: !6034, inlinedAt: !6039)
!6070 = !DILocation(line: 46, column: 2, scope: !6029)
!6071 = !DILocation(line: 48, column: 1, scope: !6029)
!6072 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6073, file: !6073, line: 30, type: !6074, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6073 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!188, !410}
!6076 = !DILocation(line: 366, column: 40, scope: !6034, inlinedAt: !6077)
!6077 = distinct !DILocation(line: 32, column: 9, scope: !6072)
!6078 = !DILocation(line: 368, column: 6, scope: !6034, inlinedAt: !6077)
!6079 = !DILocalVariable(name: "n", arg: 1, scope: !6072, file: !6073, line: 30, type: !410)
!6080 = !DILocation(line: 30, column: 21, scope: !6072)
!6081 = !DILocation(line: 32, column: 15, scope: !6072)
!6082 = !DILocation(line: 374, column: 2, scope: !6034, inlinedAt: !6077)
!6083 = !DILocation(line: 376, column: 14, scope: !6034, inlinedAt: !6077)
!6084 = !DILocation(line: 377, column: 9, scope: !6034, inlinedAt: !6077)
!6085 = !DILocation(line: 377, column: 16, scope: !6034, inlinedAt: !6077)
!6086 = !DILocation(line: 32, column: 18, scope: !6072)
!6087 = !DILocation(line: 32, column: 2, scope: !6072)
!6088 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6089, file: !6089, line: 137, type: !6090, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6089 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6090 = !DISubroutineType(types: !6091)
!6091 = !{!176, !1009, !2199, !310, !784}
!6092 = !DILocalVariable(name: "s", arg: 1, scope: !6088, file: !6089, line: 137, type: !1009)
!6093 = !DILocation(line: 137, column: 54, scope: !6088)
!6094 = !DILocalVariable(name: "object", arg: 2, scope: !6088, file: !6089, line: 137, type: !2199)
!6095 = !DILocation(line: 137, column: 69, scope: !6088)
!6096 = !DILocalVariable(name: "size", arg: 3, scope: !6088, file: !6089, line: 138, type: !310)
!6097 = !DILocation(line: 138, column: 12, scope: !6088)
!6098 = !DILocalVariable(name: "flags", arg: 4, scope: !6088, file: !6089, line: 138, type: !784)
!6099 = !DILocation(line: 138, column: 24, scope: !6088)
!6100 = !DILocation(line: 140, column: 17, scope: !6088)
!6101 = !DILocation(line: 140, column: 2, scope: !6088)
!6102 = distinct !DISubprogram(name: "cleanup_dev", scope: !3, file: !3, line: 343, type: !6103, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6103 = !DISubroutineType(types: !6104)
!6104 = !{!188, !3449, !176}
!6105 = !DILocalVariable(name: "dev", arg: 1, scope: !6102, file: !3, line: 343, type: !3449)
!6106 = !DILocation(line: 343, column: 39, scope: !6102)
!6107 = !DILocalVariable(name: "data", arg: 2, scope: !6102, file: !3, line: 343, type: !176)
!6108 = !DILocation(line: 343, column: 50, scope: !6102)
!6109 = !DILocalVariable(name: "xendev", scope: !6102, file: !3, line: 345, type: !177)
!6110 = !DILocation(line: 345, column: 24, scope: !6102)
!6111 = !DILocation(line: 345, column: 50, scope: !6102)
!6112 = !DILocation(line: 345, column: 33, scope: !6102)
!6113 = !DILocalVariable(name: "info", scope: !6102, file: !3, line: 346, type: !6114)
!6114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!6115 = !DILocation(line: 346, column: 23, scope: !6102)
!6116 = !DILocation(line: 346, column: 30, scope: !6102)
!6117 = !DILocalVariable(name: "len", scope: !6102, file: !3, line: 347, type: !188)
!6118 = !DILocation(line: 347, column: 6, scope: !6102)
!6119 = !DILocation(line: 347, column: 19, scope: !6102)
!6120 = !DILocation(line: 347, column: 25, scope: !6102)
!6121 = !DILocation(line: 347, column: 12, scope: !6102)
!6122 = !DILocation(line: 349, column: 2, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !3, line: 349, column: 2)
!6124 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 349, column: 2)
!6125 = !DILocation(line: 349, column: 2, scope: !6124)
!6126 = !DILocation(line: 352, column: 14, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 352, column: 6)
!6128 = !DILocation(line: 352, column: 22, scope: !6127)
!6129 = !DILocation(line: 352, column: 32, scope: !6127)
!6130 = !DILocation(line: 352, column: 38, scope: !6127)
!6131 = !DILocation(line: 352, column: 48, scope: !6127)
!6132 = !DILocation(line: 352, column: 6, scope: !6127)
!6133 = !DILocation(line: 352, column: 6, scope: !6102)
!6134 = !DILocation(line: 353, column: 3, scope: !6127)
!6135 = !DILocation(line: 356, column: 14, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6102, file: !3, line: 356, column: 6)
!6137 = !DILocation(line: 356, column: 22, scope: !6136)
!6138 = !DILocation(line: 356, column: 7, scope: !6136)
!6139 = !DILocation(line: 356, column: 34, scope: !6136)
!6140 = !DILocation(line: 356, column: 32, scope: !6136)
!6141 = !DILocation(line: 356, column: 39, scope: !6136)
!6142 = !DILocation(line: 356, column: 43, scope: !6136)
!6143 = !DILocation(line: 356, column: 51, scope: !6136)
!6144 = !DILocation(line: 356, column: 60, scope: !6136)
!6145 = !DILocation(line: 356, column: 65, scope: !6136)
!6146 = !DILocation(line: 356, column: 6, scope: !6102)
!6147 = !DILocation(line: 357, column: 3, scope: !6136)
!6148 = !DILocation(line: 359, column: 14, scope: !6102)
!6149 = !DILocation(line: 359, column: 2, scope: !6102)
!6150 = !DILocation(line: 359, column: 8, scope: !6102)
!6151 = !DILocation(line: 359, column: 12, scope: !6102)
!6152 = !DILocation(line: 360, column: 13, scope: !6102)
!6153 = !DILocation(line: 360, column: 2, scope: !6102)
!6154 = !DILocation(line: 361, column: 2, scope: !6102)
!6155 = !DILocation(line: 362, column: 1, scope: !6102)
!6156 = distinct !DISubprogram(name: "cmp_dev", scope: !3, file: !3, line: 321, type: !6103, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6157 = !DILocalVariable(name: "dev", arg: 1, scope: !6156, file: !3, line: 321, type: !3449)
!6158 = !DILocation(line: 321, column: 35, scope: !6156)
!6159 = !DILocalVariable(name: "data", arg: 2, scope: !6156, file: !3, line: 321, type: !176)
!6160 = !DILocation(line: 321, column: 46, scope: !6156)
!6161 = !DILocalVariable(name: "xendev", scope: !6156, file: !3, line: 323, type: !177)
!6162 = !DILocation(line: 323, column: 24, scope: !6156)
!6163 = !DILocation(line: 323, column: 50, scope: !6156)
!6164 = !DILocation(line: 323, column: 33, scope: !6156)
!6165 = !DILocalVariable(name: "info", scope: !6156, file: !3, line: 324, type: !6114)
!6166 = !DILocation(line: 324, column: 23, scope: !6156)
!6167 = !DILocation(line: 324, column: 30, scope: !6156)
!6168 = !DILocation(line: 326, column: 14, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6156, file: !3, line: 326, column: 6)
!6170 = !DILocation(line: 326, column: 22, scope: !6169)
!6171 = !DILocation(line: 326, column: 32, scope: !6169)
!6172 = !DILocation(line: 326, column: 38, scope: !6169)
!6173 = !DILocation(line: 326, column: 7, scope: !6169)
!6174 = !DILocation(line: 326, column: 6, scope: !6156)
!6175 = !DILocation(line: 327, column: 15, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6169, file: !3, line: 326, column: 49)
!6177 = !DILocation(line: 327, column: 3, scope: !6176)
!6178 = !DILocation(line: 327, column: 9, scope: !6176)
!6179 = !DILocation(line: 327, column: 13, scope: !6176)
!6180 = !DILocation(line: 328, column: 14, scope: !6176)
!6181 = !DILocation(line: 328, column: 3, scope: !6176)
!6182 = !DILocation(line: 329, column: 3, scope: !6176)
!6183 = !DILocation(line: 331, column: 2, scope: !6156)
!6184 = !DILocation(line: 332, column: 1, scope: !6156)
!6185 = distinct !DISubprogram(name: "xenstored_local_init", scope: !3, file: !3, line: 711, type: !5848, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6186 = !DILocalVariable(name: "err", scope: !6185, file: !3, line: 713, type: !188)
!6187 = !DILocation(line: 713, column: 6, scope: !6185)
!6188 = !DILocalVariable(name: "page", scope: !6185, file: !3, line: 714, type: !313)
!6189 = !DILocation(line: 714, column: 16, scope: !6185)
!6190 = !DILocalVariable(name: "alloc_unbound", scope: !6185, file: !3, line: 715, type: !6191)
!6191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_alloc_unbound", file: !6192, line: 27, size: 64, elements: !6193)
!6192 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!6193 = !{!6194, !6198, !6199}
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !6191, file: !6192, line: 29, baseType: !6195, size: 16)
!6195 = !DIDerivedType(tag: DW_TAG_typedef, name: "domid_t", file: !6196, line: 437, baseType: !6197)
!6196 = !DIFile(filename: "./include/xen/interface/xen.h", directory: "/home/lizy2001/genbc/linux")
!6197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !194, line: 103, baseType: !893)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "remote_dom", scope: !6191, file: !6192, line: 29, baseType: !6195, size: 16, offset: 16)
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !6191, file: !6192, line: 31, baseType: !6200, size: 32, offset: 32)
!6200 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !6192, line: 15, baseType: !548)
!6201 = !DILocation(line: 715, column: 30, scope: !6185)
!6202 = !DILocation(line: 718, column: 9, scope: !6185)
!6203 = !DILocation(line: 718, column: 7, scope: !6185)
!6204 = !DILocation(line: 719, column: 7, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 719, column: 6)
!6206 = !DILocation(line: 719, column: 6, scope: !6185)
!6207 = !DILocation(line: 720, column: 3, scope: !6205)
!6208 = !DILocation(line: 722, column: 18, scope: !6185)
!6209 = !DILocation(line: 722, column: 16, scope: !6185)
!6210 = !DILocation(line: 725, column: 16, scope: !6185)
!6211 = !DILocation(line: 725, column: 27, scope: !6185)
!6212 = !DILocation(line: 726, column: 16, scope: !6185)
!6213 = !DILocation(line: 726, column: 27, scope: !6185)
!6214 = !DILocation(line: 729, column: 8, scope: !6185)
!6215 = !DILocation(line: 728, column: 8, scope: !6185)
!6216 = !DILocation(line: 728, column: 6, scope: !6185)
!6217 = !DILocation(line: 730, column: 6, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 730, column: 6)
!6219 = !DILocation(line: 730, column: 10, scope: !6218)
!6220 = !DILocation(line: 730, column: 6, scope: !6185)
!6221 = !DILocation(line: 731, column: 3, scope: !6218)
!6222 = !DILocation(line: 733, column: 2, scope: !6185)
!6223 = !DILocation(line: 733, column: 2, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 733, column: 2)
!6225 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 733, column: 2)
!6226 = !DILocation(line: 733, column: 2, scope: !6225)
!6227 = !DILocation(line: 733, column: 2, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 733, column: 2)
!6229 = !DILocation(line: 733, column: 2, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 733, column: 2)
!6231 = !DILocation(line: 733, column: 2, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 733, column: 2)
!6233 = !{i32 -2141198985, i32 -2141198956, i32 -2141198910, i32 -2141198852, i32 -2141198798, i32 -2141198744, i32 -2141198689, i32 -2141198658}
!6234 = !DILocation(line: 733, column: 2, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 733, column: 2)
!6236 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 733, column: 2)
!6237 = !{i32 -2141198202, i32 -2141198195, i32 -2141198141, i32 -2141198110, i32 -2141198080}
!6238 = !DILocation(line: 733, column: 2, scope: !6236)
!6239 = !DILocation(line: 734, column: 35, scope: !6185)
!6240 = !DILocation(line: 734, column: 19, scope: !6185)
!6241 = !DILocation(line: 736, column: 2, scope: !6185)
!6242 = !DILabel(scope: !6185, name: "out_err", file: !3, line: 738)
!6243 = !DILocation(line: 738, column: 2, scope: !6185)
!6244 = !DILocation(line: 739, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 739, column: 6)
!6246 = !DILocation(line: 739, column: 11, scope: !6245)
!6247 = !DILocation(line: 739, column: 6, scope: !6185)
!6248 = !DILocation(line: 740, column: 3, scope: !6245)
!6249 = !DILocation(line: 741, column: 9, scope: !6185)
!6250 = !DILocation(line: 741, column: 2, scope: !6185)
!6251 = !DILocation(line: 742, column: 1, scope: !6185)
!6252 = distinct !DISubprogram(name: "gfn_to_pfn", scope: !6253, file: !6253, line: 259, type: !6254, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6253 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!313, !313}
!6256 = !DILocalVariable(name: "gfn", arg: 1, scope: !6252, file: !6253, line: 259, type: !313)
!6257 = !DILocation(line: 259, column: 54, scope: !6252)
!6258 = !DILocation(line: 261, column: 6, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6252, file: !6253, line: 261, column: 6)
!6260 = !DILocation(line: 261, column: 6, scope: !6252)
!6261 = !DILocation(line: 262, column: 10, scope: !6259)
!6262 = !DILocation(line: 262, column: 3, scope: !6259)
!6263 = !DILocation(line: 264, column: 21, scope: !6259)
!6264 = !DILocation(line: 264, column: 10, scope: !6259)
!6265 = !DILocation(line: 264, column: 3, scope: !6259)
!6266 = !DILocation(line: 265, column: 1, scope: !6252)
!6267 = distinct !DISubprogram(name: "hvm_get_parameter", scope: !4436, file: !4436, line: 39, type: !6268, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6268 = !DISubroutineType(types: !6269)
!6269 = !{!188, !188, !6270}
!6270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5867, size: 64)
!6271 = !DILocalVariable(name: "idx", arg: 1, scope: !6267, file: !4436, line: 39, type: !188)
!6272 = !DILocation(line: 39, column: 41, scope: !6267)
!6273 = !DILocalVariable(name: "value", arg: 2, scope: !6267, file: !4436, line: 39, type: !6270)
!6274 = !DILocation(line: 39, column: 56, scope: !6267)
!6275 = !DILocalVariable(name: "xhv", scope: !6267, file: !4436, line: 41, type: !6276)
!6276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_hvm_param", file: !6277, line: 30, size: 128, elements: !6278)
!6277 = !DIFile(filename: "./include/xen/interface/hvm/hvm_op.h", directory: "/home/lizy2001/genbc/linux")
!6278 = !{!6279, !6280, !6281}
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "domid", scope: !6276, file: !6277, line: 31, baseType: !6195, size: 16)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6276, file: !6277, line: 32, baseType: !548, size: 32, offset: 32)
!6281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6276, file: !6277, line: 33, baseType: !5867, size: 64, offset: 64)
!6282 = !DILocation(line: 41, column: 23, scope: !6267)
!6283 = !DILocalVariable(name: "r", scope: !6267, file: !4436, line: 42, type: !188)
!6284 = !DILocation(line: 42, column: 6, scope: !6267)
!6285 = !DILocation(line: 44, column: 6, scope: !6267)
!6286 = !DILocation(line: 44, column: 12, scope: !6267)
!6287 = !DILocation(line: 45, column: 14, scope: !6267)
!6288 = !DILocation(line: 45, column: 6, scope: !6267)
!6289 = !DILocation(line: 45, column: 12, scope: !6267)
!6290 = !DILocation(line: 46, column: 41, scope: !6267)
!6291 = !DILocation(line: 46, column: 6, scope: !6267)
!6292 = !DILocation(line: 46, column: 4, scope: !6267)
!6293 = !DILocation(line: 47, column: 6, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6267, file: !4436, line: 47, column: 6)
!6295 = !DILocation(line: 47, column: 8, scope: !6294)
!6296 = !DILocation(line: 47, column: 6, scope: !6267)
!6297 = !DILocation(line: 48, column: 3, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6294, file: !4436, line: 47, column: 13)
!6299 = !DILocation(line: 50, column: 10, scope: !6298)
!6300 = !DILocation(line: 50, column: 3, scope: !6298)
!6301 = !DILocation(line: 52, column: 15, scope: !6267)
!6302 = !DILocation(line: 52, column: 3, scope: !6267)
!6303 = !DILocation(line: 52, column: 9, scope: !6267)
!6304 = !DILocation(line: 53, column: 9, scope: !6267)
!6305 = !DILocation(line: 53, column: 2, scope: !6267)
!6306 = !DILocation(line: 54, column: 1, scope: !6267)
!6307 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !6253, file: !6253, line: 251, type: !6254, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6308 = !DILocalVariable(name: "pfn", arg: 1, scope: !6307, file: !6253, line: 251, type: !313)
!6309 = !DILocation(line: 251, column: 54, scope: !6307)
!6310 = !DILocation(line: 253, column: 6, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6307, file: !6253, line: 253, column: 6)
!6312 = !DILocation(line: 253, column: 6, scope: !6307)
!6313 = !DILocation(line: 254, column: 10, scope: !6311)
!6314 = !DILocation(line: 254, column: 3, scope: !6311)
!6315 = !DILocation(line: 256, column: 21, scope: !6311)
!6316 = !DILocation(line: 256, column: 10, scope: !6311)
!6317 = !DILocation(line: 256, column: 3, scope: !6311)
!6318 = !DILocation(line: 257, column: 1, scope: !6307)
!6319 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !6320, file: !6320, line: 18, type: !6254, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6320 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!6321 = !DILocalVariable(name: "x", arg: 1, scope: !6319, file: !6320, line: 18, type: !313)
!6322 = !DILocation(line: 18, column: 63, scope: !6319)
!6323 = !DILocalVariable(name: "y", scope: !6319, file: !6320, line: 20, type: !313)
!6324 = !DILocation(line: 20, column: 16, scope: !6319)
!6325 = !DILocation(line: 20, column: 20, scope: !6319)
!6326 = !DILocation(line: 20, column: 22, scope: !6319)
!6327 = !DILocation(line: 23, column: 6, scope: !6319)
!6328 = !DILocation(line: 23, column: 12, scope: !6319)
!6329 = !DILocation(line: 23, column: 16, scope: !6319)
!6330 = !DILocation(line: 23, column: 14, scope: !6319)
!6331 = !DILocation(line: 23, column: 11, scope: !6319)
!6332 = !DILocation(line: 23, column: 21, scope: !6319)
!6333 = !DILocation(line: 23, column: 55, scope: !6319)
!6334 = !DILocation(line: 23, column: 53, scope: !6319)
!6335 = !DILocation(line: 23, column: 8, scope: !6319)
!6336 = !DILocation(line: 23, column: 4, scope: !6319)
!6337 = !DILocation(line: 25, column: 9, scope: !6319)
!6338 = !DILocation(line: 25, column: 2, scope: !6319)
!6339 = distinct !DISubprogram(name: "HYPERVISOR_event_channel_op", scope: !6340, file: !6340, line: 356, type: !6341, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6340 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!6341 = !DISubroutineType(types: !6342)
!6342 = !{!188, !188, !176}
!6343 = !DILocalVariable(name: "cmd", arg: 1, scope: !6339, file: !6340, line: 356, type: !188)
!6344 = !DILocation(line: 356, column: 33, scope: !6339)
!6345 = !DILocalVariable(name: "arg", arg: 2, scope: !6339, file: !6340, line: 356, type: !176)
!6346 = !DILocation(line: 356, column: 44, scope: !6339)
!6347 = !DILocalVariable(name: "__res", scope: !6348, file: !6340, line: 358, type: !313)
!6348 = distinct !DILexicalBlock(scope: !6339, file: !6340, line: 358, column: 9)
!6349 = !DILocation(line: 358, column: 9, scope: !6348)
!6350 = !DILocalVariable(name: "__arg1", scope: !6348, file: !6340, line: 358, type: !313)
!6351 = !DILocalVariable(name: "__arg2", scope: !6348, file: !6340, line: 358, type: !313)
!6352 = !DILocalVariable(name: "__arg3", scope: !6348, file: !6340, line: 358, type: !313)
!6353 = !DILocalVariable(name: "__arg4", scope: !6348, file: !6340, line: 358, type: !313)
!6354 = !DILocalVariable(name: "__arg5", scope: !6348, file: !6340, line: 358, type: !313)
!6355 = !{i32 -2141464621}
!6356 = !DILocation(line: 358, column: 2, scope: !6339)
!6357 = distinct !DISubprogram(name: "xen_feature", scope: !6358, file: !6358, line: 19, type: !3132, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6358 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!6359 = !DILocalVariable(name: "flag", arg: 1, scope: !6357, file: !6358, line: 19, type: !188)
!6360 = !DILocation(line: 19, column: 35, scope: !6357)
!6361 = !DILocation(line: 21, column: 22, scope: !6357)
!6362 = !DILocation(line: 21, column: 9, scope: !6357)
!6363 = !DILocation(line: 21, column: 2, scope: !6357)
!6364 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !6253, file: !6253, line: 164, type: !6254, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6365 = !DILocalVariable(name: "pfn", arg: 1, scope: !6364, file: !6253, line: 164, type: !313)
!6366 = !DILocation(line: 164, column: 54, scope: !6364)
!6367 = !DILocalVariable(name: "mfn", scope: !6364, file: !6253, line: 166, type: !313)
!6368 = !DILocation(line: 166, column: 16, scope: !6364)
!6369 = !DILocation(line: 173, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6364, file: !6253, line: 173, column: 6)
!6371 = !DILocation(line: 173, column: 6, scope: !6364)
!6372 = !DILocation(line: 174, column: 10, scope: !6370)
!6373 = !DILocation(line: 174, column: 3, scope: !6370)
!6374 = !DILocation(line: 176, column: 21, scope: !6364)
!6375 = !DILocation(line: 176, column: 8, scope: !6364)
!6376 = !DILocation(line: 176, column: 6, scope: !6364)
!6377 = !DILocation(line: 178, column: 6, scope: !6378)
!6378 = distinct !DILexicalBlock(scope: !6364, file: !6253, line: 178, column: 6)
!6379 = !DILocation(line: 178, column: 10, scope: !6378)
!6380 = !DILocation(line: 178, column: 6, scope: !6364)
!6381 = !DILocation(line: 179, column: 7, scope: !6378)
!6382 = !DILocation(line: 179, column: 3, scope: !6378)
!6383 = !DILocation(line: 181, column: 9, scope: !6364)
!6384 = !DILocation(line: 181, column: 2, scope: !6364)
!6385 = !DILocation(line: 182, column: 1, scope: !6364)
!6386 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !6253, file: !6253, line: 141, type: !6254, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6387 = !DILocalVariable(name: "pfn", arg: 1, scope: !6386, file: !6253, line: 141, type: !313)
!6388 = !DILocation(line: 141, column: 56, scope: !6386)
!6389 = !DILocalVariable(name: "mfn", scope: !6386, file: !6253, line: 143, type: !313)
!6390 = !DILocation(line: 143, column: 16, scope: !6386)
!6391 = !DILocation(line: 145, column: 6, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6386, file: !6253, line: 145, column: 6)
!6393 = !DILocation(line: 145, column: 12, scope: !6392)
!6394 = !DILocation(line: 145, column: 10, scope: !6392)
!6395 = !DILocation(line: 145, column: 6, scope: !6386)
!6396 = !DILocation(line: 146, column: 9, scope: !6392)
!6397 = !DILocation(line: 146, column: 22, scope: !6392)
!6398 = !DILocation(line: 146, column: 7, scope: !6392)
!6399 = !DILocation(line: 146, column: 3, scope: !6392)
!6400 = !DILocation(line: 147, column: 11, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6392, file: !6253, line: 147, column: 11)
!6402 = !DILocation(line: 147, column: 11, scope: !6392)
!6403 = !DILocation(line: 148, column: 30, scope: !6401)
!6404 = !DILocation(line: 148, column: 10, scope: !6401)
!6405 = !DILocation(line: 148, column: 3, scope: !6401)
!6406 = !DILocation(line: 150, column: 10, scope: !6401)
!6407 = !DILocation(line: 150, column: 3, scope: !6401)
!6408 = !DILocation(line: 152, column: 6, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6386, file: !6253, line: 152, column: 6)
!6410 = !DILocation(line: 152, column: 6, scope: !6386)
!6411 = !DILocation(line: 153, column: 30, scope: !6409)
!6412 = !DILocation(line: 153, column: 10, scope: !6409)
!6413 = !DILocation(line: 153, column: 3, scope: !6409)
!6414 = !DILocation(line: 155, column: 9, scope: !6386)
!6415 = !DILocation(line: 155, column: 2, scope: !6386)
!6416 = !DILocation(line: 156, column: 1, scope: !6386)
!6417 = distinct !DISubprogram(name: "mfn_to_pfn", scope: !6253, file: !6253, line: 212, type: !6254, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6418 = !DILocalVariable(name: "mfn", arg: 1, scope: !6417, file: !6253, line: 212, type: !313)
!6419 = !DILocation(line: 212, column: 54, scope: !6417)
!6420 = !DILocalVariable(name: "pfn", scope: !6417, file: !6253, line: 214, type: !313)
!6421 = !DILocation(line: 214, column: 16, scope: !6417)
!6422 = !DILocation(line: 221, column: 6, scope: !6423)
!6423 = distinct !DILexicalBlock(scope: !6417, file: !6253, line: 221, column: 6)
!6424 = !DILocation(line: 221, column: 6, scope: !6417)
!6425 = !DILocation(line: 222, column: 10, scope: !6423)
!6426 = !DILocation(line: 222, column: 3, scope: !6423)
!6427 = !DILocation(line: 224, column: 32, scope: !6417)
!6428 = !DILocation(line: 224, column: 8, scope: !6417)
!6429 = !DILocation(line: 224, column: 6, scope: !6417)
!6430 = !DILocation(line: 225, column: 19, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6417, file: !6253, line: 225, column: 6)
!6432 = !DILocation(line: 225, column: 6, scope: !6431)
!6433 = !DILocation(line: 225, column: 27, scope: !6431)
!6434 = !DILocation(line: 225, column: 24, scope: !6431)
!6435 = !DILocation(line: 225, column: 6, scope: !6417)
!6436 = !DILocation(line: 226, column: 7, scope: !6431)
!6437 = !DILocation(line: 226, column: 3, scope: !6431)
!6438 = !DILocation(line: 232, column: 6, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6417, file: !6253, line: 232, column: 6)
!6440 = !DILocation(line: 232, column: 10, scope: !6439)
!6441 = !DILocation(line: 232, column: 16, scope: !6439)
!6442 = !DILocation(line: 232, column: 32, scope: !6439)
!6443 = !DILocation(line: 232, column: 19, scope: !6439)
!6444 = !DILocation(line: 232, column: 40, scope: !6439)
!6445 = !DILocation(line: 232, column: 37, scope: !6439)
!6446 = !DILocation(line: 232, column: 6, scope: !6417)
!6447 = !DILocation(line: 233, column: 9, scope: !6439)
!6448 = !DILocation(line: 233, column: 7, scope: !6439)
!6449 = !DILocation(line: 233, column: 3, scope: !6439)
!6450 = !DILocation(line: 235, column: 9, scope: !6417)
!6451 = !DILocation(line: 235, column: 2, scope: !6417)
!6452 = !DILocation(line: 236, column: 1, scope: !6417)
!6453 = distinct !DISubprogram(name: "mfn_to_pfn_no_overrides", scope: !6253, file: !6253, line: 192, type: !6254, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6454 = !DILocalVariable(name: "mfn", arg: 1, scope: !6453, file: !6253, line: 192, type: !313)
!6455 = !DILocation(line: 192, column: 67, scope: !6453)
!6456 = !DILocalVariable(name: "pfn", scope: !6453, file: !6253, line: 194, type: !313)
!6457 = !DILocation(line: 194, column: 16, scope: !6453)
!6458 = !DILocalVariable(name: "ret", scope: !6453, file: !6253, line: 195, type: !188)
!6459 = !DILocation(line: 195, column: 6, scope: !6453)
!6460 = !DILocation(line: 197, column: 6, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6453, file: !6253, line: 197, column: 6)
!6462 = !DILocation(line: 197, column: 6, scope: !6453)
!6463 = !DILocation(line: 198, column: 3, scope: !6461)
!6464 = !DILocation(line: 205, column: 29, scope: !6453)
!6465 = !DILocation(line: 205, column: 53, scope: !6453)
!6466 = !DILocation(line: 205, column: 8, scope: !6453)
!6467 = !DILocation(line: 205, column: 6, scope: !6453)
!6468 = !DILocation(line: 206, column: 6, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6453, file: !6253, line: 206, column: 6)
!6470 = !DILocation(line: 206, column: 10, scope: !6469)
!6471 = !DILocation(line: 206, column: 6, scope: !6453)
!6472 = !DILocation(line: 207, column: 3, scope: !6469)
!6473 = !DILocation(line: 209, column: 9, scope: !6453)
!6474 = !DILocation(line: 209, column: 2, scope: !6453)
!6475 = !DILocation(line: 210, column: 1, scope: !6453)
!6476 = distinct !DISubprogram(name: "xen_safe_read_ulong", scope: !6253, file: !6253, line: 110, type: !6477, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!188, !6479, !3882}
!6479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!6480 = !DILocalVariable(name: "addr", arg: 1, scope: !6476, file: !6253, line: 110, type: !6479)
!6481 = !DILocation(line: 110, column: 60, scope: !6476)
!6482 = !DILocalVariable(name: "val", arg: 2, scope: !6476, file: !6253, line: 111, type: !3882)
!6483 = !DILocation(line: 111, column: 26, scope: !6476)
!6484 = !DILocalVariable(name: "ret", scope: !6476, file: !6253, line: 113, type: !188)
!6485 = !DILocation(line: 113, column: 6, scope: !6476)
!6486 = !DILocalVariable(name: "rval", scope: !6476, file: !6253, line: 114, type: !313)
!6487 = !DILocation(line: 114, column: 16, scope: !6476)
!6488 = !DILocation(line: 116, column: 2, scope: !6476)
!6489 = !DILocation(line: 124, column: 22, scope: !6476)
!6490 = !{i32 6223742, i32 6223777, i32 6223791, i32 6223826, i32 6223855, i32 6223876, i32 -2141252207, i32 -2141252163, i32 -2141252140, i32 -2141252107, i32 -2141252076, i32 -2141252020}
!6491 = !DILocation(line: 125, column: 9, scope: !6476)
!6492 = !DILocation(line: 125, column: 3, scope: !6476)
!6493 = !DILocation(line: 125, column: 7, scope: !6476)
!6494 = !DILocation(line: 127, column: 9, scope: !6476)
!6495 = !DILocation(line: 127, column: 2, scope: !6476)
!6496 = distinct !DISubprogram(name: "HYPERVISOR_hvm_op", scope: !6340, file: !6340, line: 420, type: !6497, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6497 = !DISubroutineType(types: !6498)
!6498 = !{!313, !188, !176}
!6499 = !DILocalVariable(name: "op", arg: 1, scope: !6496, file: !6340, line: 420, type: !188)
!6500 = !DILocation(line: 420, column: 23, scope: !6496)
!6501 = !DILocalVariable(name: "arg", arg: 2, scope: !6496, file: !6340, line: 420, type: !176)
!6502 = !DILocation(line: 420, column: 33, scope: !6496)
!6503 = !DILocalVariable(name: "__res", scope: !6504, file: !6340, line: 422, type: !313)
!6504 = distinct !DILexicalBlock(scope: !6496, file: !6340, line: 422, column: 15)
!6505 = !DILocation(line: 422, column: 15, scope: !6504)
!6506 = !DILocalVariable(name: "__arg1", scope: !6504, file: !6340, line: 422, type: !313)
!6507 = !DILocalVariable(name: "__arg2", scope: !6504, file: !6340, line: 422, type: !313)
!6508 = !DILocalVariable(name: "__arg3", scope: !6504, file: !6340, line: 422, type: !313)
!6509 = !DILocalVariable(name: "__arg4", scope: !6504, file: !6340, line: 422, type: !313)
!6510 = !DILocalVariable(name: "__arg5", scope: !6504, file: !6340, line: 422, type: !313)
!6511 = !{i32 -2141451734}
!6512 = !DILocation(line: 422, column: 8, scope: !6496)
!6513 = !DILocalVariable(name: "op", arg: 1, scope: !4435, file: !4436, line: 9, type: !188)
!6514 = !DILocation(line: 9, column: 35, scope: !4435)
!6515 = !DILocation(line: 31, column: 6, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !4435, file: !4436, line: 31, column: 6)
!6517 = !DILocation(line: 31, column: 9, scope: !6516)
!6518 = !DILocation(line: 31, column: 6, scope: !4435)
!6519 = !DILocation(line: 32, column: 3, scope: !6516)
!6520 = !DILocation(line: 34, column: 13, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !4435, file: !4436, line: 34, column: 6)
!6522 = !DILocation(line: 34, column: 7, scope: !6521)
!6523 = !DILocation(line: 34, column: 6, scope: !4435)
!6524 = !DILocation(line: 35, column: 3, scope: !6521)
!6525 = !DILocation(line: 37, column: 15, scope: !4435)
!6526 = !DILocation(line: 37, column: 9, scope: !4435)
!6527 = !DILocation(line: 37, column: 2, scope: !4435)
!6528 = !DILocation(line: 38, column: 1, scope: !4435)
!6529 = distinct !DISubprogram(name: "xenbus_resume_cb", scope: !3, file: !3, line: 744, type: !4427, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!6530 = !DILocalVariable(name: "nb", arg: 1, scope: !6529, file: !3, line: 744, type: !4421)
!6531 = !DILocation(line: 744, column: 52, scope: !6529)
!6532 = !DILocalVariable(name: "action", arg: 2, scope: !6529, file: !3, line: 745, type: !313)
!6533 = !DILocation(line: 745, column: 22, scope: !6529)
!6534 = !DILocalVariable(name: "data", arg: 3, scope: !6529, file: !3, line: 745, type: !176)
!6535 = !DILocation(line: 745, column: 36, scope: !6529)
!6536 = !DILocalVariable(name: "err", scope: !6529, file: !3, line: 747, type: !188)
!6537 = !DILocation(line: 747, column: 6, scope: !6529)
!6538 = !DILocation(line: 749, column: 6, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6529, file: !3, line: 749, column: 6)
!6540 = !DILocation(line: 749, column: 6, scope: !6529)
!6541 = !DILocalVariable(name: "v", scope: !6542, file: !3, line: 750, type: !5867)
!6542 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 749, column: 24)
!6543 = !DILocation(line: 750, column: 12, scope: !6542)
!6544 = !DILocation(line: 752, column: 9, scope: !6542)
!6545 = !DILocation(line: 752, column: 7, scope: !6542)
!6546 = !DILocation(line: 753, column: 8, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6542, file: !3, line: 753, column: 7)
!6548 = !DILocation(line: 753, column: 12, scope: !6547)
!6549 = !DILocation(line: 753, column: 15, scope: !6547)
!6550 = !DILocation(line: 753, column: 7, scope: !6542)
!6551 = !DILocation(line: 754, column: 23, scope: !6547)
!6552 = !DILocation(line: 754, column: 21, scope: !6547)
!6553 = !DILocation(line: 754, column: 4, scope: !6547)
!6554 = !DILocation(line: 756, column: 4, scope: !6547)
!6555 = !DILocation(line: 758, column: 2, scope: !6542)
!6556 = !DILocation(line: 759, column: 22, scope: !6539)
!6557 = !DILocation(line: 759, column: 38, scope: !6539)
!6558 = !DILocation(line: 759, column: 20, scope: !6539)
!6559 = !DILocation(line: 761, column: 9, scope: !6529)
!6560 = !DILocation(line: 761, column: 2, scope: !6529)
