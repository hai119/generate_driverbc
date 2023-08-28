; ModuleID = '../bcout/drivers/usb/core/endpoint.llvm.bc'
source_filename = "drivers/usb/core/endpoint.c"
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_attr }
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
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
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
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, {}*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.ep_device = type { %struct.usb_endpoint_descriptor*, %struct.usb_device*, %struct.device }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"usb_endpoint\00", align 1
@usb_ep_device_type = dso_local global { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* } { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @ep_device_release, %struct.dev_pm_ops* null }, align 8, !dbg !0
@ep_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @ep_dev_attr_grp, %struct.attribute_group* null], align 16, !dbg !4027
@.str.1 = private unnamed_addr constant [8 x i8] c"ep_%02x\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@ep_dev_attr_grp = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([9 x %struct.attribute*], [9 x %struct.attribute*]* @ep_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4030
@ep_dev_attrs = internal global [9 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bLength, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bEndpointAddress, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bmAttributes, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_bInterval, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wMaxPacketSize, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_interval, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_direction, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4032
@dev_attr_bLength = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @bLength_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4035
@dev_attr_bEndpointAddress = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @bEndpointAddress_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4049
@dev_attr_bmAttributes = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @bmAttributes_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4051
@dev_attr_bInterval = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @bInterval_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4053
@dev_attr_wMaxPacketSize = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wMaxPacketSize_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4055
@dev_attr_interval = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @interval_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4057
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4059
@dev_attr_direction = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @direction_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4061
@.str.3 = private unnamed_addr constant [8 x i8] c"bLength\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bEndpointAddress\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"bmAttributes\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"bInterval\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"wMaxPacketSize\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%d%cs\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ep_device_release(%struct.device* %dev) #0 !dbg !4068 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ep_dev = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep_dev, metadata !4071, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4073, metadata !DIExpression()), !dbg !4075
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4075
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4075
  store i8* %1, i8** %__mptr, align 8, !dbg !4075
  br label %do.body, !dbg !4075

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4076

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4075
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4075
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4075
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4076
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4075
  store %struct.ep_device* %4, %struct.ep_device** %ep_dev, align 8, !dbg !4072
  %5 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4078
  %6 = bitcast %struct.ep_device* %5 to i8*, !dbg !4078
  call void @kfree(i8* %6) #6, !dbg !4079
  ret void, !dbg !4080
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_create_ep_devs(%struct.device* %parent, %struct.usb_host_endpoint* %endpoint, %struct.usb_device* %udev) #0 !dbg !4081 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  %endpoint.addr = alloca %struct.usb_host_endpoint*, align 8
  %udev.addr = alloca %struct.usb_device*, align 8
  %ep_dev = alloca %struct.ep_device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !4084, metadata !DIExpression()), !dbg !4085
  store %struct.usb_host_endpoint* %endpoint, %struct.usb_host_endpoint** %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_endpoint** %endpoint.addr, metadata !4086, metadata !DIExpression()), !dbg !4087
  store %struct.usb_device* %udev, %struct.usb_device** %udev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %udev.addr, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep_dev, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4092, metadata !DIExpression()), !dbg !4093
  %call = call i8* @kzalloc(i64 712, i32 3264) #6, !dbg !4094
  %0 = bitcast i8* %call to %struct.ep_device*, !dbg !4094
  store %struct.ep_device* %0, %struct.ep_device** %ep_dev, align 8, !dbg !4095
  %1 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4096
  %tobool = icmp ne %struct.ep_device* %1, null, !dbg !4096
  br i1 %tobool, label %if.end, label %if.then, !dbg !4098

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval1, align 4, !dbg !4099
  br label %exit, !dbg !4101

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint.addr, align 8, !dbg !4102
  %desc = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %2, i32 0, i32 0, !dbg !4103
  %3 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4104
  %desc2 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %3, i32 0, i32 0, !dbg !4105
  store %struct.usb_endpoint_descriptor* %desc, %struct.usb_endpoint_descriptor** %desc2, align 8, !dbg !4106
  %4 = load %struct.usb_device*, %struct.usb_device** %udev.addr, align 8, !dbg !4107
  %5 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4108
  %udev3 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %5, i32 0, i32 1, !dbg !4109
  store %struct.usb_device* %4, %struct.usb_device** %udev3, align 8, !dbg !4110
  %6 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4111
  %dev = getelementptr inbounds %struct.ep_device, %struct.ep_device* %6, i32 0, i32 2, !dbg !4112
  %groups = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 30, !dbg !4113
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @ep_dev_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !4114
  %7 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4115
  %dev4 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %7, i32 0, i32 2, !dbg !4116
  %type = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 4, !dbg !4117
  store %struct.device_type* bitcast ({ i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }* @usb_ep_device_type to %struct.device_type*), %struct.device_type** %type, align 8, !dbg !4118
  %8 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !4119
  %9 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4120
  %dev5 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %9, i32 0, i32 2, !dbg !4121
  %parent6 = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 1, !dbg !4122
  store %struct.device* %8, %struct.device** %parent6, align 8, !dbg !4123
  %10 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4124
  %dev7 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %10, i32 0, i32 2, !dbg !4125
  %11 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint.addr, align 8, !dbg !4126
  %desc8 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %11, i32 0, i32 0, !dbg !4127
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %desc8, i32 0, i32 2, !dbg !4128
  %12 = load i8, i8* %bEndpointAddress, align 2, !dbg !4128
  %conv = zext i8 %12 to i32, !dbg !4126
  %call9 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %conv) #6, !dbg !4129
  %13 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4130
  %dev10 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %13, i32 0, i32 2, !dbg !4131
  %call11 = call i32 @device_register(%struct.device* %dev10) #6, !dbg !4132
  store i32 %call11, i32* %retval1, align 4, !dbg !4133
  %14 = load i32, i32* %retval1, align 4, !dbg !4134
  %tobool12 = icmp ne i32 %14, 0, !dbg !4134
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4136

if.then13:                                        ; preds = %if.end
  br label %error_register, !dbg !4137

if.end14:                                         ; preds = %if.end
  %15 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4138
  %dev15 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %15, i32 0, i32 2, !dbg !4139
  call void @device_enable_async_suspend(%struct.device* %dev15) #6, !dbg !4140
  %16 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4141
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint.addr, align 8, !dbg !4142
  %ep_dev16 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 6, !dbg !4143
  store %struct.ep_device* %16, %struct.ep_device** %ep_dev16, align 8, !dbg !4144
  %18 = load i32, i32* %retval1, align 4, !dbg !4145
  store i32 %18, i32* %retval, align 4, !dbg !4146
  br label %return, !dbg !4146

error_register:                                   ; preds = %if.then13
  call void @llvm.dbg.label(metadata !4147), !dbg !4148
  %19 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4149
  %dev17 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %19, i32 0, i32 2, !dbg !4150
  call void @put_device(%struct.device* %dev17) #6, !dbg !4151
  br label %exit, !dbg !4151

exit:                                             ; preds = %error_register, %if.then
  call void @llvm.dbg.label(metadata !4152), !dbg !4153
  %20 = load i32, i32* %retval1, align 4, !dbg !4154
  store i32 %20, i32* %retval, align 4, !dbg !4155
  br label %return, !dbg !4155

return:                                           ; preds = %exit, %if.end14
  %21 = load i32, i32* %retval, align 4, !dbg !4156
  ret i32 %21, !dbg !4156
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4157 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4160, metadata !DIExpression()), !dbg !4164
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4170, metadata !DIExpression()), !dbg !4171
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4172, metadata !DIExpression()), !dbg !4173
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4174, metadata !DIExpression()), !dbg !4175
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4176, metadata !DIExpression()), !dbg !4180
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4182, metadata !DIExpression()), !dbg !4186
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4188, metadata !DIExpression()), !dbg !4192
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4197, metadata !DIExpression()), !dbg !4198
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4199, metadata !DIExpression()), !dbg !4200
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4201, metadata !DIExpression()), !dbg !4202
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4203, metadata !DIExpression()), !dbg !4204
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4205, metadata !DIExpression()), !dbg !4206
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4207, metadata !DIExpression()), !dbg !4208
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4209, metadata !DIExpression()), !dbg !4210
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4211, metadata !DIExpression()), !dbg !4212
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  %0 = load i64, i64* %size.addr, align 8, !dbg !4217
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4218
  %or = or i32 %1, 256, !dbg !4219
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4220
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !4221
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4222

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4223
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4224
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4225

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4226
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4227
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4228
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !4229
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4206
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4230
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4231
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4232
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4233
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4234
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4235
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !4236
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4236
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4236
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4236
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !4236
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4237
  br label %kmalloc.exit, !dbg !4237

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4238
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4239
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4239
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4241

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4242
  br label %kmalloc_index.exit.i, !dbg !4242

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4243
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4245
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4246

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4247
  br label %kmalloc_index.exit.i, !dbg !4247

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4248
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4250
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4251

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4252
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4253
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4254

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4255
  br label %kmalloc_index.exit.i, !dbg !4255

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4256
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4258
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4259

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4260
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4261
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4262

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4263
  br label %kmalloc_index.exit.i, !dbg !4263

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4264
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4266
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4267

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4268
  br label %kmalloc_index.exit.i, !dbg !4268

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4269
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4271
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4272

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4273
  br label %kmalloc_index.exit.i, !dbg !4273

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4274
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4276
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4277

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4278
  br label %kmalloc_index.exit.i, !dbg !4278

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4279
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4281
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4282

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4283
  br label %kmalloc_index.exit.i, !dbg !4283

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4284
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4286
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4287

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4288
  br label %kmalloc_index.exit.i, !dbg !4288

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4289
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4291
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4292

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4293
  br label %kmalloc_index.exit.i, !dbg !4293

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4294
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4296
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4297

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4298
  br label %kmalloc_index.exit.i, !dbg !4298

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4299
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4301
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4302

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4303
  br label %kmalloc_index.exit.i, !dbg !4303

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4304
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4306
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4307

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4308
  br label %kmalloc_index.exit.i, !dbg !4308

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4309
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4311
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4312

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4313
  br label %kmalloc_index.exit.i, !dbg !4313

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4314
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4316
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4317

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4318
  br label %kmalloc_index.exit.i, !dbg !4318

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4319
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4321
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4322

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4323
  br label %kmalloc_index.exit.i, !dbg !4323

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4324
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4326
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4327

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4328
  br label %kmalloc_index.exit.i, !dbg !4328

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4329
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4331
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4332

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4333
  br label %kmalloc_index.exit.i, !dbg !4333

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4334
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4336
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4337

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4338
  br label %kmalloc_index.exit.i, !dbg !4338

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4339
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4341
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4342

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4343
  br label %kmalloc_index.exit.i, !dbg !4343

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4344
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4346
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4347

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4348
  br label %kmalloc_index.exit.i, !dbg !4348

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4349
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4351
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4352

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4353
  br label %kmalloc_index.exit.i, !dbg !4353

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4354
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4356
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4357

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4358
  br label %kmalloc_index.exit.i, !dbg !4358

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4359
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4361
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4362

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4363
  br label %kmalloc_index.exit.i, !dbg !4363

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4364
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4366
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4367

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4368
  br label %kmalloc_index.exit.i, !dbg !4368

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4369
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4371
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4372

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4373
  br label %kmalloc_index.exit.i, !dbg !4373

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4374
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4376
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4377

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4378
  br label %kmalloc_index.exit.i, !dbg !4378

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4379
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4381
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4382

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4383
  br label %kmalloc_index.exit.i, !dbg !4383

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !4384, !srcloc !4387
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #7, !dbg !4388, !srcloc !4391
  unreachable, !dbg !4392

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4393
  store i32 %45, i32* %index.i, align 4, !dbg !4394
  %46 = load i32, i32* %index.i, align 4, !dbg !4395
  %tobool.i = icmp ne i32 %46, 0, !dbg !4395
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4397

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4398
  br label %kmalloc.exit, !dbg !4398

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4399
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4400
  %and.i.i = and i32 %48, 17, !dbg !4400
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4400
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4400
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4400
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4400
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4402

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4403
  br label %kmalloc_type.exit.i, !dbg !4403

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4404
  %and2.i.i = and i32 %49, 1, !dbg !4405
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4404
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4404
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4404
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4406
  br label %kmalloc_type.exit.i, !dbg !4406

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4407
  %idxprom.i = zext i32 %51 to i64, !dbg !4408
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4408
  %52 = load i32, i32* %index.i, align 4, !dbg !4409
  %idxprom6.i = zext i32 %52 to i64, !dbg !4408
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4408
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4408
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4410
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4411
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4412
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4413
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !4414
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4414
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4414
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4414
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !4414
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4175
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4415
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4416
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4417
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4418
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !4419
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4420
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4421
  store i8* %62, i8** %retval.i, align 8, !dbg !4422
  br label %kmalloc.exit, !dbg !4422

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4423
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4424
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !4425
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4425
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4425
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4425
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !4425
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4426
  br label %kmalloc.exit, !dbg !4426

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4427
  ret i8* %65, !dbg !4428
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_enable_async_suspend(%struct.device* %dev) #0 !dbg !4429 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4432
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !4434
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !4435
  %bf.load = load i16, i16* %is_prepared, align 4, !dbg !4435
  %bf.lshr = lshr i16 %bf.load, 3, !dbg !4435
  %bf.clear = and i16 %bf.lshr, 1, !dbg !4435
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !4435
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !4436

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4437
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !4438
  %async_suspend = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 1, !dbg !4439
  %bf.load2 = load i16, i16* %async_suspend, align 4, !dbg !4440
  %bf.clear3 = and i16 %bf.load2, -3, !dbg !4440
  %bf.set = or i16 %bf.clear3, 2, !dbg !4440
  store i16 %bf.set, i16* %async_suspend, align 4, !dbg !4440
  br label %if.end, !dbg !4437

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4441
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_remove_ep_devs(%struct.usb_host_endpoint* %endpoint) #0 !dbg !4442 {
entry:
  %endpoint.addr = alloca %struct.usb_host_endpoint*, align 8
  %ep_dev = alloca %struct.ep_device*, align 8
  store %struct.usb_host_endpoint* %endpoint, %struct.usb_host_endpoint** %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_endpoint** %endpoint.addr, metadata !4445, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep_dev, metadata !4447, metadata !DIExpression()), !dbg !4448
  %0 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint.addr, align 8, !dbg !4449
  %ep_dev1 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %0, i32 0, i32 6, !dbg !4450
  %1 = load %struct.ep_device*, %struct.ep_device** %ep_dev1, align 8, !dbg !4450
  store %struct.ep_device* %1, %struct.ep_device** %ep_dev, align 8, !dbg !4448
  %2 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4451
  %tobool = icmp ne %struct.ep_device* %2, null, !dbg !4451
  br i1 %tobool, label %if.then, label %if.end, !dbg !4453

if.then:                                          ; preds = %entry
  %3 = load %struct.ep_device*, %struct.ep_device** %ep_dev, align 8, !dbg !4454
  %dev = getelementptr inbounds %struct.ep_device, %struct.ep_device* %3, i32 0, i32 2, !dbg !4456
  call void @device_unregister(%struct.device* %dev) #6, !dbg !4457
  %4 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint.addr, align 8, !dbg !4458
  %ep_dev2 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %4, i32 0, i32 6, !dbg !4459
  store %struct.ep_device* null, %struct.ep_device** %ep_dev2, align 8, !dbg !4460
  br label %if.end, !dbg !4461

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4462
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !4463 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4467, metadata !DIExpression()), !dbg !4472
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4474, metadata !DIExpression()), !dbg !4475
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4476, metadata !DIExpression()), !dbg !4477
  %0 = load i64, i64* %size.addr, align 8, !dbg !4478
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4480
  br i1 %1, label %if.then, label %if.end447, !dbg !4481

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4482
  %tobool = icmp ne i64 %2, 0, !dbg !4482
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4485

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4486
  br label %return, !dbg !4486

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4487
  %cmp = icmp ult i64 %3, 4096, !dbg !4489
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4490

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub = sub i64 %4, 1, !dbg !4492
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4492
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4492

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub4 = sub i64 %6, 1, !dbg !4492
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4492
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4492

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub6 = sub i64 %8, 1, !dbg !4492
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4492
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4492

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4492

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub9 = sub i64 %9, 1, !dbg !4492
  %and = and i64 %sub9, -9223372036854775808, !dbg !4492
  %tobool10 = icmp ne i64 %and, 0, !dbg !4492
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4492

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4492

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub13 = sub i64 %10, 1, !dbg !4492
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4492
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4492
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4492

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4492

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub18 = sub i64 %11, 1, !dbg !4492
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4492
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4492
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4492

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4492

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub23 = sub i64 %12, 1, !dbg !4492
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4492
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4492
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4492

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4492

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub28 = sub i64 %13, 1, !dbg !4492
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4492
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4492
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4492

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4492

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub33 = sub i64 %14, 1, !dbg !4492
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4492
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4492
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4492

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4492

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub38 = sub i64 %15, 1, !dbg !4492
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4492
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4492
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4492

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4492

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub43 = sub i64 %16, 1, !dbg !4492
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4492
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4492
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4492

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4492

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub48 = sub i64 %17, 1, !dbg !4492
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4492
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4492
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4492

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4492

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub53 = sub i64 %18, 1, !dbg !4492
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4492
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4492
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4492

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4492

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub58 = sub i64 %19, 1, !dbg !4492
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4492
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4492
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4492

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4492

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub63 = sub i64 %20, 1, !dbg !4492
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4492
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4492
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4492

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4492

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub68 = sub i64 %21, 1, !dbg !4492
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4492
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4492
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4492

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4492

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub73 = sub i64 %22, 1, !dbg !4492
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4492
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4492
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4492

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4492

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub78 = sub i64 %23, 1, !dbg !4492
  %and79 = and i64 %sub78, 562949953421312, !dbg !4492
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4492
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4492

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4492

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub83 = sub i64 %24, 1, !dbg !4492
  %and84 = and i64 %sub83, 281474976710656, !dbg !4492
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4492
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4492

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4492

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub88 = sub i64 %25, 1, !dbg !4492
  %and89 = and i64 %sub88, 140737488355328, !dbg !4492
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4492
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4492

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4492

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub93 = sub i64 %26, 1, !dbg !4492
  %and94 = and i64 %sub93, 70368744177664, !dbg !4492
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4492
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4492

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4492

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub98 = sub i64 %27, 1, !dbg !4492
  %and99 = and i64 %sub98, 35184372088832, !dbg !4492
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4492
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4492

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4492

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub103 = sub i64 %28, 1, !dbg !4492
  %and104 = and i64 %sub103, 17592186044416, !dbg !4492
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4492
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4492

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4492

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub108 = sub i64 %29, 1, !dbg !4492
  %and109 = and i64 %sub108, 8796093022208, !dbg !4492
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4492
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4492

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4492

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub113 = sub i64 %30, 1, !dbg !4492
  %and114 = and i64 %sub113, 4398046511104, !dbg !4492
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4492
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4492

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4492

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub118 = sub i64 %31, 1, !dbg !4492
  %and119 = and i64 %sub118, 2199023255552, !dbg !4492
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4492
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4492

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4492

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub123 = sub i64 %32, 1, !dbg !4492
  %and124 = and i64 %sub123, 1099511627776, !dbg !4492
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4492
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4492

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4492

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub128 = sub i64 %33, 1, !dbg !4492
  %and129 = and i64 %sub128, 549755813888, !dbg !4492
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4492
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4492

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4492

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub133 = sub i64 %34, 1, !dbg !4492
  %and134 = and i64 %sub133, 274877906944, !dbg !4492
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4492
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4492

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4492

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub138 = sub i64 %35, 1, !dbg !4492
  %and139 = and i64 %sub138, 137438953472, !dbg !4492
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4492
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4492

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4492

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub143 = sub i64 %36, 1, !dbg !4492
  %and144 = and i64 %sub143, 68719476736, !dbg !4492
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4492
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4492

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4492

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub148 = sub i64 %37, 1, !dbg !4492
  %and149 = and i64 %sub148, 34359738368, !dbg !4492
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4492
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4492

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4492

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub153 = sub i64 %38, 1, !dbg !4492
  %and154 = and i64 %sub153, 17179869184, !dbg !4492
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4492
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4492

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4492

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub158 = sub i64 %39, 1, !dbg !4492
  %and159 = and i64 %sub158, 8589934592, !dbg !4492
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4492
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4492

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4492

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub163 = sub i64 %40, 1, !dbg !4492
  %and164 = and i64 %sub163, 4294967296, !dbg !4492
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4492
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4492

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4492

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub168 = sub i64 %41, 1, !dbg !4492
  %and169 = and i64 %sub168, 2147483648, !dbg !4492
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4492
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4492

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4492

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub173 = sub i64 %42, 1, !dbg !4492
  %and174 = and i64 %sub173, 1073741824, !dbg !4492
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4492
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4492

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4492

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub178 = sub i64 %43, 1, !dbg !4492
  %and179 = and i64 %sub178, 536870912, !dbg !4492
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4492
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4492

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4492

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub183 = sub i64 %44, 1, !dbg !4492
  %and184 = and i64 %sub183, 268435456, !dbg !4492
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4492
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4492

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4492

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub188 = sub i64 %45, 1, !dbg !4492
  %and189 = and i64 %sub188, 134217728, !dbg !4492
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4492
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4492

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4492

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub193 = sub i64 %46, 1, !dbg !4492
  %and194 = and i64 %sub193, 67108864, !dbg !4492
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4492
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4492

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4492

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub198 = sub i64 %47, 1, !dbg !4492
  %and199 = and i64 %sub198, 33554432, !dbg !4492
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4492
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4492

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4492

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub203 = sub i64 %48, 1, !dbg !4492
  %and204 = and i64 %sub203, 16777216, !dbg !4492
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4492
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4492

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4492

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub208 = sub i64 %49, 1, !dbg !4492
  %and209 = and i64 %sub208, 8388608, !dbg !4492
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4492
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4492

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4492

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub213 = sub i64 %50, 1, !dbg !4492
  %and214 = and i64 %sub213, 4194304, !dbg !4492
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4492
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4492

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4492

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub218 = sub i64 %51, 1, !dbg !4492
  %and219 = and i64 %sub218, 2097152, !dbg !4492
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4492
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4492

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4492

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub223 = sub i64 %52, 1, !dbg !4492
  %and224 = and i64 %sub223, 1048576, !dbg !4492
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4492
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4492

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4492

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub228 = sub i64 %53, 1, !dbg !4492
  %and229 = and i64 %sub228, 524288, !dbg !4492
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4492
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4492

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4492

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub233 = sub i64 %54, 1, !dbg !4492
  %and234 = and i64 %sub233, 262144, !dbg !4492
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4492
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4492

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4492

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub238 = sub i64 %55, 1, !dbg !4492
  %and239 = and i64 %sub238, 131072, !dbg !4492
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4492
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4492

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4492

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub243 = sub i64 %56, 1, !dbg !4492
  %and244 = and i64 %sub243, 65536, !dbg !4492
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4492
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4492

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4492

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub248 = sub i64 %57, 1, !dbg !4492
  %and249 = and i64 %sub248, 32768, !dbg !4492
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4492
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4492

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4492

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub253 = sub i64 %58, 1, !dbg !4492
  %and254 = and i64 %sub253, 16384, !dbg !4492
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4492
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4492

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4492

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub258 = sub i64 %59, 1, !dbg !4492
  %and259 = and i64 %sub258, 8192, !dbg !4492
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4492
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4492

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4492

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub263 = sub i64 %60, 1, !dbg !4492
  %and264 = and i64 %sub263, 4096, !dbg !4492
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4492
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4492

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4492

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub268 = sub i64 %61, 1, !dbg !4492
  %and269 = and i64 %sub268, 2048, !dbg !4492
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4492
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4492

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4492

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub273 = sub i64 %62, 1, !dbg !4492
  %and274 = and i64 %sub273, 1024, !dbg !4492
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4492
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4492

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4492

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub278 = sub i64 %63, 1, !dbg !4492
  %and279 = and i64 %sub278, 512, !dbg !4492
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4492
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4492

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4492

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub283 = sub i64 %64, 1, !dbg !4492
  %and284 = and i64 %sub283, 256, !dbg !4492
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4492
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4492

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4492

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub288 = sub i64 %65, 1, !dbg !4492
  %and289 = and i64 %sub288, 128, !dbg !4492
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4492
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4492

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4492

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub293 = sub i64 %66, 1, !dbg !4492
  %and294 = and i64 %sub293, 64, !dbg !4492
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4492
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4492

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4492

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub298 = sub i64 %67, 1, !dbg !4492
  %and299 = and i64 %sub298, 32, !dbg !4492
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4492
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4492

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4492

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub303 = sub i64 %68, 1, !dbg !4492
  %and304 = and i64 %sub303, 16, !dbg !4492
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4492
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4492

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4492

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub308 = sub i64 %69, 1, !dbg !4492
  %and309 = and i64 %sub308, 8, !dbg !4492
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4492
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4492

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4492

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub313 = sub i64 %70, 1, !dbg !4492
  %and314 = and i64 %sub313, 4, !dbg !4492
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4492
  %71 = zext i1 %tobool315 to i64, !dbg !4492
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4492
  br label %cond.end, !dbg !4492

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4492
  br label %cond.end317, !dbg !4492

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4492
  br label %cond.end319, !dbg !4492

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4492
  br label %cond.end321, !dbg !4492

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4492
  br label %cond.end323, !dbg !4492

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4492
  br label %cond.end325, !dbg !4492

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4492
  br label %cond.end327, !dbg !4492

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4492
  br label %cond.end329, !dbg !4492

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4492
  br label %cond.end331, !dbg !4492

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4492
  br label %cond.end333, !dbg !4492

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4492
  br label %cond.end335, !dbg !4492

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4492
  br label %cond.end337, !dbg !4492

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4492
  br label %cond.end339, !dbg !4492

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4492
  br label %cond.end341, !dbg !4492

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4492
  br label %cond.end343, !dbg !4492

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4492
  br label %cond.end345, !dbg !4492

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4492
  br label %cond.end347, !dbg !4492

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4492
  br label %cond.end349, !dbg !4492

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4492
  br label %cond.end351, !dbg !4492

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4492
  br label %cond.end353, !dbg !4492

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4492
  br label %cond.end355, !dbg !4492

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4492
  br label %cond.end357, !dbg !4492

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4492
  br label %cond.end359, !dbg !4492

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4492
  br label %cond.end361, !dbg !4492

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4492
  br label %cond.end363, !dbg !4492

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4492
  br label %cond.end365, !dbg !4492

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4492
  br label %cond.end367, !dbg !4492

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4492
  br label %cond.end369, !dbg !4492

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4492
  br label %cond.end371, !dbg !4492

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4492
  br label %cond.end373, !dbg !4492

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4492
  br label %cond.end375, !dbg !4492

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4492
  br label %cond.end377, !dbg !4492

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4492
  br label %cond.end379, !dbg !4492

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4492
  br label %cond.end381, !dbg !4492

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4492
  br label %cond.end383, !dbg !4492

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4492
  br label %cond.end385, !dbg !4492

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4492
  br label %cond.end387, !dbg !4492

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4492
  br label %cond.end389, !dbg !4492

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4492
  br label %cond.end391, !dbg !4492

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4492
  br label %cond.end393, !dbg !4492

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4492
  br label %cond.end395, !dbg !4492

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4492
  br label %cond.end397, !dbg !4492

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4492
  br label %cond.end399, !dbg !4492

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4492
  br label %cond.end401, !dbg !4492

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4492
  br label %cond.end403, !dbg !4492

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4492
  br label %cond.end405, !dbg !4492

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4492
  br label %cond.end407, !dbg !4492

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4492
  br label %cond.end409, !dbg !4492

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4492
  br label %cond.end411, !dbg !4492

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4492
  br label %cond.end413, !dbg !4492

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4492
  br label %cond.end415, !dbg !4492

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4492
  br label %cond.end417, !dbg !4492

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4492
  br label %cond.end419, !dbg !4492

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4492
  br label %cond.end421, !dbg !4492

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4492
  br label %cond.end423, !dbg !4492

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4492
  br label %cond.end425, !dbg !4492

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4492
  br label %cond.end427, !dbg !4492

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4492
  br label %cond.end429, !dbg !4492

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4492
  br label %cond.end431, !dbg !4492

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4492
  br label %cond.end433, !dbg !4492

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4492
  br label %cond.end435, !dbg !4492

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4492
  br label %cond.end437, !dbg !4492

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4492
  br label %cond.end440, !dbg !4492

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4492

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4492
  br label %cond.end444, !dbg !4492

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4492
  %sub443 = sub i64 %72, 1, !dbg !4492
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !4492
  br label %cond.end444, !dbg !4492

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4492
  %sub446 = sub i32 %cond445, 12, !dbg !4493
  %add = add i32 %sub446, 1, !dbg !4494
  store i32 %add, i32* %retval, align 4, !dbg !4495
  br label %return, !dbg !4495

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4496
  %dec = add i64 %73, -1, !dbg !4496
  store i64 %dec, i64* %size.addr, align 8, !dbg !4496
  %74 = load i64, i64* %size.addr, align 8, !dbg !4497
  %shr = lshr i64 %74, 12, !dbg !4497
  store i64 %shr, i64* %size.addr, align 8, !dbg !4497
  %75 = load i64, i64* %size.addr, align 8, !dbg !4498
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4475
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4499
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4500
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !4499, !srcloc !4501
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4499
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4502
  %add.i = add i32 %79, 1, !dbg !4503
  store i32 %add.i, i32* %retval, align 4, !dbg !4504
  br label %return, !dbg !4504

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4505
  ret i32 %80, !dbg !4505
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !4506 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4467, metadata !DIExpression()), !dbg !4510
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4474, metadata !DIExpression()), !dbg !4512
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  %0 = load i64, i64* %n.addr, align 8, !dbg !4515
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4512
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4516
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4517
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !4516, !srcloc !4501
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4516
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4518
  %add.i = add i32 %4, 1, !dbg !4519
  %sub = sub i32 %add.i, 1, !dbg !4520
  ret i32 %sub, !dbg !4521
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4522 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4534
  ret i8* %0, !dbg !4535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bLength_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4536 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4537, metadata !DIExpression()), !dbg !4538
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4539, metadata !DIExpression()), !dbg !4538
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4540, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4541, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4542, metadata !DIExpression()), !dbg !4544
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4544
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4544
  store i8* %1, i8** %__mptr, align 8, !dbg !4544
  br label %do.body, !dbg !4544

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4545

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4544
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4544
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4544
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4545
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4544
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4538
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4538
  %6 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4538
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %6, i32 0, i32 0, !dbg !4538
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4538
  %bLength = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %7, i32 0, i32 0, !dbg !4538
  %8 = load i8, i8* %bLength, align 1, !dbg !4538
  %conv = zext i8 %8 to i32, !dbg !4538
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %conv) #6, !dbg !4538
  %conv1 = sext i32 %call to i64, !dbg !4538
  ret i64 %conv1, !dbg !4538
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bEndpointAddress_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4547 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4550, metadata !DIExpression()), !dbg !4549
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4551, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4552, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4553, metadata !DIExpression()), !dbg !4555
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4555
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4555
  store i8* %1, i8** %__mptr, align 8, !dbg !4555
  br label %do.body, !dbg !4555

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4556

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4555
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4555
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4555
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4556
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4555
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4549
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4549
  %6 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4549
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %6, i32 0, i32 0, !dbg !4549
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4549
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %7, i32 0, i32 2, !dbg !4549
  %8 = load i8, i8* %bEndpointAddress, align 1, !dbg !4549
  %conv = zext i8 %8 to i32, !dbg !4549
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %conv) #6, !dbg !4549
  %conv1 = sext i32 %call to i64, !dbg !4549
  ret i64 %conv1, !dbg !4549
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bmAttributes_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4558 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4561, metadata !DIExpression()), !dbg !4560
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4562, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4563, metadata !DIExpression()), !dbg !4560
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4564, metadata !DIExpression()), !dbg !4566
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4566
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4566
  store i8* %1, i8** %__mptr, align 8, !dbg !4566
  br label %do.body, !dbg !4566

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4567

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4566
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4566
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4566
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4567
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4566
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4560
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4560
  %6 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4560
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %6, i32 0, i32 0, !dbg !4560
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4560
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %7, i32 0, i32 3, !dbg !4560
  %8 = load i8, i8* %bmAttributes, align 1, !dbg !4560
  %conv = zext i8 %8 to i32, !dbg !4560
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %conv) #6, !dbg !4560
  %conv1 = sext i32 %call to i64, !dbg !4560
  ret i64 %conv1, !dbg !4560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bInterval_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4569 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4572, metadata !DIExpression()), !dbg !4571
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4573, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4574, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4575, metadata !DIExpression()), !dbg !4577
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4577
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4577
  store i8* %1, i8** %__mptr, align 8, !dbg !4577
  br label %do.body, !dbg !4577

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4578

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4577
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4577
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4577
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4578
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4577
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4571
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4571
  %6 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4571
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %6, i32 0, i32 0, !dbg !4571
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4571
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %7, i32 0, i32 5, !dbg !4571
  %8 = load i8, i8* %bInterval, align 1, !dbg !4571
  %conv = zext i8 %8 to i32, !dbg !4571
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %conv) #6, !dbg !4571
  %conv1 = sext i32 %call to i64, !dbg !4571
  ret i64 %conv1, !dbg !4571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wMaxPacketSize_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4580 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4589, metadata !DIExpression()), !dbg !4591
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4591
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4591
  store i8* %1, i8** %__mptr, align 8, !dbg !4591
  br label %do.body, !dbg !4591

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4592

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4591
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4591
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4591
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4592
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4591
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4588
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4594
  %6 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4595
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %6, i32 0, i32 0, !dbg !4596
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4596
  %call = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %7) #6, !dbg !4597
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %call) #6, !dbg !4598
  %conv = sext i32 %call1 to i64, !dbg !4598
  ret i64 %conv, !dbg !4599
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #0 !dbg !4600 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4605, metadata !DIExpression()), !dbg !4606
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4607
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !4607
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !4607
  %conv = zext i16 %1 to i32, !dbg !4607
  %and = and i32 %conv, 2047, !dbg !4608
  ret i32 %and, !dbg !4609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @interval_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4610 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  %unit = alloca i8, align 1
  %interval = alloca i32, align 4
  %in = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4619, metadata !DIExpression()), !dbg !4621
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4621
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4621
  store i8* %1, i8** %__mptr, align 8, !dbg !4621
  br label %do.body, !dbg !4621

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4622

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4621
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4621
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4621
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4622
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4621
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4618
  call void @llvm.dbg.declare(metadata i8* %unit, metadata !4624, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.declare(metadata i32* %interval, metadata !4626, metadata !DIExpression()), !dbg !4627
  store i32 0, i32* %interval, align 4, !dbg !4627
  call void @llvm.dbg.declare(metadata i32* %in, metadata !4628, metadata !DIExpression()), !dbg !4629
  %5 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4630
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %5, i32 0, i32 0, !dbg !4631
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4631
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %6, i32 0, i32 2, !dbg !4632
  %7 = load i8, i8* %bEndpointAddress, align 1, !dbg !4632
  %conv = zext i8 %7 to i32, !dbg !4630
  %and = and i32 %conv, 128, !dbg !4633
  store i32 %and, i32* %in, align 4, !dbg !4634
  %8 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4635
  %desc1 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %8, i32 0, i32 0, !dbg !4636
  %9 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc1, align 8, !dbg !4636
  %call = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %9) #6, !dbg !4637
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb9
    i32 3, label %sw.bb19
  ], !dbg !4638

sw.bb:                                            ; preds = %do.end
  %10 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4639
  %udev = getelementptr inbounds %struct.ep_device, %struct.ep_device* %10, i32 0, i32 1, !dbg !4642
  %11 = load %struct.usb_device*, %struct.usb_device** %udev, align 8, !dbg !4642
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 4, !dbg !4643
  %12 = load i32, i32* %speed, align 4, !dbg !4643
  %cmp = icmp eq i32 %12, 3, !dbg !4644
  br i1 %cmp, label %if.then, label %if.end, !dbg !4645

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4646
  %desc3 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %13, i32 0, i32 0, !dbg !4647
  %14 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc3, align 8, !dbg !4647
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %14, i32 0, i32 5, !dbg !4648
  %15 = load i8, i8* %bInterval, align 1, !dbg !4648
  %conv4 = zext i8 %15 to i32, !dbg !4646
  store i32 %conv4, i32* %interval, align 4, !dbg !4649
  br label %if.end, !dbg !4650

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !4651

sw.bb5:                                           ; preds = %do.end
  %16 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4652
  %desc6 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %16, i32 0, i32 0, !dbg !4653
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc6, align 8, !dbg !4653
  %bInterval7 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %17, i32 0, i32 5, !dbg !4654
  %18 = load i8, i8* %bInterval7, align 1, !dbg !4654
  %conv8 = zext i8 %18 to i32, !dbg !4652
  %sub = sub i32 %conv8, 1, !dbg !4655
  %shl = shl i32 1, %sub, !dbg !4656
  store i32 %shl, i32* %interval, align 4, !dbg !4657
  br label %sw.epilog, !dbg !4658

sw.bb9:                                           ; preds = %do.end
  %19 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4659
  %udev10 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %19, i32 0, i32 1, !dbg !4661
  %20 = load %struct.usb_device*, %struct.usb_device** %udev10, align 8, !dbg !4661
  %speed11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 4, !dbg !4662
  %21 = load i32, i32* %speed11, align 4, !dbg !4662
  %cmp12 = icmp eq i32 %21, 3, !dbg !4663
  br i1 %cmp12, label %land.lhs.true, label %if.end18, !dbg !4664

land.lhs.true:                                    ; preds = %sw.bb9
  %22 = load i32, i32* %in, align 4, !dbg !4665
  %tobool = icmp ne i32 %22, 0, !dbg !4665
  br i1 %tobool, label %if.end18, label %if.then14, !dbg !4666

if.then14:                                        ; preds = %land.lhs.true
  %23 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4667
  %desc15 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %23, i32 0, i32 0, !dbg !4668
  %24 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc15, align 8, !dbg !4668
  %bInterval16 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %24, i32 0, i32 5, !dbg !4669
  %25 = load i8, i8* %bInterval16, align 1, !dbg !4669
  %conv17 = zext i8 %25 to i32, !dbg !4667
  store i32 %conv17, i32* %interval, align 4, !dbg !4670
  br label %if.end18, !dbg !4671

if.end18:                                         ; preds = %if.then14, %land.lhs.true, %sw.bb9
  br label %sw.epilog, !dbg !4672

sw.bb19:                                          ; preds = %do.end
  %26 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4673
  %udev20 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %26, i32 0, i32 1, !dbg !4675
  %27 = load %struct.usb_device*, %struct.usb_device** %udev20, align 8, !dbg !4675
  %speed21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 4, !dbg !4676
  %28 = load i32, i32* %speed21, align 4, !dbg !4676
  %cmp22 = icmp eq i32 %28, 3, !dbg !4677
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !4678

if.then24:                                        ; preds = %sw.bb19
  %29 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4679
  %desc25 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %29, i32 0, i32 0, !dbg !4680
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc25, align 8, !dbg !4680
  %bInterval26 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %30, i32 0, i32 5, !dbg !4681
  %31 = load i8, i8* %bInterval26, align 1, !dbg !4681
  %conv27 = zext i8 %31 to i32, !dbg !4679
  %sub28 = sub i32 %conv27, 1, !dbg !4682
  %shl29 = shl i32 1, %sub28, !dbg !4683
  store i32 %shl29, i32* %interval, align 4, !dbg !4684
  br label %if.end33, !dbg !4685

if.else:                                          ; preds = %sw.bb19
  %32 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4686
  %desc30 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %32, i32 0, i32 0, !dbg !4687
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc30, align 8, !dbg !4687
  %bInterval31 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %33, i32 0, i32 5, !dbg !4688
  %34 = load i8, i8* %bInterval31, align 1, !dbg !4688
  %conv32 = zext i8 %34 to i32, !dbg !4686
  store i32 %conv32, i32* %interval, align 4, !dbg !4689
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then24
  br label %sw.epilog, !dbg !4690

sw.epilog:                                        ; preds = %do.end, %if.end33, %if.end18, %sw.bb5, %if.end
  %35 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4691
  %udev34 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %35, i32 0, i32 1, !dbg !4692
  %36 = load %struct.usb_device*, %struct.usb_device** %udev34, align 8, !dbg !4692
  %speed35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 4, !dbg !4693
  %37 = load i32, i32* %speed35, align 4, !dbg !4693
  %cmp36 = icmp eq i32 %37, 3, !dbg !4694
  %38 = zext i1 %cmp36 to i64, !dbg !4695
  %cond = select i1 %cmp36, i32 125, i32 1000, !dbg !4695
  %39 = load i32, i32* %interval, align 4, !dbg !4696
  %mul = mul i32 %39, %cond, !dbg !4696
  store i32 %mul, i32* %interval, align 4, !dbg !4696
  %40 = load i32, i32* %interval, align 4, !dbg !4697
  %rem = urem i32 %40, 1000, !dbg !4699
  %tobool38 = icmp ne i32 %rem, 0, !dbg !4699
  br i1 %tobool38, label %if.then39, label %if.else40, !dbg !4700

if.then39:                                        ; preds = %sw.epilog
  store i8 117, i8* %unit, align 1, !dbg !4701
  br label %if.end41, !dbg !4702

if.else40:                                        ; preds = %sw.epilog
  store i8 109, i8* %unit, align 1, !dbg !4703
  %41 = load i32, i32* %interval, align 4, !dbg !4705
  %div = udiv i32 %41, 1000, !dbg !4705
  store i32 %div, i32* %interval, align 4, !dbg !4705
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  %42 = load i8*, i8** %buf.addr, align 8, !dbg !4706
  %43 = load i32, i32* %interval, align 4, !dbg !4707
  %44 = load i8, i8* %unit, align 1, !dbg !4708
  %conv42 = sext i8 %44 to i32, !dbg !4708
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %43, i32 %conv42) #6, !dbg !4709
  %conv44 = sext i32 %call43 to i64, !dbg !4709
  ret i64 %conv44, !dbg !4710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %epd) #0 !dbg !4711 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4712, metadata !DIExpression()), !dbg !4713
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4714
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !4715
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !4715
  %conv = zext i8 %1 to i32, !dbg !4714
  %and = and i32 %conv, 3, !dbg !4716
  ret i32 %and, !dbg !4717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4718 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  %type = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4723, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4725, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4727, metadata !DIExpression()), !dbg !4729
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4729
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4729
  store i8* %1, i8** %__mptr, align 8, !dbg !4729
  br label %do.body, !dbg !4729

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4730

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4729
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4729
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4729
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4730
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4729
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4726
  call void @llvm.dbg.declare(metadata i8** %type, metadata !4732, metadata !DIExpression()), !dbg !4733
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %type, align 8, !dbg !4733
  %5 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4734
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %5, i32 0, i32 0, !dbg !4735
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4735
  %call = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %6) #6, !dbg !4736
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
  ], !dbg !4737

sw.bb:                                            ; preds = %do.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %type, align 8, !dbg !4738
  br label %sw.epilog, !dbg !4740

sw.bb1:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %type, align 8, !dbg !4741
  br label %sw.epilog, !dbg !4742

sw.bb2:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8** %type, align 8, !dbg !4743
  br label %sw.epilog, !dbg !4744

sw.bb3:                                           ; preds = %do.end
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %type, align 8, !dbg !4745
  br label %sw.epilog, !dbg !4746

sw.epilog:                                        ; preds = %do.end, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !4747
  %8 = load i8*, i8** %type, align 8, !dbg !4748
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %8) #6, !dbg !4749
  %conv = sext i32 %call4 to i64, !dbg !4749
  ret i64 %conv, !dbg !4750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @direction_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4751 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ep = alloca %struct.ep_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ep_device*, align 8
  %direction = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  call void @llvm.dbg.declare(metadata %struct.ep_device** %ep, metadata !4758, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4760, metadata !DIExpression()), !dbg !4762
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4762
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4762
  store i8* %1, i8** %__mptr, align 8, !dbg !4762
  br label %do.body, !dbg !4762

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4763

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4762
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4762
  %3 = bitcast i8* %add.ptr to %struct.ep_device*, !dbg !4762
  store %struct.ep_device* %3, %struct.ep_device** %tmp, align 8, !dbg !4763
  %4 = load %struct.ep_device*, %struct.ep_device** %tmp, align 8, !dbg !4762
  store %struct.ep_device* %4, %struct.ep_device** %ep, align 8, !dbg !4759
  call void @llvm.dbg.declare(metadata i8** %direction, metadata !4765, metadata !DIExpression()), !dbg !4766
  %5 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4767
  %desc = getelementptr inbounds %struct.ep_device, %struct.ep_device* %5, i32 0, i32 0, !dbg !4769
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc, align 8, !dbg !4769
  %call = call i32 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %6) #6, !dbg !4770
  %tobool = icmp ne i32 %call, 0, !dbg !4770
  br i1 %tobool, label %if.then, label %if.else, !dbg !4771

if.then:                                          ; preds = %do.end
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %direction, align 8, !dbg !4772
  br label %if.end6, !dbg !4773

if.else:                                          ; preds = %do.end
  %7 = load %struct.ep_device*, %struct.ep_device** %ep, align 8, !dbg !4774
  %desc1 = getelementptr inbounds %struct.ep_device, %struct.ep_device* %7, i32 0, i32 0, !dbg !4776
  %8 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc1, align 8, !dbg !4776
  %call2 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %8) #6, !dbg !4777
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4777
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !4778

if.then4:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8** %direction, align 8, !dbg !4779
  br label %if.end, !dbg !4780

if.else5:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8** %direction, align 8, !dbg !4781
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4782
  %10 = load i8*, i8** %direction, align 8, !dbg !4783
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %10) #6, !dbg !4784
  %conv = sext i32 %call7 to i64, !dbg !4784
  ret i64 %conv, !dbg !4785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %epd) #0 !dbg !4786 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4787, metadata !DIExpression()), !dbg !4788
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4789
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !4790
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !4790
  %conv = zext i8 %1 to i32, !dbg !4789
  %and = and i32 %conv, 3, !dbg !4791
  %cmp = icmp eq i32 %and, 0, !dbg !4792
  %conv1 = zext i1 %cmp to i32, !dbg !4792
  ret i32 %conv1, !dbg !4793
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #0 !dbg !4794 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !4797
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !4798
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !4798
  %conv = zext i8 %1 to i32, !dbg !4797
  %and = and i32 %conv, 128, !dbg !4799
  %cmp = icmp eq i32 %and, 128, !dbg !4800
  %conv1 = zext i1 %cmp to i32, !dbg !4800
  ret i32 %conv1, !dbg !4801
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4063, !4064, !4065, !4066}
!llvm.ident = !{!4067}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "usb_ep_device_type", scope: !2, file: !3, line: 171, type: !3218, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !139, globals: !4026, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/endpoint.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !66, !74, !80, !94, !106, !115, !122, !127, !134}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !31, line: 54, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !37, line: 296, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43, !44}
!39 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !81, line: 76, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !95, line: 1156, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105}
!97 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!101 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!102 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!103 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!104 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!105 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !95, line: 1146, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114}
!108 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !116, line: 96, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!119 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!121 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !116, line: 476, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !128, line: 305, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 10, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!139 = !{!140, !142, !143, !160, !158}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !141, line: 148, baseType: !7)
!141 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !3, line: 20, size: 5696, elements: !145)
!145 = !{!146, !165, !4025}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !144, file: !3, line: 21, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !95, line: 407, size: 72, elements: !149)
!149 = !{!150, !154, !155, !156, !157, !162, !163, !164}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !148, file: !95, line: 408, baseType: !151, size: 8)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !152, line: 21, baseType: !153)
!152 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !148, file: !95, line: 409, baseType: !151, size: 8, offset: 8)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !148, file: !95, line: 411, baseType: !151, size: 8, offset: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !148, file: !95, line: 412, baseType: !151, size: 8, offset: 24)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !148, file: !95, line: 413, baseType: !158, size: 16, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !159, line: 29, baseType: !160)
!159 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !152, line: 24, baseType: !161)
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !148, file: !95, line: 414, baseType: !151, size: 8, offset: 48)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !148, file: !95, line: 418, baseType: !151, size: 8, offset: 56)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !148, file: !95, line: 419, baseType: !151, size: 8, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !144, file: !3, line: 22, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !116, line: 631, size: 10624, elements: !168)
!168 = !{!169, !171, !176, !180, !181, !182, !183, !184, !187, !188, !192, !193, !3779, !3807, !3808, !3825, !3886, !3968, !3969, !3971, !3972, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4007, !4008, !4009, !4014, !4021, !4022, !4023, !4024}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !167, file: !116, line: 632, baseType: !170, size: 32)
!170 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !167, file: !116, line: 633, baseType: !172, size: 128, offset: 32)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !174)
!173 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!174 = !{!175}
!175 = !DISubrange(count: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !167, file: !116, line: 634, baseType: !177, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !178, line: 21, baseType: !179)
!178 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !152, line: 27, baseType: !7)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !167, file: !116, line: 635, baseType: !94, size: 32, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !167, file: !116, line: 636, baseType: !106, size: 32, offset: 224)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !167, file: !116, line: 637, baseType: !7, size: 32, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !167, file: !116, line: 638, baseType: !7, size: 32, offset: 288)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !167, file: !116, line: 640, baseType: !185, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !116, line: 474, flags: DIFlagFwdDecl)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !167, file: !116, line: 641, baseType: !170, size: 32, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !167, file: !116, line: 643, baseType: !189, size: 64, offset: 416)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 2)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !116, line: 645, baseType: !166, size: 64, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !167, file: !116, line: 646, baseType: !194, size: 64, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !116, line: 424, size: 960, elements: !196)
!196 = !{!197, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3773, !3774, !3775, !3776, !3777, !3778}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !195, file: !116, line: 425, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !200)
!200 = !{!201, !3210, !3211, !3214, !3215, !3266, !3357, !3358, !3359, !3360, !3361, !3370, !3475, !3488, !3683, !3684, !3688, !3690, !3691, !3692, !3696, !3702, !3703, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3744, !3745, !3746, !3749, !3752, !3753, !3754, !3755}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !199, file: !60, line: 462, baseType: !202, size: 512)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !203, line: 64, size: 512, elements: !204)
!203 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !208, !214, !216, !276, !3061, !3200, !3205, !3206, !3207, !3208, !3209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !203, line: 65, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !202, file: !203, line: 66, baseType: !209, size: 128, offset: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !141, line: 178, size: 128, elements: !210)
!210 = !{!211, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !141, line: 179, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !209, file: !141, line: 179, baseType: !212, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !203, line: 67, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !202, file: !203, line: 68, baseType: !217, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !203, line: 192, size: 704, elements: !219)
!219 = !{!220, !221, !237, !238}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !218, file: !203, line: 193, baseType: !209, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !218, file: !203, line: 194, baseType: !222, offset: 128)
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
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !218, file: !203, line: 195, baseType: !202, size: 512, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !218, file: !203, line: 196, baseType: !239, size: 64, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !203, line: 156, size: 192, elements: !242)
!242 = !{!243, !248, !253}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !241, file: !203, line: 157, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!170, !217, !215}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !203, line: 158, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!206, !217, !215}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !241, file: !203, line: 159, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!170, !217, !215, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !203, line: 148, size: 20736, elements: !260)
!260 = !{!261, !266, !270, !271, !275}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !259, file: !203, line: 149, baseType: !262, size: 192)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 192, elements: !264)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!264 = !{!265}
!265 = !DISubrange(count: 3)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !259, file: !203, line: 150, baseType: !267, size: 4096, offset: 192)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 4096, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !259, file: !203, line: 151, baseType: !170, size: 32, offset: 4288)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !259, file: !203, line: 152, baseType: !272, size: 16384, offset: 4320)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 16384, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !259, file: !203, line: 153, baseType: !170, size: 32, offset: 20704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !202, file: !203, line: 69, baseType: !277, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !203, line: 138, size: 448, elements: !279)
!279 = !{!280, !284, !313, !315, !3023, !3051, !3055}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !278, file: !203, line: 139, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !215}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !278, file: !203, line: 140, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !288, line: 230, size: 128, elements: !289)
!288 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!289 = !{!290, !305}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !287, file: !288, line: 231, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !215, !299, !263}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !141, line: 60, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !296, line: 73, baseType: !297)
!296 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !296, line: 15, baseType: !298)
!298 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !288, line: 30, size: 128, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !288, line: 31, baseType: !206, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !300, file: !288, line: 32, baseType: !304, size: 16, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !141, line: 19, baseType: !161)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !287, file: !288, line: 232, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!294, !215, !299, !206, !309}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 55, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !296, line: 72, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !296, line: 16, baseType: !312)
!312 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !278, file: !203, line: 141, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !278, file: !203, line: 142, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !288, line: 84, size: 320, elements: !320)
!320 = !{!321, !322, !326, !3020, !3021}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !288, line: 85, baseType: !206, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !319, file: !288, line: 86, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!304, !215, !299, !170}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !319, file: !288, line: 88, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!304, !215, !330, !170}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !288, line: 168, size: 448, elements: !332)
!332 = !{!333, !334, !335, !336, !3015, !3016}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !331, file: !288, line: 169, baseType: !300, size: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !331, file: !288, line: 170, baseType: !309, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !331, file: !288, line: 171, baseType: !142, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !331, file: !288, line: 172, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!294, !340, !215, !330, !263, !514, !309}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !342)
!342 = !{!343, !361, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2998, !2999, !3008, !3009, !3010, !3011, !3012, !3013, !3014}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !341, file: !37, line: 920, baseType: !344, size: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !37, line: 917, size: 128, elements: !345)
!345 = !{!346, !352}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !344, file: !37, line: 918, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !348, line: 58, size: 64, elements: !349)
!348 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !348, line: 59, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !344, file: !37, line: 919, baseType: !353, size: 128, align: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !141, line: 216, size: 128, align: 64, elements: !354)
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !141, line: 217, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !353, file: !141, line: 218, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !356}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !341, file: !37, line: 921, baseType: !362, size: 128, offset: 128)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !363, line: 8, size: 128, elements: !364)
!363 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!364 = !{!365, !369}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !362, file: !363, line: 9, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !368, line: 18, flags: DIFlagFwdDecl)
!368 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !362, file: !363, line: 10, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !368, line: 89, size: 1536, elements: !372)
!372 = !{!373, !374, !384, !392, !393, !411, !2948, !2950, !2962, !2963, !2964, !2965, !2966, !2972, !2973, !2974}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !371, file: !368, line: 91, baseType: !7, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !371, file: !368, line: 92, baseType: !375, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !376, line: 277, baseType: !377)
!376 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !376, line: 277, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !377, file: !376, line: 277, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !376, line: 70, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !376, line: 65, size: 32, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !381, file: !376, line: 66, baseType: !7, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !371, file: !368, line: 93, baseType: !385, size: 128, offset: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !386, line: 38, size: 128, elements: !387)
!386 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !386, line: 39, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !385, file: !386, line: 39, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !371, file: !368, line: 94, baseType: !370, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !371, file: !368, line: 95, baseType: !394, size: 128, offset: 256)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !368, line: 47, size: 128, elements: !395)
!395 = !{!396, !408}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !368, line: 48, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !368, line: 48, size: 64, elements: !398)
!398 = !{!399, !404}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !368, line: 49, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !397, file: !368, line: 49, size: 64, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !400, file: !368, line: 50, baseType: !177, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !400, file: !368, line: 50, baseType: !177, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !397, file: !368, line: 52, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !178, line: 23, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !152, line: 31, baseType: !407)
!407 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !394, file: !368, line: 54, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !371, file: !368, line: 96, baseType: !412, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !414)
!414 = !{!415, !416, !417, !425, !432, !433, !581, !2660, !2661, !2662, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2924, !2932, !2933, !2934, !2944, !2945, !2946, !2947}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !413, file: !37, line: 611, baseType: !304, size: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !413, file: !37, line: 612, baseType: !161, size: 16, offset: 16)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !413, file: !37, line: 613, baseType: !418, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !419, line: 23, baseType: !420)
!419 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 21, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !420, file: !419, line: 22, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !141, line: 32, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !296, line: 49, baseType: !7)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !413, file: !37, line: 614, baseType: !426, size: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !419, line: 28, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 26, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !427, file: !419, line: 27, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !141, line: 33, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !296, line: 50, baseType: !7)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !413, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !413, file: !37, line: 622, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !437)
!437 = !{!438, !442, !455, !459, !465, !469, !475, !479, !483, !487, !491, !492, !498, !502, !528, !557, !561, !567, !572, !576, !577}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !436, file: !37, line: 1865, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!370, !412, !370, !7}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !436, file: !37, line: 1866, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!206, !370, !412, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !448, line: 10, size: 128, elements: !449)
!448 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !447, file: !448, line: 11, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !142}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !447, file: !448, line: 12, baseType: !142, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !436, file: !37, line: 1867, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!170, !412, !170}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !436, file: !37, line: 1868, baseType: !460, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !412, !170}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !436, file: !37, line: 1870, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!170, !370, !263, !170}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !436, file: !37, line: 1872, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!170, !412, !370, !304, !473}
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !141, line: 30, baseType: !474)
!474 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !436, file: !37, line: 1873, baseType: !476, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!170, !370, !412, !370}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !436, file: !37, line: 1874, baseType: !480, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!170, !412, !370}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !436, file: !37, line: 1875, baseType: !484, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!170, !412, !370, !206}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !436, file: !37, line: 1876, baseType: !488, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!170, !412, !370, !304}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !436, file: !37, line: 1877, baseType: !480, size: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !436, file: !37, line: 1878, baseType: !493, size: 64, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!170, !412, !370, !304, !496}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !141, line: 16, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !141, line: 13, baseType: !177)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !436, file: !37, line: 1879, baseType: !499, size: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!170, !412, !370, !412, !370, !7}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !436, file: !37, line: 1881, baseType: !503, size: 64, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!170, !370, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !517, !525, !526, !527}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !507, file: !37, line: 220, baseType: !7, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !507, file: !37, line: 221, baseType: !304, size: 16, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !507, file: !37, line: 222, baseType: !418, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !507, file: !37, line: 223, baseType: !426, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !507, file: !37, line: 224, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !141, line: 46, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !296, line: 88, baseType: !516)
!516 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !507, file: !37, line: 225, baseType: !518, size: 128, offset: 192)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !519, line: 13, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !524}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !518, file: !519, line: 14, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !519, line: 8, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !152, line: 30, baseType: !516)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !518, file: !519, line: 15, baseType: !298, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !507, file: !37, line: 226, baseType: !518, size: 128, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !507, file: !37, line: 227, baseType: !518, size: 128, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !507, file: !37, line: 234, baseType: !340, size: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !436, file: !37, line: 1882, baseType: !529, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!170, !532, !534, !177, !7}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !536, line: 22, size: 1152, elements: !537)
!536 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !539, !540, !541, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !535, file: !536, line: 23, baseType: !177, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !535, file: !536, line: 24, baseType: !304, size: 16, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !535, file: !536, line: 25, baseType: !7, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !535, file: !536, line: 26, baseType: !542, size: 32, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 104, baseType: !177)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !535, file: !536, line: 27, baseType: !405, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !535, file: !536, line: 28, baseType: !405, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !535, file: !536, line: 37, baseType: !405, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !535, file: !536, line: 38, baseType: !496, size: 32, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !535, file: !536, line: 39, baseType: !496, size: 32, offset: 352)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !535, file: !536, line: 40, baseType: !418, size: 32, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !535, file: !536, line: 41, baseType: !426, size: 32, offset: 416)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !535, file: !536, line: 42, baseType: !514, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !535, file: !536, line: 43, baseType: !518, size: 128, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !535, file: !536, line: 44, baseType: !518, size: 128, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !535, file: !536, line: 45, baseType: !518, size: 128, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !535, file: !536, line: 46, baseType: !518, size: 128, offset: 896)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !535, file: !536, line: 47, baseType: !405, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !535, file: !536, line: 48, baseType: !405, size: 64, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !436, file: !37, line: 1883, baseType: !558, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!294, !370, !263, !309}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !436, file: !37, line: 1884, baseType: !562, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!170, !412, !565, !405, !405}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !436, file: !37, line: 1886, baseType: !568, size: 64, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!170, !412, !571, !170}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !436, file: !37, line: 1887, baseType: !573, size: 64, offset: 1152)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!170, !412, !370, !340, !7, !304}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !436, file: !37, line: 1890, baseType: !488, size: 64, offset: 1216)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !436, file: !37, line: 1891, baseType: !578, size: 64, offset: 1280)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!170, !412, !463, !170}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !413, file: !37, line: 623, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !640, !2267, !2349, !2432, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2448, !2452, !2453, !2456, !2457, !2460, !2461, !2462, !2503, !2530, !2531, !2532, !2533, !2534, !2535, !2538, !2540, !2547, !2548, !2550, !2551, !2552, !2611, !2612, !2627, !2628, !2629, !2630, !2631, !2634, !2635, !2636, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !583, file: !37, line: 1417, baseType: !209, size: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !583, file: !37, line: 1418, baseType: !496, size: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !583, file: !37, line: 1419, baseType: !153, size: 8, offset: 160)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !583, file: !37, line: 1420, baseType: !312, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !583, file: !37, line: 1421, baseType: !514, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !583, file: !37, line: 1422, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !593)
!593 = !{!594, !595, !596, !603, !607, !611, !615, !619, !620, !630, !633, !634, !635, !637, !638, !639}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !592, file: !37, line: 2229, baseType: !206, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !592, file: !37, line: 2230, baseType: !170, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !592, file: !37, line: 2238, baseType: !597, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!170, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !602, line: 28, flags: DIFlagFwdDecl)
!602 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!603 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !592, file: !37, line: 2239, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !592, file: !37, line: 2240, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!370, !591, !170, !206, !142}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !592, file: !37, line: 2242, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !582}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !592, file: !37, line: 2243, baseType: !616, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !618, line: 76, flags: DIFlagFwdDecl)
!618 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !37, line: 2244, baseType: !591, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !592, file: !37, line: 2245, baseType: !621, size: 64, offset: 512)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !141, line: 182, size: 64, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !621, file: !141, line: 183, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !141, line: 186, size: 128, elements: !626)
!626 = !{!627, !628}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !625, file: !141, line: 187, baseType: !624, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !625, file: !141, line: 187, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !592, file: !37, line: 2247, baseType: !631, offset: 576)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !632, line: 187, elements: !236)
!632 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !592, file: !37, line: 2248, baseType: !631, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !592, file: !37, line: 2249, baseType: !631, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !592, file: !37, line: 2250, baseType: !636, offset: 576)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, elements: !264)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !592, file: !37, line: 2252, baseType: !631, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !592, file: !37, line: 2253, baseType: !631, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !592, file: !37, line: 2254, baseType: !631, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !583, file: !37, line: 1423, baseType: !641, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !644)
!644 = !{!645, !649, !653, !654, !658, !664, !668, !669, !670, !674, !678, !679, !680, !681, !687, !692, !693, !700, !701, !702, !703, !2251, !2266}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !643, file: !37, line: 1936, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!412, !582}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !643, file: !37, line: 1937, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !412}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !643, file: !37, line: 1938, baseType: !650, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !643, file: !37, line: 1940, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !412, !170}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !643, file: !37, line: 1941, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!170, !412, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !643, file: !37, line: 1942, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!170, !412}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !643, file: !37, line: 1943, baseType: !650, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !643, file: !37, line: 1944, baseType: !612, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !643, file: !37, line: 1945, baseType: !671, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!170, !582, !170}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !643, file: !37, line: 1946, baseType: !675, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!170, !582}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !643, file: !37, line: 1947, baseType: !675, size: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !643, file: !37, line: 1948, baseType: !675, size: 64, offset: 704)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !643, file: !37, line: 1949, baseType: !675, size: 64, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !643, file: !37, line: 1950, baseType: !682, size: 64, offset: 832)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!170, !370, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !643, file: !37, line: 1951, baseType: !688, size: 64, offset: 896)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!170, !582, !691, !263}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !643, file: !37, line: 1952, baseType: !612, size: 64, offset: 960)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !643, file: !37, line: 1954, baseType: !694, size: 64, offset: 1024)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!170, !697, !370}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !699, line: 539, flags: DIFlagFwdDecl)
!699 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!700 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !643, file: !37, line: 1955, baseType: !694, size: 64, offset: 1088)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !643, file: !37, line: 1956, baseType: !694, size: 64, offset: 1152)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !643, file: !37, line: 1957, baseType: !694, size: 64, offset: 1216)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !643, file: !37, line: 1963, baseType: !704, size: 64, offset: 1280)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!170, !582, !707, !140}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !709, line: 68, size: 512, align: 128, elements: !710)
!709 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !712, !2243, !2250}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !708, file: !709, line: 69, baseType: !312, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !709, line: 77, baseType: !713, size: 320, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !709, line: 77, size: 320, elements: !714)
!714 = !{!715, !901, !906, !934, !942, !948, !2235, !2242}
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !709, line: 78, baseType: !716, size: 320)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !709, line: 78, size: 320, elements: !717)
!717 = !{!718, !719, !899, !900}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !716, file: !709, line: 84, baseType: !209, size: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !716, file: !709, line: 86, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !722)
!722 = !{!723, !724, !731, !732, !737, !752, !768, !769, !770, !771, !892, !893, !896, !897, !898}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !721, file: !37, line: 452, baseType: !412, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !721, file: !37, line: 453, baseType: !725, size: 128, offset: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !726, line: 292, size: 128, elements: !727)
!726 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !729, !730}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !725, file: !726, line: 293, baseType: !222)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !725, file: !726, line: 295, baseType: !140, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !725, file: !726, line: 296, baseType: !142, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !721, file: !37, line: 454, baseType: !140, size: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !721, file: !37, line: 455, baseType: !733, size: 32, offset: 224)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !141, line: 168, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 166, size: 32, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !734, file: !141, line: 167, baseType: !170, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !721, file: !37, line: 460, baseType: !738, size: 128, offset: 256)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !739, line: 125, size: 128, elements: !740)
!739 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!740 = !{!741, !751}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !738, file: !739, line: 126, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !739, line: 31, size: 64, elements: !743)
!743 = !{!744}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !742, file: !739, line: 32, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !739, line: 24, size: 192, align: 64, elements: !747)
!747 = !{!748, !749, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !746, file: !739, line: 25, baseType: !312, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !746, file: !739, line: 26, baseType: !745, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !746, file: !739, line: 27, baseType: !745, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !738, file: !739, line: 127, baseType: !745, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !721, file: !37, line: 461, baseType: !753, size: 256, offset: 384)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !754, line: 35, size: 256, elements: !755)
!754 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!755 = !{!756, !764, !765, !767}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !753, file: !754, line: 36, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !758, line: 13, baseType: !759)
!758 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !141, line: 175, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 173, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !760, file: !141, line: 174, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !178, line: 22, baseType: !523)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !753, file: !754, line: 42, baseType: !757, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !753, file: !754, line: 46, baseType: !766, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !223, line: 29, baseType: !230)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !753, file: !754, line: 47, baseType: !209, size: 128, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !721, file: !37, line: 462, baseType: !312, size: 64, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !721, file: !37, line: 463, baseType: !312, size: 64, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !721, file: !37, line: 464, baseType: !312, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !721, file: !37, line: 465, baseType: !772, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !775)
!775 = !{!776, !780, !784, !788, !792, !796, !802, !808, !812, !817, !821, !825, !829, !856, !860, !866, !867, !868, !872, !877, !881, !888}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !774, file: !37, line: 368, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!170, !707, !662}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !774, file: !37, line: 369, baseType: !781, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!170, !340, !707}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !774, file: !37, line: 372, baseType: !785, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!170, !720, !662}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !774, file: !37, line: 375, baseType: !789, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!170, !707}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !774, file: !37, line: 381, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!170, !340, !720, !212, !7}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !774, file: !37, line: 383, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !774, file: !37, line: 385, baseType: !803, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!170, !340, !720, !514, !7, !7, !806, !807}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !774, file: !37, line: 388, baseType: !809, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!170, !340, !720, !514, !7, !7, !707, !142}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !774, file: !37, line: 393, baseType: !813, size: 64, offset: 512)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!816, !720, !816}
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !141, line: 125, baseType: !405)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !774, file: !37, line: 394, baseType: !818, size: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !707, !7, !7}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !774, file: !37, line: 395, baseType: !822, size: 64, offset: 640)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!170, !707, !140}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !774, file: !37, line: 396, baseType: !826, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !707}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !774, file: !37, line: 397, baseType: !830, size: 64, offset: 768)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!294, !833, !854}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !835)
!835 = !{!836, !837, !838, !842, !843, !844, !846, !847}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !834, file: !37, line: 321, baseType: !340, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !834, file: !37, line: 326, baseType: !514, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !834, file: !37, line: 327, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !833, !298, !298}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !834, file: !37, line: 328, baseType: !142, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !834, file: !37, line: 329, baseType: !170, size: 32, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !834, file: !37, line: 330, baseType: !845, size: 16, offset: 288)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !178, line: 19, baseType: !160)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !834, file: !37, line: 331, baseType: !845, size: 16, offset: 304)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !37, line: 332, baseType: !848, size: 64, offset: 320)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !37, line: 332, size: 64, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !848, file: !37, line: 333, baseType: !7, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !848, file: !37, line: 334, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !774, file: !37, line: 402, baseType: !857, size: 64, offset: 832)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!170, !720, !707, !707, !12}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !774, file: !37, line: 404, baseType: !861, size: 64, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!473, !707, !864}
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !865, line: 305, baseType: !7)
!865 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!866 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !774, file: !37, line: 405, baseType: !826, size: 64, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !774, file: !37, line: 406, baseType: !789, size: 64, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !774, file: !37, line: 407, baseType: !869, size: 64, offset: 1088)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!170, !707, !312, !312}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !774, file: !37, line: 409, baseType: !873, size: 64, offset: 1152)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !707, !876, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !774, file: !37, line: 410, baseType: !878, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!170, !720, !707}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !774, file: !37, line: 413, baseType: !882, size: 64, offset: 1280)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!170, !885, !340, !887}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !774, file: !37, line: 415, baseType: !889, size: 64, offset: 1344)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !340}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !37, line: 466, baseType: !312, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !721, file: !37, line: 467, baseType: !894, size: 32, offset: 960)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !895, line: 8, baseType: !177)
!895 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!896 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !721, file: !37, line: 468, baseType: !222, offset: 992)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !721, file: !37, line: 469, baseType: !209, size: 128, offset: 1024)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !721, file: !37, line: 470, baseType: !142, size: 64, offset: 1152)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !716, file: !709, line: 87, baseType: !312, size: 64, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !716, file: !709, line: 94, baseType: !312, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !709, line: 96, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !709, line: 96, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !902, file: !709, line: 101, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !141, line: 143, baseType: !405)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !709, line: 103, baseType: !907, size: 320)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !709, line: 103, size: 320, elements: !908)
!908 = !{!909, !919, !922, !923}
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !709, line: 104, baseType: !910, size: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !709, line: 104, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !910, file: !709, line: 105, baseType: !209, size: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !709, line: 106, baseType: !914, size: 128)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !709, line: 106, size: 128, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !914, file: !709, line: 107, baseType: !707, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !914, file: !709, line: 109, baseType: !170, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !914, file: !709, line: 110, baseType: !170, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !907, file: !709, line: 117, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !709, line: 117, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !907, file: !709, line: 119, baseType: !142, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !709, line: 120, baseType: !924, size: 64, offset: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !709, line: 120, size: 64, elements: !925)
!925 = !{!926, !927, !928}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !924, file: !709, line: 121, baseType: !142, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !924, file: !709, line: 122, baseType: !312, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !709, line: 123, baseType: !929, size: 32)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !709, line: 123, size: 32, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !929, file: !709, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !929, file: !709, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !929, file: !709, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !709, line: 130, baseType: !935, size: 192)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !709, line: 130, size: 192, elements: !936)
!936 = !{!937, !938, !939, !940, !941}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !935, file: !709, line: 131, baseType: !312, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !935, file: !709, line: 134, baseType: !153, size: 8, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !935, file: !709, line: 135, baseType: !153, size: 8, offset: 72)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !935, file: !709, line: 136, baseType: !733, size: 32, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !935, file: !709, line: 137, baseType: !7, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !709, line: 139, baseType: !943, size: 256)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !709, line: 139, size: 256, elements: !944)
!944 = !{!945, !946, !947}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !943, file: !709, line: 140, baseType: !312, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !943, file: !709, line: 141, baseType: !733, size: 32, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !943, file: !709, line: 143, baseType: !209, size: 128, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !709, line: 145, baseType: !949, size: 256)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !709, line: 145, size: 256, elements: !950)
!950 = !{!951, !952, !954, !955, !2234}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !949, file: !709, line: 146, baseType: !312, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !949, file: !709, line: 147, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !699, line: 509, baseType: !707)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !949, file: !709, line: 148, baseType: !312, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !709, line: 149, baseType: !956, size: 64, offset: 192)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !949, file: !709, line: 149, size: 64, elements: !957)
!957 = !{!958, !2233}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !956, file: !709, line: 150, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !709, line: 388, size: 7296, elements: !961)
!961 = !{!962, !2229}
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !709, line: 389, baseType: !963, size: 7296)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !709, line: 389, size: 7296, elements: !964)
!964 = !{!965, !1003, !1004, !1005, !1009, !1010, !1011, !1012, !1013, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1054, !1062, !1065, !1111, !1112, !2213, !2214, !2217, !2218, !2219, !2222, !2223, !2224, !2227, !2228}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !963, file: !709, line: 390, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !709, line: 305, size: 1472, elements: !968)
!968 = !{!969, !970, !971, !972, !973, !974, !975, !976, !983, !984, !989, !990, !993, !997, !998, !999, !1000, !1001}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !967, file: !709, line: 308, baseType: !312, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !967, file: !709, line: 309, baseType: !312, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !967, file: !709, line: 313, baseType: !966, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !967, file: !709, line: 313, baseType: !966, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !967, file: !709, line: 315, baseType: !746, size: 192, align: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !967, file: !709, line: 323, baseType: !312, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !967, file: !709, line: 327, baseType: !959, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !967, file: !709, line: 333, baseType: !977, size: 64, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !699, line: 284, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !699, line: 284, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !978, file: !699, line: 284, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !982, line: 19, baseType: !312)
!982 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !967, file: !709, line: 334, baseType: !312, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !967, file: !709, line: 343, baseType: !985, size: 256, offset: 704)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !709, line: 340, size: 256, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !985, file: !709, line: 341, baseType: !746, size: 192, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !985, file: !709, line: 342, baseType: !312, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !967, file: !709, line: 351, baseType: !209, size: 128, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !967, file: !709, line: 353, baseType: !991, size: 64, offset: 1088)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !709, line: 353, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !967, file: !709, line: 356, baseType: !994, size: 64, offset: 1152)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !709, line: 356, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !967, file: !709, line: 359, baseType: !312, size: 64, offset: 1216)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !967, file: !709, line: 361, baseType: !340, size: 64, offset: 1280)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !967, file: !709, line: 362, baseType: !142, size: 64, offset: 1344)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !967, file: !709, line: 365, baseType: !757, size: 64, offset: 1408)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !967, file: !709, line: 373, baseType: !1002, offset: 1472)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !709, line: 296, elements: !236)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !963, file: !709, line: 391, baseType: !742, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !963, file: !709, line: 392, baseType: !405, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !963, file: !709, line: 394, baseType: !1006, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!312, !340, !312, !312, !312, !312}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !963, file: !709, line: 398, baseType: !312, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !963, file: !709, line: 399, baseType: !312, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !963, file: !709, line: 405, baseType: !312, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !963, file: !709, line: 406, baseType: !312, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !963, file: !709, line: 407, baseType: !1014, size: 64, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !699, line: 286, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 286, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1016, file: !699, line: 286, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !982, line: 18, baseType: !312)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !963, file: !709, line: 416, baseType: !733, size: 32, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !963, file: !709, line: 428, baseType: !733, size: 32, offset: 608)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !963, file: !709, line: 437, baseType: !733, size: 32, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !963, file: !709, line: 447, baseType: !733, size: 32, offset: 672)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !963, file: !709, line: 450, baseType: !757, size: 64, offset: 704)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !963, file: !709, line: 452, baseType: !170, size: 32, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !963, file: !709, line: 454, baseType: !222, offset: 800)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !963, file: !709, line: 457, baseType: !753, size: 256, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !963, file: !709, line: 459, baseType: !209, size: 128, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !963, file: !709, line: 466, baseType: !312, size: 64, offset: 1216)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !963, file: !709, line: 467, baseType: !312, size: 64, offset: 1280)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !963, file: !709, line: 469, baseType: !312, size: 64, offset: 1344)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !963, file: !709, line: 470, baseType: !312, size: 64, offset: 1408)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !963, file: !709, line: 471, baseType: !759, size: 64, offset: 1472)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !963, file: !709, line: 472, baseType: !312, size: 64, offset: 1536)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !963, file: !709, line: 473, baseType: !312, size: 64, offset: 1600)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !963, file: !709, line: 474, baseType: !312, size: 64, offset: 1664)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !963, file: !709, line: 475, baseType: !312, size: 64, offset: 1728)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !963, file: !709, line: 477, baseType: !222, offset: 1792)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !963, file: !709, line: 478, baseType: !312, size: 64, offset: 1792)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !963, file: !709, line: 478, baseType: !312, size: 64, offset: 1856)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !963, file: !709, line: 478, baseType: !312, size: 64, offset: 1920)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !963, file: !709, line: 478, baseType: !312, size: 64, offset: 1984)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !963, file: !709, line: 479, baseType: !312, size: 64, offset: 2048)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !963, file: !709, line: 479, baseType: !312, size: 64, offset: 2112)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !963, file: !709, line: 479, baseType: !312, size: 64, offset: 2176)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !963, file: !709, line: 480, baseType: !312, size: 64, offset: 2240)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !963, file: !709, line: 480, baseType: !312, size: 64, offset: 2304)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !963, file: !709, line: 480, baseType: !312, size: 64, offset: 2368)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !963, file: !709, line: 480, baseType: !312, size: 64, offset: 2432)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !963, file: !709, line: 482, baseType: !1051, size: 2816, offset: 2496)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 2816, elements: !1052)
!1052 = !{!1053}
!1053 = !DISubrange(count: 44)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !963, file: !709, line: 488, baseType: !1055, size: 256, offset: 5312)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1056, line: 60, size: 256, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1055, file: !1056, line: 61, baseType: !1059, size: 256)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !757, size: 256, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 4)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !963, file: !709, line: 490, baseType: !1063, size: 64, offset: 5568)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !709, line: 490, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !963, file: !709, line: 493, baseType: !1066, size: 896, offset: 5632)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1067, line: 53, baseType: !1068)
!1067 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 13, size: 896, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1076, !1077, !1084, !1085, !1105, !1106, !1107}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1068, file: !1067, line: 18, baseType: !405, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1068, file: !1067, line: 28, baseType: !759, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1068, file: !1067, line: 31, baseType: !753, size: 256, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1068, file: !1067, line: 32, baseType: !1074, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1067, line: 32, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1068, file: !1067, line: 37, baseType: !161, size: 16, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1068, file: !1067, line: 40, baseType: !1078, size: 192, offset: 512)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1079, line: 53, size: 192, elements: !1080)
!1079 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1078, file: !1079, line: 54, baseType: !757, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1078, file: !1079, line: 55, baseType: !222, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1078, file: !1079, line: 59, baseType: !209, size: 128, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1068, file: !1067, line: 41, baseType: !142, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1068, file: !1067, line: 42, baseType: !1086, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1089, line: 13, size: 896, elements: !1090)
!1089 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1088, file: !1089, line: 14, baseType: !142, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1088, file: !1089, line: 15, baseType: !312, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1088, file: !1089, line: 17, baseType: !312, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1088, file: !1089, line: 17, baseType: !312, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1088, file: !1089, line: 19, baseType: !298, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1088, file: !1089, line: 21, baseType: !298, size: 64, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1088, file: !1089, line: 22, baseType: !298, size: 64, offset: 384)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1088, file: !1089, line: 23, baseType: !298, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1088, file: !1089, line: 24, baseType: !298, size: 64, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1088, file: !1089, line: 25, baseType: !298, size: 64, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1088, file: !1089, line: 26, baseType: !298, size: 64, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1088, file: !1089, line: 27, baseType: !298, size: 64, offset: 704)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1088, file: !1089, line: 28, baseType: !298, size: 64, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1088, file: !1089, line: 29, baseType: !298, size: 64, offset: 832)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1068, file: !1067, line: 44, baseType: !733, size: 32, offset: 832)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1068, file: !1067, line: 50, baseType: !845, size: 16, offset: 864)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1068, file: !1067, line: 51, baseType: !1108, size: 16, offset: 880)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !178, line: 18, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !152, line: 23, baseType: !1110)
!1110 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !709, line: 495, baseType: !312, size: 64, offset: 6528)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !963, file: !709, line: 497, baseType: !1113, size: 64, offset: 6592)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !709, line: 381, size: 384, elements: !1115)
!1115 = !{!1116, !1117, !2212}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1114, file: !709, line: 382, baseType: !733, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1114, file: !709, line: 383, baseType: !1118, size: 128, offset: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !709, line: 376, size: 128, elements: !1119)
!1119 = !{!1120, !2210}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1118, file: !709, line: 377, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1123, line: 640, size: 48640, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !{!1125, !1131, !1133, !1134, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1151, !1169, !1180, !1264, !1265, !1266, !1277, !1278, !1280, !1281, !1282, !1283, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1362, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1400, !1402, !1403, !1404, !1416, !1417, !1418, !1419, !1420, !1421, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1445, !1450, !1632, !1633, !1634, !1635, !1636, !1639, !1642, !1645, !1648, !1651, !1752, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1798, !1799, !1800, !1801, !1802, !1807, !1808, !1809, !1812, !1813, !1816, !1819, !1822, !1825, !1868, !1871, !1872, !1951, !1952, !1955, !1956, !1959, !1960, !1961, !1965, !1966, !1967, !1980, !1981, !1982, !1992, !1997, !2000, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1122, file: !1123, line: 646, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1127, line: 56, size: 128, elements: !1128)
!1127 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1126, file: !1127, line: 57, baseType: !312, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1126, file: !1127, line: 58, baseType: !177, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1122, file: !1123, line: 649, baseType: !1132, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !298)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1122, file: !1123, line: 657, baseType: !142, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1122, file: !1123, line: 658, baseType: !1135, size: 32, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1136, line: 113, baseType: !1137)
!1136 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1136, line: 111, size: 32, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1137, file: !1136, line: 112, baseType: !733, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1122, file: !1123, line: 660, baseType: !7, size: 32, offset: 288)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1122, file: !1123, line: 661, baseType: !7, size: 32, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1122, file: !1123, line: 684, baseType: !170, size: 32, offset: 352)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1122, file: !1123, line: 686, baseType: !170, size: 32, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1122, file: !1123, line: 687, baseType: !170, size: 32, offset: 416)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1122, file: !1123, line: 688, baseType: !170, size: 32, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1122, file: !1123, line: 689, baseType: !7, size: 32, offset: 480)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1122, file: !1123, line: 691, baseType: !1148, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1123, line: 691, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1122, file: !1123, line: 692, baseType: !1152, size: 832, offset: 576)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1123, line: 451, size: 832, elements: !1153)
!1153 = !{!1154, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1152, file: !1123, line: 453, baseType: !1155, size: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1123, line: 325, size: 128, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1155, file: !1123, line: 326, baseType: !312, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1155, file: !1123, line: 327, baseType: !177, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1152, file: !1123, line: 454, baseType: !746, size: 192, align: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1152, file: !1123, line: 455, baseType: !209, size: 128, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1152, file: !1123, line: 456, baseType: !7, size: 32, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1152, file: !1123, line: 458, baseType: !405, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1152, file: !1123, line: 459, baseType: !405, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1152, file: !1123, line: 460, baseType: !405, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1152, file: !1123, line: 461, baseType: !405, size: 64, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1152, file: !1123, line: 463, baseType: !405, size: 64, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1152, file: !1123, line: 465, baseType: !1168, offset: 832)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1123, line: 415, elements: !236)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1122, file: !1123, line: 693, baseType: !1170, size: 384, offset: 1408)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1123, line: 489, size: 384, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1170, file: !1123, line: 490, baseType: !209, size: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1170, file: !1123, line: 491, baseType: !312, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1170, file: !1123, line: 492, baseType: !312, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1170, file: !1123, line: 493, baseType: !7, size: 32, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1170, file: !1123, line: 494, baseType: !161, size: 16, offset: 288)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1170, file: !1123, line: 495, baseType: !161, size: 16, offset: 304)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1170, file: !1123, line: 497, baseType: !1179, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1122, file: !1123, line: 697, baseType: !1181, size: 1792, offset: 1792)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1123, line: 507, size: 1792, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1261, !1262}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1181, file: !1123, line: 508, baseType: !746, size: 192, align: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1181, file: !1123, line: 515, baseType: !405, size: 64, offset: 192)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1181, file: !1123, line: 516, baseType: !405, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1181, file: !1123, line: 517, baseType: !405, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1181, file: !1123, line: 518, baseType: !405, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1181, file: !1123, line: 519, baseType: !405, size: 64, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1181, file: !1123, line: 526, baseType: !763, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1181, file: !1123, line: 527, baseType: !405, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1181, file: !1123, line: 528, baseType: !7, size: 32, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1181, file: !1123, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1181, file: !1123, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1181, file: !1123, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1181, file: !1123, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1181, file: !1123, line: 563, baseType: !1197, size: 512, offset: 704)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1198)
!1198 = !{!1199, !1207, !1208, !1213, !1256, !1258, !1259, !1260}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1197, file: !20, line: 119, baseType: !1200, size: 256)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1201, line: 9, size: 256, elements: !1202)
!1201 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1200, file: !1201, line: 10, baseType: !746, size: 192, align: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1200, file: !1201, line: 11, baseType: !1205, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1206, line: 29, baseType: !763)
!1206 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1197, file: !20, line: 120, baseType: !1205, size: 64, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1197, file: !20, line: 121, baseType: !1209, size: 64, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!19, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1197, file: !20, line: 122, baseType: !1214, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1216)
!1216 = !{!1217, !1237, !1238, !1241, !1246, !1247, !1251, !1255}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1215, file: !20, line: 160, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1219, file: !20, line: 215, baseType: !766)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1219, file: !20, line: 216, baseType: !7, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1219, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1219, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1219, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1219, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1219, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1219, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1219, file: !20, line: 233, baseType: !1205, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1219, file: !20, line: 234, baseType: !1212, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1219, file: !20, line: 235, baseType: !1205, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1219, file: !20, line: 236, baseType: !1212, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1219, file: !20, line: 237, baseType: !1234, size: 4096, offset: 512)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 4096, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 8)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1215, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1215, file: !20, line: 162, baseType: !1239, size: 32, offset: 96)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !141, line: 27, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !296, line: 96, baseType: !170)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1215, file: !20, line: 163, baseType: !1242, size: 32, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !376, line: 276, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !376, line: 276, size: 32, elements: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1243, file: !376, line: 276, baseType: !380, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1215, file: !20, line: 164, baseType: !1212, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1215, file: !20, line: 165, baseType: !1248, size: 128, offset: 256)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1201, line: 14, size: 128, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1248, file: !1201, line: 15, baseType: !738, size: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1215, file: !20, line: 166, baseType: !1252, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1205}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1215, file: !20, line: 167, baseType: !1205, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1197, file: !20, line: 123, baseType: !1257, size: 8, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !178, line: 17, baseType: !151)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1197, file: !20, line: 124, baseType: !1257, size: 8, offset: 456)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1197, file: !20, line: 125, baseType: !1257, size: 8, offset: 464)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1197, file: !20, line: 126, baseType: !1257, size: 8, offset: 472)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1181, file: !1123, line: 572, baseType: !1197, size: 512, offset: 1216)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1181, file: !1123, line: 580, baseType: !1263, size: 64, offset: 1728)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1122, file: !1123, line: 721, baseType: !7, size: 32, offset: 3584)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1122, file: !1123, line: 722, baseType: !170, size: 32, offset: 3616)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1122, file: !1123, line: 723, baseType: !1267, size: 64, offset: 3648)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1270, line: 17, baseType: !1271)
!1270 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1270, line: 17, size: 64, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1271, file: !1270, line: 17, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 64, elements: !1275)
!1275 = !{!1276}
!1276 = !DISubrange(count: 1)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1122, file: !1123, line: 724, baseType: !1269, size: 64, offset: 3712)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1122, file: !1123, line: 749, baseType: !1279, offset: 3776)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1123, line: 290, elements: !236)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1122, file: !1123, line: 751, baseType: !209, size: 128, offset: 3776)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1122, file: !1123, line: 757, baseType: !959, size: 64, offset: 3904)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1122, file: !1123, line: 758, baseType: !959, size: 64, offset: 3968)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1122, file: !1123, line: 761, baseType: !1284, size: 320, offset: 4032)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1056, line: 34, size: 320, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1284, file: !1056, line: 35, baseType: !405, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1284, file: !1056, line: 36, baseType: !1288, size: 256, offset: 64)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 256, elements: !1060)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1122, file: !1123, line: 766, baseType: !170, size: 32, offset: 4352)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1122, file: !1123, line: 767, baseType: !170, size: 32, offset: 4384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1122, file: !1123, line: 768, baseType: !170, size: 32, offset: 4416)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1122, file: !1123, line: 770, baseType: !170, size: 32, offset: 4448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1122, file: !1123, line: 772, baseType: !312, size: 64, offset: 4480)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1122, file: !1123, line: 775, baseType: !7, size: 32, offset: 4544)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1122, file: !1123, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1122, file: !1123, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1122, file: !1123, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1122, file: !1123, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1122, file: !1123, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1122, file: !1123, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1122, file: !1123, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1122, file: !1123, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1122, file: !1123, line: 831, baseType: !312, size: 64, offset: 4672)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1122, file: !1123, line: 833, baseType: !1305, size: 384, offset: 4736)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1306)
!1306 = !{!1307, !1312}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1305, file: !25, line: 26, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!298, !1311}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !25, line: 27, baseType: !1313, size: 320, offset: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !25, line: 27, size: 320, elements: !1314)
!1314 = !{!1315, !1325, !1352}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1313, file: !25, line: 36, baseType: !1316, size: 320)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !25, line: 29, size: 320, elements: !1317)
!1317 = !{!1318, !1320, !1321, !1322, !1323, !1324}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1316, file: !25, line: 30, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1316, file: !25, line: 31, baseType: !177, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !25, line: 32, baseType: !177, size: 32, offset: 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1316, file: !25, line: 33, baseType: !177, size: 32, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1316, file: !25, line: 34, baseType: !405, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1316, file: !25, line: 35, baseType: !1319, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1313, file: !25, line: 46, baseType: !1326, size: 192)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !25, line: 38, size: 192, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1351}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1326, file: !25, line: 39, baseType: !1239, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1326, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !25, line: 41, baseType: !1331, size: 64, offset: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !25, line: 41, size: 64, elements: !1332)
!1332 = !{!1333, !1341}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1331, file: !25, line: 42, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1336, line: 7, size: 128, elements: !1337)
!1336 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1337 = !{!1338, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1335, file: !1336, line: 8, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !296, line: 93, baseType: !516)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1335, file: !1336, line: 9, baseType: !516, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1331, file: !25, line: 43, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1344, line: 7, size: 64, elements: !1345)
!1344 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !{!1346, !1350}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1343, file: !1344, line: 8, baseType: !1347, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1344, line: 5, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !178, line: 20, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !152, line: 26, baseType: !170)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1343, file: !1344, line: 9, baseType: !1348, size: 32, offset: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1326, file: !25, line: 45, baseType: !405, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1313, file: !25, line: 54, baseType: !1353, size: 256)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !25, line: 48, size: 256, elements: !1354)
!1354 = !{!1355, !1358, !1359, !1360, !1361}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1353, file: !25, line: 49, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1353, file: !25, line: 50, baseType: !170, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1353, file: !25, line: 51, baseType: !170, size: 32, offset: 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1353, file: !25, line: 52, baseType: !312, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1353, file: !25, line: 53, baseType: !312, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1122, file: !1123, line: 835, baseType: !1363, size: 32, offset: 5120)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !141, line: 22, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !296, line: 28, baseType: !170)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1122, file: !1123, line: 836, baseType: !1363, size: 32, offset: 5152)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1122, file: !1123, line: 840, baseType: !312, size: 64, offset: 5184)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1122, file: !1123, line: 849, baseType: !1121, size: 64, offset: 5248)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1122, file: !1123, line: 852, baseType: !1121, size: 64, offset: 5312)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1122, file: !1123, line: 857, baseType: !209, size: 128, offset: 5376)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1122, file: !1123, line: 858, baseType: !209, size: 128, offset: 5504)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1122, file: !1123, line: 859, baseType: !1121, size: 64, offset: 5632)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1122, file: !1123, line: 867, baseType: !209, size: 128, offset: 5696)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1122, file: !1123, line: 868, baseType: !209, size: 128, offset: 5824)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1122, file: !1123, line: 871, baseType: !1375, size: 64, offset: 5952)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1383, !1384, !1391, !1392}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1376, file: !46, line: 61, baseType: !1135, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1376, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1376, file: !46, line: 63, baseType: !222, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1376, file: !46, line: 65, baseType: !1382, size: 256, offset: 64)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 256, elements: !1060)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1376, file: !46, line: 66, baseType: !621, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1376, file: !46, line: 68, baseType: !1385, size: 128, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1386, line: 40, baseType: !1387)
!1386 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1386, line: 36, size: 128, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !1386, line: 37, baseType: !222)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1387, file: !1386, line: 38, baseType: !209, size: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1376, file: !46, line: 69, baseType: !353, size: 128, align: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1376, file: !46, line: 70, baseType: !1393, size: 128, offset: 640)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 128, elements: !1275)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1394, file: !46, line: 55, baseType: !170, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1394, file: !46, line: 56, baseType: !1398, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1122, file: !1123, line: 872, baseType: !1401, size: 512, offset: 6016)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 512, elements: !1060)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1122, file: !1123, line: 873, baseType: !209, size: 128, offset: 6528)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1122, file: !1123, line: 874, baseType: !209, size: 128, offset: 6656)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1122, file: !1123, line: 876, baseType: !1405, size: 64, offset: 6784)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1407, line: 26, size: 192, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1406, file: !1407, line: 27, baseType: !7, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1406, file: !1407, line: 28, baseType: !1411, size: 128, offset: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1412, line: 43, size: 128, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1411, file: !1412, line: 44, baseType: !766)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1411, file: !1412, line: 45, baseType: !209, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1122, file: !1123, line: 879, baseType: !691, size: 64, offset: 6848)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1122, file: !1123, line: 882, baseType: !691, size: 64, offset: 6912)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1122, file: !1123, line: 884, baseType: !405, size: 64, offset: 6976)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1122, file: !1123, line: 885, baseType: !405, size: 64, offset: 7040)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1122, file: !1123, line: 890, baseType: !405, size: 64, offset: 7104)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1122, file: !1123, line: 891, baseType: !1422, size: 128, offset: 7168)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1123, line: 242, size: 128, elements: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1422, file: !1123, line: 244, baseType: !405, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1422, file: !1123, line: 245, baseType: !405, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1422, file: !1123, line: 246, baseType: !766, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1122, file: !1123, line: 900, baseType: !312, size: 64, offset: 7296)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1122, file: !1123, line: 901, baseType: !312, size: 64, offset: 7360)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1122, file: !1123, line: 904, baseType: !405, size: 64, offset: 7424)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1122, file: !1123, line: 907, baseType: !405, size: 64, offset: 7488)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1122, file: !1123, line: 910, baseType: !312, size: 64, offset: 7552)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1122, file: !1123, line: 911, baseType: !312, size: 64, offset: 7616)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1122, file: !1123, line: 914, baseType: !1434, size: 640, offset: 7680)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1435, line: 123, size: 640, elements: !1436)
!1435 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1443, !1444}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1434, file: !1435, line: 124, baseType: !1438, size: 576)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 576, elements: !264)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1435, line: 108, size: 192, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1439, file: !1435, line: 109, baseType: !405, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1439, file: !1435, line: 110, baseType: !1248, size: 128, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1434, file: !1435, line: 125, baseType: !7, size: 32, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1434, file: !1435, line: 126, baseType: !7, size: 32, offset: 608)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1122, file: !1123, line: 917, baseType: !1446, size: 192, offset: 8320)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1435, line: 134, size: 192, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1446, file: !1435, line: 135, baseType: !353, size: 128, align: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1446, file: !1435, line: 136, baseType: !7, size: 32, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1122, file: !1123, line: 923, baseType: !1451, size: 64, offset: 8512)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1454, line: 111, size: 1280, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1473, !1474, !1475, !1476, !1477, !1478, !1585, !1586, !1587, !1588, !1614, !1617, !1627}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1453, file: !1454, line: 112, baseType: !733, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1453, file: !1454, line: 120, baseType: !418, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1453, file: !1454, line: 121, baseType: !426, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1453, file: !1454, line: 122, baseType: !418, size: 32, offset: 96)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1453, file: !1454, line: 123, baseType: !426, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1453, file: !1454, line: 124, baseType: !418, size: 32, offset: 160)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1453, file: !1454, line: 125, baseType: !426, size: 32, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1453, file: !1454, line: 126, baseType: !418, size: 32, offset: 224)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1453, file: !1454, line: 127, baseType: !426, size: 32, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1453, file: !1454, line: 128, baseType: !7, size: 32, offset: 288)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1453, file: !1454, line: 129, baseType: !1467, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1468, line: 26, baseType: !1469)
!1468 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1468, line: 24, size: 64, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1469, file: !1468, line: 25, baseType: !1472, size: 64)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !190)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1453, file: !1454, line: 130, baseType: !1467, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1453, file: !1454, line: 131, baseType: !1467, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1453, file: !1454, line: 132, baseType: !1467, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1453, file: !1454, line: 133, baseType: !1467, size: 64, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1453, file: !1454, line: 135, baseType: !153, size: 8, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1453, file: !1454, line: 137, baseType: !1479, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1481, line: 189, size: 1664, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1482 = !{!1483, !1484, !1487, !1492, !1493, !1496, !1497, !1502, !1503, !1504, !1505, !1507, !1508, !1509, !1510, !1511, !1549, !1570}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1480, file: !1481, line: 190, baseType: !1135, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1480, file: !1481, line: 191, baseType: !1485, size: 32, offset: 32)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1481, line: 28, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !141, line: 98, baseType: !1348)
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1481, line: 192, baseType: !1488, size: 192, offset: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1481, line: 192, size: 192, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1488, file: !1481, line: 193, baseType: !209, size: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1488, file: !1481, line: 194, baseType: !746, size: 192, align: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1480, file: !1481, line: 199, baseType: !753, size: 256, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1480, file: !1481, line: 200, baseType: !1494, size: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1481, line: 200, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1480, file: !1481, line: 201, baseType: !142, size: 64, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1481, line: 202, baseType: !1498, size: 64, offset: 640)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1481, line: 202, size: 64, elements: !1499)
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1498, file: !1481, line: 203, baseType: !522, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1498, file: !1481, line: 204, baseType: !522, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1480, file: !1481, line: 206, baseType: !522, size: 64, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1480, file: !1481, line: 207, baseType: !418, size: 32, offset: 768)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1480, file: !1481, line: 208, baseType: !426, size: 32, offset: 800)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1480, file: !1481, line: 209, baseType: !1506, size: 32, offset: 832)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1481, line: 31, baseType: !542)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1480, file: !1481, line: 210, baseType: !161, size: 16, offset: 864)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1480, file: !1481, line: 211, baseType: !161, size: 16, offset: 880)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1480, file: !1481, line: 215, baseType: !1110, size: 16, offset: 896)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !1481, line: 222, baseType: !312, size: 64, offset: 960)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1481, line: 239, baseType: !1512, size: 320, offset: 1024)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1481, line: 239, size: 320, elements: !1513)
!1513 = !{!1514, !1541}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1512, file: !1481, line: 240, baseType: !1515, size: 320)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1481, line: 108, size: 320, elements: !1516)
!1516 = !{!1517, !1518, !1530, !1533, !1540}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1515, file: !1481, line: 110, baseType: !312, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !1481, line: 111, baseType: !1519, size: 64, offset: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1515, file: !1481, line: 111, size: 64, elements: !1520)
!1520 = !{!1521, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1481, line: 112, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !1481, line: 112, size: 64, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1522, file: !1481, line: 114, baseType: !845, size: 16)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1522, file: !1481, line: 115, baseType: !1526, size: 48, offset: 16)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 48, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 6)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1519, file: !1481, line: 121, baseType: !312, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1515, file: !1481, line: 123, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1481, line: 96, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1515, file: !1481, line: 124, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1481, line: 102, size: 192, elements: !1536)
!1536 = !{!1537, !1538, !1539}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1535, file: !1481, line: 103, baseType: !353, size: 128, align: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1535, file: !1481, line: 104, baseType: !1135, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1535, file: !1481, line: 105, baseType: !473, size: 8, offset: 160)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1515, file: !1481, line: 125, baseType: !206, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1481, line: 241, baseType: !1542, size: 320)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !1481, line: 241, size: 320, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1542, file: !1481, line: 242, baseType: !312, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1542, file: !1481, line: 243, baseType: !312, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1542, file: !1481, line: 244, baseType: !1531, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1542, file: !1481, line: 245, baseType: !1534, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1542, file: !1481, line: 246, baseType: !263, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1481, line: 254, baseType: !1550, size: 256, offset: 1344)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1481, line: 254, size: 256, elements: !1551)
!1551 = !{!1552, !1558}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1550, file: !1481, line: 255, baseType: !1553, size: 256)
!1553 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1481, line: 128, size: 256, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1553, file: !1481, line: 129, baseType: !142, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1553, file: !1481, line: 130, baseType: !1557, size: 256)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 256, elements: !1060)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !1481, line: 256, baseType: !1559, size: 256)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1550, file: !1481, line: 256, size: 256, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1559, file: !1481, line: 258, baseType: !209, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1559, file: !1481, line: 259, baseType: !1563, size: 128, offset: 128)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1564, line: 22, size: 128, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !{!1566, !1569}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1563, file: !1564, line: 23, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1564, line: 23, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1563, file: !1564, line: 24, baseType: !312, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1480, file: !1481, line: 274, baseType: !1571, size: 64, offset: 1600)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1481, line: 170, size: 192, elements: !1573)
!1573 = !{!1574, !1583, !1584}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1572, file: !1481, line: 171, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1481, line: 165, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!170, !1479, !1579, !1581, !1479}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1532)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1572, file: !1481, line: 172, baseType: !1479, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1572, file: !1481, line: 173, baseType: !1531, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1453, file: !1454, line: 138, baseType: !1479, size: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1453, file: !1454, line: 139, baseType: !1479, size: 64, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1453, file: !1454, line: 140, baseType: !1479, size: 64, offset: 896)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1453, file: !1454, line: 145, baseType: !1589, size: 64, offset: 960)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1591, line: 13, size: 896, elements: !1592)
!1591 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1590, file: !1591, line: 14, baseType: !1135, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1590, file: !1591, line: 15, baseType: !733, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1590, file: !1591, line: 16, baseType: !733, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1590, file: !1591, line: 21, baseType: !757, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1590, file: !1591, line: 27, baseType: !312, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1590, file: !1591, line: 28, baseType: !312, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1590, file: !1591, line: 29, baseType: !757, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1590, file: !1591, line: 32, baseType: !625, size: 128, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1590, file: !1591, line: 33, baseType: !418, size: 32, offset: 512)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1590, file: !1591, line: 37, baseType: !757, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1590, file: !1591, line: 44, baseType: !1604, size: 256, offset: 640)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1605, line: 15, size: 256, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1604, file: !1605, line: 16, baseType: !766)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1604, file: !1605, line: 18, baseType: !170, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1604, file: !1605, line: 19, baseType: !170, size: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1604, file: !1605, line: 20, baseType: !170, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1604, file: !1605, line: 21, baseType: !170, size: 32, offset: 96)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1604, file: !1605, line: 22, baseType: !312, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1604, file: !1605, line: 23, baseType: !312, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1453, file: !1454, line: 146, baseType: !1615, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !709, line: 516, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1453, file: !1454, line: 147, baseType: !1618, size: 64, offset: 1088)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1454, line: 25, size: 64, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1619, file: !1454, line: 26, baseType: !733, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1619, file: !1454, line: 27, baseType: !170, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1619, file: !1454, line: 28, baseType: !1624, offset: 64)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, elements: !1625)
!1625 = !{!1626}
!1626 = !DISubrange(count: 0)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1454, line: 149, baseType: !1628, size: 128, offset: 1152)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1453, file: !1454, line: 149, size: 128, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1628, file: !1454, line: 150, baseType: !170, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1454, line: 151, baseType: !353, size: 128, align: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1122, file: !1123, line: 926, baseType: !1451, size: 64, offset: 8576)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1122, file: !1123, line: 929, baseType: !1451, size: 64, offset: 8640)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1122, file: !1123, line: 933, baseType: !1479, size: 64, offset: 8704)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1122, file: !1123, line: 943, baseType: !172, size: 128, offset: 8768)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1122, file: !1123, line: 945, baseType: !1637, size: 64, offset: 8896)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1123, line: 49, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1122, file: !1123, line: 956, baseType: !1640, size: 64, offset: 8960)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1123, line: 45, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1122, file: !1123, line: 959, baseType: !1643, size: 64, offset: 9024)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1123, line: 959, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1122, file: !1123, line: 962, baseType: !1646, size: 64, offset: 9088)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1123, line: 66, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1122, file: !1123, line: 966, baseType: !1649, size: 64, offset: 9152)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1123, line: 50, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1122, file: !1123, line: 969, baseType: !1652, size: 64, offset: 9216)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1654, line: 82, size: 7296, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1691, !1700, !1701, !1703, !1704, !1705, !1708, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1738, !1739, !1746, !1747, !1748, !1749, !1750, !1751}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1653, file: !1654, line: 83, baseType: !1135, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1653, file: !1654, line: 84, baseType: !733, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1653, file: !1654, line: 85, baseType: !170, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1653, file: !1654, line: 86, baseType: !209, size: 128, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1653, file: !1654, line: 88, baseType: !1385, size: 128, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1653, file: !1654, line: 91, baseType: !1121, size: 64, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1653, file: !1654, line: 94, baseType: !1663, size: 192, offset: 448)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1664, line: 30, size: 192, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1663, file: !1664, line: 31, baseType: !209, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1663, file: !1664, line: 32, baseType: !1668, size: 64, offset: 128)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1669, line: 25, baseType: !1670)
!1669 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1669, line: 23, size: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1670, file: !1669, line: 24, baseType: !1274, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1653, file: !1654, line: 97, baseType: !621, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1653, file: !1654, line: 100, baseType: !170, size: 32, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1653, file: !1654, line: 106, baseType: !170, size: 32, offset: 736)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1653, file: !1654, line: 107, baseType: !1121, size: 64, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1653, file: !1654, line: 110, baseType: !170, size: 32, offset: 832)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1653, file: !1654, line: 111, baseType: !7, size: 32, offset: 864)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1653, file: !1654, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1653, file: !1654, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1653, file: !1654, line: 128, baseType: !170, size: 32, offset: 928)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1653, file: !1654, line: 129, baseType: !209, size: 128, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1653, file: !1654, line: 132, baseType: !1197, size: 512, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1653, file: !1654, line: 133, baseType: !1205, size: 64, offset: 1600)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1653, file: !1654, line: 140, baseType: !1686, size: 256, offset: 1664)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1687, size: 256, elements: !190)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1654, line: 38, size: 128, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1687, file: !1654, line: 39, baseType: !405, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1687, file: !1654, line: 40, baseType: !405, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1653, file: !1654, line: 146, baseType: !1692, size: 192, offset: 1920)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1654, line: 66, size: 192, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1692, file: !1654, line: 67, baseType: !1695, size: 192)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1654, line: 47, size: 192, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1695, file: !1654, line: 48, baseType: !759, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1695, file: !1654, line: 49, baseType: !759, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1695, file: !1654, line: 50, baseType: !759, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1653, file: !1654, line: 150, baseType: !1434, size: 640, offset: 2112)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1653, file: !1654, line: 153, baseType: !1702, size: 256, offset: 2752)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 256, elements: !1060)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1653, file: !1654, line: 159, baseType: !1375, size: 64, offset: 3008)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1653, file: !1654, line: 162, baseType: !170, size: 32, offset: 3072)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1653, file: !1654, line: 164, baseType: !1706, size: 64, offset: 3136)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1654, line: 164, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1653, file: !1654, line: 175, baseType: !1709, size: 32, offset: 3200)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !376, line: 805, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 798, size: 32, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1710, file: !376, line: 803, baseType: !375, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1710, file: !376, line: 804, baseType: !222, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1653, file: !1654, line: 176, baseType: !405, size: 64, offset: 3264)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1653, file: !1654, line: 176, baseType: !405, size: 64, offset: 3328)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1653, file: !1654, line: 176, baseType: !405, size: 64, offset: 3392)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1653, file: !1654, line: 176, baseType: !405, size: 64, offset: 3456)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1653, file: !1654, line: 177, baseType: !405, size: 64, offset: 3520)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1653, file: !1654, line: 178, baseType: !405, size: 64, offset: 3584)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1653, file: !1654, line: 179, baseType: !1422, size: 128, offset: 3648)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1653, file: !1654, line: 180, baseType: !312, size: 64, offset: 3776)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1653, file: !1654, line: 180, baseType: !312, size: 64, offset: 3840)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1653, file: !1654, line: 180, baseType: !312, size: 64, offset: 3904)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1653, file: !1654, line: 180, baseType: !312, size: 64, offset: 3968)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1653, file: !1654, line: 181, baseType: !312, size: 64, offset: 4032)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1653, file: !1654, line: 181, baseType: !312, size: 64, offset: 4096)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1653, file: !1654, line: 181, baseType: !312, size: 64, offset: 4160)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1653, file: !1654, line: 181, baseType: !312, size: 64, offset: 4224)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1653, file: !1654, line: 182, baseType: !312, size: 64, offset: 4288)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1653, file: !1654, line: 182, baseType: !312, size: 64, offset: 4352)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1653, file: !1654, line: 182, baseType: !312, size: 64, offset: 4416)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1653, file: !1654, line: 182, baseType: !312, size: 64, offset: 4480)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1653, file: !1654, line: 183, baseType: !312, size: 64, offset: 4544)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1653, file: !1654, line: 183, baseType: !312, size: 64, offset: 4608)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1653, file: !1654, line: 184, baseType: !1736, offset: 4672)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1737, line: 12, elements: !236)
!1737 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1653, file: !1654, line: 192, baseType: !407, size: 64, offset: 4672)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1653, file: !1654, line: 203, baseType: !1740, size: 2048, offset: 4736)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1741, size: 2048, elements: !174)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1742, line: 43, size: 128, elements: !1743)
!1742 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1741, file: !1742, line: 44, baseType: !311, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1741, file: !1742, line: 45, baseType: !311, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1653, file: !1654, line: 220, baseType: !473, size: 8, offset: 6784)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1653, file: !1654, line: 221, baseType: !1110, size: 16, offset: 6800)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1653, file: !1654, line: 222, baseType: !1110, size: 16, offset: 6816)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1653, file: !1654, line: 224, baseType: !959, size: 64, offset: 6848)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1653, file: !1654, line: 227, baseType: !1078, size: 192, offset: 6912)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1653, file: !1654, line: 233, baseType: !1078, size: 192, offset: 7104)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1122, file: !1123, line: 970, baseType: !1753, size: 64, offset: 9280)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1654, line: 20, size: 16576, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1754, file: !1654, line: 21, baseType: !222)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1754, file: !1654, line: 22, baseType: !1135, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1754, file: !1654, line: 23, baseType: !1385, size: 128, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1754, file: !1654, line: 24, baseType: !1760, size: 16384, offset: 192)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 16384, elements: !268)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1664, line: 49, size: 256, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1761, file: !1664, line: 50, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1664, line: 35, size: 256, elements: !1765)
!1765 = !{!1766, !1773, !1774, !1780}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1764, file: !1664, line: 37, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1768, line: 19, baseType: !1769)
!1768 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1768, line: 18, baseType: !1771)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !170}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1764, file: !1664, line: 38, baseType: !312, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1764, file: !1664, line: 44, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1768, line: 22, baseType: !1776)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1768, line: 21, baseType: !1778)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1764, file: !1664, line: 46, baseType: !1668, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1122, file: !1123, line: 971, baseType: !1668, size: 64, offset: 9344)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1122, file: !1123, line: 972, baseType: !1668, size: 64, offset: 9408)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1122, file: !1123, line: 974, baseType: !1668, size: 64, offset: 9472)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1122, file: !1123, line: 975, baseType: !1663, size: 192, offset: 9536)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1122, file: !1123, line: 976, baseType: !312, size: 64, offset: 9728)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1122, file: !1123, line: 977, baseType: !309, size: 64, offset: 9792)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1122, file: !1123, line: 978, baseType: !7, size: 32, offset: 9856)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1122, file: !1123, line: 980, baseType: !356, size: 64, offset: 9920)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1122, file: !1123, line: 989, baseType: !1790, size: 128, offset: 9984)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1791, line: 35, size: 128, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1790, file: !1791, line: 36, baseType: !170, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1790, file: !1791, line: 37, baseType: !733, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1790, file: !1791, line: 38, baseType: !1796, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1791, line: 23, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1122, file: !1123, line: 992, baseType: !405, size: 64, offset: 10112)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1122, file: !1123, line: 993, baseType: !405, size: 64, offset: 10176)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1122, file: !1123, line: 996, baseType: !222, offset: 10240)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1122, file: !1123, line: 999, baseType: !766, offset: 10240)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1122, file: !1123, line: 1001, baseType: !1803, size: 64, offset: 10240)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1123, line: 636, size: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1803, file: !1123, line: 637, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1122, file: !1123, line: 1005, baseType: !738, size: 128, offset: 10304)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1122, file: !1123, line: 1007, baseType: !1121, size: 64, offset: 10432)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1122, file: !1123, line: 1009, baseType: !1810, size: 64, offset: 10496)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1123, line: 1009, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1122, file: !1123, line: 1043, baseType: !142, size: 64, offset: 10560)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1122, file: !1123, line: 1046, baseType: !1814, size: 64, offset: 10624)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1123, line: 41, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1122, file: !1123, line: 1050, baseType: !1817, size: 64, offset: 10688)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1123, line: 42, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1122, file: !1123, line: 1054, baseType: !1820, size: 64, offset: 10752)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1123, line: 55, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1122, file: !1123, line: 1056, baseType: !1823, size: 64, offset: 10816)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1123, line: 40, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1122, file: !1123, line: 1058, baseType: !1826, size: 64, offset: 10880)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1828, line: 99, size: 704, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1855, !1856}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1827, file: !1828, line: 100, baseType: !757, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1827, file: !1828, line: 101, baseType: !733, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1827, file: !1828, line: 102, baseType: !733, size: 32, offset: 96)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1827, file: !1828, line: 105, baseType: !222, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1827, file: !1828, line: 107, baseType: !161, size: 16, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1827, file: !1828, line: 109, baseType: !725, size: 128, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1827, file: !1828, line: 110, baseType: !1837, size: 64, offset: 320)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1828, line: 73, size: 448, elements: !1839)
!1839 = !{!1840, !1843, !1844, !1849, !1854}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1838, file: !1828, line: 74, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1828, line: 74, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1838, file: !1828, line: 75, baseType: !1826, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1828, line: 83, baseType: !1845, size: 128, offset: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1828, line: 83, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1845, file: !1828, line: 84, baseType: !209, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1845, file: !1828, line: 85, baseType: !920, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1828, line: 87, baseType: !1850, size: 128, offset: 256)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1828, line: 87, size: 128, elements: !1851)
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1850, file: !1828, line: 88, baseType: !625, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1850, file: !1828, line: 89, baseType: !353, size: 128, align: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1838, file: !1828, line: 92, baseType: !7, size: 32, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1827, file: !1828, line: 111, baseType: !621, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1827, file: !1828, line: 113, baseType: !1857, size: 256, offset: 448)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1858, line: 102, size: 256, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !{!1860, !1861, !1862}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1857, file: !1858, line: 103, baseType: !757, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1857, file: !1858, line: 104, baseType: !209, size: 128, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1857, file: !1858, line: 105, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1858, line: 21, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1122, file: !1123, line: 1061, baseType: !1869, size: 64, offset: 10944)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1123, line: 43, flags: DIFlagFwdDecl)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1122, file: !1123, line: 1064, baseType: !312, size: 64, offset: 11008)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1122, file: !1123, line: 1065, baseType: !1873, size: 64, offset: 11072)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1664, line: 14, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1664, line: 12, size: 384, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1664, line: 13, baseType: !1878, size: 384)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1875, file: !1664, line: 13, size: 384, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1878, file: !1664, line: 13, baseType: !170, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1878, file: !1664, line: 13, baseType: !170, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1878, file: !1664, line: 13, baseType: !170, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1878, file: !1664, line: 13, baseType: !1884, size: 256, offset: 128)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1885, line: 32, size: 256, elements: !1886)
!1885 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1886 = !{!1887, !1892, !1905, !1911, !1920, !1940, !1945}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1884, file: !1885, line: 37, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1885, line: 34, size: 64, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1888, file: !1885, line: 35, baseType: !1364, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1888, file: !1885, line: 36, baseType: !424, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1884, file: !1885, line: 45, baseType: !1893, size: 192)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1885, line: 40, size: 192, elements: !1894)
!1894 = !{!1895, !1897, !1898, !1904}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1893, file: !1885, line: 41, baseType: !1896, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !296, line: 95, baseType: !170)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1893, file: !1885, line: 42, baseType: !170, size: 32, offset: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1893, file: !1885, line: 43, baseType: !1899, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1885, line: 11, baseType: !1900)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1885, line: 8, size: 64, elements: !1901)
!1901 = !{!1902, !1903}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1900, file: !1885, line: 9, baseType: !170, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1900, file: !1885, line: 10, baseType: !142, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1893, file: !1885, line: 44, baseType: !170, size: 32, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1884, file: !1885, line: 52, baseType: !1906, size: 128)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1885, line: 48, size: 128, elements: !1907)
!1907 = !{!1908, !1909, !1910}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1906, file: !1885, line: 49, baseType: !1364, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1906, file: !1885, line: 50, baseType: !424, size: 32, offset: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1906, file: !1885, line: 51, baseType: !1899, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1884, file: !1885, line: 61, baseType: !1912, size: 256)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1885, line: 55, size: 256, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1919}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1912, file: !1885, line: 56, baseType: !1364, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1912, file: !1885, line: 57, baseType: !424, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1912, file: !1885, line: 58, baseType: !170, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1912, file: !1885, line: 59, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !296, line: 94, baseType: !297)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1912, file: !1885, line: 60, baseType: !1918, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1884, file: !1885, line: 95, baseType: !1921, size: 256)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1885, line: 64, size: 256, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1921, file: !1885, line: 65, baseType: !142, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1885, line: 77, baseType: !1925, size: 192, offset: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1921, file: !1885, line: 77, size: 192, elements: !1926)
!1926 = !{!1927, !1928, !1935}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1925, file: !1885, line: 82, baseType: !1110, size: 16)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1925, file: !1885, line: 88, baseType: !1929, size: 192)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1925, file: !1885, line: 84, size: 192, elements: !1930)
!1930 = !{!1931, !1933, !1934}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1929, file: !1885, line: 85, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 64, elements: !1235)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1929, file: !1885, line: 86, baseType: !142, size: 64, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1929, file: !1885, line: 87, baseType: !142, size: 64, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1925, file: !1885, line: 93, baseType: !1936, size: 96)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1925, file: !1885, line: 90, size: 96, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1936, file: !1885, line: 91, baseType: !1932, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1936, file: !1885, line: 92, baseType: !179, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1884, file: !1885, line: 101, baseType: !1941, size: 128)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1885, line: 98, size: 128, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1941, file: !1885, line: 99, baseType: !298, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1941, file: !1885, line: 100, baseType: !170, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1884, file: !1885, line: 108, baseType: !1946, size: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1885, line: 104, size: 128, elements: !1947)
!1947 = !{!1948, !1949, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1946, file: !1885, line: 105, baseType: !142, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1946, file: !1885, line: 106, baseType: !170, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1946, file: !1885, line: 107, baseType: !7, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1122, file: !1123, line: 1067, baseType: !1736, offset: 11136)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1122, file: !1123, line: 1099, baseType: !1953, size: 64, offset: 11136)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1123, line: 56, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1122, file: !1123, line: 1103, baseType: !209, size: 128, offset: 11200)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1122, file: !1123, line: 1104, baseType: !1957, size: 64, offset: 11328)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1123, line: 46, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1122, file: !1123, line: 1105, baseType: !1078, size: 192, offset: 11392)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1122, file: !1123, line: 1106, baseType: !7, size: 32, offset: 11584)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1122, file: !1123, line: 1109, baseType: !1962, size: 128, offset: 11648)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1963, size: 128, elements: !190)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1123, line: 51, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1122, file: !1123, line: 1110, baseType: !1078, size: 192, offset: 11776)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1122, file: !1123, line: 1111, baseType: !209, size: 128, offset: 11968)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1122, file: !1123, line: 1173, baseType: !1968, size: 64, offset: 12096)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1970, line: 62, size: 256, align: 256, elements: !1971)
!1970 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !{!1972, !1973, !1974, !1979}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1969, file: !1970, line: 75, baseType: !179, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1969, file: !1970, line: 90, baseType: !179, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1969, file: !1970, line: 124, baseType: !1975, size: 64, offset: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1969, file: !1970, line: 109, size: 64, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1975, file: !1970, line: 110, baseType: !406, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1975, file: !1970, line: 112, baseType: !406, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !1970, line: 144, baseType: !179, size: 32, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1122, file: !1123, line: 1174, baseType: !177, size: 32, offset: 12160)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1122, file: !1123, line: 1179, baseType: !312, size: 64, offset: 12224)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1122, file: !1123, line: 1182, baseType: !1983, size: 128, offset: 12288)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1056, line: 76, size: 128, elements: !1984)
!1984 = !{!1985, !1990, !1991}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1983, file: !1056, line: 85, baseType: !1986, size: 64)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1987, line: 7, size: 64, elements: !1988)
!1987 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1986, file: !1987, line: 12, baseType: !1271, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1983, file: !1056, line: 88, baseType: !473, size: 8, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1983, file: !1056, line: 95, baseType: !473, size: 8, offset: 72)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !1123, line: 1184, baseType: !1993, size: 128, offset: 12416)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !1123, line: 1184, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1993, file: !1123, line: 1185, baseType: !1135, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1993, file: !1123, line: 1186, baseType: !353, size: 128, align: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1122, file: !1123, line: 1190, baseType: !1998, size: 64, offset: 12544)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1123, line: 53, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1122, file: !1123, line: 1192, baseType: !2001, size: 128, offset: 12608)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1056, line: 64, size: 128, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2001, file: !1056, line: 65, baseType: !707, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2001, file: !1056, line: 67, baseType: !179, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2001, file: !1056, line: 68, baseType: !179, size: 32, offset: 96)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1122, file: !1123, line: 1206, baseType: !170, size: 32, offset: 12736)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1122, file: !1123, line: 1207, baseType: !170, size: 32, offset: 12768)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1122, file: !1123, line: 1209, baseType: !312, size: 64, offset: 12800)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1122, file: !1123, line: 1219, baseType: !405, size: 64, offset: 12864)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1122, file: !1123, line: 1220, baseType: !405, size: 64, offset: 12928)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1122, file: !1123, line: 1317, baseType: !170, size: 32, offset: 12992)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1122, file: !1123, line: 1319, baseType: !1121, size: 64, offset: 13056)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1122, file: !1123, line: 1322, baseType: !2014, size: 64, offset: 13120)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2016, line: 56, size: 512, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2017 = !{!2018, !2019, !2020, !2021, !2022, !2023, !2024, !2026}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2015, file: !2016, line: 57, baseType: !2014, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2015, file: !2016, line: 58, baseType: !142, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2015, file: !2016, line: 59, baseType: !312, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2016, line: 60, baseType: !312, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2015, file: !2016, line: 61, baseType: !806, size: 64, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2015, file: !2016, line: 62, baseType: !7, size: 32, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2015, file: !2016, line: 63, baseType: !2025, size: 64, offset: 384)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !141, line: 153, baseType: !405)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2015, file: !2016, line: 64, baseType: !2027, size: 64, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1122, file: !1123, line: 1326, baseType: !1135, size: 32, offset: 13184)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1122, file: !1123, line: 1342, baseType: !142, size: 64, offset: 13248)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1122, file: !1123, line: 1343, baseType: !406, size: 64, offset: 13312)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1122, file: !1123, line: 1344, baseType: !405, size: 64, offset: 13376)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1122, file: !1123, line: 1345, baseType: !406, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1122, file: !1123, line: 1346, baseType: !406, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1122, file: !1123, line: 1347, baseType: !406, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1122, file: !1123, line: 1348, baseType: !353, size: 128, align: 64, offset: 13504)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1122, file: !1123, line: 1358, baseType: !2038, size: 34816, offset: 13824)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2039, line: 485, size: 34816, elements: !2040)
!2039 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2070, !2071, !2072, !2073, !2074, !2075, !2078, !2079, !2080}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2038, file: !2039, line: 487, baseType: !2042, size: 192)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 192, elements: !264)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2044, line: 16, size: 64, elements: !2045)
!2044 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2043, file: !2044, line: 17, baseType: !845, size: 16)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2043, file: !2044, line: 18, baseType: !845, size: 16, offset: 16)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2043, file: !2044, line: 19, baseType: !845, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2043, file: !2044, line: 19, baseType: !845, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2043, file: !2044, line: 19, baseType: !845, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2043, file: !2044, line: 19, baseType: !845, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2043, file: !2044, line: 19, baseType: !845, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2043, file: !2044, line: 20, baseType: !845, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2043, file: !2044, line: 20, baseType: !845, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2043, file: !2044, line: 20, baseType: !845, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2043, file: !2044, line: 20, baseType: !845, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2043, file: !2044, line: 20, baseType: !845, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2043, file: !2044, line: 20, baseType: !845, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2038, file: !2039, line: 491, baseType: !312, size: 64, offset: 192)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2038, file: !2039, line: 495, baseType: !161, size: 16, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2038, file: !2039, line: 496, baseType: !161, size: 16, offset: 272)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2038, file: !2039, line: 497, baseType: !161, size: 16, offset: 288)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2038, file: !2039, line: 498, baseType: !161, size: 16, offset: 304)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2038, file: !2039, line: 502, baseType: !312, size: 64, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2038, file: !2039, line: 503, baseType: !312, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2038, file: !2039, line: 514, baseType: !2067, size: 256, offset: 448)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2068, size: 256, elements: !1060)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2039, line: 483, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2038, file: !2039, line: 516, baseType: !312, size: 64, offset: 704)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2038, file: !2039, line: 518, baseType: !312, size: 64, offset: 768)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2038, file: !2039, line: 520, baseType: !312, size: 64, offset: 832)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2038, file: !2039, line: 521, baseType: !312, size: 64, offset: 896)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2038, file: !2039, line: 522, baseType: !312, size: 64, offset: 960)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2038, file: !2039, line: 528, baseType: !2076, size: 64, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2039, line: 10, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2038, file: !2039, line: 535, baseType: !312, size: 64, offset: 1088)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2038, file: !2039, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2038, file: !2039, line: 540, baseType: !2081, size: 33280, offset: 1536)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2082, line: 317, size: 33280, elements: !2083)
!2082 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084, !2085, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2081, file: !2082, line: 330, baseType: !7, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2081, file: !2082, line: 337, baseType: !312, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2081, file: !2082, line: 348, baseType: !2087, size: 32768, offset: 512)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2082, line: 304, size: 32768, elements: !2088)
!2088 = !{!2089, !2104, !2143, !2193, !2206}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2087, file: !2082, line: 305, baseType: !2090, size: 896)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2082, line: 12, size: 896, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2103}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2090, file: !2082, line: 13, baseType: !177, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2090, file: !2082, line: 14, baseType: !177, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2090, file: !2082, line: 15, baseType: !177, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2090, file: !2082, line: 16, baseType: !177, size: 32, offset: 96)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2090, file: !2082, line: 17, baseType: !177, size: 32, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2090, file: !2082, line: 18, baseType: !177, size: 32, offset: 160)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2090, file: !2082, line: 19, baseType: !177, size: 32, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2090, file: !2082, line: 22, baseType: !2100, size: 640, offset: 224)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 640, elements: !2101)
!2101 = !{!2102}
!2102 = !DISubrange(count: 20)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2090, file: !2082, line: 25, baseType: !177, size: 32, offset: 864)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2087, file: !2082, line: 306, baseType: !2105, size: 4096, align: 128)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2082, line: 34, size: 4096, align: 128, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2126, !2127, !2128, !2132, !2134, !2138}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2105, file: !2082, line: 35, baseType: !845, size: 16)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2105, file: !2082, line: 36, baseType: !845, size: 16, offset: 16)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2105, file: !2082, line: 37, baseType: !845, size: 16, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2105, file: !2082, line: 38, baseType: !845, size: 16, offset: 48)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2082, line: 39, baseType: !2112, size: 128, offset: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2082, line: 39, size: 128, elements: !2113)
!2113 = !{!2114, !2119}
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !2082, line: 40, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2082, line: 40, size: 128, elements: !2116)
!2116 = !{!2117, !2118}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2115, file: !2082, line: 41, baseType: !405, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2115, file: !2082, line: 42, baseType: !405, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !2082, line: 44, baseType: !2120, size: 128)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !2082, line: 44, size: 128, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2120, file: !2082, line: 45, baseType: !177, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2120, file: !2082, line: 46, baseType: !177, size: 32, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2120, file: !2082, line: 47, baseType: !177, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2120, file: !2082, line: 48, baseType: !177, size: 32, offset: 96)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2105, file: !2082, line: 51, baseType: !177, size: 32, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2105, file: !2082, line: 52, baseType: !177, size: 32, offset: 224)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2105, file: !2082, line: 55, baseType: !2129, size: 1024, offset: 256)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 1024, elements: !2130)
!2130 = !{!2131}
!2131 = !DISubrange(count: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2105, file: !2082, line: 58, baseType: !2133, size: 2048, offset: 1280)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 2048, elements: !268)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2105, file: !2082, line: 60, baseType: !2135, size: 384, offset: 3328)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 384, elements: !2136)
!2136 = !{!2137}
!2137 = !DISubrange(count: 12)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !2082, line: 62, baseType: !2139, size: 384, offset: 3712)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2105, file: !2082, line: 62, size: 384, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2139, file: !2082, line: 63, baseType: !2135, size: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2139, file: !2082, line: 64, baseType: !2135, size: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2087, file: !2082, line: 307, baseType: !2144, size: 1088)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2082, line: 79, size: 1088, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2192}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2144, file: !2082, line: 80, baseType: !177, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2144, file: !2082, line: 81, baseType: !177, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2144, file: !2082, line: 82, baseType: !177, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2144, file: !2082, line: 83, baseType: !177, size: 32, offset: 96)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2144, file: !2082, line: 84, baseType: !177, size: 32, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2144, file: !2082, line: 85, baseType: !177, size: 32, offset: 160)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2144, file: !2082, line: 86, baseType: !177, size: 32, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2144, file: !2082, line: 88, baseType: !2100, size: 640, offset: 224)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2144, file: !2082, line: 89, baseType: !1257, size: 8, offset: 864)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2144, file: !2082, line: 90, baseType: !1257, size: 8, offset: 872)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2144, file: !2082, line: 91, baseType: !1257, size: 8, offset: 880)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2144, file: !2082, line: 92, baseType: !1257, size: 8, offset: 888)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2144, file: !2082, line: 93, baseType: !1257, size: 8, offset: 896)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2144, file: !2082, line: 94, baseType: !1257, size: 8, offset: 904)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2144, file: !2082, line: 95, baseType: !2161, size: 64, offset: 960)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2163, line: 11, size: 128, elements: !2164)
!2163 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2162, file: !2163, line: 12, baseType: !298, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2162, file: !2163, line: 13, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2169, line: 56, size: 1344, elements: !2170)
!2169 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2168, file: !2169, line: 61, baseType: !312, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2168, file: !2169, line: 62, baseType: !312, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2168, file: !2169, line: 63, baseType: !312, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2168, file: !2169, line: 64, baseType: !312, size: 64, offset: 192)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2168, file: !2169, line: 65, baseType: !312, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2168, file: !2169, line: 66, baseType: !312, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2168, file: !2169, line: 68, baseType: !312, size: 64, offset: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2168, file: !2169, line: 69, baseType: !312, size: 64, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2168, file: !2169, line: 70, baseType: !312, size: 64, offset: 512)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2168, file: !2169, line: 71, baseType: !312, size: 64, offset: 576)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2168, file: !2169, line: 72, baseType: !312, size: 64, offset: 640)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2168, file: !2169, line: 73, baseType: !312, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2168, file: !2169, line: 74, baseType: !312, size: 64, offset: 768)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2168, file: !2169, line: 75, baseType: !312, size: 64, offset: 832)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2168, file: !2169, line: 76, baseType: !312, size: 64, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2168, file: !2169, line: 81, baseType: !312, size: 64, offset: 960)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2168, file: !2169, line: 83, baseType: !312, size: 64, offset: 1024)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2168, file: !2169, line: 84, baseType: !312, size: 64, offset: 1088)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2168, file: !2169, line: 85, baseType: !312, size: 64, offset: 1152)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2168, file: !2169, line: 86, baseType: !312, size: 64, offset: 1216)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2168, file: !2169, line: 87, baseType: !312, size: 64, offset: 1280)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2144, file: !2082, line: 96, baseType: !177, size: 32, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2087, file: !2082, line: 308, baseType: !2194, size: 4608, align: 512)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2082, line: 289, size: 4608, align: 512, elements: !2195)
!2195 = !{!2196, !2197, !2204}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2194, file: !2082, line: 290, baseType: !2105, size: 4096, align: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2194, file: !2082, line: 291, baseType: !2198, size: 512, offset: 4096)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2082, line: 268, size: 512, elements: !2199)
!2199 = !{!2200, !2201, !2202}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2198, file: !2082, line: 269, baseType: !405, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2198, file: !2082, line: 270, baseType: !405, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2198, file: !2082, line: 271, baseType: !2203, size: 384, offset: 128)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 384, elements: !1527)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2194, file: !2082, line: 292, baseType: !2205, offset: 4608)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, elements: !1625)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2087, file: !2082, line: 309, baseType: !2207, size: 32768)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 32768, elements: !2208)
!2208 = !{!2209}
!2209 = !DISubrange(count: 4096)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !709, line: 378, baseType: !2211, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1114, file: !709, line: 384, baseType: !1406, size: 192, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !963, file: !709, line: 500, baseType: !222, offset: 6656)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !963, file: !709, line: 501, baseType: !2215, size: 64, offset: 6656)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !709, line: 387, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !963, file: !709, line: 516, baseType: !1615, size: 64, offset: 6720)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !963, file: !709, line: 519, baseType: !340, size: 64, offset: 6784)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !963, file: !709, line: 521, baseType: !2220, size: 64, offset: 6848)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !709, line: 521, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !963, file: !709, line: 545, baseType: !733, size: 32, offset: 6912)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !963, file: !709, line: 548, baseType: !473, size: 8, offset: 6944)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !963, file: !709, line: 550, baseType: !2225, offset: 6952)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2226, line: 142, elements: !236)
!2226 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !963, file: !709, line: 554, baseType: !1857, size: 256, offset: 6976)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !963, file: !709, line: 557, baseType: !177, size: 32, offset: 7232)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !960, file: !709, line: 565, baseType: !2230, offset: 7296)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, elements: !2231)
!2231 = !{!2232}
!2232 = !DISubrange(count: -1)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !956, file: !709, line: 151, baseType: !733, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !949, file: !709, line: 156, baseType: !222, offset: 256)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !713, file: !709, line: 159, baseType: !2236, size: 128)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !709, line: 159, size: 128, elements: !2237)
!2237 = !{!2238, !2241}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2236, file: !709, line: 161, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !709, line: 161, flags: DIFlagFwdDecl)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2236, file: !709, line: 162, baseType: !142, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !713, file: !709, line: 176, baseType: !353, size: 128, align: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !709, line: 179, baseType: !2244, size: 32, offset: 384)
!2244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !708, file: !709, line: 179, size: 32, elements: !2245)
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2244, file: !709, line: 184, baseType: !733, size: 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2244, file: !709, line: 192, baseType: !7, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2244, file: !709, line: 194, baseType: !7, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2244, file: !709, line: 195, baseType: !170, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !708, file: !709, line: 199, baseType: !733, size: 32, offset: 416)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !643, file: !37, line: 1964, baseType: !2252, size: 64, offset: 1344)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!298, !582, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2257, line: 12, size: 256, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2258 = !{!2259, !2260, !2261, !2262, !2263}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2256, file: !2257, line: 13, baseType: !140, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2256, file: !2257, line: 16, baseType: !170, size: 32, offset: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2256, file: !2257, line: 23, baseType: !312, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2256, file: !2257, line: 30, baseType: !312, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2256, file: !2257, line: 33, baseType: !2264, size: 64, offset: 192)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !709, line: 27, flags: DIFlagFwdDecl)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !643, file: !37, line: 1966, baseType: !2252, size: 64, offset: 1408)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !583, file: !37, line: 1424, baseType: !2268, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2271)
!2271 = !{!2272, !2318, !2322, !2326, !2327, !2328, !2329, !2330, !2335, !2340, !2344}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2270, file: !31, line: 323, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!170, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2278)
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2303, !2304, !2305}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2277, file: !31, line: 295, baseType: !625, size: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2277, file: !31, line: 296, baseType: !209, size: 128, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2277, file: !31, line: 297, baseType: !209, size: 128, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2277, file: !31, line: 298, baseType: !209, size: 128, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2277, file: !31, line: 299, baseType: !1078, size: 192, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2277, file: !31, line: 300, baseType: !222, offset: 704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2277, file: !31, line: 301, baseType: !733, size: 32, offset: 704)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2277, file: !31, line: 302, baseType: !582, size: 64, offset: 768)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2277, file: !31, line: 303, baseType: !2288, size: 64, offset: 832)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2289)
!2289 = !{!2290, !2302}
!2290 = !DIDerivedType(tag: DW_TAG_member, scope: !2288, file: !31, line: 69, baseType: !2291, size: 32)
!2291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2288, file: !31, line: 69, size: 32, elements: !2292)
!2292 = !{!2293, !2294, !2295}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2291, file: !31, line: 70, baseType: !418, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2291, file: !31, line: 71, baseType: !426, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2291, file: !31, line: 72, baseType: !2296, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2297, line: 24, baseType: !2298)
!2297 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2297, line: 22, size: 32, elements: !2299)
!2299 = !{!2300}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2298, file: !2297, line: 23, baseType: !2301, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2297, line: 20, baseType: !424)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2288, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2277, file: !31, line: 304, baseType: !514, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2277, file: !31, line: 305, baseType: !312, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2277, file: !31, line: 306, baseType: !2306, size: 576, offset: 1024)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2307)
!2307 = !{!2308, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2306, file: !31, line: 206, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !516)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2306, file: !31, line: 207, baseType: !2309, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2306, file: !31, line: 208, baseType: !2309, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2306, file: !31, line: 209, baseType: !2309, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2306, file: !31, line: 210, baseType: !2309, size: 64, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2306, file: !31, line: 211, baseType: !2309, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2306, file: !31, line: 212, baseType: !2309, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2306, file: !31, line: 213, baseType: !522, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2306, file: !31, line: 214, baseType: !522, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2270, file: !31, line: 324, baseType: !2319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2276, !582, !170}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2270, file: !31, line: 325, baseType: !2323, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{null, !2276}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2270, file: !31, line: 326, baseType: !2273, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2270, file: !31, line: 327, baseType: !2273, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2270, file: !31, line: 328, baseType: !2273, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2270, file: !31, line: 329, baseType: !671, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2270, file: !31, line: 332, baseType: !2331, size: 64, offset: 448)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!2334, !412}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2270, file: !31, line: 333, baseType: !2336, size: 64, offset: 512)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!170, !412, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2270, file: !31, line: 335, baseType: !2341, size: 64, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!170, !412, !2334}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2270, file: !31, line: 337, baseType: !2345, size: 64, offset: 640)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!170, !582, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !583, file: !37, line: 1425, baseType: !2350, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2353)
!2353 = !{!2354, !2358, !2359, !2363, !2364, !2365, !2380, !2403, !2407, !2408, !2431}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2352, file: !31, line: 429, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!170, !582, !170, !170, !532}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2352, file: !31, line: 430, baseType: !671, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2352, file: !31, line: 431, baseType: !2360, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!170, !582, !7}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2352, file: !31, line: 432, baseType: !2360, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2352, file: !31, line: 433, baseType: !671, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2352, file: !31, line: 434, baseType: !2366, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!170, !582, !170, !2369}
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2370, file: !31, line: 416, baseType: !170, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2370, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2370, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2370, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2370, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2370, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2370, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2370, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2352, file: !31, line: 435, baseType: !2381, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!170, !582, !2288, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2385, file: !31, line: 344, baseType: !170, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2385, file: !31, line: 345, baseType: !405, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2385, file: !31, line: 346, baseType: !405, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2385, file: !31, line: 347, baseType: !405, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2385, file: !31, line: 348, baseType: !405, size: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2385, file: !31, line: 349, baseType: !405, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2385, file: !31, line: 350, baseType: !405, size: 64, offset: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2385, file: !31, line: 351, baseType: !763, size: 64, offset: 448)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2385, file: !31, line: 353, baseType: !763, size: 64, offset: 512)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2385, file: !31, line: 354, baseType: !170, size: 32, offset: 576)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2385, file: !31, line: 355, baseType: !170, size: 32, offset: 608)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2385, file: !31, line: 356, baseType: !405, size: 64, offset: 640)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2385, file: !31, line: 357, baseType: !405, size: 64, offset: 704)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2385, file: !31, line: 358, baseType: !405, size: 64, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2385, file: !31, line: 359, baseType: !763, size: 64, offset: 832)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2385, file: !31, line: 360, baseType: !170, size: 32, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2352, file: !31, line: 436, baseType: !2404, size: 64, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!170, !582, !2348, !2384}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2352, file: !31, line: 438, baseType: !2381, size: 64, offset: 512)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2352, file: !31, line: 439, baseType: !2409, size: 64, offset: 576)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!170, !582, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2414)
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2413, file: !31, line: 410, baseType: !7, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2413, file: !31, line: 411, baseType: !2417, size: 1344, offset: 64)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 1344, elements: !264)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2430}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2418, file: !31, line: 396, baseType: !7, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2418, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2418, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2418, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2418, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2418, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2418, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2418, file: !31, line: 404, baseType: !407, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2418, file: !31, line: 405, baseType: !2429, size: 64, offset: 320)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !141, line: 126, baseType: !405)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2418, file: !31, line: 406, baseType: !2429, size: 64, offset: 384)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2352, file: !31, line: 440, baseType: !2360, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !583, file: !37, line: 1426, baseType: !2433, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2435)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !583, file: !37, line: 1427, baseType: !312, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !583, file: !37, line: 1428, baseType: !312, size: 64, offset: 704)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !583, file: !37, line: 1429, baseType: !312, size: 64, offset: 768)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !583, file: !37, line: 1430, baseType: !370, size: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !583, file: !37, line: 1431, baseType: !753, size: 256, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !583, file: !37, line: 1432, baseType: !170, size: 32, offset: 1152)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !583, file: !37, line: 1433, baseType: !733, size: 32, offset: 1184)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !583, file: !37, line: 1437, baseType: !2444, size: 64, offset: 1216)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2447)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !583, file: !37, line: 1449, baseType: !2449, size: 64, offset: 1280)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !386, line: 34, size: 64, elements: !2450)
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2449, file: !386, line: 35, baseType: !389, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !583, file: !37, line: 1450, baseType: !209, size: 128, offset: 1344)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !583, file: !37, line: 1451, baseType: !2454, size: 64, offset: 1472)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !583, file: !37, line: 1452, baseType: !1823, size: 64, offset: 1536)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !583, file: !37, line: 1453, baseType: !2458, size: 64, offset: 1600)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !583, file: !37, line: 1454, baseType: !625, size: 128, offset: 1664)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !583, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !583, file: !37, line: 1456, baseType: !2463, size: 2432, offset: 1856)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2469, !2501}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !31, line: 519, baseType: !7, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2463, file: !31, line: 520, baseType: !753, size: 256, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2463, file: !31, line: 521, baseType: !2468, size: 192, offset: 320)
!2468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 192, elements: !264)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2463, file: !31, line: 522, baseType: !2470, size: 1728, offset: 512)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2471, size: 1728, elements: !264)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2472)
!2472 = !{!2473, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2471, file: !31, line: 223, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2476)
!2476 = !{!2477, !2478, !2491, !2492}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2475, file: !31, line: 444, baseType: !170, size: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2475, file: !31, line: 445, baseType: !2479, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2481, file: !31, line: 311, baseType: !671, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2481, file: !31, line: 312, baseType: !671, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2481, file: !31, line: 313, baseType: !671, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2481, file: !31, line: 314, baseType: !671, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2481, file: !31, line: 315, baseType: !2273, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2481, file: !31, line: 316, baseType: !2273, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2481, file: !31, line: 317, baseType: !2273, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2481, file: !31, line: 318, baseType: !2345, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2475, file: !31, line: 446, baseType: !616, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2475, file: !31, line: 447, baseType: !2474, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2471, file: !31, line: 224, baseType: !170, size: 32, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2471, file: !31, line: 226, baseType: !209, size: 128, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2471, file: !31, line: 227, baseType: !312, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2471, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2471, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2471, file: !31, line: 230, baseType: !2309, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2471, file: !31, line: 231, baseType: !2309, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2471, file: !31, line: 232, baseType: !142, size: 64, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2463, file: !31, line: 523, baseType: !2502, size: 192, offset: 2240)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2479, size: 192, elements: !264)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !583, file: !37, line: 1458, baseType: !2504, size: 2112, offset: 4288)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2505)
!2505 = !{!2506, !2507, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2504, file: !37, line: 1411, baseType: !170, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2504, file: !37, line: 1412, baseType: !1385, size: 128, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2504, file: !37, line: 1413, baseType: !2509, size: 1920, offset: 192)
!2509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2510, size: 1920, elements: !264)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2511, line: 12, size: 640, elements: !2512)
!2511 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2512 = !{!2513, !2521, !2523, !2528, !2529}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2510, file: !2511, line: 13, baseType: !2514, size: 320)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2515, line: 17, size: 320, elements: !2516)
!2515 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2516 = !{!2517, !2518, !2519, !2520}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2514, file: !2515, line: 18, baseType: !170, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2514, file: !2515, line: 19, baseType: !170, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2514, file: !2515, line: 20, baseType: !1385, size: 128, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2514, file: !2515, line: 22, baseType: !353, size: 128, align: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2510, file: !2511, line: 14, baseType: !2522, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2510, file: !2511, line: 15, baseType: !2524, size: 64, offset: 384)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2525, line: 16, size: 64, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2526 = !{!2527}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2524, file: !2525, line: 17, baseType: !1121, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2510, file: !2511, line: 16, baseType: !1385, size: 128, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2510, file: !2511, line: 17, baseType: !733, size: 32, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !583, file: !37, line: 1465, baseType: !142, size: 64, offset: 6400)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !583, file: !37, line: 1468, baseType: !177, size: 32, offset: 6464)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !583, file: !37, line: 1470, baseType: !522, size: 64, offset: 6528)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !583, file: !37, line: 1471, baseType: !522, size: 64, offset: 6592)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !583, file: !37, line: 1473, baseType: !179, size: 32, offset: 6656)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !583, file: !37, line: 1474, baseType: !2536, size: 64, offset: 6720)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !583, file: !37, line: 1477, baseType: !2539, size: 256, offset: 6784)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !2130)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !583, file: !37, line: 1478, baseType: !2541, size: 128, offset: 7040)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2542, line: 18, baseType: !2543)
!2542 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2542, line: 16, size: 128, elements: !2544)
!2544 = !{!2545}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2543, file: !2542, line: 17, baseType: !2546, size: 128)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !174)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !583, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !583, file: !37, line: 1481, baseType: !2549, size: 32, offset: 7200)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !141, line: 150, baseType: !7)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !583, file: !37, line: 1487, baseType: !1078, size: 192, offset: 7232)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !583, file: !37, line: 1493, baseType: !206, size: 64, offset: 7424)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !583, file: !37, line: 1495, baseType: !2553, size: 64, offset: 7488)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !368, line: 135, size: 1024, align: 512, elements: !2556)
!2556 = !{!2557, !2561, !2562, !2569, !2575, !2579, !2583, !2587, !2588, !2592, !2596, !2601, !2605}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2555, file: !368, line: 136, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!170, !370, !7}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2555, file: !368, line: 137, baseType: !2558, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2555, file: !368, line: 138, baseType: !2563, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!170, !2566, !2568}
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2555, file: !368, line: 139, baseType: !2570, size: 64, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!170, !2566, !7, !206, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2555, file: !368, line: 141, baseType: !2576, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!170, !2566}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2555, file: !368, line: 142, baseType: !2580, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!170, !370}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2555, file: !368, line: 143, baseType: !2584, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{null, !370}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2555, file: !368, line: 144, baseType: !2584, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2555, file: !368, line: 145, baseType: !2589, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !370, !412}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2555, file: !368, line: 146, baseType: !2593, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!263, !370, !263, !170}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2555, file: !368, line: 147, baseType: !2597, size: 64, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!366, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2555, file: !368, line: 148, baseType: !2602, size: 64, offset: 704)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!170, !532, !473}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2555, file: !368, line: 149, baseType: !2606, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!370, !370, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !583, file: !37, line: 1500, baseType: !170, size: 32, offset: 7552)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !583, file: !37, line: 1502, baseType: !2613, size: 448, offset: 7616)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2257, line: 60, size: 448, elements: !2614)
!2614 = !{!2615, !2620, !2621, !2622, !2623, !2624, !2625}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2613, file: !2257, line: 61, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!312, !2619, !2255}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2613, file: !2257, line: 63, baseType: !2616, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2613, file: !2257, line: 66, baseType: !298, size: 64, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2613, file: !2257, line: 67, baseType: !170, size: 32, offset: 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2613, file: !2257, line: 68, baseType: !7, size: 32, offset: 224)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2613, file: !2257, line: 71, baseType: !209, size: 128, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2613, file: !2257, line: 77, baseType: !2626, size: 64, offset: 384)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !583, file: !37, line: 1505, baseType: !757, size: 64, offset: 8064)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !583, file: !37, line: 1508, baseType: !757, size: 64, offset: 8128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !583, file: !37, line: 1511, baseType: !170, size: 32, offset: 8192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !583, file: !37, line: 1514, baseType: !894, size: 32, offset: 8224)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !583, file: !37, line: 1517, baseType: !2632, size: 64, offset: 8256)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1858, line: 18, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !583, file: !37, line: 1518, baseType: !621, size: 64, offset: 8320)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !583, file: !37, line: 1525, baseType: !1615, size: 64, offset: 8384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !583, file: !37, line: 1532, baseType: !2637, size: 64, offset: 8448)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2638, line: 52, size: 64, elements: !2639)
!2638 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2639 = !{!2640}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2637, file: !2638, line: 53, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2638, line: 40, size: 256, elements: !2643)
!2643 = !{!2644, !2645, !2650}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2642, file: !2638, line: 42, baseType: !222)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2642, file: !2638, line: 44, baseType: !2646, size: 192)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2638, line: 28, size: 192, elements: !2647)
!2647 = !{!2648, !2649}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2646, file: !2638, line: 29, baseType: !209, size: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2646, file: !2638, line: 31, baseType: !298, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2642, file: !2638, line: 49, baseType: !298, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !583, file: !37, line: 1533, baseType: !2637, size: 64, offset: 8512)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !583, file: !37, line: 1534, baseType: !353, size: 128, align: 64, offset: 8576)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !583, file: !37, line: 1535, baseType: !1857, size: 256, offset: 8704)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !583, file: !37, line: 1537, baseType: !1078, size: 192, offset: 8960)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !583, file: !37, line: 1542, baseType: !170, size: 32, offset: 9152)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !583, file: !37, line: 1545, baseType: !222, offset: 9184)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !583, file: !37, line: 1546, baseType: !209, size: 128, offset: 9216)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !583, file: !37, line: 1548, baseType: !222, offset: 9344)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !583, file: !37, line: 1549, baseType: !209, size: 128, offset: 9344)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !413, file: !37, line: 624, baseType: !720, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !413, file: !37, line: 631, baseType: !312, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !37, line: 639, baseType: !2663, size: 32, offset: 384)
!2663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !37, line: 639, size: 32, elements: !2664)
!2664 = !{!2665, !2667}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2663, file: !37, line: 640, baseType: !2666, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2663, file: !37, line: 641, baseType: !7, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !413, file: !37, line: 643, baseType: !496, size: 32, offset: 416)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !413, file: !37, line: 644, baseType: !514, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !413, file: !37, line: 645, baseType: !518, size: 128, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !413, file: !37, line: 646, baseType: !518, size: 128, offset: 640)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !413, file: !37, line: 647, baseType: !518, size: 128, offset: 768)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !413, file: !37, line: 648, baseType: !222, offset: 896)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !413, file: !37, line: 649, baseType: !161, size: 16, offset: 896)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !413, file: !37, line: 650, baseType: !1257, size: 8, offset: 912)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !413, file: !37, line: 651, baseType: !1257, size: 8, offset: 920)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !413, file: !37, line: 652, baseType: !2429, size: 64, offset: 960)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !413, file: !37, line: 659, baseType: !312, size: 64, offset: 1024)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !413, file: !37, line: 660, baseType: !753, size: 256, offset: 1088)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !413, file: !37, line: 662, baseType: !312, size: 64, offset: 1344)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !413, file: !37, line: 663, baseType: !312, size: 64, offset: 1408)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !413, file: !37, line: 665, baseType: !625, size: 128, offset: 1472)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !413, file: !37, line: 666, baseType: !209, size: 128, offset: 1600)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !413, file: !37, line: 675, baseType: !209, size: 128, offset: 1728)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !413, file: !37, line: 676, baseType: !209, size: 128, offset: 1856)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !413, file: !37, line: 677, baseType: !209, size: 128, offset: 1984)
!2687 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !37, line: 678, baseType: !2688, size: 128, offset: 2112)
!2688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !37, line: 678, size: 128, elements: !2689)
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2688, file: !37, line: 679, baseType: !621, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2688, file: !37, line: 680, baseType: !353, size: 128, align: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !413, file: !37, line: 682, baseType: !759, size: 64, offset: 2240)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !413, file: !37, line: 683, baseType: !759, size: 64, offset: 2304)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !413, file: !37, line: 684, baseType: !733, size: 32, offset: 2368)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !413, file: !37, line: 685, baseType: !733, size: 32, offset: 2400)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !413, file: !37, line: 686, baseType: !733, size: 32, offset: 2432)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !413, file: !37, line: 688, baseType: !733, size: 32, offset: 2464)
!2698 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !37, line: 690, baseType: !2699, size: 64, offset: 2496)
!2699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !37, line: 690, size: 64, elements: !2700)
!2700 = !{!2701, !2923}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2699, file: !37, line: 691, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2704)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2705)
!2705 = !{!2706, !2707, !2711, !2716, !2720, !2721, !2722, !2726, !2739, !2740, !2747, !2751, !2752, !2756, !2757, !2761, !2766, !2767, !2771, !2775, !2883, !2887, !2888, !2892, !2893, !2897, !2901, !2906, !2910, !2914, !2918, !2922}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2704, file: !37, line: 1823, baseType: !616, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2704, file: !37, line: 1824, baseType: !2708, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!514, !340, !514, !170}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2704, file: !37, line: 1825, baseType: !2712, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!294, !340, !263, !309, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2704, file: !37, line: 1826, baseType: !2717, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!294, !340, !206, !309, !2715}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2704, file: !37, line: 1827, baseType: !830, size: 64, offset: 256)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2704, file: !37, line: 1828, baseType: !830, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2704, file: !37, line: 1829, baseType: !2723, size: 64, offset: 384)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!170, !833, !473}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2704, file: !37, line: 1830, baseType: !2727, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!170, !340, !2730}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2732)
!2732 = !{!2733, !2738}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2731, file: !37, line: 1777, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2735)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!170, !2730, !206, !170, !514, !405, !7}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2731, file: !37, line: 1778, baseType: !514, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2704, file: !37, line: 1831, baseType: !2727, size: 64, offset: 512)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2704, file: !37, line: 1832, baseType: !2741, size: 64, offset: 576)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!2744, !340, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !159, line: 52, baseType: !7)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !602, line: 27, flags: DIFlagFwdDecl)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2704, file: !37, line: 1833, baseType: !2748, size: 64, offset: 640)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!298, !340, !7, !312}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2704, file: !37, line: 1834, baseType: !2748, size: 64, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2704, file: !37, line: 1835, baseType: !2753, size: 64, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!170, !340, !966}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2704, file: !37, line: 1836, baseType: !312, size: 64, offset: 832)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2704, file: !37, line: 1837, baseType: !2758, size: 64, offset: 896)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!170, !412, !340}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2704, file: !37, line: 1838, baseType: !2762, size: 64, offset: 960)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!170, !340, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !142)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2704, file: !37, line: 1839, baseType: !2758, size: 64, offset: 1024)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2704, file: !37, line: 1840, baseType: !2768, size: 64, offset: 1088)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!170, !340, !514, !514, !170}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2704, file: !37, line: 1841, baseType: !2772, size: 64, offset: 1152)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!170, !170, !340, !170}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2704, file: !37, line: 1842, baseType: !2776, size: 64, offset: 1216)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!170, !340, !170, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2813, !2814, !2815, !2828, !2859}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2780, file: !37, line: 1063, baseType: !2779, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2780, file: !37, line: 1064, baseType: !209, size: 128, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2780, file: !37, line: 1065, baseType: !625, size: 128, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2780, file: !37, line: 1066, baseType: !209, size: 128, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2780, file: !37, line: 1069, baseType: !209, size: 128, offset: 448)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2780, file: !37, line: 1072, baseType: !2765, size: 64, offset: 576)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2780, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2780, file: !37, line: 1074, baseType: !153, size: 8, offset: 672)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2780, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2780, file: !37, line: 1076, baseType: !170, size: 32, offset: 736)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2780, file: !37, line: 1077, baseType: !1385, size: 128, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2780, file: !37, line: 1078, baseType: !340, size: 64, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2780, file: !37, line: 1079, baseType: !514, size: 64, offset: 960)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2780, file: !37, line: 1080, baseType: !514, size: 64, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2780, file: !37, line: 1082, baseType: !2797, size: 64, offset: 1088)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2799)
!2799 = !{!2800, !2808, !2809, !2810, !2811, !2812}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2798, file: !37, line: 1315, baseType: !2801)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2802, line: 20, baseType: !2803)
!2802 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2802, line: 11, elements: !2804)
!2804 = !{!2805}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2803, file: !2802, line: 12, baseType: !2806)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !234, line: 33, baseType: !2807)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 31, elements: !236)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2798, file: !37, line: 1316, baseType: !170, size: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2798, file: !37, line: 1317, baseType: !170, size: 32, offset: 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2798, file: !37, line: 1318, baseType: !2797, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2798, file: !37, line: 1319, baseType: !340, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2798, file: !37, line: 1320, baseType: !353, size: 128, align: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2780, file: !37, line: 1084, baseType: !312, size: 64, offset: 1152)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2780, file: !37, line: 1085, baseType: !312, size: 64, offset: 1216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2780, file: !37, line: 1087, baseType: !2816, size: 64, offset: 1280)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2818)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2819)
!2819 = !{!2820, !2824}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2818, file: !37, line: 1012, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !2779, !2779}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2818, file: !37, line: 1013, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2779}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2780, file: !37, line: 1088, baseType: !2829, size: 64, offset: 1344)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2831)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2832)
!2832 = !{!2833, !2837, !2841, !2842, !2846, !2850, !2854, !2858}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2831, file: !37, line: 1017, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!2765, !2765}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2831, file: !37, line: 1018, baseType: !2838, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !2765}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2831, file: !37, line: 1019, baseType: !2825, size: 64, offset: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2831, file: !37, line: 1020, baseType: !2843, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!170, !2779, !170}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2831, file: !37, line: 1021, baseType: !2847, size: 64, offset: 256)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!473, !2779}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2831, file: !37, line: 1022, baseType: !2851, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!170, !2779, !170, !212}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2831, file: !37, line: 1023, baseType: !2855, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2779, !807}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2831, file: !37, line: 1024, baseType: !2847, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2780, file: !37, line: 1097, baseType: !2860, size: 256, offset: 1408)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2780, file: !37, line: 1089, size: 256, elements: !2861)
!2861 = !{!2862, !2871, !2877}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2860, file: !37, line: 1090, baseType: !2863, size: 256)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2864, line: 10, size: 256, elements: !2865)
!2864 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2865 = !{!2866, !2867, !2870}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2863, file: !2864, line: 11, baseType: !177, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2863, file: !2864, line: 12, baseType: !2868, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2864, line: 5, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2863, file: !2864, line: 13, baseType: !209, size: 128, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2860, file: !37, line: 1091, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2864, line: 17, size: 64, elements: !2873)
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2872, file: !2864, line: 18, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2864, line: 16, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2860, file: !37, line: 1096, baseType: !2878, size: 192)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2860, file: !37, line: 1092, size: 192, elements: !2879)
!2879 = !{!2880, !2881, !2882}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2878, file: !37, line: 1093, baseType: !209, size: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2878, file: !37, line: 1094, baseType: !170, size: 32, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2878, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2704, file: !37, line: 1843, baseType: !2884, size: 64, offset: 1280)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!294, !340, !707, !170, !309, !2715, !170}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2704, file: !37, line: 1844, baseType: !1006, size: 64, offset: 1344)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2704, file: !37, line: 1845, baseType: !2889, size: 64, offset: 1408)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!170, !170}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2704, file: !37, line: 1846, baseType: !2776, size: 64, offset: 1472)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2704, file: !37, line: 1847, baseType: !2894, size: 64, offset: 1536)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!294, !1998, !340, !2715, !309, !7}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2704, file: !37, line: 1848, baseType: !2898, size: 64, offset: 1600)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!294, !340, !2715, !1998, !309, !7}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2704, file: !37, line: 1849, baseType: !2902, size: 64, offset: 1664)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!170, !340, !298, !2905, !807}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2704, file: !37, line: 1850, baseType: !2907, size: 64, offset: 1728)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!298, !340, !170, !514, !514}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2704, file: !37, line: 1852, baseType: !2911, size: 64, offset: 1792)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !697, !340}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2704, file: !37, line: 1856, baseType: !2915, size: 64, offset: 1856)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!294, !340, !514, !340, !514, !309, !7}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2704, file: !37, line: 1858, baseType: !2919, size: 64, offset: 1920)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!514, !340, !514, !340, !514, !514, !7}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2704, file: !37, line: 1861, baseType: !2768, size: 64, offset: 1984)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2699, file: !37, line: 692, baseType: !650, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !413, file: !37, line: 694, baseType: !2925, size: 64, offset: 2560)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2926, file: !37, line: 1101, baseType: !222)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2926, file: !37, line: 1102, baseType: !209, size: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2926, file: !37, line: 1103, baseType: !209, size: 128, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2926, file: !37, line: 1104, baseType: !209, size: 128, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !413, file: !37, line: 695, baseType: !721, size: 1216, align: 64, offset: 2624)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !413, file: !37, line: 696, baseType: !209, size: 128, offset: 3840)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !37, line: 697, baseType: !2935, size: 64, offset: 3968)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !37, line: 697, size: 64, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2942, !2943}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2935, file: !37, line: 698, baseType: !1998, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2935, file: !37, line: 699, baseType: !2454, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2935, file: !37, line: 700, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2935, file: !37, line: 701, baseType: !263, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2935, file: !37, line: 702, baseType: !7, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !413, file: !37, line: 705, baseType: !179, size: 32, offset: 4032)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !413, file: !37, line: 708, baseType: !179, size: 32, offset: 4064)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !413, file: !37, line: 709, baseType: !2536, size: 64, offset: 4096)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !413, file: !37, line: 720, baseType: !142, size: 64, offset: 4160)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !371, file: !368, line: 98, baseType: !2949, size: 256, offset: 448)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !2130)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !371, file: !368, line: 101, baseType: !2951, size: 32, offset: 704)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2952, line: 25, size: 32, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2953 = !{!2954}
!2954 = !DIDerivedType(tag: DW_TAG_member, scope: !2951, file: !2952, line: 26, baseType: !2955, size: 32)
!2955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2951, file: !2952, line: 26, size: 32, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2955, file: !2952, line: 30, baseType: !2958, size: 32)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2952, line: 30, size: 32, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2958, file: !2952, line: 31, baseType: !222)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2958, file: !2952, line: 32, baseType: !170, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !371, file: !368, line: 102, baseType: !2553, size: 64, offset: 768)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !371, file: !368, line: 103, baseType: !582, size: 64, offset: 832)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !371, file: !368, line: 104, baseType: !312, size: 64, offset: 896)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !371, file: !368, line: 105, baseType: !142, size: 64, offset: 960)
!2966 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !368, line: 107, baseType: !2967, size: 128, offset: 1024)
!2967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !368, line: 107, size: 128, elements: !2968)
!2968 = !{!2969, !2970}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2967, file: !368, line: 108, baseType: !209, size: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2967, file: !368, line: 109, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !371, file: !368, line: 111, baseType: !209, size: 128, offset: 1152)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !371, file: !368, line: 112, baseType: !209, size: 128, offset: 1280)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !371, file: !368, line: 120, baseType: !2975, size: 128, offset: 1408)
!2975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !368, line: 116, size: 128, elements: !2976)
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2975, file: !368, line: 117, baseType: !625, size: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2975, file: !368, line: 118, baseType: !385, size: 128)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2975, file: !368, line: 119, baseType: !353, size: 128, align: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !341, file: !37, line: 922, baseType: !412, size: 64, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !341, file: !37, line: 923, baseType: !2702, size: 64, offset: 320)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !341, file: !37, line: 929, baseType: !222, offset: 384)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !341, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !341, file: !37, line: 931, baseType: !757, size: 64, offset: 448)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !341, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !341, file: !37, line: 933, baseType: !2549, size: 32, offset: 544)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !341, file: !37, line: 934, baseType: !1078, size: 192, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !341, file: !37, line: 935, baseType: !514, size: 64, offset: 768)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !341, file: !37, line: 936, baseType: !2990, size: 192, offset: 832)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !2991)
!2991 = !{!2992, !2993, !2994, !2995, !2996, !2997}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2990, file: !37, line: 886, baseType: !2801)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2990, file: !37, line: 887, baseType: !1375, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2990, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2990, file: !37, line: 889, baseType: !418, size: 32, offset: 96)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2990, file: !37, line: 889, baseType: !418, size: 32, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2990, file: !37, line: 890, baseType: !170, size: 32, offset: 160)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !341, file: !37, line: 937, baseType: !1451, size: 64, offset: 1024)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !341, file: !37, line: 938, baseType: !3000, size: 256, offset: 1088)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005, !3006, !3007}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3000, file: !37, line: 897, baseType: !312, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3000, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3000, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3000, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3000, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3000, file: !37, line: 904, baseType: !514, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !341, file: !37, line: 940, baseType: !405, size: 64, offset: 1344)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !341, file: !37, line: 945, baseType: !142, size: 64, offset: 1408)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !341, file: !37, line: 949, baseType: !209, size: 128, offset: 1472)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !341, file: !37, line: 950, baseType: !209, size: 128, offset: 1600)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !341, file: !37, line: 952, baseType: !720, size: 64, offset: 1728)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !341, file: !37, line: 953, baseType: !894, size: 32, offset: 1792)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !341, file: !37, line: 954, baseType: !894, size: 32, offset: 1824)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !331, file: !288, line: 174, baseType: !337, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !331, file: !288, line: 176, baseType: !3017, size: 64, offset: 384)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!170, !340, !215, !330, !966}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !319, file: !288, line: 90, baseType: !314, size: 64, offset: 192)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !319, file: !288, line: 91, baseType: !3022, size: 64, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !278, file: !203, line: 143, baseType: !3024, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!3027, !215}
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3030)
!3030 = !{!3031, !3032, !3036, !3040, !3046, !3050}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3029, file: !6, line: 40, baseType: !5, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3029, file: !6, line: 41, baseType: !3033, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!473}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3029, file: !6, line: 42, baseType: !3037, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!142}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3029, file: !6, line: 43, baseType: !3041, size: 64, offset: 192)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!2027, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3029, file: !6, line: 44, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!2027}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3029, file: !6, line: 45, baseType: !451, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !278, file: !203, line: 144, baseType: !3052, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!2027, !215}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !278, file: !203, line: 145, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !215, !3059, !3060}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !202, file: !203, line: 70, baseType: !3062, size: 64, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !602, line: 123, size: 1024, elements: !3064)
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3193, !3194, !3195, !3196, !3197}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3063, file: !602, line: 124, baseType: !733, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3063, file: !602, line: 125, baseType: !733, size: 32, offset: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3063, file: !602, line: 135, baseType: !3062, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3063, file: !602, line: 136, baseType: !206, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3063, file: !602, line: 138, baseType: !746, size: 192, align: 64, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3063, file: !602, line: 140, baseType: !2027, size: 64, offset: 384)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3063, file: !602, line: 141, baseType: !7, size: 32, offset: 448)
!3072 = !DIDerivedType(tag: DW_TAG_member, scope: !3063, file: !602, line: 142, baseType: !3073, size: 256, offset: 512)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3063, file: !602, line: 142, size: 256, elements: !3074)
!3074 = !{!3075, !3121, !3125}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3073, file: !602, line: 143, baseType: !3076, size: 192)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !602, line: 91, size: 192, elements: !3077)
!3077 = !{!3078, !3079, !3080}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3076, file: !602, line: 92, baseType: !312, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3076, file: !602, line: 94, baseType: !742, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3076, file: !602, line: 100, baseType: !3081, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !602, line: 180, size: 704, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3093, !3094, !3095, !3119, !3120}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3082, file: !602, line: 182, baseType: !3062, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3082, file: !602, line: 183, baseType: !7, size: 32, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3082, file: !602, line: 186, baseType: !3087, size: 192, offset: 128)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3088, line: 19, size: 192, elements: !3089)
!3088 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3087, file: !3088, line: 20, baseType: !725, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3087, file: !3088, line: 21, baseType: !7, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3087, file: !3088, line: 22, baseType: !7, size: 32, offset: 160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3082, file: !602, line: 187, baseType: !177, size: 32, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3082, file: !602, line: 188, baseType: !177, size: 32, offset: 352)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3082, file: !602, line: 189, baseType: !3096, size: 64, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !602, line: 168, size: 320, elements: !3098)
!3098 = !{!3099, !3103, !3107, !3111, !3115}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3097, file: !602, line: 169, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!170, !697, !3081}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3097, file: !602, line: 171, baseType: !3104, size: 64, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!170, !3062, !206, !304}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3097, file: !602, line: 173, baseType: !3108, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!170, !3062}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3097, file: !602, line: 174, baseType: !3112, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!170, !3062, !3062, !206}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3097, file: !602, line: 176, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!170, !697, !3062, !3081}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3082, file: !602, line: 192, baseType: !209, size: 128, offset: 448)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3082, file: !602, line: 194, baseType: !1385, size: 128, offset: 576)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3073, file: !602, line: 144, baseType: !3122, size: 64)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !602, line: 103, size: 64, elements: !3123)
!3123 = !{!3124}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3122, file: !602, line: 104, baseType: !3062, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3073, file: !602, line: 145, baseType: !3126, size: 256)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !602, line: 107, size: 256, elements: !3127)
!3127 = !{!3128, !3188, !3191, !3192}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3126, file: !602, line: 108, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3131)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !602, line: 217, size: 768, elements: !3132)
!3132 = !{!3133, !3153, !3157, !3161, !3165, !3169, !3173, !3177, !3178, !3179, !3180, !3184}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3131, file: !602, line: 222, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!170, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !602, line: 197, size: 1088, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3138, file: !602, line: 199, baseType: !3062, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3138, file: !602, line: 200, baseType: !340, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3138, file: !602, line: 201, baseType: !697, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3138, file: !602, line: 202, baseType: !142, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3138, file: !602, line: 205, baseType: !1078, size: 192, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3138, file: !602, line: 206, baseType: !1078, size: 192, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3138, file: !602, line: 207, baseType: !170, size: 32, offset: 640)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3138, file: !602, line: 208, baseType: !209, size: 128, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3138, file: !602, line: 209, baseType: !263, size: 64, offset: 832)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3138, file: !602, line: 211, baseType: !309, size: 64, offset: 896)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3138, file: !602, line: 212, baseType: !473, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3138, file: !602, line: 213, baseType: !473, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3138, file: !602, line: 214, baseType: !994, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3131, file: !602, line: 223, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !3137}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3131, file: !602, line: 236, baseType: !3158, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!170, !697, !142}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3131, file: !602, line: 238, baseType: !3162, size: 64, offset: 192)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!142, !697, !2715}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3131, file: !602, line: 239, baseType: !3166, size: 64, offset: 256)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!142, !697, !142, !2715}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3131, file: !602, line: 240, baseType: !3170, size: 64, offset: 320)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !697, !142}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3131, file: !602, line: 242, baseType: !3174, size: 64, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!294, !3137, !263, !309, !514}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3131, file: !602, line: 252, baseType: !309, size: 64, offset: 448)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3131, file: !602, line: 259, baseType: !473, size: 8, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3131, file: !602, line: 260, baseType: !3174, size: 64, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3131, file: !602, line: 263, baseType: !3181, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!2744, !3137, !2745}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3131, file: !602, line: 266, baseType: !3185, size: 64, offset: 704)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!170, !3137, !966}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3126, file: !602, line: 109, baseType: !3189, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !602, line: 31, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3126, file: !602, line: 110, baseType: !514, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3126, file: !602, line: 111, baseType: !3062, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3063, file: !602, line: 148, baseType: !142, size: 64, offset: 768)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3063, file: !602, line: 154, baseType: !405, size: 64, offset: 832)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3063, file: !602, line: 156, baseType: !161, size: 16, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3063, file: !602, line: 157, baseType: !304, size: 16, offset: 912)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3063, file: !602, line: 158, baseType: !3198, size: 64, offset: 960)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !602, line: 32, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !202, file: !203, line: 71, baseType: !3201, size: 32, offset: 448)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3202, line: 19, size: 32, elements: !3203)
!3202 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3203 = !{!3204}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3201, file: !3202, line: 20, baseType: !1135, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !202, file: !203, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !202, file: !203, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !202, file: !203, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !202, file: !203, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !202, file: !203, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !60, line: 463, baseType: !198, size: 64, offset: 512)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !199, file: !60, line: 465, baseType: !3212, size: 64, offset: 576)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !199, file: !60, line: 467, baseType: !206, size: 64, offset: 640)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !199, file: !60, line: 468, baseType: !3216, size: 64, offset: 704)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3218)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3226, !3231, !3235}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3218, file: !60, line: 88, baseType: !206, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3218, file: !60, line: 89, baseType: !316, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3218, file: !60, line: 90, baseType: !3223, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!170, !198, !258}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3218, file: !60, line: 91, baseType: !3227, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!263, !198, !3230, !3059, !3060}
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3218, file: !60, line: 93, baseType: !3232, size: 64, offset: 256)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !198}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3218, file: !60, line: 95, baseType: !3236, size: 64, offset: 320)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3238)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3239)
!3239 = !{!3240, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3238, file: !67, line: 279, baseType: !3241, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!170, !198}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3238, file: !67, line: 280, baseType: !3232, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3238, file: !67, line: 281, baseType: !3241, size: 64, offset: 128)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3238, file: !67, line: 282, baseType: !3241, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3238, file: !67, line: 283, baseType: !3241, size: 64, offset: 256)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3238, file: !67, line: 284, baseType: !3241, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3238, file: !67, line: 285, baseType: !3241, size: 64, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3238, file: !67, line: 286, baseType: !3241, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3238, file: !67, line: 287, baseType: !3241, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3238, file: !67, line: 288, baseType: !3241, size: 64, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3238, file: !67, line: 289, baseType: !3241, size: 64, offset: 640)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3238, file: !67, line: 290, baseType: !3241, size: 64, offset: 704)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3238, file: !67, line: 291, baseType: !3241, size: 64, offset: 768)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3238, file: !67, line: 292, baseType: !3241, size: 64, offset: 832)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3238, file: !67, line: 293, baseType: !3241, size: 64, offset: 896)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3238, file: !67, line: 294, baseType: !3241, size: 64, offset: 960)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3238, file: !67, line: 295, baseType: !3241, size: 64, offset: 1024)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3238, file: !67, line: 296, baseType: !3241, size: 64, offset: 1088)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3238, file: !67, line: 297, baseType: !3241, size: 64, offset: 1152)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3238, file: !67, line: 298, baseType: !3241, size: 64, offset: 1216)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3238, file: !67, line: 299, baseType: !3241, size: 64, offset: 1280)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3238, file: !67, line: 300, baseType: !3241, size: 64, offset: 1344)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3238, file: !67, line: 301, baseType: !3241, size: 64, offset: 1408)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !199, file: !60, line: 470, baseType: !3267, size: 64, offset: 768)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3269, line: 82, size: 1408, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3352, !3355, !3356}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3268, file: !3269, line: 83, baseType: !206, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3268, file: !3269, line: 84, baseType: !206, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3268, file: !3269, line: 85, baseType: !198, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3268, file: !3269, line: 86, baseType: !316, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3268, file: !3269, line: 87, baseType: !316, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3268, file: !3269, line: 88, baseType: !316, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3268, file: !3269, line: 90, baseType: !3278, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!170, !198, !3281}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3303, !3316, !3317, !3318, !3319, !3320, !3328, !3329, !3330, !3331, !3332, !3333}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3282, file: !54, line: 96, baseType: !206, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3282, file: !54, line: 97, baseType: !3267, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3282, file: !54, line: 99, baseType: !616, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3282, file: !54, line: 100, baseType: !206, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3282, file: !54, line: 102, baseType: !473, size: 8, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3282, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3282, file: !54, line: 105, baseType: !3291, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3294, line: 262, size: 1600, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296, !3297, !3298, !3302}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3293, file: !3294, line: 263, baseType: !2539, size: 256)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3293, file: !3294, line: 264, baseType: !2539, size: 256, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3293, file: !3294, line: 265, baseType: !3299, size: 1024, offset: 512)
!3299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1024, elements: !3300)
!3300 = !{!3301}
!3301 = !DISubrange(count: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3293, file: !3294, line: 266, baseType: !2027, size: 64, offset: 1536)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3282, file: !54, line: 106, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3306)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3294, line: 210, size: 256, elements: !3307)
!3307 = !{!3308, !3312, !3314, !3315}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3306, file: !3294, line: 211, baseType: !3309, size: 72)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 72, elements: !3310)
!3310 = !{!3311}
!3311 = !DISubrange(count: 9)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3306, file: !3294, line: 212, baseType: !3313, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3294, line: 14, baseType: !312)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3306, file: !3294, line: 213, baseType: !179, size: 32, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3306, file: !3294, line: 214, baseType: !179, size: 32, offset: 224)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3282, file: !54, line: 108, baseType: !3241, size: 64, offset: 448)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3282, file: !54, line: 109, baseType: !3232, size: 64, offset: 512)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3282, file: !54, line: 110, baseType: !3241, size: 64, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3282, file: !54, line: 111, baseType: !3232, size: 64, offset: 640)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3282, file: !54, line: 112, baseType: !3321, size: 64, offset: 704)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!170, !198, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3326)
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3325, file: !67, line: 51, baseType: !170, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3282, file: !54, line: 113, baseType: !3241, size: 64, offset: 768)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3282, file: !54, line: 114, baseType: !316, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3282, file: !54, line: 115, baseType: !316, size: 64, offset: 896)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3282, file: !54, line: 117, baseType: !3236, size: 64, offset: 960)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3282, file: !54, line: 118, baseType: !3232, size: 64, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3282, file: !54, line: 120, baseType: !3334, size: 64, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3268, file: !3269, line: 91, baseType: !3223, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3268, file: !3269, line: 92, baseType: !3241, size: 64, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3268, file: !3269, line: 93, baseType: !3232, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3268, file: !3269, line: 94, baseType: !3241, size: 64, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3268, file: !3269, line: 95, baseType: !3232, size: 64, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3268, file: !3269, line: 97, baseType: !3241, size: 64, offset: 768)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3268, file: !3269, line: 98, baseType: !3241, size: 64, offset: 832)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3268, file: !3269, line: 100, baseType: !3321, size: 64, offset: 896)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3268, file: !3269, line: 101, baseType: !3241, size: 64, offset: 960)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3268, file: !3269, line: 103, baseType: !3241, size: 64, offset: 1024)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3268, file: !3269, line: 105, baseType: !3241, size: 64, offset: 1088)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3268, file: !3269, line: 107, baseType: !3236, size: 64, offset: 1152)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3268, file: !3269, line: 109, baseType: !3349, size: 64, offset: 1216)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3269, line: 109, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3268, file: !3269, line: 111, baseType: !3353, size: 64, offset: 1280)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3269, line: 111, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3268, file: !3269, line: 112, baseType: !631, offset: 1344)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3268, file: !3269, line: 114, baseType: !473, size: 8, offset: 1344)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !199, file: !60, line: 471, baseType: !3281, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !199, file: !60, line: 473, baseType: !142, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !199, file: !60, line: 475, baseType: !142, size: 64, offset: 960)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !199, file: !60, line: 480, baseType: !1078, size: 192, offset: 1024)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !199, file: !60, line: 484, baseType: !3362, size: 576, offset: 1216)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3362, file: !60, line: 362, baseType: !209, size: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3362, file: !60, line: 363, baseType: !209, size: 128, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3362, file: !60, line: 364, baseType: !209, size: 128, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3362, file: !60, line: 365, baseType: !209, size: 128, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3362, file: !60, line: 366, baseType: !473, size: 8, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3362, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !199, file: !60, line: 485, baseType: !3371, size: 2304, offset: 1792)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3468, !3472}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3371, file: !67, line: 566, baseType: !3324, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3371, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3371, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3371, file: !67, line: 569, baseType: !473, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3371, file: !67, line: 570, baseType: !473, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3371, file: !67, line: 571, baseType: !473, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3371, file: !67, line: 572, baseType: !473, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3371, file: !67, line: 573, baseType: !473, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3371, file: !67, line: 574, baseType: !473, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3371, file: !67, line: 575, baseType: !473, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3371, file: !67, line: 576, baseType: !473, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3371, file: !67, line: 577, baseType: !177, size: 32, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3371, file: !67, line: 578, baseType: !222, offset: 96)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3371, file: !67, line: 580, baseType: !209, size: 128, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3371, file: !67, line: 581, baseType: !1406, size: 192, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3371, file: !67, line: 582, baseType: !3389, size: 64, offset: 448)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3391, line: 43, size: 1472, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3400, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3390, file: !3391, line: 44, baseType: !206, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3390, file: !3391, line: 45, baseType: !170, size: 32, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3390, file: !3391, line: 46, baseType: !209, size: 128, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3390, file: !3391, line: 47, baseType: !222, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3390, file: !3391, line: 48, baseType: !3398, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3390, file: !3391, line: 49, baseType: !3401, size: 320, offset: 320)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3402, line: 11, size: 320, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !{!3404, !3405, !3406, !3411}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3401, file: !3402, line: 16, baseType: !625, size: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3401, file: !3402, line: 17, baseType: !312, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3401, file: !3402, line: 18, baseType: !3407, size: 64, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3401, file: !3402, line: 19, baseType: !177, size: 32, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3390, file: !3391, line: 50, baseType: !312, size: 64, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3390, file: !3391, line: 51, baseType: !1205, size: 64, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3390, file: !3391, line: 52, baseType: !1205, size: 64, offset: 768)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3390, file: !3391, line: 53, baseType: !1205, size: 64, offset: 832)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3390, file: !3391, line: 54, baseType: !1205, size: 64, offset: 896)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3390, file: !3391, line: 55, baseType: !1205, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3390, file: !3391, line: 56, baseType: !312, size: 64, offset: 1024)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3390, file: !3391, line: 57, baseType: !312, size: 64, offset: 1088)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3390, file: !3391, line: 58, baseType: !312, size: 64, offset: 1152)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3390, file: !3391, line: 59, baseType: !312, size: 64, offset: 1216)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3390, file: !3391, line: 60, baseType: !312, size: 64, offset: 1280)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3390, file: !3391, line: 61, baseType: !198, size: 64, offset: 1344)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3390, file: !3391, line: 62, baseType: !473, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3390, file: !3391, line: 63, baseType: !473, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3371, file: !67, line: 583, baseType: !473, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3371, file: !67, line: 584, baseType: !473, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3371, file: !67, line: 585, baseType: !473, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3371, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3371, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3371, file: !67, line: 592, baseType: !1197, size: 512, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3371, file: !67, line: 593, baseType: !405, size: 64, offset: 1088)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3371, file: !67, line: 594, baseType: !1857, size: 256, offset: 1152)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3371, file: !67, line: 595, baseType: !1385, size: 128, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3371, file: !67, line: 596, baseType: !3398, size: 64, offset: 1536)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3371, file: !67, line: 597, baseType: !733, size: 32, offset: 1600)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3371, file: !67, line: 598, baseType: !733, size: 32, offset: 1632)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3371, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3371, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3371, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3371, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3371, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3371, file: !67, line: 604, baseType: !473, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3371, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3371, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3371, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3371, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3371, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3371, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3371, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3371, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3371, file: !67, line: 613, baseType: !170, size: 32, offset: 1792)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3371, file: !67, line: 614, baseType: !170, size: 32, offset: 1824)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3371, file: !67, line: 615, baseType: !405, size: 64, offset: 1856)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3371, file: !67, line: 616, baseType: !405, size: 64, offset: 1920)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3371, file: !67, line: 617, baseType: !405, size: 64, offset: 1984)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3371, file: !67, line: 618, baseType: !405, size: 64, offset: 2048)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3371, file: !67, line: 620, baseType: !3459, size: 64, offset: 2112)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3460, file: !67, line: 537, baseType: !222)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3460, file: !67, line: 538, baseType: !7, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3460, file: !67, line: 540, baseType: !209, size: 128, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3460, file: !67, line: 543, baseType: !3466, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3371, file: !67, line: 621, baseType: !3469, size: 64, offset: 2176)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{null, !198, !1348}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3371, file: !67, line: 622, baseType: !3473, size: 64, offset: 2240)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !199, file: !60, line: 486, baseType: !3476, size: 64, offset: 4096)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3485, !3486, !3487}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3477, file: !67, line: 643, baseType: !3238, size: 1472)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3477, file: !67, line: 644, baseType: !3241, size: 64, offset: 1472)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3477, file: !67, line: 645, baseType: !3482, size: 64, offset: 1536)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !198, !473}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3477, file: !67, line: 646, baseType: !3241, size: 64, offset: 1600)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3477, file: !67, line: 647, baseType: !3232, size: 64, offset: 1664)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3477, file: !67, line: 648, baseType: !3232, size: 64, offset: 1728)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !199, file: !60, line: 493, baseType: !3489, size: 64, offset: 4160)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3667, !3668, !3669, !3670, !3671, !3672, !3675, !3676, !3677, !3678, !3679, !3680, !3681}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3490, file: !81, line: 163, baseType: !209, size: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3490, file: !81, line: 164, baseType: !206, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3490, file: !81, line: 165, baseType: !3495, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3498)
!3498 = !{!3499, !3617, !3628, !3633, !3637, !3644, !3648, !3652, !3659, !3663}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3497, file: !81, line: 106, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!170, !3489, !3503, !80}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3505, line: 51, size: 1344, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3506 = !{!3507, !3508, !3510, !3511, !3601, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3504, file: !3505, line: 52, baseType: !206, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3504, file: !3505, line: 53, baseType: !3509, size: 32, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3505, line: 28, baseType: !177)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3504, file: !3505, line: 54, baseType: !206, size: 64, offset: 128)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3504, file: !3505, line: 55, baseType: !3512, size: 192, offset: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3513, line: 17, size: 192, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3514 = !{!3515, !3517, !3600}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3512, file: !3513, line: 18, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3512, file: !3513, line: 19, baseType: !3518, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3513, line: 110, size: 1152, elements: !3521)
!3521 = !{!3522, !3526, !3530, !3536, !3542, !3546, !3550, !3555, !3559, !3560, !3564, !3568, !3572, !3583, !3584, !3585, !3586, !3596}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3520, file: !3513, line: 111, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!3516, !3516}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3520, file: !3513, line: 112, baseType: !3527, size: 64, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !3516}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3520, file: !3513, line: 113, baseType: !3531, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!473, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3520, file: !3513, line: 114, baseType: !3537, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!2027, !3534, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3520, file: !3513, line: 116, baseType: !3543, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!473, !3534, !206}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3520, file: !3513, line: 118, baseType: !3547, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!170, !3534, !206, !7, !142, !309}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3520, file: !3513, line: 123, baseType: !3551, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!170, !3534, !206, !3554, !309}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3520, file: !3513, line: 126, baseType: !3556, size: 64, offset: 448)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!206, !3534}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3520, file: !3513, line: 127, baseType: !3556, size: 64, offset: 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3520, file: !3513, line: 128, baseType: !3561, size: 64, offset: 576)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!3516, !3534}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3520, file: !3513, line: 130, baseType: !3565, size: 64, offset: 640)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!3516, !3534, !3516}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3520, file: !3513, line: 133, baseType: !3569, size: 64, offset: 704)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!3516, !3534, !206}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3520, file: !3513, line: 135, baseType: !3573, size: 64, offset: 768)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!170, !3534, !206, !206, !7, !7, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3513, line: 43, size: 640, elements: !3578)
!3578 = !{!3579, !3580, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3577, file: !3513, line: 44, baseType: !3516, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3577, file: !3513, line: 45, baseType: !7, size: 32, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3577, file: !3513, line: 46, baseType: !3582, size: 512, offset: 128)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 512, elements: !1235)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3520, file: !3513, line: 140, baseType: !3565, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3520, file: !3513, line: 143, baseType: !3561, size: 64, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3520, file: !3513, line: 145, baseType: !3523, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3520, file: !3513, line: 146, baseType: !3587, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!170, !3534, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3513, line: 29, size: 128, elements: !3592)
!3592 = !{!3593, !3594, !3595}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3591, file: !3513, line: 30, baseType: !7, size: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3591, file: !3513, line: 31, baseType: !7, size: 32, offset: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3591, file: !3513, line: 32, baseType: !3534, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3520, file: !3513, line: 148, baseType: !3597, size: 64, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!170, !3534, !198}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3512, file: !3513, line: 20, baseType: !198, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3504, file: !3505, line: 57, baseType: !3602, size: 64, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3505, line: 31, size: 704, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608, !3609}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3603, file: !3505, line: 32, baseType: !263, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3603, file: !3505, line: 33, baseType: !170, size: 32, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3603, file: !3505, line: 34, baseType: !142, size: 64, offset: 128)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3603, file: !3505, line: 35, baseType: !3602, size: 64, offset: 192)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3603, file: !3505, line: 43, baseType: !331, size: 448, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3504, file: !3505, line: 58, baseType: !3602, size: 64, offset: 448)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3504, file: !3505, line: 59, baseType: !3503, size: 64, offset: 512)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3504, file: !3505, line: 60, baseType: !3503, size: 64, offset: 576)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3504, file: !3505, line: 61, baseType: !3503, size: 64, offset: 640)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3504, file: !3505, line: 63, baseType: !202, size: 512, offset: 704)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3504, file: !3505, line: 65, baseType: !312, size: 64, offset: 1216)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3504, file: !3505, line: 66, baseType: !142, size: 64, offset: 1280)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3497, file: !81, line: 108, baseType: !3618, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!170, !3489, !3621, !80}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3623)
!3623 = !{!3624, !3625, !3626}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3622, file: !81, line: 64, baseType: !3516, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3622, file: !81, line: 65, baseType: !170, size: 32, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3622, file: !81, line: 66, baseType: !3627, size: 512, offset: 96)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 512, elements: !174)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3497, file: !81, line: 110, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!170, !3489, !7, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !141, line: 164, baseType: !312)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3497, file: !81, line: 111, baseType: !3634, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3489, !7}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3497, file: !81, line: 112, baseType: !3638, size: 64, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!170, !3489, !3503, !3641, !7, !3643, !2522}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3497, file: !81, line: 117, baseType: !3645, size: 64, offset: 320)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!170, !3489, !7, !7, !142}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3497, file: !81, line: 119, baseType: !3649, size: 64, offset: 384)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{null, !3489, !7, !7}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3497, file: !81, line: 121, baseType: !3653, size: 64, offset: 448)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!170, !3489, !3656, !473}
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3658, line: 11, flags: DIFlagFwdDecl)
!3658 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3497, file: !81, line: 122, baseType: !3660, size: 64, offset: 512)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3489, !3656}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3497, file: !81, line: 123, baseType: !3664, size: 64, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!170, !3489, !3621, !3643, !2522}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3490, file: !81, line: 166, baseType: !142, size: 64, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3490, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3490, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3490, file: !81, line: 171, baseType: !3516, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3490, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3490, file: !81, line: 173, baseType: !3673, size: 64, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3490, file: !81, line: 175, baseType: !3489, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3490, file: !81, line: 182, baseType: !3632, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3490, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3490, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3490, file: !81, line: 185, baseType: !725, size: 128, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3490, file: !81, line: 186, baseType: !1078, size: 192, offset: 896)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3490, file: !81, line: 187, baseType: !3682, offset: 1088)
!3682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2231)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !199, file: !60, line: 499, baseType: !209, size: 128, offset: 4224)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !199, file: !60, line: 502, baseType: !3685, size: 64, offset: 4352)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3687)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !199, file: !60, line: 504, baseType: !3689, size: 64, offset: 4416)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !199, file: !60, line: 505, baseType: !405, size: 64, offset: 4480)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !199, file: !60, line: 510, baseType: !405, size: 64, offset: 4544)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !199, file: !60, line: 511, baseType: !3693, size: 64, offset: 4608)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !199, file: !60, line: 513, baseType: !3697, size: 64, offset: 4672)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3698, file: !60, line: 293, baseType: !7, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3698, file: !60, line: 294, baseType: !312, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !199, file: !60, line: 515, baseType: !209, size: 128, offset: 4736)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !199, file: !60, line: 526, baseType: !3704, offset: 4864)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3705, line: 5, elements: !236)
!3705 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !199, file: !60, line: 528, baseType: !3503, size: 64, offset: 4864)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !199, file: !60, line: 529, baseType: !3516, size: 64, offset: 4928)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !199, file: !60, line: 534, baseType: !496, size: 32, offset: 4992)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !199, file: !60, line: 535, baseType: !177, size: 32, offset: 5024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !199, file: !60, line: 537, baseType: !222, offset: 5056)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !199, file: !60, line: 538, baseType: !209, size: 128, offset: 5056)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !199, file: !60, line: 540, baseType: !3713, size: 64, offset: 5184)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3715, line: 54, size: 960, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3727, !3731, !3732, !3733, !3734, !3738, !3742, !3743}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3714, file: !3715, line: 55, baseType: !206, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3714, file: !3715, line: 56, baseType: !616, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3714, file: !3715, line: 58, baseType: !316, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3714, file: !3715, line: 59, baseType: !316, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3714, file: !3715, line: 60, baseType: !215, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3714, file: !3715, line: 62, baseType: !3223, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3714, file: !3715, line: 63, baseType: !3724, size: 64, offset: 384)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!263, !198, !3230}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3714, file: !3715, line: 65, baseType: !3728, size: 64, offset: 448)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3713}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3714, file: !3715, line: 66, baseType: !3232, size: 64, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3714, file: !3715, line: 68, baseType: !3241, size: 64, offset: 576)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3714, file: !3715, line: 70, baseType: !3027, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3714, file: !3715, line: 71, baseType: !3735, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!2027, !198}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3714, file: !3715, line: 73, baseType: !3739, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !198, !3059, !3060}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3714, file: !3715, line: 75, baseType: !3236, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3714, file: !3715, line: 77, baseType: !3353, size: 64, offset: 896)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !199, file: !60, line: 541, baseType: !316, size: 64, offset: 5248)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !199, file: !60, line: 543, baseType: !3232, size: 64, offset: 5312)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !199, file: !60, line: 544, baseType: !3747, size: 64, offset: 5376)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !199, file: !60, line: 545, baseType: !3750, size: 64, offset: 5440)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !199, file: !60, line: 547, baseType: !473, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !199, file: !60, line: 548, baseType: !473, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !199, file: !60, line: 549, baseType: !473, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !199, file: !60, line: 550, baseType: !473, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !195, file: !116, line: 426, baseType: !198, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !195, file: !116, line: 427, baseType: !170, size: 32, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !195, file: !116, line: 428, baseType: !206, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !195, file: !116, line: 429, baseType: !1257, size: 8, offset: 256)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !195, file: !116, line: 433, baseType: !1257, size: 8, offset: 264)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !195, file: !116, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !195, file: !116, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !195, file: !116, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !195, file: !116, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !195, file: !116, line: 442, baseType: !7, size: 32, offset: 288)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !195, file: !116, line: 444, baseType: !170, size: 32, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !195, file: !116, line: 446, baseType: !1078, size: 192, offset: 384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !195, file: !116, line: 448, baseType: !3769, size: 128, offset: 576)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !116, line: 417, size: 128, elements: !3770)
!3770 = !{!3771}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3769, file: !116, line: 418, baseType: !3772, size: 128)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 128, elements: !190)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !195, file: !116, line: 449, baseType: !166, size: 64, offset: 704)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !195, file: !116, line: 450, baseType: !194, size: 64, offset: 768)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !195, file: !116, line: 452, baseType: !170, size: 32, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !195, file: !116, line: 459, baseType: !170, size: 32, offset: 864)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !195, file: !116, line: 460, baseType: !170, size: 32, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !195, file: !116, line: 462, baseType: !7, size: 32, offset: 928)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !167, file: !116, line: 647, baseType: !3780, size: 640, offset: 640)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !116, line: 67, size: 640, elements: !3781)
!3781 = !{!3782, !3783, !3791, !3799, !3800, !3801, !3802, !3804, !3805, !3806}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3780, file: !116, line: 68, baseType: !148, size: 72)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3780, file: !116, line: 69, baseType: !3784, size: 48, offset: 72)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !95, line: 689, size: 48, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789, !3790}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3784, file: !95, line: 690, baseType: !151, size: 8)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3784, file: !95, line: 691, baseType: !151, size: 8, offset: 8)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3784, file: !95, line: 693, baseType: !151, size: 8, offset: 16)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3784, file: !95, line: 694, baseType: !151, size: 8, offset: 24)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3784, file: !95, line: 695, baseType: !158, size: 16, offset: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3780, file: !116, line: 70, baseType: !3792, size: 64, offset: 120)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !95, line: 677, size: 64, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3792, file: !95, line: 678, baseType: !151, size: 8)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3792, file: !95, line: 679, baseType: !151, size: 8, offset: 8)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3792, file: !95, line: 680, baseType: !158, size: 16, offset: 16)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3792, file: !95, line: 681, baseType: !3798, size: 32, offset: 32)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !159, line: 31, baseType: !179)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3780, file: !116, line: 71, baseType: !209, size: 128, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3780, file: !116, line: 72, baseType: !142, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3780, file: !116, line: 73, baseType: !143, size: 64, offset: 384)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3780, file: !116, line: 75, baseType: !3803, size: 64, offset: 448)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3780, file: !116, line: 76, baseType: !170, size: 32, offset: 512)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3780, file: !116, line: 77, baseType: !170, size: 32, offset: 544)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3780, file: !116, line: 78, baseType: !170, size: 32, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !167, file: !116, line: 649, baseType: !199, size: 5568, offset: 1280)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !167, file: !116, line: 651, baseType: !3809, size: 144, offset: 6848)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !95, line: 289, size: 144, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3809, file: !95, line: 290, baseType: !151, size: 8)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3809, file: !95, line: 291, baseType: !151, size: 8, offset: 8)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3809, file: !95, line: 293, baseType: !158, size: 16, offset: 16)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3809, file: !95, line: 294, baseType: !151, size: 8, offset: 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3809, file: !95, line: 295, baseType: !151, size: 8, offset: 40)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3809, file: !95, line: 296, baseType: !151, size: 8, offset: 48)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3809, file: !95, line: 297, baseType: !151, size: 8, offset: 56)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3809, file: !95, line: 298, baseType: !158, size: 16, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3809, file: !95, line: 299, baseType: !158, size: 16, offset: 80)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3809, file: !95, line: 300, baseType: !158, size: 16, offset: 96)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3809, file: !95, line: 301, baseType: !151, size: 8, offset: 112)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3809, file: !95, line: 302, baseType: !151, size: 8, offset: 120)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3809, file: !95, line: 303, baseType: !151, size: 8, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3809, file: !95, line: 304, baseType: !151, size: 8, offset: 136)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !167, file: !116, line: 652, baseType: !3826, size: 64, offset: 7040)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !116, line: 396, size: 384, elements: !3828)
!3828 = !{!3829, !3837, !3845, !3857, !3870, !3879}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3827, file: !116, line: 397, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !95, line: 844, size: 40, elements: !3832)
!3832 = !{!3833, !3834, !3835, !3836}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3831, file: !95, line: 845, baseType: !151, size: 8)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3831, file: !95, line: 846, baseType: !151, size: 8, offset: 8)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3831, file: !95, line: 848, baseType: !158, size: 16, offset: 16)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3831, file: !95, line: 849, baseType: !151, size: 8, offset: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3827, file: !116, line: 400, baseType: !3838, size: 64, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !95, line: 895, size: 56, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3839, file: !95, line: 896, baseType: !151, size: 8)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3839, file: !95, line: 897, baseType: !151, size: 8, offset: 8)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3839, file: !95, line: 898, baseType: !151, size: 8, offset: 16)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3839, file: !95, line: 899, baseType: !3798, size: 32, offset: 24)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3827, file: !116, line: 401, baseType: !3846, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !95, line: 917, size: 80, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3847, file: !95, line: 918, baseType: !151, size: 8)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3847, file: !95, line: 919, baseType: !151, size: 8, offset: 8)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3847, file: !95, line: 920, baseType: !151, size: 8, offset: 16)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3847, file: !95, line: 921, baseType: !151, size: 8, offset: 24)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !3847, file: !95, line: 923, baseType: !158, size: 16, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !3847, file: !95, line: 928, baseType: !151, size: 8, offset: 48)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !3847, file: !95, line: 929, baseType: !151, size: 8, offset: 56)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !3847, file: !95, line: 930, baseType: !158, size: 16, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3827, file: !116, line: 402, baseType: !3858, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !95, line: 955, size: 128, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3859, file: !95, line: 956, baseType: !151, size: 8)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3859, file: !95, line: 957, baseType: !151, size: 8, offset: 8)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3859, file: !95, line: 958, baseType: !151, size: 8, offset: 16)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3859, file: !95, line: 959, baseType: !151, size: 8, offset: 24)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3859, file: !95, line: 960, baseType: !3798, size: 32, offset: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !3859, file: !95, line: 963, baseType: !158, size: 16, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !3859, file: !95, line: 967, baseType: !158, size: 16, offset: 80)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !3859, file: !95, line: 968, baseType: !3869, size: 32, offset: 96)
!3869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3798, size: 32, elements: !1275)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3827, file: !116, line: 403, baseType: !3871, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !95, line: 940, size: 160, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3872, file: !95, line: 941, baseType: !151, size: 8)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3872, file: !95, line: 942, baseType: !151, size: 8, offset: 8)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3872, file: !95, line: 943, baseType: !151, size: 8, offset: 16)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !3872, file: !95, line: 944, baseType: !151, size: 8, offset: 24)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !3872, file: !95, line: 945, baseType: !2546, size: 128, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3827, file: !116, line: 404, baseType: !3880, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !95, line: 1080, size: 24, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3881, file: !95, line: 1081, baseType: !151, size: 8)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3881, file: !95, line: 1082, baseType: !151, size: 8, offset: 8)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !3881, file: !95, line: 1083, baseType: !151, size: 8, offset: 16)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !167, file: !116, line: 653, baseType: !3887, size: 64, offset: 7104)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !116, line: 374, size: 5440, elements: !3889)
!3889 = !{!3890, !3901, !3902, !3915, !3957, !3966, !3967}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3888, file: !116, line: 375, baseType: !3891, size: 72)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !95, line: 349, size: 72, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3891, file: !95, line: 350, baseType: !151, size: 8)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3891, file: !95, line: 351, baseType: !151, size: 8, offset: 8)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3891, file: !95, line: 353, baseType: !158, size: 16, offset: 16)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !3891, file: !95, line: 354, baseType: !151, size: 8, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !3891, file: !95, line: 355, baseType: !151, size: 8, offset: 40)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !3891, file: !95, line: 356, baseType: !151, size: 8, offset: 48)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3891, file: !95, line: 357, baseType: !151, size: 8, offset: 56)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !3891, file: !95, line: 358, baseType: !151, size: 8, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3888, file: !116, line: 377, baseType: !263, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3888, file: !116, line: 381, baseType: !3903, size: 1024, offset: 192)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3904, size: 1024, elements: !174)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !95, line: 783, size: 64, elements: !3906)
!3906 = !{!3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3905, file: !95, line: 784, baseType: !151, size: 8)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3905, file: !95, line: 785, baseType: !151, size: 8, offset: 8)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3905, file: !95, line: 787, baseType: !151, size: 8, offset: 16)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3905, file: !95, line: 788, baseType: !151, size: 8, offset: 24)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3905, file: !95, line: 789, baseType: !151, size: 8, offset: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3905, file: !95, line: 790, baseType: !151, size: 8, offset: 40)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3905, file: !95, line: 791, baseType: !151, size: 8, offset: 48)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3905, file: !95, line: 792, baseType: !151, size: 8, offset: 56)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !3888, file: !116, line: 385, baseType: !3916, size: 2048, offset: 1216)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3917, size: 2048, elements: !2130)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !116, line: 232, size: 6272, elements: !3919)
!3919 = !{!3920, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3918, file: !116, line: 235, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !116, line: 82, size: 320, elements: !3923)
!3923 = !{!3924, !3936, !3937, !3938, !3940}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3922, file: !116, line: 83, baseType: !3925, size: 72)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !95, line: 389, size: 72, elements: !3926)
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3925, file: !95, line: 390, baseType: !151, size: 8)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3925, file: !95, line: 391, baseType: !151, size: 8, offset: 8)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3925, file: !95, line: 393, baseType: !151, size: 8, offset: 16)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3925, file: !95, line: 394, baseType: !151, size: 8, offset: 24)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3925, file: !95, line: 395, baseType: !151, size: 8, offset: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3925, file: !95, line: 396, baseType: !151, size: 8, offset: 40)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3925, file: !95, line: 397, baseType: !151, size: 8, offset: 48)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3925, file: !95, line: 398, baseType: !151, size: 8, offset: 56)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3925, file: !95, line: 399, baseType: !151, size: 8, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3922, file: !116, line: 85, baseType: !170, size: 32, offset: 96)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3922, file: !116, line: 86, baseType: !3803, size: 64, offset: 128)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3922, file: !116, line: 91, baseType: !3939, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3922, file: !116, line: 93, baseType: !263, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3918, file: !116, line: 237, baseType: !3921, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3918, file: !116, line: 239, baseType: !7, size: 32, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3918, file: !116, line: 243, baseType: !3904, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3918, file: !116, line: 245, baseType: !170, size: 32, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3918, file: !116, line: 247, baseType: !115, size: 32, offset: 288)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3918, file: !116, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3918, file: !116, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3918, file: !116, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3918, file: !116, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3918, file: !116, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3918, file: !116, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3918, file: !116, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3918, file: !116, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3918, file: !116, line: 257, baseType: !199, size: 5568, offset: 384)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3918, file: !116, line: 258, baseType: !198, size: 64, offset: 5952)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3918, file: !116, line: 259, baseType: !1857, size: 256, offset: 6016)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !3888, file: !116, line: 389, baseType: !3958, size: 2048, offset: 3264)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3959, size: 2048, elements: !2130)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !116, line: 322, size: 64, elements: !3961)
!3961 = !{!3962, !3963, !3964}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3960, file: !116, line: 323, baseType: !7, size: 32)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3960, file: !116, line: 324, baseType: !3201, size: 32, offset: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3960, file: !116, line: 328, baseType: !3965, offset: 64)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3922, elements: !2231)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3888, file: !116, line: 391, baseType: !3803, size: 64, offset: 5312)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3888, file: !116, line: 392, baseType: !170, size: 32, offset: 5376)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !167, file: !116, line: 655, baseType: !3887, size: 64, offset: 7168)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !167, file: !116, line: 656, baseType: !3970, size: 1024, offset: 7232)
!3970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3939, size: 1024, elements: !174)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !167, file: !116, line: 657, baseType: !3970, size: 1024, offset: 8256)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !167, file: !116, line: 659, baseType: !3973, size: 64, offset: 9280)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !167, file: !116, line: 661, baseType: !161, size: 16, offset: 9344)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !167, file: !116, line: 662, baseType: !1257, size: 8, offset: 9360)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !167, file: !116, line: 663, baseType: !1257, size: 8, offset: 9368)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !167, file: !116, line: 664, baseType: !1257, size: 8, offset: 9376)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !167, file: !116, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !167, file: !116, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !167, file: !116, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !167, file: !116, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !167, file: !116, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !167, file: !116, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !167, file: !116, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !167, file: !116, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !167, file: !116, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !167, file: !116, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !167, file: !116, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !167, file: !116, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !167, file: !116, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !167, file: !116, line: 679, baseType: !170, size: 32, offset: 9408)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !167, file: !116, line: 682, baseType: !263, size: 64, offset: 9472)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !167, file: !116, line: 683, baseType: !263, size: 64, offset: 9536)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !167, file: !116, line: 684, baseType: !263, size: 64, offset: 9600)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !167, file: !116, line: 686, baseType: !209, size: 128, offset: 9664)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !167, file: !116, line: 688, baseType: !170, size: 32, offset: 9792)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !167, file: !116, line: 690, baseType: !177, size: 32, offset: 9824)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !167, file: !116, line: 691, baseType: !733, size: 32, offset: 9856)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !167, file: !116, line: 693, baseType: !312, size: 64, offset: 9920)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !167, file: !116, line: 696, baseType: !312, size: 64, offset: 9984)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !167, file: !116, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !167, file: !116, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !167, file: !116, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !167, file: !116, line: 702, baseType: !4005, size: 64, offset: 10112)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !116, line: 28, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !167, file: !116, line: 703, baseType: !170, size: 32, offset: 10176)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !167, file: !116, line: 704, baseType: !122, size: 32, offset: 10208)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !167, file: !116, line: 705, baseType: !4010, size: 64, offset: 10240)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !116, line: 502, size: 64, elements: !4011)
!4011 = !{!4012, !4013}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4010, file: !116, line: 506, baseType: !7, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4010, file: !116, line: 512, baseType: !170, size: 32, offset: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !167, file: !116, line: 706, baseType: !4015, size: 128, offset: 10304)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !116, line: 522, size: 128, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4015, file: !116, line: 529, baseType: !7, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4015, file: !116, line: 535, baseType: !7, size: 32, offset: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4015, file: !116, line: 545, baseType: !7, size: 32, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4015, file: !116, line: 551, baseType: !170, size: 32, offset: 96)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !167, file: !116, line: 707, baseType: !4015, size: 128, offset: 10432)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !167, file: !116, line: 708, baseType: !7, size: 32, offset: 10560)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !167, file: !116, line: 710, baseType: !845, size: 16, offset: 10592)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !167, file: !116, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !144, file: !3, line: 23, baseType: !199, size: 5568, offset: 128)
!4026 = !{!0, !4027, !4030, !4032, !4035, !4049, !4051, !4053, !4055, !4057, !4059, !4061}
!4027 = !DIGlobalVariableExpression(var: !4028, expr: !DIExpression())
!4028 = distinct !DIGlobalVariable(name: "ep_dev_groups", scope: !2, file: !3, line: 159, type: !4029, isLocal: true, isDefinition: true)
!4029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, elements: !190)
!4030 = !DIGlobalVariableExpression(var: !4031, expr: !DIExpression())
!4031 = distinct !DIGlobalVariable(name: "ep_dev_attr_grp", scope: !2, file: !3, line: 156, type: !319, isLocal: true, isDefinition: true)
!4032 = !DIGlobalVariableExpression(var: !4033, expr: !DIExpression())
!4033 = distinct !DIGlobalVariable(name: "ep_dev_attrs", scope: !2, file: !3, line: 145, type: !4034, isLocal: true, isDefinition: true)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 576, elements: !3310)
!4035 = !DIGlobalVariableExpression(var: !4036, expr: !DIExpression())
!4036 = distinct !DIGlobalVariable(name: "dev_attr_bLength", scope: !2, file: !3, line: 46, type: !4037, isLocal: true, isDefinition: true)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !60, line: 99, size: 256, elements: !4038)
!4038 = !{!4039, !4040, !4045}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4037, file: !60, line: 100, baseType: !300, size: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4037, file: !60, line: 101, baseType: !4041, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!294, !198, !4044, !263}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4037, file: !60, line: 103, baseType: !4046, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!294, !198, !4044, !206, !309}
!4049 = !DIGlobalVariableExpression(var: !4050, expr: !DIExpression())
!4050 = distinct !DIGlobalVariable(name: "dev_attr_bEndpointAddress", scope: !2, file: !3, line: 47, type: !4037, isLocal: true, isDefinition: true)
!4051 = !DIGlobalVariableExpression(var: !4052, expr: !DIExpression())
!4052 = distinct !DIGlobalVariable(name: "dev_attr_bmAttributes", scope: !2, file: !3, line: 48, type: !4037, isLocal: true, isDefinition: true)
!4053 = !DIGlobalVariableExpression(var: !4054, expr: !DIExpression())
!4054 = distinct !DIGlobalVariable(name: "dev_attr_bInterval", scope: !2, file: !3, line: 49, type: !4037, isLocal: true, isDefinition: true)
!4055 = !DIGlobalVariableExpression(var: !4056, expr: !DIExpression())
!4056 = distinct !DIGlobalVariable(name: "dev_attr_wMaxPacketSize", scope: !2, file: !3, line: 57, type: !4037, isLocal: true, isDefinition: true)
!4057 = !DIGlobalVariableExpression(var: !4058, expr: !DIExpression())
!4058 = distinct !DIGlobalVariable(name: "dev_attr_interval", scope: !2, file: !3, line: 127, type: !4037, isLocal: true, isDefinition: true)
!4059 = !DIGlobalVariableExpression(var: !4060, expr: !DIExpression())
!4060 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 81, type: !4037, isLocal: true, isDefinition: true)
!4061 = !DIGlobalVariableExpression(var: !4062, expr: !DIExpression())
!4062 = distinct !DIGlobalVariable(name: "dev_attr_direction", scope: !2, file: !3, line: 143, type: !4037, isLocal: true, isDefinition: true)
!4063 = !{i32 7, !"Dwarf Version", i32 4}
!4064 = !{i32 2, !"Debug Info Version", i32 3}
!4065 = !{i32 1, !"wchar_size", i32 2}
!4066 = !{i32 1, !"Code Model", i32 2}
!4067 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4068 = distinct !DISubprogram(name: "ep_device_release", scope: !3, file: !3, line: 164, type: !3233, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4069 = !DILocalVariable(name: "dev", arg: 1, scope: !4068, file: !3, line: 164, type: !198)
!4070 = !DILocation(line: 164, column: 46, scope: !4068)
!4071 = !DILocalVariable(name: "ep_dev", scope: !4068, file: !3, line: 166, type: !143)
!4072 = !DILocation(line: 166, column: 20, scope: !4068)
!4073 = !DILocalVariable(name: "__mptr", scope: !4074, file: !3, line: 166, type: !142)
!4074 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 166, column: 29)
!4075 = !DILocation(line: 166, column: 29, scope: !4074)
!4076 = !DILocation(line: 166, column: 29, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 166, column: 29)
!4078 = !DILocation(line: 168, column: 8, scope: !4068)
!4079 = !DILocation(line: 168, column: 2, scope: !4068)
!4080 = !DILocation(line: 169, column: 1, scope: !4068)
!4081 = distinct !DISubprogram(name: "usb_create_ep_devs", scope: !3, file: !3, line: 176, type: !4082, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!170, !198, !3939, !166}
!4084 = !DILocalVariable(name: "parent", arg: 1, scope: !4081, file: !3, line: 176, type: !198)
!4085 = !DILocation(line: 176, column: 39, scope: !4081)
!4086 = !DILocalVariable(name: "endpoint", arg: 2, scope: !4081, file: !3, line: 177, type: !3939)
!4087 = !DILocation(line: 177, column: 30, scope: !4081)
!4088 = !DILocalVariable(name: "udev", arg: 3, scope: !4081, file: !3, line: 178, type: !166)
!4089 = !DILocation(line: 178, column: 23, scope: !4081)
!4090 = !DILocalVariable(name: "ep_dev", scope: !4081, file: !3, line: 180, type: !143)
!4091 = !DILocation(line: 180, column: 20, scope: !4081)
!4092 = !DILocalVariable(name: "retval", scope: !4081, file: !3, line: 181, type: !170)
!4093 = !DILocation(line: 181, column: 6, scope: !4081)
!4094 = !DILocation(line: 183, column: 11, scope: !4081)
!4095 = !DILocation(line: 183, column: 9, scope: !4081)
!4096 = !DILocation(line: 184, column: 7, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 184, column: 6)
!4098 = !DILocation(line: 184, column: 6, scope: !4081)
!4099 = !DILocation(line: 185, column: 10, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 184, column: 15)
!4101 = !DILocation(line: 186, column: 3, scope: !4100)
!4102 = !DILocation(line: 189, column: 18, scope: !4081)
!4103 = !DILocation(line: 189, column: 28, scope: !4081)
!4104 = !DILocation(line: 189, column: 2, scope: !4081)
!4105 = !DILocation(line: 189, column: 10, scope: !4081)
!4106 = !DILocation(line: 189, column: 15, scope: !4081)
!4107 = !DILocation(line: 190, column: 17, scope: !4081)
!4108 = !DILocation(line: 190, column: 2, scope: !4081)
!4109 = !DILocation(line: 190, column: 10, scope: !4081)
!4110 = !DILocation(line: 190, column: 15, scope: !4081)
!4111 = !DILocation(line: 191, column: 2, scope: !4081)
!4112 = !DILocation(line: 191, column: 10, scope: !4081)
!4113 = !DILocation(line: 191, column: 14, scope: !4081)
!4114 = !DILocation(line: 191, column: 21, scope: !4081)
!4115 = !DILocation(line: 192, column: 2, scope: !4081)
!4116 = !DILocation(line: 192, column: 10, scope: !4081)
!4117 = !DILocation(line: 192, column: 14, scope: !4081)
!4118 = !DILocation(line: 192, column: 19, scope: !4081)
!4119 = !DILocation(line: 193, column: 23, scope: !4081)
!4120 = !DILocation(line: 193, column: 2, scope: !4081)
!4121 = !DILocation(line: 193, column: 10, scope: !4081)
!4122 = !DILocation(line: 193, column: 14, scope: !4081)
!4123 = !DILocation(line: 193, column: 21, scope: !4081)
!4124 = !DILocation(line: 194, column: 16, scope: !4081)
!4125 = !DILocation(line: 194, column: 24, scope: !4081)
!4126 = !DILocation(line: 194, column: 40, scope: !4081)
!4127 = !DILocation(line: 194, column: 50, scope: !4081)
!4128 = !DILocation(line: 194, column: 55, scope: !4081)
!4129 = !DILocation(line: 194, column: 2, scope: !4081)
!4130 = !DILocation(line: 196, column: 28, scope: !4081)
!4131 = !DILocation(line: 196, column: 36, scope: !4081)
!4132 = !DILocation(line: 196, column: 11, scope: !4081)
!4133 = !DILocation(line: 196, column: 9, scope: !4081)
!4134 = !DILocation(line: 197, column: 6, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4081, file: !3, line: 197, column: 6)
!4136 = !DILocation(line: 197, column: 6, scope: !4081)
!4137 = !DILocation(line: 198, column: 3, scope: !4135)
!4138 = !DILocation(line: 200, column: 31, scope: !4081)
!4139 = !DILocation(line: 200, column: 39, scope: !4081)
!4140 = !DILocation(line: 200, column: 2, scope: !4081)
!4141 = !DILocation(line: 201, column: 21, scope: !4081)
!4142 = !DILocation(line: 201, column: 2, scope: !4081)
!4143 = !DILocation(line: 201, column: 12, scope: !4081)
!4144 = !DILocation(line: 201, column: 19, scope: !4081)
!4145 = !DILocation(line: 202, column: 9, scope: !4081)
!4146 = !DILocation(line: 202, column: 2, scope: !4081)
!4147 = !DILabel(scope: !4081, name: "error_register", file: !3, line: 204)
!4148 = !DILocation(line: 204, column: 1, scope: !4081)
!4149 = !DILocation(line: 205, column: 14, scope: !4081)
!4150 = !DILocation(line: 205, column: 22, scope: !4081)
!4151 = !DILocation(line: 205, column: 2, scope: !4081)
!4152 = !DILabel(scope: !4081, name: "exit", file: !3, line: 206)
!4153 = !DILocation(line: 206, column: 1, scope: !4081)
!4154 = !DILocation(line: 207, column: 9, scope: !4081)
!4155 = !DILocation(line: 207, column: 2, scope: !4081)
!4156 = !DILocation(line: 208, column: 1, scope: !4081)
!4157 = distinct !DISubprogram(name: "kzalloc", scope: !128, file: !128, line: 662, type: !4158, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!142, !309, !140}
!4160 = !DILocalVariable(name: "s", arg: 1, scope: !4161, file: !128, line: 445, type: !920)
!4161 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !128, file: !128, line: 445, type: !4162, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!142, !920, !140, !309}
!4164 = !DILocation(line: 445, column: 72, scope: !4161, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 552, column: 10, scope: !4166, inlinedAt: !4169)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !128, line: 540, column: 34)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !128, line: 540, column: 6)
!4168 = distinct !DISubprogram(name: "kmalloc", scope: !128, file: !128, line: 538, type: !4158, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4169 = distinct !DILocation(line: 664, column: 9, scope: !4157)
!4170 = !DILocalVariable(name: "flags", arg: 2, scope: !4161, file: !128, line: 446, type: !140)
!4171 = !DILocation(line: 446, column: 9, scope: !4161, inlinedAt: !4165)
!4172 = !DILocalVariable(name: "size", arg: 3, scope: !4161, file: !128, line: 446, type: !309)
!4173 = !DILocation(line: 446, column: 23, scope: !4161, inlinedAt: !4165)
!4174 = !DILocalVariable(name: "ret", scope: !4161, file: !128, line: 448, type: !142)
!4175 = !DILocation(line: 448, column: 8, scope: !4161, inlinedAt: !4165)
!4176 = !DILocalVariable(name: "flags", arg: 1, scope: !4177, file: !128, line: 318, type: !140)
!4177 = distinct !DISubprogram(name: "kmalloc_type", scope: !128, file: !128, line: 318, type: !4178, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!127, !140}
!4180 = !DILocation(line: 318, column: 67, scope: !4177, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 553, column: 20, scope: !4166, inlinedAt: !4169)
!4182 = !DILocalVariable(name: "size", arg: 1, scope: !4183, file: !128, line: 346, type: !309)
!4183 = distinct !DISubprogram(name: "kmalloc_index", scope: !128, file: !128, line: 346, type: !4184, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!7, !309}
!4186 = !DILocation(line: 346, column: 58, scope: !4183, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 547, column: 11, scope: !4166, inlinedAt: !4169)
!4188 = !DILocalVariable(name: "size", arg: 1, scope: !4189, file: !128, line: 472, type: !309)
!4189 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !128, file: !128, line: 472, type: !4190, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!142, !309, !140, !7}
!4192 = !DILocation(line: 472, column: 28, scope: !4189, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 481, column: 9, scope: !4194, inlinedAt: !4195)
!4194 = distinct !DISubprogram(name: "kmalloc_large", scope: !128, file: !128, line: 478, type: !4158, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4195 = distinct !DILocation(line: 545, column: 11, scope: !4196, inlinedAt: !4169)
!4196 = distinct !DILexicalBlock(scope: !4166, file: !128, line: 544, column: 7)
!4197 = !DILocalVariable(name: "flags", arg: 2, scope: !4189, file: !128, line: 472, type: !140)
!4198 = !DILocation(line: 472, column: 40, scope: !4189, inlinedAt: !4193)
!4199 = !DILocalVariable(name: "order", arg: 3, scope: !4189, file: !128, line: 472, type: !7)
!4200 = !DILocation(line: 472, column: 60, scope: !4189, inlinedAt: !4193)
!4201 = !DILocalVariable(name: "size", arg: 1, scope: !4194, file: !128, line: 478, type: !309)
!4202 = !DILocation(line: 478, column: 51, scope: !4194, inlinedAt: !4195)
!4203 = !DILocalVariable(name: "flags", arg: 2, scope: !4194, file: !128, line: 478, type: !140)
!4204 = !DILocation(line: 478, column: 63, scope: !4194, inlinedAt: !4195)
!4205 = !DILocalVariable(name: "order", scope: !4194, file: !128, line: 480, type: !7)
!4206 = !DILocation(line: 480, column: 15, scope: !4194, inlinedAt: !4195)
!4207 = !DILocalVariable(name: "size", arg: 1, scope: !4168, file: !128, line: 538, type: !309)
!4208 = !DILocation(line: 538, column: 45, scope: !4168, inlinedAt: !4169)
!4209 = !DILocalVariable(name: "flags", arg: 2, scope: !4168, file: !128, line: 538, type: !140)
!4210 = !DILocation(line: 538, column: 57, scope: !4168, inlinedAt: !4169)
!4211 = !DILocalVariable(name: "index", scope: !4166, file: !128, line: 542, type: !7)
!4212 = !DILocation(line: 542, column: 16, scope: !4166, inlinedAt: !4169)
!4213 = !DILocalVariable(name: "size", arg: 1, scope: !4157, file: !128, line: 662, type: !309)
!4214 = !DILocation(line: 662, column: 36, scope: !4157)
!4215 = !DILocalVariable(name: "flags", arg: 2, scope: !4157, file: !128, line: 662, type: !140)
!4216 = !DILocation(line: 662, column: 48, scope: !4157)
!4217 = !DILocation(line: 664, column: 17, scope: !4157)
!4218 = !DILocation(line: 664, column: 23, scope: !4157)
!4219 = !DILocation(line: 664, column: 29, scope: !4157)
!4220 = !DILocation(line: 540, column: 27, scope: !4167, inlinedAt: !4169)
!4221 = !DILocation(line: 540, column: 6, scope: !4167, inlinedAt: !4169)
!4222 = !DILocation(line: 540, column: 6, scope: !4168, inlinedAt: !4169)
!4223 = !DILocation(line: 544, column: 7, scope: !4196, inlinedAt: !4169)
!4224 = !DILocation(line: 544, column: 12, scope: !4196, inlinedAt: !4169)
!4225 = !DILocation(line: 544, column: 7, scope: !4166, inlinedAt: !4169)
!4226 = !DILocation(line: 545, column: 25, scope: !4196, inlinedAt: !4169)
!4227 = !DILocation(line: 545, column: 31, scope: !4196, inlinedAt: !4169)
!4228 = !DILocation(line: 480, column: 33, scope: !4194, inlinedAt: !4195)
!4229 = !DILocation(line: 480, column: 23, scope: !4194, inlinedAt: !4195)
!4230 = !DILocation(line: 481, column: 29, scope: !4194, inlinedAt: !4195)
!4231 = !DILocation(line: 481, column: 35, scope: !4194, inlinedAt: !4195)
!4232 = !DILocation(line: 481, column: 42, scope: !4194, inlinedAt: !4195)
!4233 = !DILocation(line: 474, column: 23, scope: !4189, inlinedAt: !4193)
!4234 = !DILocation(line: 474, column: 29, scope: !4189, inlinedAt: !4193)
!4235 = !DILocation(line: 474, column: 36, scope: !4189, inlinedAt: !4193)
!4236 = !DILocation(line: 474, column: 9, scope: !4189, inlinedAt: !4193)
!4237 = !DILocation(line: 545, column: 4, scope: !4196, inlinedAt: !4169)
!4238 = !DILocation(line: 547, column: 25, scope: !4166, inlinedAt: !4169)
!4239 = !DILocation(line: 348, column: 7, scope: !4240, inlinedAt: !4187)
!4240 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 348, column: 6)
!4241 = !DILocation(line: 348, column: 6, scope: !4183, inlinedAt: !4187)
!4242 = !DILocation(line: 349, column: 3, scope: !4240, inlinedAt: !4187)
!4243 = !DILocation(line: 351, column: 6, scope: !4244, inlinedAt: !4187)
!4244 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 351, column: 6)
!4245 = !DILocation(line: 351, column: 11, scope: !4244, inlinedAt: !4187)
!4246 = !DILocation(line: 351, column: 6, scope: !4183, inlinedAt: !4187)
!4247 = !DILocation(line: 352, column: 3, scope: !4244, inlinedAt: !4187)
!4248 = !DILocation(line: 354, column: 32, scope: !4249, inlinedAt: !4187)
!4249 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 354, column: 6)
!4250 = !DILocation(line: 354, column: 37, scope: !4249, inlinedAt: !4187)
!4251 = !DILocation(line: 354, column: 42, scope: !4249, inlinedAt: !4187)
!4252 = !DILocation(line: 354, column: 45, scope: !4249, inlinedAt: !4187)
!4253 = !DILocation(line: 354, column: 50, scope: !4249, inlinedAt: !4187)
!4254 = !DILocation(line: 354, column: 6, scope: !4183, inlinedAt: !4187)
!4255 = !DILocation(line: 355, column: 3, scope: !4249, inlinedAt: !4187)
!4256 = !DILocation(line: 356, column: 32, scope: !4257, inlinedAt: !4187)
!4257 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 356, column: 6)
!4258 = !DILocation(line: 356, column: 37, scope: !4257, inlinedAt: !4187)
!4259 = !DILocation(line: 356, column: 43, scope: !4257, inlinedAt: !4187)
!4260 = !DILocation(line: 356, column: 46, scope: !4257, inlinedAt: !4187)
!4261 = !DILocation(line: 356, column: 51, scope: !4257, inlinedAt: !4187)
!4262 = !DILocation(line: 356, column: 6, scope: !4183, inlinedAt: !4187)
!4263 = !DILocation(line: 357, column: 3, scope: !4257, inlinedAt: !4187)
!4264 = !DILocation(line: 358, column: 6, scope: !4265, inlinedAt: !4187)
!4265 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 358, column: 6)
!4266 = !DILocation(line: 358, column: 11, scope: !4265, inlinedAt: !4187)
!4267 = !DILocation(line: 358, column: 6, scope: !4183, inlinedAt: !4187)
!4268 = !DILocation(line: 358, column: 26, scope: !4265, inlinedAt: !4187)
!4269 = !DILocation(line: 359, column: 6, scope: !4270, inlinedAt: !4187)
!4270 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 359, column: 6)
!4271 = !DILocation(line: 359, column: 11, scope: !4270, inlinedAt: !4187)
!4272 = !DILocation(line: 359, column: 6, scope: !4183, inlinedAt: !4187)
!4273 = !DILocation(line: 359, column: 26, scope: !4270, inlinedAt: !4187)
!4274 = !DILocation(line: 360, column: 6, scope: !4275, inlinedAt: !4187)
!4275 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 360, column: 6)
!4276 = !DILocation(line: 360, column: 11, scope: !4275, inlinedAt: !4187)
!4277 = !DILocation(line: 360, column: 6, scope: !4183, inlinedAt: !4187)
!4278 = !DILocation(line: 360, column: 26, scope: !4275, inlinedAt: !4187)
!4279 = !DILocation(line: 361, column: 6, scope: !4280, inlinedAt: !4187)
!4280 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 361, column: 6)
!4281 = !DILocation(line: 361, column: 11, scope: !4280, inlinedAt: !4187)
!4282 = !DILocation(line: 361, column: 6, scope: !4183, inlinedAt: !4187)
!4283 = !DILocation(line: 361, column: 26, scope: !4280, inlinedAt: !4187)
!4284 = !DILocation(line: 362, column: 6, scope: !4285, inlinedAt: !4187)
!4285 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 362, column: 6)
!4286 = !DILocation(line: 362, column: 11, scope: !4285, inlinedAt: !4187)
!4287 = !DILocation(line: 362, column: 6, scope: !4183, inlinedAt: !4187)
!4288 = !DILocation(line: 362, column: 26, scope: !4285, inlinedAt: !4187)
!4289 = !DILocation(line: 363, column: 6, scope: !4290, inlinedAt: !4187)
!4290 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 363, column: 6)
!4291 = !DILocation(line: 363, column: 11, scope: !4290, inlinedAt: !4187)
!4292 = !DILocation(line: 363, column: 6, scope: !4183, inlinedAt: !4187)
!4293 = !DILocation(line: 363, column: 26, scope: !4290, inlinedAt: !4187)
!4294 = !DILocation(line: 364, column: 6, scope: !4295, inlinedAt: !4187)
!4295 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 364, column: 6)
!4296 = !DILocation(line: 364, column: 11, scope: !4295, inlinedAt: !4187)
!4297 = !DILocation(line: 364, column: 6, scope: !4183, inlinedAt: !4187)
!4298 = !DILocation(line: 364, column: 26, scope: !4295, inlinedAt: !4187)
!4299 = !DILocation(line: 365, column: 6, scope: !4300, inlinedAt: !4187)
!4300 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 365, column: 6)
!4301 = !DILocation(line: 365, column: 11, scope: !4300, inlinedAt: !4187)
!4302 = !DILocation(line: 365, column: 6, scope: !4183, inlinedAt: !4187)
!4303 = !DILocation(line: 365, column: 26, scope: !4300, inlinedAt: !4187)
!4304 = !DILocation(line: 366, column: 6, scope: !4305, inlinedAt: !4187)
!4305 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 366, column: 6)
!4306 = !DILocation(line: 366, column: 11, scope: !4305, inlinedAt: !4187)
!4307 = !DILocation(line: 366, column: 6, scope: !4183, inlinedAt: !4187)
!4308 = !DILocation(line: 366, column: 26, scope: !4305, inlinedAt: !4187)
!4309 = !DILocation(line: 367, column: 6, scope: !4310, inlinedAt: !4187)
!4310 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 367, column: 6)
!4311 = !DILocation(line: 367, column: 11, scope: !4310, inlinedAt: !4187)
!4312 = !DILocation(line: 367, column: 6, scope: !4183, inlinedAt: !4187)
!4313 = !DILocation(line: 367, column: 26, scope: !4310, inlinedAt: !4187)
!4314 = !DILocation(line: 368, column: 6, scope: !4315, inlinedAt: !4187)
!4315 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 368, column: 6)
!4316 = !DILocation(line: 368, column: 11, scope: !4315, inlinedAt: !4187)
!4317 = !DILocation(line: 368, column: 6, scope: !4183, inlinedAt: !4187)
!4318 = !DILocation(line: 368, column: 26, scope: !4315, inlinedAt: !4187)
!4319 = !DILocation(line: 369, column: 6, scope: !4320, inlinedAt: !4187)
!4320 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 369, column: 6)
!4321 = !DILocation(line: 369, column: 11, scope: !4320, inlinedAt: !4187)
!4322 = !DILocation(line: 369, column: 6, scope: !4183, inlinedAt: !4187)
!4323 = !DILocation(line: 369, column: 26, scope: !4320, inlinedAt: !4187)
!4324 = !DILocation(line: 370, column: 6, scope: !4325, inlinedAt: !4187)
!4325 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 370, column: 6)
!4326 = !DILocation(line: 370, column: 11, scope: !4325, inlinedAt: !4187)
!4327 = !DILocation(line: 370, column: 6, scope: !4183, inlinedAt: !4187)
!4328 = !DILocation(line: 370, column: 26, scope: !4325, inlinedAt: !4187)
!4329 = !DILocation(line: 371, column: 6, scope: !4330, inlinedAt: !4187)
!4330 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 371, column: 6)
!4331 = !DILocation(line: 371, column: 11, scope: !4330, inlinedAt: !4187)
!4332 = !DILocation(line: 371, column: 6, scope: !4183, inlinedAt: !4187)
!4333 = !DILocation(line: 371, column: 26, scope: !4330, inlinedAt: !4187)
!4334 = !DILocation(line: 372, column: 6, scope: !4335, inlinedAt: !4187)
!4335 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 372, column: 6)
!4336 = !DILocation(line: 372, column: 11, scope: !4335, inlinedAt: !4187)
!4337 = !DILocation(line: 372, column: 6, scope: !4183, inlinedAt: !4187)
!4338 = !DILocation(line: 372, column: 26, scope: !4335, inlinedAt: !4187)
!4339 = !DILocation(line: 373, column: 6, scope: !4340, inlinedAt: !4187)
!4340 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 373, column: 6)
!4341 = !DILocation(line: 373, column: 11, scope: !4340, inlinedAt: !4187)
!4342 = !DILocation(line: 373, column: 6, scope: !4183, inlinedAt: !4187)
!4343 = !DILocation(line: 373, column: 26, scope: !4340, inlinedAt: !4187)
!4344 = !DILocation(line: 374, column: 6, scope: !4345, inlinedAt: !4187)
!4345 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 374, column: 6)
!4346 = !DILocation(line: 374, column: 11, scope: !4345, inlinedAt: !4187)
!4347 = !DILocation(line: 374, column: 6, scope: !4183, inlinedAt: !4187)
!4348 = !DILocation(line: 374, column: 26, scope: !4345, inlinedAt: !4187)
!4349 = !DILocation(line: 375, column: 6, scope: !4350, inlinedAt: !4187)
!4350 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 375, column: 6)
!4351 = !DILocation(line: 375, column: 11, scope: !4350, inlinedAt: !4187)
!4352 = !DILocation(line: 375, column: 6, scope: !4183, inlinedAt: !4187)
!4353 = !DILocation(line: 375, column: 27, scope: !4350, inlinedAt: !4187)
!4354 = !DILocation(line: 376, column: 6, scope: !4355, inlinedAt: !4187)
!4355 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 376, column: 6)
!4356 = !DILocation(line: 376, column: 11, scope: !4355, inlinedAt: !4187)
!4357 = !DILocation(line: 376, column: 6, scope: !4183, inlinedAt: !4187)
!4358 = !DILocation(line: 376, column: 32, scope: !4355, inlinedAt: !4187)
!4359 = !DILocation(line: 377, column: 6, scope: !4360, inlinedAt: !4187)
!4360 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 377, column: 6)
!4361 = !DILocation(line: 377, column: 11, scope: !4360, inlinedAt: !4187)
!4362 = !DILocation(line: 377, column: 6, scope: !4183, inlinedAt: !4187)
!4363 = !DILocation(line: 377, column: 32, scope: !4360, inlinedAt: !4187)
!4364 = !DILocation(line: 378, column: 6, scope: !4365, inlinedAt: !4187)
!4365 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 378, column: 6)
!4366 = !DILocation(line: 378, column: 11, scope: !4365, inlinedAt: !4187)
!4367 = !DILocation(line: 378, column: 6, scope: !4183, inlinedAt: !4187)
!4368 = !DILocation(line: 378, column: 32, scope: !4365, inlinedAt: !4187)
!4369 = !DILocation(line: 379, column: 6, scope: !4370, inlinedAt: !4187)
!4370 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 379, column: 6)
!4371 = !DILocation(line: 379, column: 11, scope: !4370, inlinedAt: !4187)
!4372 = !DILocation(line: 379, column: 6, scope: !4183, inlinedAt: !4187)
!4373 = !DILocation(line: 379, column: 33, scope: !4370, inlinedAt: !4187)
!4374 = !DILocation(line: 380, column: 6, scope: !4375, inlinedAt: !4187)
!4375 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 380, column: 6)
!4376 = !DILocation(line: 380, column: 11, scope: !4375, inlinedAt: !4187)
!4377 = !DILocation(line: 380, column: 6, scope: !4183, inlinedAt: !4187)
!4378 = !DILocation(line: 380, column: 33, scope: !4375, inlinedAt: !4187)
!4379 = !DILocation(line: 381, column: 6, scope: !4380, inlinedAt: !4187)
!4380 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 381, column: 6)
!4381 = !DILocation(line: 381, column: 11, scope: !4380, inlinedAt: !4187)
!4382 = !DILocation(line: 381, column: 6, scope: !4183, inlinedAt: !4187)
!4383 = !DILocation(line: 381, column: 33, scope: !4380, inlinedAt: !4187)
!4384 = !DILocation(line: 382, column: 2, scope: !4385, inlinedAt: !4187)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !128, line: 382, column: 2)
!4386 = distinct !DILexicalBlock(scope: !4183, file: !128, line: 382, column: 2)
!4387 = !{i32 -2144650214, i32 -2144650185, i32 -2144650139, i32 -2144650081, i32 -2144650027, i32 -2144649973, i32 -2144649918, i32 -2144649887}
!4388 = !DILocation(line: 382, column: 2, scope: !4389, inlinedAt: !4187)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !128, line: 382, column: 2)
!4390 = distinct !DILexicalBlock(scope: !4386, file: !128, line: 382, column: 2)
!4391 = !{i32 -2144649444, i32 -2144649437, i32 -2144649383, i32 -2144649352, i32 -2144649322}
!4392 = !DILocation(line: 382, column: 2, scope: !4390, inlinedAt: !4187)
!4393 = !DILocation(line: 386, column: 1, scope: !4183, inlinedAt: !4187)
!4394 = !DILocation(line: 547, column: 9, scope: !4166, inlinedAt: !4169)
!4395 = !DILocation(line: 549, column: 8, scope: !4396, inlinedAt: !4169)
!4396 = distinct !DILexicalBlock(scope: !4166, file: !128, line: 549, column: 7)
!4397 = !DILocation(line: 549, column: 7, scope: !4166, inlinedAt: !4169)
!4398 = !DILocation(line: 550, column: 4, scope: !4396, inlinedAt: !4169)
!4399 = !DILocation(line: 553, column: 33, scope: !4166, inlinedAt: !4169)
!4400 = !DILocation(line: 325, column: 6, scope: !4401, inlinedAt: !4181)
!4401 = distinct !DILexicalBlock(scope: !4177, file: !128, line: 325, column: 6)
!4402 = !DILocation(line: 325, column: 6, scope: !4177, inlinedAt: !4181)
!4403 = !DILocation(line: 326, column: 3, scope: !4401, inlinedAt: !4181)
!4404 = !DILocation(line: 332, column: 9, scope: !4177, inlinedAt: !4181)
!4405 = !DILocation(line: 332, column: 15, scope: !4177, inlinedAt: !4181)
!4406 = !DILocation(line: 332, column: 2, scope: !4177, inlinedAt: !4181)
!4407 = !DILocation(line: 336, column: 1, scope: !4177, inlinedAt: !4181)
!4408 = !DILocation(line: 553, column: 5, scope: !4166, inlinedAt: !4169)
!4409 = !DILocation(line: 553, column: 41, scope: !4166, inlinedAt: !4169)
!4410 = !DILocation(line: 554, column: 5, scope: !4166, inlinedAt: !4169)
!4411 = !DILocation(line: 554, column: 12, scope: !4166, inlinedAt: !4169)
!4412 = !DILocation(line: 448, column: 31, scope: !4161, inlinedAt: !4165)
!4413 = !DILocation(line: 448, column: 34, scope: !4161, inlinedAt: !4165)
!4414 = !DILocation(line: 448, column: 14, scope: !4161, inlinedAt: !4165)
!4415 = !DILocation(line: 450, column: 22, scope: !4161, inlinedAt: !4165)
!4416 = !DILocation(line: 450, column: 25, scope: !4161, inlinedAt: !4165)
!4417 = !DILocation(line: 450, column: 30, scope: !4161, inlinedAt: !4165)
!4418 = !DILocation(line: 450, column: 36, scope: !4161, inlinedAt: !4165)
!4419 = !DILocation(line: 450, column: 8, scope: !4161, inlinedAt: !4165)
!4420 = !DILocation(line: 450, column: 6, scope: !4161, inlinedAt: !4165)
!4421 = !DILocation(line: 451, column: 9, scope: !4161, inlinedAt: !4165)
!4422 = !DILocation(line: 552, column: 3, scope: !4166, inlinedAt: !4169)
!4423 = !DILocation(line: 557, column: 19, scope: !4168, inlinedAt: !4169)
!4424 = !DILocation(line: 557, column: 25, scope: !4168, inlinedAt: !4169)
!4425 = !DILocation(line: 557, column: 9, scope: !4168, inlinedAt: !4169)
!4426 = !DILocation(line: 557, column: 2, scope: !4168, inlinedAt: !4169)
!4427 = !DILocation(line: 558, column: 1, scope: !4168, inlinedAt: !4169)
!4428 = !DILocation(line: 664, column: 2, scope: !4157)
!4429 = distinct !DISubprogram(name: "device_enable_async_suspend", scope: !60, file: !60, line: 685, type: !3233, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4430 = !DILocalVariable(name: "dev", arg: 1, scope: !4429, file: !60, line: 685, type: !198)
!4431 = !DILocation(line: 685, column: 63, scope: !4429)
!4432 = !DILocation(line: 687, column: 7, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4429, file: !60, line: 687, column: 6)
!4434 = !DILocation(line: 687, column: 12, scope: !4433)
!4435 = !DILocation(line: 687, column: 18, scope: !4433)
!4436 = !DILocation(line: 687, column: 6, scope: !4429)
!4437 = !DILocation(line: 688, column: 3, scope: !4433)
!4438 = !DILocation(line: 688, column: 8, scope: !4433)
!4439 = !DILocation(line: 688, column: 14, scope: !4433)
!4440 = !DILocation(line: 688, column: 28, scope: !4433)
!4441 = !DILocation(line: 689, column: 1, scope: !4429)
!4442 = distinct !DISubprogram(name: "usb_remove_ep_devs", scope: !3, file: !3, line: 210, type: !4443, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{null, !3939}
!4445 = !DILocalVariable(name: "endpoint", arg: 1, scope: !4442, file: !3, line: 210, type: !3939)
!4446 = !DILocation(line: 210, column: 51, scope: !4442)
!4447 = !DILocalVariable(name: "ep_dev", scope: !4442, file: !3, line: 212, type: !143)
!4448 = !DILocation(line: 212, column: 20, scope: !4442)
!4449 = !DILocation(line: 212, column: 29, scope: !4442)
!4450 = !DILocation(line: 212, column: 39, scope: !4442)
!4451 = !DILocation(line: 214, column: 6, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 214, column: 6)
!4453 = !DILocation(line: 214, column: 6, scope: !4442)
!4454 = !DILocation(line: 215, column: 22, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 214, column: 14)
!4456 = !DILocation(line: 215, column: 30, scope: !4455)
!4457 = !DILocation(line: 215, column: 3, scope: !4455)
!4458 = !DILocation(line: 216, column: 3, scope: !4455)
!4459 = !DILocation(line: 216, column: 13, scope: !4455)
!4460 = !DILocation(line: 216, column: 20, scope: !4455)
!4461 = !DILocation(line: 217, column: 2, scope: !4455)
!4462 = !DILocation(line: 218, column: 1, scope: !4442)
!4463 = distinct !DISubprogram(name: "get_order", scope: !4464, file: !4464, line: 29, type: !4465, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4464 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!170, !312}
!4467 = !DILocalVariable(name: "x", arg: 1, scope: !4468, file: !4469, line: 366, type: !406)
!4468 = distinct !DISubprogram(name: "fls64", scope: !4469, file: !4469, line: 366, type: !4470, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4469 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!170, !406}
!4472 = !DILocation(line: 366, column: 40, scope: !4468, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 46, column: 9, scope: !4463)
!4474 = !DILocalVariable(name: "bitpos", scope: !4468, file: !4469, line: 368, type: !170)
!4475 = !DILocation(line: 368, column: 6, scope: !4468, inlinedAt: !4473)
!4476 = !DILocalVariable(name: "size", arg: 1, scope: !4463, file: !4464, line: 29, type: !312)
!4477 = !DILocation(line: 29, column: 63, scope: !4463)
!4478 = !DILocation(line: 31, column: 27, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4463, file: !4464, line: 31, column: 6)
!4480 = !DILocation(line: 31, column: 6, scope: !4479)
!4481 = !DILocation(line: 31, column: 6, scope: !4463)
!4482 = !DILocation(line: 32, column: 8, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !4464, line: 32, column: 7)
!4484 = distinct !DILexicalBlock(scope: !4479, file: !4464, line: 31, column: 34)
!4485 = !DILocation(line: 32, column: 7, scope: !4484)
!4486 = !DILocation(line: 33, column: 4, scope: !4483)
!4487 = !DILocation(line: 35, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4484, file: !4464, line: 35, column: 7)
!4489 = !DILocation(line: 35, column: 12, scope: !4488)
!4490 = !DILocation(line: 35, column: 7, scope: !4484)
!4491 = !DILocation(line: 36, column: 4, scope: !4488)
!4492 = !DILocation(line: 38, column: 10, scope: !4484)
!4493 = !DILocation(line: 38, column: 28, scope: !4484)
!4494 = !DILocation(line: 38, column: 41, scope: !4484)
!4495 = !DILocation(line: 38, column: 3, scope: !4484)
!4496 = !DILocation(line: 41, column: 6, scope: !4463)
!4497 = !DILocation(line: 42, column: 7, scope: !4463)
!4498 = !DILocation(line: 46, column: 15, scope: !4463)
!4499 = !DILocation(line: 374, column: 2, scope: !4468, inlinedAt: !4473)
!4500 = !DILocation(line: 376, column: 14, scope: !4468, inlinedAt: !4473)
!4501 = !{i32 244044}
!4502 = !DILocation(line: 377, column: 9, scope: !4468, inlinedAt: !4473)
!4503 = !DILocation(line: 377, column: 16, scope: !4468, inlinedAt: !4473)
!4504 = !DILocation(line: 46, column: 2, scope: !4463)
!4505 = !DILocation(line: 48, column: 1, scope: !4463)
!4506 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4507, file: !4507, line: 30, type: !4508, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4507 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!170, !405}
!4510 = !DILocation(line: 366, column: 40, scope: !4468, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 32, column: 9, scope: !4506)
!4512 = !DILocation(line: 368, column: 6, scope: !4468, inlinedAt: !4511)
!4513 = !DILocalVariable(name: "n", arg: 1, scope: !4506, file: !4507, line: 30, type: !405)
!4514 = !DILocation(line: 30, column: 21, scope: !4506)
!4515 = !DILocation(line: 32, column: 15, scope: !4506)
!4516 = !DILocation(line: 374, column: 2, scope: !4468, inlinedAt: !4511)
!4517 = !DILocation(line: 376, column: 14, scope: !4468, inlinedAt: !4511)
!4518 = !DILocation(line: 377, column: 9, scope: !4468, inlinedAt: !4511)
!4519 = !DILocation(line: 377, column: 16, scope: !4468, inlinedAt: !4511)
!4520 = !DILocation(line: 32, column: 18, scope: !4506)
!4521 = !DILocation(line: 32, column: 2, scope: !4506)
!4522 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4523, file: !4523, line: 137, type: !4524, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4523 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!142, !920, !2027, !309, !140}
!4526 = !DILocalVariable(name: "s", arg: 1, scope: !4522, file: !4523, line: 137, type: !920)
!4527 = !DILocation(line: 137, column: 54, scope: !4522)
!4528 = !DILocalVariable(name: "object", arg: 2, scope: !4522, file: !4523, line: 137, type: !2027)
!4529 = !DILocation(line: 137, column: 69, scope: !4522)
!4530 = !DILocalVariable(name: "size", arg: 3, scope: !4522, file: !4523, line: 138, type: !309)
!4531 = !DILocation(line: 138, column: 12, scope: !4522)
!4532 = !DILocalVariable(name: "flags", arg: 4, scope: !4522, file: !4523, line: 138, type: !140)
!4533 = !DILocation(line: 138, column: 24, scope: !4522)
!4534 = !DILocation(line: 140, column: 17, scope: !4522)
!4535 = !DILocation(line: 140, column: 2, scope: !4522)
!4536 = distinct !DISubprogram(name: "bLength_show", scope: !3, file: !3, line: 46, type: !4042, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4537 = !DILocalVariable(name: "dev", arg: 1, scope: !4536, file: !3, line: 46, type: !198)
!4538 = !DILocation(line: 46, column: 1, scope: !4536)
!4539 = !DILocalVariable(name: "attr", arg: 2, scope: !4536, file: !3, line: 46, type: !4044)
!4540 = !DILocalVariable(name: "buf", arg: 3, scope: !4536, file: !3, line: 46, type: !263)
!4541 = !DILocalVariable(name: "ep", scope: !4536, file: !3, line: 46, type: !143)
!4542 = !DILocalVariable(name: "__mptr", scope: !4543, file: !3, line: 46, type: !142)
!4543 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 46, column: 1)
!4544 = !DILocation(line: 46, column: 1, scope: !4543)
!4545 = !DILocation(line: 46, column: 1, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 46, column: 1)
!4547 = distinct !DISubprogram(name: "bEndpointAddress_show", scope: !3, file: !3, line: 47, type: !4042, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4548 = !DILocalVariable(name: "dev", arg: 1, scope: !4547, file: !3, line: 47, type: !198)
!4549 = !DILocation(line: 47, column: 1, scope: !4547)
!4550 = !DILocalVariable(name: "attr", arg: 2, scope: !4547, file: !3, line: 47, type: !4044)
!4551 = !DILocalVariable(name: "buf", arg: 3, scope: !4547, file: !3, line: 47, type: !263)
!4552 = !DILocalVariable(name: "ep", scope: !4547, file: !3, line: 47, type: !143)
!4553 = !DILocalVariable(name: "__mptr", scope: !4554, file: !3, line: 47, type: !142)
!4554 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 47, column: 1)
!4555 = !DILocation(line: 47, column: 1, scope: !4554)
!4556 = !DILocation(line: 47, column: 1, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 47, column: 1)
!4558 = distinct !DISubprogram(name: "bmAttributes_show", scope: !3, file: !3, line: 48, type: !4042, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4559 = !DILocalVariable(name: "dev", arg: 1, scope: !4558, file: !3, line: 48, type: !198)
!4560 = !DILocation(line: 48, column: 1, scope: !4558)
!4561 = !DILocalVariable(name: "attr", arg: 2, scope: !4558, file: !3, line: 48, type: !4044)
!4562 = !DILocalVariable(name: "buf", arg: 3, scope: !4558, file: !3, line: 48, type: !263)
!4563 = !DILocalVariable(name: "ep", scope: !4558, file: !3, line: 48, type: !143)
!4564 = !DILocalVariable(name: "__mptr", scope: !4565, file: !3, line: 48, type: !142)
!4565 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 48, column: 1)
!4566 = !DILocation(line: 48, column: 1, scope: !4565)
!4567 = !DILocation(line: 48, column: 1, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 48, column: 1)
!4569 = distinct !DISubprogram(name: "bInterval_show", scope: !3, file: !3, line: 49, type: !4042, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4570 = !DILocalVariable(name: "dev", arg: 1, scope: !4569, file: !3, line: 49, type: !198)
!4571 = !DILocation(line: 49, column: 1, scope: !4569)
!4572 = !DILocalVariable(name: "attr", arg: 2, scope: !4569, file: !3, line: 49, type: !4044)
!4573 = !DILocalVariable(name: "buf", arg: 3, scope: !4569, file: !3, line: 49, type: !263)
!4574 = !DILocalVariable(name: "ep", scope: !4569, file: !3, line: 49, type: !143)
!4575 = !DILocalVariable(name: "__mptr", scope: !4576, file: !3, line: 49, type: !142)
!4576 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 49, column: 1)
!4577 = !DILocation(line: 49, column: 1, scope: !4576)
!4578 = !DILocation(line: 49, column: 1, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 49, column: 1)
!4580 = distinct !DISubprogram(name: "wMaxPacketSize_show", scope: !3, file: !3, line: 51, type: !4042, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4581 = !DILocalVariable(name: "dev", arg: 1, scope: !4580, file: !3, line: 51, type: !198)
!4582 = !DILocation(line: 51, column: 51, scope: !4580)
!4583 = !DILocalVariable(name: "attr", arg: 2, scope: !4580, file: !3, line: 52, type: !4044)
!4584 = !DILocation(line: 52, column: 33, scope: !4580)
!4585 = !DILocalVariable(name: "buf", arg: 3, scope: !4580, file: !3, line: 52, type: !263)
!4586 = !DILocation(line: 52, column: 45, scope: !4580)
!4587 = !DILocalVariable(name: "ep", scope: !4580, file: !3, line: 54, type: !143)
!4588 = !DILocation(line: 54, column: 20, scope: !4580)
!4589 = !DILocalVariable(name: "__mptr", scope: !4590, file: !3, line: 54, type: !142)
!4590 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 54, column: 25)
!4591 = !DILocation(line: 54, column: 25, scope: !4590)
!4592 = !DILocation(line: 54, column: 25, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 54, column: 25)
!4594 = !DILocation(line: 55, column: 17, scope: !4580)
!4595 = !DILocation(line: 55, column: 50, scope: !4580)
!4596 = !DILocation(line: 55, column: 54, scope: !4580)
!4597 = !DILocation(line: 55, column: 32, scope: !4580)
!4598 = !DILocation(line: 55, column: 9, scope: !4580)
!4599 = !DILocation(line: 55, column: 2, scope: !4580)
!4600 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !95, file: !95, line: 647, type: !4601, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{!170, !4603}
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4605 = !DILocalVariable(name: "epd", arg: 1, scope: !4600, file: !95, line: 647, type: !4603)
!4606 = !DILocation(line: 647, column: 75, scope: !4600)
!4607 = !DILocation(line: 649, column: 9, scope: !4600)
!4608 = !DILocation(line: 649, column: 44, scope: !4600)
!4609 = !DILocation(line: 649, column: 2, scope: !4600)
!4610 = distinct !DISubprogram(name: "interval_show", scope: !3, file: !3, line: 83, type: !4042, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4611 = !DILocalVariable(name: "dev", arg: 1, scope: !4610, file: !3, line: 83, type: !198)
!4612 = !DILocation(line: 83, column: 45, scope: !4610)
!4613 = !DILocalVariable(name: "attr", arg: 2, scope: !4610, file: !3, line: 83, type: !4044)
!4614 = !DILocation(line: 83, column: 75, scope: !4610)
!4615 = !DILocalVariable(name: "buf", arg: 3, scope: !4610, file: !3, line: 84, type: !263)
!4616 = !DILocation(line: 84, column: 15, scope: !4610)
!4617 = !DILocalVariable(name: "ep", scope: !4610, file: !3, line: 86, type: !143)
!4618 = !DILocation(line: 86, column: 20, scope: !4610)
!4619 = !DILocalVariable(name: "__mptr", scope: !4620, file: !3, line: 86, type: !142)
!4620 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 86, column: 25)
!4621 = !DILocation(line: 86, column: 25, scope: !4620)
!4622 = !DILocation(line: 86, column: 25, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4620, file: !3, line: 86, column: 25)
!4624 = !DILocalVariable(name: "unit", scope: !4610, file: !3, line: 87, type: !173)
!4625 = !DILocation(line: 87, column: 7, scope: !4610)
!4626 = !DILocalVariable(name: "interval", scope: !4610, file: !3, line: 88, type: !7)
!4627 = !DILocation(line: 88, column: 11, scope: !4610)
!4628 = !DILocalVariable(name: "in", scope: !4610, file: !3, line: 89, type: !7)
!4629 = !DILocation(line: 89, column: 11, scope: !4610)
!4630 = !DILocation(line: 91, column: 8, scope: !4610)
!4631 = !DILocation(line: 91, column: 12, scope: !4610)
!4632 = !DILocation(line: 91, column: 18, scope: !4610)
!4633 = !DILocation(line: 91, column: 35, scope: !4610)
!4634 = !DILocation(line: 91, column: 5, scope: !4610)
!4635 = !DILocation(line: 93, column: 28, scope: !4610)
!4636 = !DILocation(line: 93, column: 32, scope: !4610)
!4637 = !DILocation(line: 93, column: 10, scope: !4610)
!4638 = !DILocation(line: 93, column: 2, scope: !4610)
!4639 = !DILocation(line: 95, column: 7, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 95, column: 7)
!4641 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 93, column: 39)
!4642 = !DILocation(line: 95, column: 11, scope: !4640)
!4643 = !DILocation(line: 95, column: 17, scope: !4640)
!4644 = !DILocation(line: 95, column: 23, scope: !4640)
!4645 = !DILocation(line: 95, column: 7, scope: !4641)
!4646 = !DILocation(line: 97, column: 15, scope: !4640)
!4647 = !DILocation(line: 97, column: 19, scope: !4640)
!4648 = !DILocation(line: 97, column: 25, scope: !4640)
!4649 = !DILocation(line: 97, column: 13, scope: !4640)
!4650 = !DILocation(line: 97, column: 4, scope: !4640)
!4651 = !DILocation(line: 98, column: 3, scope: !4641)
!4652 = !DILocation(line: 101, column: 20, scope: !4641)
!4653 = !DILocation(line: 101, column: 24, scope: !4641)
!4654 = !DILocation(line: 101, column: 30, scope: !4641)
!4655 = !DILocation(line: 101, column: 40, scope: !4641)
!4656 = !DILocation(line: 101, column: 16, scope: !4641)
!4657 = !DILocation(line: 101, column: 12, scope: !4641)
!4658 = !DILocation(line: 102, column: 3, scope: !4641)
!4659 = !DILocation(line: 105, column: 7, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 105, column: 7)
!4661 = !DILocation(line: 105, column: 11, scope: !4660)
!4662 = !DILocation(line: 105, column: 17, scope: !4660)
!4663 = !DILocation(line: 105, column: 23, scope: !4660)
!4664 = !DILocation(line: 105, column: 41, scope: !4660)
!4665 = !DILocation(line: 105, column: 45, scope: !4660)
!4666 = !DILocation(line: 105, column: 7, scope: !4641)
!4667 = !DILocation(line: 107, column: 15, scope: !4660)
!4668 = !DILocation(line: 107, column: 19, scope: !4660)
!4669 = !DILocation(line: 107, column: 25, scope: !4660)
!4670 = !DILocation(line: 107, column: 13, scope: !4660)
!4671 = !DILocation(line: 107, column: 4, scope: !4660)
!4672 = !DILocation(line: 108, column: 3, scope: !4641)
!4673 = !DILocation(line: 111, column: 7, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 111, column: 7)
!4675 = !DILocation(line: 111, column: 11, scope: !4674)
!4676 = !DILocation(line: 111, column: 17, scope: !4674)
!4677 = !DILocation(line: 111, column: 23, scope: !4674)
!4678 = !DILocation(line: 111, column: 7, scope: !4641)
!4679 = !DILocation(line: 112, column: 21, scope: !4674)
!4680 = !DILocation(line: 112, column: 25, scope: !4674)
!4681 = !DILocation(line: 112, column: 31, scope: !4674)
!4682 = !DILocation(line: 112, column: 41, scope: !4674)
!4683 = !DILocation(line: 112, column: 17, scope: !4674)
!4684 = !DILocation(line: 112, column: 13, scope: !4674)
!4685 = !DILocation(line: 112, column: 4, scope: !4674)
!4686 = !DILocation(line: 114, column: 15, scope: !4674)
!4687 = !DILocation(line: 114, column: 19, scope: !4674)
!4688 = !DILocation(line: 114, column: 25, scope: !4674)
!4689 = !DILocation(line: 114, column: 13, scope: !4674)
!4690 = !DILocation(line: 115, column: 3, scope: !4641)
!4691 = !DILocation(line: 117, column: 15, scope: !4610)
!4692 = !DILocation(line: 117, column: 19, scope: !4610)
!4693 = !DILocation(line: 117, column: 25, scope: !4610)
!4694 = !DILocation(line: 117, column: 31, scope: !4610)
!4695 = !DILocation(line: 117, column: 14, scope: !4610)
!4696 = !DILocation(line: 117, column: 11, scope: !4610)
!4697 = !DILocation(line: 118, column: 6, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 118, column: 6)
!4699 = !DILocation(line: 118, column: 15, scope: !4698)
!4700 = !DILocation(line: 118, column: 6, scope: !4610)
!4701 = !DILocation(line: 119, column: 8, scope: !4698)
!4702 = !DILocation(line: 119, column: 3, scope: !4698)
!4703 = !DILocation(line: 121, column: 8, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 120, column: 7)
!4705 = !DILocation(line: 122, column: 12, scope: !4704)
!4706 = !DILocation(line: 125, column: 17, scope: !4610)
!4707 = !DILocation(line: 125, column: 33, scope: !4610)
!4708 = !DILocation(line: 125, column: 43, scope: !4610)
!4709 = !DILocation(line: 125, column: 9, scope: !4610)
!4710 = !DILocation(line: 125, column: 2, scope: !4610)
!4711 = distinct !DISubprogram(name: "usb_endpoint_type", scope: !95, file: !95, line: 481, type: !4601, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4712 = !DILocalVariable(name: "epd", arg: 1, scope: !4711, file: !95, line: 481, type: !4603)
!4713 = !DILocation(line: 481, column: 75, scope: !4711)
!4714 = !DILocation(line: 483, column: 9, scope: !4711)
!4715 = !DILocation(line: 483, column: 14, scope: !4711)
!4716 = !DILocation(line: 483, column: 27, scope: !4711)
!4717 = !DILocation(line: 483, column: 2, scope: !4711)
!4718 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 59, type: !4042, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4719 = !DILocalVariable(name: "dev", arg: 1, scope: !4718, file: !3, line: 59, type: !198)
!4720 = !DILocation(line: 59, column: 41, scope: !4718)
!4721 = !DILocalVariable(name: "attr", arg: 2, scope: !4718, file: !3, line: 59, type: !4044)
!4722 = !DILocation(line: 59, column: 71, scope: !4718)
!4723 = !DILocalVariable(name: "buf", arg: 3, scope: !4718, file: !3, line: 60, type: !263)
!4724 = !DILocation(line: 60, column: 11, scope: !4718)
!4725 = !DILocalVariable(name: "ep", scope: !4718, file: !3, line: 62, type: !143)
!4726 = !DILocation(line: 62, column: 20, scope: !4718)
!4727 = !DILocalVariable(name: "__mptr", scope: !4728, file: !3, line: 62, type: !142)
!4728 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 62, column: 25)
!4729 = !DILocation(line: 62, column: 25, scope: !4728)
!4730 = !DILocation(line: 62, column: 25, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 62, column: 25)
!4732 = !DILocalVariable(name: "type", scope: !4718, file: !3, line: 63, type: !263)
!4733 = !DILocation(line: 63, column: 8, scope: !4718)
!4734 = !DILocation(line: 65, column: 28, scope: !4718)
!4735 = !DILocation(line: 65, column: 32, scope: !4718)
!4736 = !DILocation(line: 65, column: 10, scope: !4718)
!4737 = !DILocation(line: 65, column: 2, scope: !4718)
!4738 = !DILocation(line: 67, column: 8, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 65, column: 39)
!4740 = !DILocation(line: 68, column: 3, scope: !4739)
!4741 = !DILocation(line: 70, column: 8, scope: !4739)
!4742 = !DILocation(line: 71, column: 3, scope: !4739)
!4743 = !DILocation(line: 73, column: 8, scope: !4739)
!4744 = !DILocation(line: 74, column: 3, scope: !4739)
!4745 = !DILocation(line: 76, column: 8, scope: !4739)
!4746 = !DILocation(line: 77, column: 3, scope: !4739)
!4747 = !DILocation(line: 79, column: 17, scope: !4718)
!4748 = !DILocation(line: 79, column: 30, scope: !4718)
!4749 = !DILocation(line: 79, column: 9, scope: !4718)
!4750 = !DILocation(line: 79, column: 2, scope: !4718)
!4751 = distinct !DISubprogram(name: "direction_show", scope: !3, file: !3, line: 129, type: !4042, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4752 = !DILocalVariable(name: "dev", arg: 1, scope: !4751, file: !3, line: 129, type: !198)
!4753 = !DILocation(line: 129, column: 46, scope: !4751)
!4754 = !DILocalVariable(name: "attr", arg: 2, scope: !4751, file: !3, line: 129, type: !4044)
!4755 = !DILocation(line: 129, column: 76, scope: !4751)
!4756 = !DILocalVariable(name: "buf", arg: 3, scope: !4751, file: !3, line: 130, type: !263)
!4757 = !DILocation(line: 130, column: 16, scope: !4751)
!4758 = !DILocalVariable(name: "ep", scope: !4751, file: !3, line: 132, type: !143)
!4759 = !DILocation(line: 132, column: 20, scope: !4751)
!4760 = !DILocalVariable(name: "__mptr", scope: !4761, file: !3, line: 132, type: !142)
!4761 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 132, column: 25)
!4762 = !DILocation(line: 132, column: 25, scope: !4761)
!4763 = !DILocation(line: 132, column: 25, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 132, column: 25)
!4765 = !DILocalVariable(name: "direction", scope: !4751, file: !3, line: 133, type: !263)
!4766 = !DILocation(line: 133, column: 8, scope: !4751)
!4767 = !DILocation(line: 135, column: 32, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 135, column: 6)
!4769 = !DILocation(line: 135, column: 36, scope: !4768)
!4770 = !DILocation(line: 135, column: 6, scope: !4768)
!4771 = !DILocation(line: 135, column: 6, scope: !4751)
!4772 = !DILocation(line: 136, column: 13, scope: !4768)
!4773 = !DILocation(line: 136, column: 3, scope: !4768)
!4774 = !DILocation(line: 137, column: 31, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 137, column: 11)
!4776 = !DILocation(line: 137, column: 35, scope: !4775)
!4777 = !DILocation(line: 137, column: 11, scope: !4775)
!4778 = !DILocation(line: 137, column: 11, scope: !4768)
!4779 = !DILocation(line: 138, column: 13, scope: !4775)
!4780 = !DILocation(line: 138, column: 3, scope: !4775)
!4781 = !DILocation(line: 140, column: 13, scope: !4775)
!4782 = !DILocation(line: 141, column: 17, scope: !4751)
!4783 = !DILocation(line: 141, column: 30, scope: !4751)
!4784 = !DILocation(line: 141, column: 9, scope: !4751)
!4785 = !DILocation(line: 141, column: 2, scope: !4751)
!4786 = distinct !DISubprogram(name: "usb_endpoint_xfer_control", scope: !95, file: !95, line: 528, type: !4601, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4787 = !DILocalVariable(name: "epd", arg: 1, scope: !4786, file: !95, line: 529, type: !4603)
!4788 = !DILocation(line: 529, column: 43, scope: !4786)
!4789 = !DILocation(line: 531, column: 11, scope: !4786)
!4790 = !DILocation(line: 531, column: 16, scope: !4786)
!4791 = !DILocation(line: 531, column: 29, scope: !4786)
!4792 = !DILocation(line: 531, column: 59, scope: !4786)
!4793 = !DILocation(line: 531, column: 2, scope: !4786)
!4794 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !95, file: !95, line: 492, type: !4601, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !236)
!4795 = !DILocalVariable(name: "epd", arg: 1, scope: !4794, file: !95, line: 492, type: !4603)
!4796 = !DILocation(line: 492, column: 77, scope: !4794)
!4797 = !DILocation(line: 494, column: 11, scope: !4794)
!4798 = !DILocation(line: 494, column: 16, scope: !4794)
!4799 = !DILocation(line: 494, column: 33, scope: !4794)
!4800 = !DILocation(line: 494, column: 58, scope: !4794)
!4801 = !DILocation(line: 494, column: 2, scope: !4794)
