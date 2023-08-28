; ModuleID = '../bcout/drivers/media/mc/mc-request.llvm.bc'
source_filename = "drivers/media/mc/mc-request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.52, i32 }
%union.anon.52 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
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
%struct.atomic_t = type { i32 }
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
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.vm_operations_struct = type opaque
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
%struct.kgid_t = type { i32 }
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
%struct.vm_struct = type opaque
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
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.kmem_cache = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.media_request = type { %struct.media_device*, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.media_device = type { %struct.device*, %struct.media_devnode*, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, i8*, i32 (%struct.media_entity*, %struct.media_pipeline*)*, void (%struct.media_entity*)*, %struct.media_device_ops*, %struct.mutex, %struct.atomic_t }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.media_devnode = type { %struct.media_device*, %struct.media_file_operations*, %struct.device, %struct.cdev, %struct.device*, i32, i64, void (%struct.media_devnode*)* }
%struct.media_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.media_graph = type { [16 x %struct.anon.64], %struct.media_entity_enum, i32 }
%struct.anon.64 = type { %struct.media_entity*, %struct.list_head* }
%struct.media_entity = type { %struct.media_gobj, i8*, i32, i32, i64, i16, i16, i16, i32, %struct.media_pad*, %struct.list_head, %struct.media_entity_operations*, i32, i32, %struct.media_pipeline*, %union.anon.67 }
%struct.media_gobj = type { %struct.media_device*, i32, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, %struct.media_entity*, i16, i32, i64 }
%struct.media_entity_operations = type { i32 (%struct.media_entity*, %struct.fwnode_endpoint*)*, i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)*, i32 (%struct.media_link*)* }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.65, %union.anon.66, %struct.media_link*, i64, i8 }
%union.anon.65 = type { %struct.media_gobj* }
%union.anon.66 = type { %struct.media_gobj* }
%struct.media_pipeline = type { i32, %struct.media_graph }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { i32, i32 }
%struct.media_entity_enum = type { i64*, i32 }
%struct.media_device_ops = type { i32 (%struct.media_link*, i32, i32)*, %struct.media_request* (%struct.media_device*)*, {}*, i32 (%struct.media_request*)*, {}* }
%struct.kref = type { %struct.refcount_struct }
%struct.fd = type { %struct.file*, i32 }
%struct.media_request_object = type { %struct.media_request_object_ops*, i8*, %struct.media_request*, %struct.list_head, %struct.kref, i8 }
%struct.media_request_object_ops = type { i32 (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)*, void (%struct.media_request_object*)* }

@request_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @media_request_poll, i64 (%struct.file*, i32, i64)* @media_request_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @media_request_close, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"drivers/media/mc/mc-request.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@media_request_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3817
@.str.2 = private unnamed_addr constant [16 x i8] c"&req->poll_wait\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%u:%d\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @media_request_put(%struct.media_request* %req) #0 !dbg !3828 {
entry:
  %req.addr = alloca %struct.media_request*, align 8
  store %struct.media_request* %req, %struct.media_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request** %req.addr, metadata !3829, metadata !DIExpression()), !dbg !3830
  %0 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !3831
  %kref = getelementptr inbounds %struct.media_request, %struct.media_request* %0, i32 0, i32 1, !dbg !3832
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @media_request_release) #9, !dbg !3833
  ret void, !dbg !3834
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !3835 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !3844, metadata !DIExpression()), !dbg !3845
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3846
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !3848
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #9, !dbg !3849
  br i1 %call, label %if.then, label %if.end, !dbg !3850

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !3851
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3853
  call void %1(%struct.kref* %2) #9, !dbg !3851
  store i32 1, i32* %retval, align 4, !dbg !3854
  br label %return, !dbg !3854

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3855
  br label %return, !dbg !3855

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3856
  ret i32 %3, !dbg !3856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @media_request_release(%struct.kref* %kref) #0 !dbg !3857 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %req = alloca %struct.media_request*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.media_request*, align 8
  %mdev = alloca %struct.media_device*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !3860, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3862, metadata !DIExpression()), !dbg !3864
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3864
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !3864
  store i8* %1, i8** %__mptr, align 8, !dbg !3864
  br label %do.body, !dbg !3864

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3865

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3864
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !3864
  %3 = bitcast i8* %add.ptr to %struct.media_request*, !dbg !3864
  store %struct.media_request* %3, %struct.media_request** %tmp, align 8, !dbg !3865
  %4 = load %struct.media_request*, %struct.media_request** %tmp, align 8, !dbg !3864
  store %struct.media_request* %4, %struct.media_request** %req, align 8, !dbg !3861
  call void @llvm.dbg.declare(metadata %struct.media_device** %mdev, metadata !3867, metadata !DIExpression()), !dbg !3868
  %5 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3869
  %mdev1 = getelementptr inbounds %struct.media_request, %struct.media_request* %5, i32 0, i32 0, !dbg !3870
  %6 = load %struct.media_device*, %struct.media_device** %mdev1, align 8, !dbg !3870
  store %struct.media_device* %6, %struct.media_device** %mdev, align 8, !dbg !3868
  %7 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3871
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %7, i32 0, i32 3, !dbg !3872
  store i32 4, i32* %state, align 8, !dbg !3873
  %8 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3874
  call void @media_request_clean(%struct.media_request* %8) #9, !dbg !3875
  %9 = load %struct.media_device*, %struct.media_device** %mdev, align 8, !dbg !3876
  %ops = getelementptr inbounds %struct.media_device, %struct.media_device* %9, i32 0, i32 21, !dbg !3878
  %10 = load %struct.media_device_ops*, %struct.media_device_ops** %ops, align 8, !dbg !3878
  %req_free = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %10, i32 0, i32 2, !dbg !3879
  %req_free2 = bitcast {}** %req_free to void (%struct.media_request*)**, !dbg !3879
  %11 = load void (%struct.media_request*)*, void (%struct.media_request*)** %req_free2, align 8, !dbg !3879
  %tobool = icmp ne void (%struct.media_request*)* %11, null, !dbg !3876
  br i1 %tobool, label %if.then, label %if.else, !dbg !3880

if.then:                                          ; preds = %do.end
  %12 = load %struct.media_device*, %struct.media_device** %mdev, align 8, !dbg !3881
  %ops3 = getelementptr inbounds %struct.media_device, %struct.media_device* %12, i32 0, i32 21, !dbg !3882
  %13 = load %struct.media_device_ops*, %struct.media_device_ops** %ops3, align 8, !dbg !3882
  %req_free4 = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %13, i32 0, i32 2, !dbg !3883
  %req_free5 = bitcast {}** %req_free4 to void (%struct.media_request*)**, !dbg !3883
  %14 = load void (%struct.media_request*)*, void (%struct.media_request*)** %req_free5, align 8, !dbg !3883
  %15 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3884
  call void %14(%struct.media_request* %15) #9, !dbg !3881
  br label %if.end, !dbg !3881

if.else:                                          ; preds = %do.end
  %16 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3885
  %17 = bitcast %struct.media_request* %16 to i8*, !dbg !3885
  call void @kfree(i8* %17) #9, !dbg !3886
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.media_request* @media_request_get_by_fd(%struct.media_device* %mdev, i32 %request_fd) #0 !dbg !3888 {
entry:
  %retval = alloca %struct.media_request*, align 8
  %mdev.addr = alloca %struct.media_device*, align 8
  %request_fd.addr = alloca i32, align 4
  %f = alloca %struct.fd, align 8
  %req = alloca %struct.media_request*, align 8
  %tmp = alloca %struct.fd, align 8
  store %struct.media_device* %mdev, %struct.media_device** %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_device** %mdev.addr, metadata !3891, metadata !DIExpression()), !dbg !3892
  store i32 %request_fd, i32* %request_fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %request_fd.addr, metadata !3893, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.declare(metadata %struct.fd* %f, metadata !3895, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !3901, metadata !DIExpression()), !dbg !3902
  %0 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !3903
  %tobool = icmp ne %struct.media_device* %0, null, !dbg !3903
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3905

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !3906
  %ops = getelementptr inbounds %struct.media_device, %struct.media_device* %1, i32 0, i32 21, !dbg !3907
  %2 = load %struct.media_device_ops*, %struct.media_device_ops** %ops, align 8, !dbg !3907
  %tobool1 = icmp ne %struct.media_device_ops* %2, null, !dbg !3906
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !3908

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !3909
  %ops3 = getelementptr inbounds %struct.media_device, %struct.media_device* %3, i32 0, i32 21, !dbg !3910
  %4 = load %struct.media_device_ops*, %struct.media_device_ops** %ops3, align 8, !dbg !3910
  %req_validate = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %4, i32 0, i32 3, !dbg !3911
  %5 = load i32 (%struct.media_request*)*, i32 (%struct.media_request*)** %req_validate, align 8, !dbg !3911
  %tobool4 = icmp ne i32 (%struct.media_request*)* %5, null, !dbg !3909
  br i1 %tobool4, label %lor.lhs.false5, label %if.then, !dbg !3912

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %6 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !3913
  %ops6 = getelementptr inbounds %struct.media_device, %struct.media_device* %6, i32 0, i32 21, !dbg !3914
  %7 = load %struct.media_device_ops*, %struct.media_device_ops** %ops6, align 8, !dbg !3914
  %req_queue = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %7, i32 0, i32 4, !dbg !3915
  %req_queue7 = bitcast {}** %req_queue to void (%struct.media_request*)**, !dbg !3915
  %8 = load void (%struct.media_request*)*, void (%struct.media_request*)** %req_queue7, align 8, !dbg !3915
  %tobool8 = icmp ne void (%struct.media_request*)* %8, null, !dbg !3913
  br i1 %tobool8, label %if.end, label %if.then, !dbg !3916

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i8* @ERR_PTR(i64 -53) #9, !dbg !3917
  %9 = bitcast i8* %call to %struct.media_request*, !dbg !3917
  store %struct.media_request* %9, %struct.media_request** %retval, align 8, !dbg !3918
  br label %return, !dbg !3918

if.end:                                           ; preds = %lor.lhs.false5
  %10 = load i32, i32* %request_fd.addr, align 4, !dbg !3919
  %call9 = call { %struct.file*, i32 } @fdget(i32 %10) #9, !dbg !3920
  %11 = bitcast %struct.fd* %tmp to { %struct.file*, i32 }*, !dbg !3920
  %12 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %11, i32 0, i32 0, !dbg !3920
  %13 = extractvalue { %struct.file*, i32 } %call9, 0, !dbg !3920
  store %struct.file* %13, %struct.file** %12, align 8, !dbg !3920
  %14 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %11, i32 0, i32 1, !dbg !3920
  %15 = extractvalue { %struct.file*, i32 } %call9, 1, !dbg !3920
  store i32 %15, i32* %14, align 8, !dbg !3920
  %16 = bitcast %struct.fd* %f to i8*, !dbg !3920
  %17 = bitcast %struct.fd* %tmp to i8*, !dbg !3920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false), !dbg !3920
  %file = getelementptr inbounds %struct.fd, %struct.fd* %f, i32 0, i32 0, !dbg !3921
  %18 = load %struct.file*, %struct.file** %file, align 8, !dbg !3921
  %tobool10 = icmp ne %struct.file* %18, null, !dbg !3923
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3924

if.then11:                                        ; preds = %if.end
  br label %err_no_req_fd, !dbg !3925

if.end12:                                         ; preds = %if.end
  %file13 = getelementptr inbounds %struct.fd, %struct.fd* %f, i32 0, i32 0, !dbg !3926
  %19 = load %struct.file*, %struct.file** %file13, align 8, !dbg !3926
  %f_op = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 3, !dbg !3928
  %20 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8, !dbg !3928
  %cmp = icmp ne %struct.file_operations* %20, @request_fops, !dbg !3929
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !3930

if.then14:                                        ; preds = %if.end12
  br label %err_fput, !dbg !3931

if.end15:                                         ; preds = %if.end12
  %file16 = getelementptr inbounds %struct.fd, %struct.fd* %f, i32 0, i32 0, !dbg !3932
  %21 = load %struct.file*, %struct.file** %file16, align 8, !dbg !3932
  %private_data = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 15, !dbg !3933
  %22 = load i8*, i8** %private_data, align 8, !dbg !3933
  %23 = bitcast i8* %22 to %struct.media_request*, !dbg !3934
  store %struct.media_request* %23, %struct.media_request** %req, align 8, !dbg !3935
  %24 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3936
  %mdev17 = getelementptr inbounds %struct.media_request, %struct.media_request* %24, i32 0, i32 0, !dbg !3938
  %25 = load %struct.media_device*, %struct.media_device** %mdev17, align 8, !dbg !3938
  %26 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !3939
  %cmp18 = icmp ne %struct.media_device* %25, %26, !dbg !3940
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3941

if.then19:                                        ; preds = %if.end15
  br label %err_fput, !dbg !3942

if.end20:                                         ; preds = %if.end15
  %27 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3943
  call void @media_request_get(%struct.media_request* %27) #9, !dbg !3944
  %28 = bitcast %struct.fd* %f to { %struct.file*, i32 }*, !dbg !3945
  %29 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %28, i32 0, i32 0, !dbg !3945
  %30 = load %struct.file*, %struct.file** %29, align 8, !dbg !3945
  %31 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %28, i32 0, i32 1, !dbg !3945
  %32 = load i32, i32* %31, align 8, !dbg !3945
  call void @fdput(%struct.file* %30, i32 %32) #9, !dbg !3945
  %33 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !3946
  store %struct.media_request* %33, %struct.media_request** %retval, align 8, !dbg !3947
  br label %return, !dbg !3947

err_fput:                                         ; preds = %if.then19, %if.then14
  call void @llvm.dbg.label(metadata !3948), !dbg !3949
  %34 = bitcast %struct.fd* %f to { %struct.file*, i32 }*, !dbg !3950
  %35 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %34, i32 0, i32 0, !dbg !3950
  %36 = load %struct.file*, %struct.file** %35, align 8, !dbg !3950
  %37 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %34, i32 0, i32 1, !dbg !3950
  %38 = load i32, i32* %37, align 8, !dbg !3950
  call void @fdput(%struct.file* %36, i32 %38) #9, !dbg !3950
  br label %err_no_req_fd, !dbg !3950

err_no_req_fd:                                    ; preds = %err_fput, %if.then11
  call void @llvm.dbg.label(metadata !3951), !dbg !3952
  %call21 = call i8* @ERR_PTR(i64 -22) #9, !dbg !3953
  %39 = bitcast i8* %call21 to %struct.media_request*, !dbg !3953
  store %struct.media_request* %39, %struct.media_request** %retval, align 8, !dbg !3954
  br label %return, !dbg !3954

return:                                           ; preds = %err_no_req_fd, %if.end20, %if.then
  %40 = load %struct.media_request*, %struct.media_request** %retval, align 8, !dbg !3955
  ret %struct.media_request* %40, !dbg !3955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3956 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3960, metadata !DIExpression()), !dbg !3961
  %0 = load i64, i64* %error.addr, align 8, !dbg !3962
  %1 = inttoptr i64 %0 to i8*, !dbg !3963
  ret i8* %1, !dbg !3964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal { %struct.file*, i32 } @fdget(i32 %fd) #0 !dbg !3965 {
entry:
  %retval = alloca %struct.fd, align 8
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3968, metadata !DIExpression()), !dbg !3969
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3970
  %call = call i64 @__fdget(i32 %0) #9, !dbg !3971
  %call1 = call { %struct.file*, i32 } @__to_fd(i64 %call) #9, !dbg !3972
  %1 = bitcast %struct.fd* %retval to { %struct.file*, i32 }*, !dbg !3972
  %2 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %1, i32 0, i32 0, !dbg !3972
  %3 = extractvalue { %struct.file*, i32 } %call1, 0, !dbg !3972
  store %struct.file* %3, %struct.file** %2, align 8, !dbg !3972
  %4 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %1, i32 0, i32 1, !dbg !3972
  %5 = extractvalue { %struct.file*, i32 } %call1, 1, !dbg !3972
  store i32 %5, i32* %4, align 8, !dbg !3972
  %6 = bitcast %struct.fd* %retval to { %struct.file*, i32 }*, !dbg !3973
  %7 = load { %struct.file*, i32 }, { %struct.file*, i32 }* %6, align 8, !dbg !3973
  ret { %struct.file*, i32 } %7, !dbg !3973
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @media_request_get(%struct.media_request* %req) #0 !dbg !3974 {
entry:
  %req.addr = alloca %struct.media_request*, align 8
  store %struct.media_request* %req, %struct.media_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request** %req.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  %0 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !3977
  %kref = getelementptr inbounds %struct.media_request, %struct.media_request* %0, i32 0, i32 1, !dbg !3978
  call void @kref_get(%struct.kref* %kref) #9, !dbg !3979
  ret void, !dbg !3980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fdput(%struct.file* %fd.coerce0, i32 %fd.coerce1) #0 !dbg !3981 {
entry:
  %fd = alloca %struct.fd, align 8
  %0 = bitcast %struct.fd* %fd to { %struct.file*, i32 }*
  %1 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %0, i32 0, i32 0
  store %struct.file* %fd.coerce0, %struct.file** %1, align 8
  %2 = getelementptr inbounds { %struct.file*, i32 }, { %struct.file*, i32 }* %0, i32 0, i32 1
  store i32 %fd.coerce1, i32* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.fd* %fd, metadata !3984, metadata !DIExpression()), !dbg !3985
  %flags = getelementptr inbounds %struct.fd, %struct.fd* %fd, i32 0, i32 1, !dbg !3986
  %3 = load i32, i32* %flags, align 8, !dbg !3986
  %and = and i32 %3, 1, !dbg !3988
  %tobool = icmp ne i32 %and, 0, !dbg !3988
  br i1 %tobool, label %if.then, label %if.end, !dbg !3989

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.fd, %struct.fd* %fd, i32 0, i32 0, !dbg !3990
  %4 = load %struct.file*, %struct.file** %file, align 8, !dbg !3990
  call void @fput(%struct.file* %4) #9, !dbg !3991
  br label %if.end, !dbg !3991

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3992
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @media_request_alloc(%struct.media_device* %mdev, i32* %alloc_fd) #0 !dbg !3819 {
entry:
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !3993, metadata !DIExpression()), !dbg !3999
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !4009, metadata !DIExpression()), !dbg !4010
  %__ret.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i, metadata !4011, metadata !DIExpression()), !dbg !4013
  %tmp.i.i.i = alloca i32, align 4
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4014, metadata !DIExpression()), !dbg !4015
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4016, metadata !DIExpression()), !dbg !4024
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4026, metadata !DIExpression()), !dbg !4027
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4028, metadata !DIExpression()), !dbg !4029
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !4037
  %retval = alloca i32, align 4
  %mdev.addr = alloca %struct.media_device*, align 8
  %alloc_fd.addr = alloca i32*, align 8
  %req = alloca %struct.media_request*, align 8
  %filp = alloca %struct.file*, align 8
  %fd = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.media_device* %mdev, %struct.media_device** %mdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_device** %mdev.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  store i32* %alloc_fd, i32** %alloc_fd.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %alloc_fd.addr, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !4044, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.declare(metadata %struct.file** %filp, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4050, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4052, metadata !DIExpression()), !dbg !4055
  %0 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4055
  %ops = getelementptr inbounds %struct.media_device, %struct.media_device* %0, i32 0, i32 21, !dbg !4055
  %1 = load %struct.media_device_ops*, %struct.media_device_ops** %ops, align 8, !dbg !4055
  %req_alloc = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %1, i32 0, i32 1, !dbg !4055
  %2 = load %struct.media_request* (%struct.media_device*)*, %struct.media_request* (%struct.media_device*)** %req_alloc, align 8, !dbg !4055
  %tobool = icmp ne %struct.media_request* (%struct.media_device*)* %2, null, !dbg !4055
  %lnot = xor i1 %tobool, true, !dbg !4055
  %lnot.ext = zext i1 %lnot to i32, !dbg !4055
  %3 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4055
  %ops1 = getelementptr inbounds %struct.media_device, %struct.media_device* %3, i32 0, i32 21, !dbg !4055
  %4 = load %struct.media_device_ops*, %struct.media_device_ops** %ops1, align 8, !dbg !4055
  %req_free = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %4, i32 0, i32 2, !dbg !4055
  %req_free2 = bitcast {}** %req_free to void (%struct.media_request*)**, !dbg !4055
  %5 = load void (%struct.media_request*)*, void (%struct.media_request*)** %req_free2, align 8, !dbg !4055
  %tobool3 = icmp ne void (%struct.media_request*)* %5, null, !dbg !4055
  %lnot4 = xor i1 %tobool3, true, !dbg !4055
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !4055
  %xor = xor i32 %lnot.ext, %lnot.ext5, !dbg !4055
  %tobool6 = icmp ne i32 %xor, 0, !dbg !4055
  %lnot7 = xor i1 %tobool6, true, !dbg !4055
  %lnot9 = xor i1 %lnot7, true, !dbg !4055
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !4055
  store i32 %lnot.ext10, i32* %__ret_warn_on, align 4, !dbg !4055
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !4056
  %tobool11 = icmp ne i32 %6, 0, !dbg !4056
  %lnot12 = xor i1 %tobool11, true, !dbg !4056
  %lnot14 = xor i1 %lnot12, true, !dbg !4056
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !4056
  %conv = sext i32 %lnot.ext15 to i64, !dbg !4056
  %tobool16 = icmp ne i64 %conv, 0, !dbg !4056
  br i1 %tobool16, label %if.then, label %if.end, !dbg !4055

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4056

do.body:                                          ; preds = %if.then
  br label %do.body17, !dbg !4058

do.body17:                                        ; preds = %do.body
  br label %do.end, !dbg !4060

do.end:                                           ; preds = %do.body17
  br label %do.body18, !dbg !4058

do.body18:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 296, i32 2305, i64 12) #8, !dbg !4062, !srcloc !4064
  br label %do.end19, !dbg !4062

do.end19:                                         ; preds = %do.body18
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 218) #8, !dbg !4065, !srcloc !4067
  br label %do.body20, !dbg !4058

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !4068

do.end21:                                         ; preds = %do.body20
  br label %do.end22, !dbg !4058

do.end22:                                         ; preds = %do.end21
  br label %if.end, !dbg !4058

if.end:                                           ; preds = %do.end22, %entry
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4055
  %tobool23 = icmp ne i32 %7, 0, !dbg !4055
  %lnot24 = xor i1 %tobool23, true, !dbg !4055
  %lnot26 = xor i1 %lnot24, true, !dbg !4055
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !4055
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !4055
  store i64 %conv28, i64* %tmp, align 8, !dbg !4056
  %8 = load i64, i64* %tmp, align 8, !dbg !4055
  %tobool29 = icmp ne i64 %8, 0, !dbg !4070
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4071

if.then30:                                        ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4072
  br label %return, !dbg !4072

if.end31:                                         ; preds = %if.end
  %9 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4073
  %ops32 = getelementptr inbounds %struct.media_device, %struct.media_device* %9, i32 0, i32 21, !dbg !4075
  %10 = load %struct.media_device_ops*, %struct.media_device_ops** %ops32, align 8, !dbg !4075
  %req_alloc33 = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %10, i32 0, i32 1, !dbg !4076
  %11 = load %struct.media_request* (%struct.media_device*)*, %struct.media_request* (%struct.media_device*)** %req_alloc33, align 8, !dbg !4076
  %tobool34 = icmp ne %struct.media_request* (%struct.media_device*)* %11, null, !dbg !4073
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !4077

if.then35:                                        ; preds = %if.end31
  %12 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4078
  %ops36 = getelementptr inbounds %struct.media_device, %struct.media_device* %12, i32 0, i32 21, !dbg !4079
  %13 = load %struct.media_device_ops*, %struct.media_device_ops** %ops36, align 8, !dbg !4079
  %req_alloc37 = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %13, i32 0, i32 1, !dbg !4080
  %14 = load %struct.media_request* (%struct.media_device*)*, %struct.media_request* (%struct.media_device*)** %req_alloc37, align 8, !dbg !4080
  %15 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4081
  %call = call %struct.media_request* %14(%struct.media_device* %15) #9, !dbg !4078
  store %struct.media_request* %call, %struct.media_request** %req, align 8, !dbg !4082
  br label %if.end39, !dbg !4083

if.else:                                          ; preds = %if.end31
  %call38 = call i8* @kzalloc(i64 96, i32 3264) #9, !dbg !4084
  %16 = bitcast i8* %call38 to %struct.media_request*, !dbg !4084
  store %struct.media_request* %16, %struct.media_request** %req, align 8, !dbg !4085
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then35
  %17 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4086
  %tobool40 = icmp ne %struct.media_request* %17, null, !dbg !4086
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !4088

if.then41:                                        ; preds = %if.end39
  store i32 -12, i32* %retval, align 4, !dbg !4089
  br label %return, !dbg !4089

if.end42:                                         ; preds = %if.end39
  %call43 = call i32 @get_unused_fd_flags(i32 524288) #9, !dbg !4090
  store i32 %call43, i32* %fd, align 4, !dbg !4091
  %18 = load i32, i32* %fd, align 4, !dbg !4092
  %cmp = icmp slt i32 %18, 0, !dbg !4094
  br i1 %cmp, label %if.then45, label %if.end46, !dbg !4095

if.then45:                                        ; preds = %if.end42
  %19 = load i32, i32* %fd, align 4, !dbg !4096
  store i32 %19, i32* %ret, align 4, !dbg !4098
  br label %err_free_req, !dbg !4099

if.end46:                                         ; preds = %if.end42
  %call47 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* @request_fops, i8* null, i32 524288) #9, !dbg !4100
  store %struct.file* %call47, %struct.file** %filp, align 8, !dbg !4101
  %20 = load %struct.file*, %struct.file** %filp, align 8, !dbg !4102
  %21 = bitcast %struct.file* %20 to i8*, !dbg !4102
  %call48 = call zeroext i1 @IS_ERR(i8* %21) #9, !dbg !4104
  br i1 %call48, label %if.then49, label %if.end52, !dbg !4105

if.then49:                                        ; preds = %if.end46
  %22 = load %struct.file*, %struct.file** %filp, align 8, !dbg !4106
  %23 = bitcast %struct.file* %22 to i8*, !dbg !4106
  %call50 = call i64 @PTR_ERR(i8* %23) #9, !dbg !4108
  %conv51 = trunc i64 %call50 to i32, !dbg !4108
  store i32 %conv51, i32* %ret, align 4, !dbg !4109
  br label %err_put_fd, !dbg !4110

if.end52:                                         ; preds = %if.end46
  %24 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4111
  %25 = bitcast %struct.media_request* %24 to i8*, !dbg !4111
  %26 = load %struct.file*, %struct.file** %filp, align 8, !dbg !4112
  %private_data = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 15, !dbg !4113
  store i8* %25, i8** %private_data, align 8, !dbg !4114
  %27 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4115
  %28 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4116
  %mdev53 = getelementptr inbounds %struct.media_request, %struct.media_request* %28, i32 0, i32 0, !dbg !4117
  store %struct.media_device* %27, %struct.media_device** %mdev53, align 8, !dbg !4118
  %29 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4119
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %29, i32 0, i32 3, !dbg !4120
  store i32 0, i32* %state, align 8, !dbg !4121
  %30 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4122
  %num_incomplete_objects = getelementptr inbounds %struct.media_request, %struct.media_request* %30, i32 0, i32 7, !dbg !4123
  store i32 0, i32* %num_incomplete_objects, align 8, !dbg !4124
  %31 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4125
  %kref = getelementptr inbounds %struct.media_request, %struct.media_request* %31, i32 0, i32 1, !dbg !4126
  call void @kref_init(%struct.kref* %kref) #9, !dbg !4127
  %32 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4128
  %objects = getelementptr inbounds %struct.media_request, %struct.media_request* %32, i32 0, i32 6, !dbg !4129
  call void @INIT_LIST_HEAD(%struct.list_head* %objects) #9, !dbg !4130
  br label %do.body54, !dbg !4131

do.body54:                                        ; preds = %if.end52
  %33 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4132
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %33, i32 0, i32 9, !dbg !4132
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %34 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4133
  %35 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %34, i32 0, i32 0, !dbg !4134
  %rlock.i = bitcast %union.anon.3* %35 to %struct.raw_spinlock*, !dbg !4134
  %36 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4132
  %lock56 = getelementptr inbounds %struct.media_request, %struct.media_request* %36, i32 0, i32 9, !dbg !4132
  %37 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4132
  %rlock = bitcast %union.anon.3* %37 to %struct.raw_spinlock*, !dbg !4132
  %38 = bitcast %struct.spinlock* %lock56 to i8*, !dbg !4132
  %39 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 1 %39, i64 0, i1 false), !dbg !4132
  br label %do.end57, !dbg !4132

do.end57:                                         ; preds = %do.body54
  br label %do.body58, !dbg !4135

do.body58:                                        ; preds = %do.end57
  %40 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4136
  %poll_wait = getelementptr inbounds %struct.media_request, %struct.media_request* %40, i32 0, i32 8, !dbg !4136
  call void @__init_waitqueue_head(%struct.wait_queue_head* %poll_wait, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @media_request_alloc.__key) #9, !dbg !4136
  br label %do.end59, !dbg !4136

do.end59:                                         ; preds = %do.body58
  %41 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4138
  %updating_count = getelementptr inbounds %struct.media_request, %struct.media_request* %41, i32 0, i32 4, !dbg !4139
  store i32 0, i32* %updating_count, align 4, !dbg !4140
  %42 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4141
  %access_count = getelementptr inbounds %struct.media_request, %struct.media_request* %42, i32 0, i32 5, !dbg !4142
  store i32 0, i32* %access_count, align 8, !dbg !4143
  %43 = load i32, i32* %fd, align 4, !dbg !4144
  %44 = load i32*, i32** %alloc_fd.addr, align 8, !dbg !4145
  store i32 %43, i32* %44, align 4, !dbg !4146
  %45 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4147
  %debug_str = getelementptr inbounds %struct.media_request, %struct.media_request* %45, i32 0, i32 2, !dbg !4148
  %arraydecay = getelementptr inbounds [27 x i8], [27 x i8]* %debug_str, i64 0, i64 0, !dbg !4147
  %46 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4149
  %request_id = getelementptr inbounds %struct.media_device, %struct.media_device* %46, i32 0, i32 23, !dbg !4150
  store %struct.atomic_t* %request_id, %struct.atomic_t** %v.addr.i, align 8
  %47 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4151
  %48 = bitcast %struct.atomic_t* %47 to i8*, !dbg !4151
  store i8* %48, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %49 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4152
  %50 = load i64, i64* %size.addr.i.i, align 8, !dbg !4153
  %conv.i.i = trunc i64 %50 to i32, !dbg !4153
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %49, i32 %conv.i.i) #10, !dbg !4154
  %51 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4155
  %52 = load i64, i64* %size.addr.i.i, align 8, !dbg !4155
  call void @kcsan_check_access(i8* %51, i64 %52, i32 7) #10, !dbg !4155
  %53 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4156
  store %struct.atomic_t* %53, %struct.atomic_t** %v.addr.i1.i, align 8
  %54 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4157
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %54, %struct.atomic_t** %v.addr.i.i.i, align 8
  %55 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !4158
  %56 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !4013
  store i32 %56, i32* %__ret.i.i.i, align 4, !dbg !4013
  %57 = load i32, i32* %__ret.i.i.i, align 4, !dbg !4013
  %58 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4013
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %58, i32 0, i32 0, !dbg !4013
  %59 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i, i32 %57, i32* %counter.i.i.i) #8, !dbg !4013, !srcloc !4159
  store i32 %59, i32* %__ret.i.i.i, align 4, !dbg !4013
  %60 = load i32, i32* %__ret.i.i.i, align 4, !dbg !4013
  store i32 %60, i32* %tmp.i.i.i, align 4, !dbg !4013
  %61 = load i32, i32* %tmp.i.i.i, align 4, !dbg !4013
  %add.i.i.i = add i32 %55, %61, !dbg !4160
  %62 = load i32, i32* %fd, align 4, !dbg !4161
  %call61 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %add.i.i.i, i32 %62) #9, !dbg !4162
  %63 = load i32, i32* %fd, align 4, !dbg !4163
  %64 = load %struct.file*, %struct.file** %filp, align 8, !dbg !4164
  call void @fd_install(i32 %63, %struct.file* %64) #9, !dbg !4165
  store i32 0, i32* %retval, align 4, !dbg !4166
  br label %return, !dbg !4166

err_put_fd:                                       ; preds = %if.then49
  call void @llvm.dbg.label(metadata !4167), !dbg !4168
  %65 = load i32, i32* %fd, align 4, !dbg !4169
  call void @put_unused_fd(i32 %65) #9, !dbg !4170
  br label %err_free_req, !dbg !4170

err_free_req:                                     ; preds = %err_put_fd, %if.then45
  call void @llvm.dbg.label(metadata !4171), !dbg !4172
  %66 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4173
  %ops62 = getelementptr inbounds %struct.media_device, %struct.media_device* %66, i32 0, i32 21, !dbg !4175
  %67 = load %struct.media_device_ops*, %struct.media_device_ops** %ops62, align 8, !dbg !4175
  %req_free63 = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %67, i32 0, i32 2, !dbg !4176
  %req_free64 = bitcast {}** %req_free63 to void (%struct.media_request*)**, !dbg !4176
  %68 = load void (%struct.media_request*)*, void (%struct.media_request*)** %req_free64, align 8, !dbg !4176
  %tobool65 = icmp ne void (%struct.media_request*)* %68, null, !dbg !4173
  br i1 %tobool65, label %if.then66, label %if.else70, !dbg !4177

if.then66:                                        ; preds = %err_free_req
  %69 = load %struct.media_device*, %struct.media_device** %mdev.addr, align 8, !dbg !4178
  %ops67 = getelementptr inbounds %struct.media_device, %struct.media_device* %69, i32 0, i32 21, !dbg !4179
  %70 = load %struct.media_device_ops*, %struct.media_device_ops** %ops67, align 8, !dbg !4179
  %req_free68 = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %70, i32 0, i32 2, !dbg !4180
  %req_free69 = bitcast {}** %req_free68 to void (%struct.media_request*)**, !dbg !4180
  %71 = load void (%struct.media_request*)*, void (%struct.media_request*)** %req_free69, align 8, !dbg !4180
  %72 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4181
  call void %71(%struct.media_request* %72) #9, !dbg !4178
  br label %if.end71, !dbg !4178

if.else70:                                        ; preds = %err_free_req
  %73 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4182
  %74 = bitcast %struct.media_request* %73 to i8*, !dbg !4182
  call void @kfree(i8* %74) #9, !dbg !4183
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then66
  %75 = load i32, i32* %ret, align 4, !dbg !4184
  store i32 %75, i32* %retval, align 4, !dbg !4185
  br label %return, !dbg !4185

return:                                           ; preds = %if.end71, %do.end59, %if.then41, %if.then30
  %76 = load i32, i32* %retval, align 4, !dbg !4186
  ret i32 %76, !dbg !4186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4187 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4190, metadata !DIExpression()), !dbg !4194
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4200, metadata !DIExpression()), !dbg !4201
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4202, metadata !DIExpression()), !dbg !4203
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4204, metadata !DIExpression()), !dbg !4205
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4206, metadata !DIExpression()), !dbg !4210
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4212, metadata !DIExpression()), !dbg !4216
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4218, metadata !DIExpression()), !dbg !4222
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4227, metadata !DIExpression()), !dbg !4228
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4229, metadata !DIExpression()), !dbg !4230
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4231, metadata !DIExpression()), !dbg !4232
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4233, metadata !DIExpression()), !dbg !4234
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4235, metadata !DIExpression()), !dbg !4236
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4237, metadata !DIExpression()), !dbg !4238
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4239, metadata !DIExpression()), !dbg !4240
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4241, metadata !DIExpression()), !dbg !4242
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  %0 = load i64, i64* %size.addr, align 8, !dbg !4247
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4248
  %or = or i32 %1, 256, !dbg !4249
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4250
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !4251
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4252

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4253
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4254
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4255

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4256
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4257
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4258
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4259
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4236
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4260
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4261
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4262
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4263
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4264
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4265
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !4266
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4266
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4266
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4266
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4266
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4267
  br label %kmalloc.exit, !dbg !4267

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4268
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4269
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4269
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4271

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4272
  br label %kmalloc_index.exit.i, !dbg !4272

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4273
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4275
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4276

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4277
  br label %kmalloc_index.exit.i, !dbg !4277

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4278
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4280
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4281

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4282
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4283
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4284

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4285
  br label %kmalloc_index.exit.i, !dbg !4285

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4286
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4288
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4289

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4290
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4291
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4292

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4293
  br label %kmalloc_index.exit.i, !dbg !4293

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4294
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4296
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4297

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4298
  br label %kmalloc_index.exit.i, !dbg !4298

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4299
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4301
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4302

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4303
  br label %kmalloc_index.exit.i, !dbg !4303

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4304
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4306
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4307

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4308
  br label %kmalloc_index.exit.i, !dbg !4308

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4309
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4311
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4312

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4313
  br label %kmalloc_index.exit.i, !dbg !4313

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4314
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4316
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4317

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4318
  br label %kmalloc_index.exit.i, !dbg !4318

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4319
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4321
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4322

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4323
  br label %kmalloc_index.exit.i, !dbg !4323

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4324
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4326
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4327

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4328
  br label %kmalloc_index.exit.i, !dbg !4328

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4329
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4331
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4332

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4333
  br label %kmalloc_index.exit.i, !dbg !4333

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4334
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4336
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4337

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4338
  br label %kmalloc_index.exit.i, !dbg !4338

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4339
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4341
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4342

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4343
  br label %kmalloc_index.exit.i, !dbg !4343

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4344
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4346
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4347

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4348
  br label %kmalloc_index.exit.i, !dbg !4348

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4349
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4351
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4352

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4353
  br label %kmalloc_index.exit.i, !dbg !4353

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4354
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4356
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4357

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4358
  br label %kmalloc_index.exit.i, !dbg !4358

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4359
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4361
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4362

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4363
  br label %kmalloc_index.exit.i, !dbg !4363

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4364
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4366
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4367

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4368
  br label %kmalloc_index.exit.i, !dbg !4368

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4369
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4371
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4372

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4373
  br label %kmalloc_index.exit.i, !dbg !4373

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4374
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4376
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4377

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4378
  br label %kmalloc_index.exit.i, !dbg !4378

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4379
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4381
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4382

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4383
  br label %kmalloc_index.exit.i, !dbg !4383

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4384
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4386
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4387

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4388
  br label %kmalloc_index.exit.i, !dbg !4388

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4389
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4391
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4392

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4393
  br label %kmalloc_index.exit.i, !dbg !4393

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4394
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4396
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4397

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4398
  br label %kmalloc_index.exit.i, !dbg !4398

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4399
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4401
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4402

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4403
  br label %kmalloc_index.exit.i, !dbg !4403

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4404
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4406
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4407

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4408
  br label %kmalloc_index.exit.i, !dbg !4408

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4409
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4411
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4412

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4413
  br label %kmalloc_index.exit.i, !dbg !4413

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4414, !srcloc !4417
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 205) #8, !dbg !4418, !srcloc !4421
  unreachable, !dbg !4422

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4423
  store i32 %45, i32* %index.i, align 4, !dbg !4424
  %46 = load i32, i32* %index.i, align 4, !dbg !4425
  %tobool.i = icmp ne i32 %46, 0, !dbg !4425
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4427

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4428
  br label %kmalloc.exit, !dbg !4428

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4429
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4430
  %and.i.i = and i32 %48, 17, !dbg !4430
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4430
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4430
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4430
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4430
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4432

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4433
  br label %kmalloc_type.exit.i, !dbg !4433

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4434
  %and2.i.i = and i32 %49, 1, !dbg !4435
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4434
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4434
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4434
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4436
  br label %kmalloc_type.exit.i, !dbg !4436

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4437
  %idxprom.i = zext i32 %51 to i64, !dbg !4438
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4438
  %52 = load i32, i32* %index.i, align 4, !dbg !4439
  %idxprom6.i = zext i32 %52 to i64, !dbg !4438
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4438
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4438
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4440
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4441
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4442
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4443
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !4444
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4444
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4444
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4444
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4444
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4205
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4445
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4446
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4447
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4448
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !4449
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4450
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4451
  store i8* %62, i8** %retval.i, align 8, !dbg !4452
  br label %kmalloc.exit, !dbg !4452

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4453
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4454
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !4455
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4455
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4455
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4455
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4455
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4456
  br label %kmalloc.exit, !dbg !4456

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4457
  ret i8* %65, !dbg !4458
}

; Function Attrs: noredzone
declare dso_local i32 @get_unused_fd_flags(i32) #3

; Function Attrs: noredzone
declare dso_local %struct.file* @anon_inode_getfile(i8*, %struct.file_operations*, i8*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4459 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4462, metadata !DIExpression()), !dbg !4463
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4464
  %1 = ptrtoint i8* %0 to i64, !dbg !4464
  %2 = inttoptr i64 %1 to i8*, !dbg !4464
  %3 = ptrtoint i8* %2 to i64, !dbg !4464
  %cmp = icmp uge i64 %3, -4095, !dbg !4464
  %lnot = xor i1 %cmp, true, !dbg !4464
  %lnot1 = xor i1 %lnot, true, !dbg !4464
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4464
  %conv = sext i32 %lnot.ext to i64, !dbg !4464
  %tobool = icmp ne i64 %conv, 0, !dbg !4464
  ret i1 %tobool, !dbg !4465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4466 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4471
  %1 = ptrtoint i8* %0 to i64, !dbg !4472
  ret i64 %1, !dbg !4473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !4474 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4477
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4478
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #9, !dbg !4479
  ret void, !dbg !4480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4481 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  br label %do.body, !dbg !4487

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4488

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4490

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4488

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4492
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4492
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4492
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4492
  br label %do.end3, !dbg !4492

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4488

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4494
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4495
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4496
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4497
  ret void, !dbg !4498
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @fd_install(i32, %struct.file*) #3

; Function Attrs: noredzone
declare dso_local void @put_unused_fd(i32) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.media_request_object* @media_request_object_find(%struct.media_request* %req, %struct.media_request_object_ops* %ops, i8* %priv) #0 !dbg !4499 {
entry:
  %lock.addr.i71 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i71, metadata !4502, metadata !DIExpression()), !dbg !4506
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4508, metadata !DIExpression()), !dbg !4509
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !4510
  %retval = alloca %struct.media_request_object*, align 8
  %req.addr = alloca %struct.media_request*, align 8
  %ops.addr = alloca %struct.media_request_object_ops*, align 8
  %priv.addr = alloca i8*, align 8
  %obj = alloca %struct.media_request_object*, align 8
  %found = alloca %struct.media_request_object*, align 8
  %flags = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %__dummy32 = alloca i64, align 8
  %__dummy233 = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp49 = alloca %struct.media_request_object*, align 8
  %__mptr63 = alloca i8*, align 8
  %tmp68 = alloca %struct.media_request_object*, align 8
  store %struct.media_request* %req, %struct.media_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request** %req.addr, metadata !4517, metadata !DIExpression()), !dbg !4518
  store %struct.media_request_object_ops* %ops, %struct.media_request_object_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object_ops** %ops.addr, metadata !4519, metadata !DIExpression()), !dbg !4520
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %found, metadata !4525, metadata !DIExpression()), !dbg !4526
  store %struct.media_request_object* null, %struct.media_request_object** %found, align 8, !dbg !4526
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4527, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4529, metadata !DIExpression()), !dbg !4532
  %0 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops.addr, align 8, !dbg !4532
  %tobool = icmp ne %struct.media_request_object_ops* %0, null, !dbg !4532
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4532

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %priv.addr, align 8, !dbg !4532
  %tobool1 = icmp ne i8* %1, null, !dbg !4532
  %lnot = xor i1 %tobool1, true, !dbg !4532
  br label %lor.end, !dbg !4532

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !4532
  %lnot3 = xor i1 %lnot2, true, !dbg !4532
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4532
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4532
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4533
  %tobool4 = icmp ne i32 %3, 0, !dbg !4533
  %lnot5 = xor i1 %tobool4, true, !dbg !4533
  %lnot7 = xor i1 %lnot5, true, !dbg !4533
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4533
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4533
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4533
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4532

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4533

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !4535

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !4537

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !4535

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 371, i32 2305, i64 12) #8, !dbg !4539, !srcloc !4541
  br label %do.end12, !dbg !4539

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 221) #8, !dbg !4542, !srcloc !4544
  br label %do.body13, !dbg !4535

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4545

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4535

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !4535

if.end:                                           ; preds = %do.end15, %lor.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4532
  %tobool16 = icmp ne i32 %4, 0, !dbg !4532
  %lnot17 = xor i1 %tobool16, true, !dbg !4532
  %lnot19 = xor i1 %lnot17, true, !dbg !4532
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4532
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4532
  store i64 %conv21, i64* %tmp, align 8, !dbg !4533
  %5 = load i64, i64* %tmp, align 8, !dbg !4532
  %tobool22 = icmp ne i64 %5, 0, !dbg !4547
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4548

if.then23:                                        ; preds = %if.end
  store %struct.media_request_object* null, %struct.media_request_object** %retval, align 8, !dbg !4549
  br label %return, !dbg !4549

if.end24:                                         ; preds = %if.end
  br label %do.body25, !dbg !4550

do.body25:                                        ; preds = %if.end24
  br label %do.body26, !dbg !4551

do.body26:                                        ; preds = %do.body25
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4552, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4555, metadata !DIExpression()), !dbg !4554
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4554
  %conv27 = zext i1 %cmp to i32, !dbg !4554
  store i32 1, i32* %tmp28, align 4, !dbg !4554
  %6 = load i32, i32* %tmp28, align 4, !dbg !4554
  br label %do.body29, !dbg !4556

do.body29:                                        ; preds = %do.body26
  br label %do.body30, !dbg !4557

do.body30:                                        ; preds = %do.body29
  br label %do.body31, !dbg !4558

do.body31:                                        ; preds = %do.body30
  call void @llvm.dbg.declare(metadata i64* %__dummy32, metadata !4560, metadata !DIExpression()), !dbg !4563
  call void @llvm.dbg.declare(metadata i64* %__dummy233, metadata !4564, metadata !DIExpression()), !dbg !4563
  %cmp34 = icmp eq i64* %__dummy32, %__dummy233, !dbg !4563
  %conv35 = zext i1 %cmp34 to i32, !dbg !4563
  store i32 1, i32* %tmp36, align 4, !dbg !4563
  %7 = load i32, i32* %tmp36, align 4, !dbg !4563
  %call = call i64 @arch_local_irq_save() #9, !dbg !4565
  store i64 %call, i64* %flags, align 8, !dbg !4565
  br label %do.end37, !dbg !4565

do.end37:                                         ; preds = %do.body31
  br label %do.end38, !dbg !4558

do.end38:                                         ; preds = %do.end37
  br label %do.body39, !dbg !4557

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4566, !srcloc !4567
  br label %do.body40, !dbg !4566

do.body40:                                        ; preds = %do.body39
  %8 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4568
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %8, i32 0, i32 9, !dbg !4568
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4569
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !4570
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !4570
  br label %do.end42, !dbg !4568

do.end42:                                         ; preds = %do.body40
  br label %do.end43, !dbg !4566

do.end43:                                         ; preds = %do.end42
  br label %do.end44, !dbg !4557

do.end44:                                         ; preds = %do.end43
  br label %do.end45, !dbg !4556

do.end45:                                         ; preds = %do.end44
  br label %do.end46, !dbg !4551

do.end46:                                         ; preds = %do.end45
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4571, metadata !DIExpression()), !dbg !4574
  %11 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4574
  %objects = getelementptr inbounds %struct.media_request, %struct.media_request* %11, i32 0, i32 6, !dbg !4574
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %objects, i32 0, i32 0, !dbg !4574
  %12 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4574
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !4574
  store i8* %13, i8** %__mptr, align 8, !dbg !4574
  br label %do.body47, !dbg !4574

do.body47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !4575

do.end48:                                         ; preds = %do.body47
  %14 = load i8*, i8** %__mptr, align 8, !dbg !4574
  %add.ptr = getelementptr i8, i8* %14, i64 -24, !dbg !4574
  %15 = bitcast i8* %add.ptr to %struct.media_request_object*, !dbg !4574
  store %struct.media_request_object* %15, %struct.media_request_object** %tmp49, align 8, !dbg !4575
  %16 = load %struct.media_request_object*, %struct.media_request_object** %tmp49, align 8, !dbg !4574
  store %struct.media_request_object* %16, %struct.media_request_object** %obj, align 8, !dbg !4577
  br label %for.cond, !dbg !4577

for.cond:                                         ; preds = %do.end67, %do.end48
  %17 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4578
  %list = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %17, i32 0, i32 3, !dbg !4578
  %18 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4578
  %objects50 = getelementptr inbounds %struct.media_request, %struct.media_request* %18, i32 0, i32 6, !dbg !4578
  %cmp51 = icmp eq %struct.list_head* %list, %objects50, !dbg !4578
  %lnot53 = xor i1 %cmp51, true, !dbg !4578
  br i1 %lnot53, label %for.body, label %for.end, !dbg !4577

for.body:                                         ; preds = %for.cond
  %19 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4580
  %ops55 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %19, i32 0, i32 0, !dbg !4583
  %20 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops55, align 8, !dbg !4583
  %21 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops.addr, align 8, !dbg !4584
  %cmp56 = icmp eq %struct.media_request_object_ops* %20, %21, !dbg !4585
  br i1 %cmp56, label %land.lhs.true, label %if.end62, !dbg !4586

land.lhs.true:                                    ; preds = %for.body
  %22 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4587
  %priv58 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %22, i32 0, i32 1, !dbg !4588
  %23 = load i8*, i8** %priv58, align 8, !dbg !4588
  %24 = load i8*, i8** %priv.addr, align 8, !dbg !4589
  %cmp59 = icmp eq i8* %23, %24, !dbg !4590
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !4591

if.then61:                                        ; preds = %land.lhs.true
  %25 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4592
  call void @media_request_object_get(%struct.media_request_object* %25) #9, !dbg !4594
  %26 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4595
  store %struct.media_request_object* %26, %struct.media_request_object** %found, align 8, !dbg !4596
  br label %for.end, !dbg !4597

if.end62:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4598

for.inc:                                          ; preds = %if.end62
  call void @llvm.dbg.declare(metadata i8** %__mptr63, metadata !4599, metadata !DIExpression()), !dbg !4601
  %27 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4601
  %list64 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %27, i32 0, i32 3, !dbg !4601
  %next65 = getelementptr inbounds %struct.list_head, %struct.list_head* %list64, i32 0, i32 0, !dbg !4601
  %28 = load %struct.list_head*, %struct.list_head** %next65, align 8, !dbg !4601
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !4601
  store i8* %29, i8** %__mptr63, align 8, !dbg !4601
  br label %do.body66, !dbg !4601

do.body66:                                        ; preds = %for.inc
  br label %do.end67, !dbg !4602

do.end67:                                         ; preds = %do.body66
  %30 = load i8*, i8** %__mptr63, align 8, !dbg !4601
  %add.ptr69 = getelementptr i8, i8* %30, i64 -24, !dbg !4601
  %31 = bitcast i8* %add.ptr69 to %struct.media_request_object*, !dbg !4601
  store %struct.media_request_object* %31, %struct.media_request_object** %tmp68, align 8, !dbg !4602
  %32 = load %struct.media_request_object*, %struct.media_request_object** %tmp68, align 8, !dbg !4601
  store %struct.media_request_object* %32, %struct.media_request_object** %obj, align 8, !dbg !4578
  br label %for.cond, !dbg !4578, !llvm.loop !4604

for.end:                                          ; preds = %if.then61, %for.cond
  %33 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4606
  %lock70 = getelementptr inbounds %struct.media_request, %struct.media_request* %33, i32 0, i32 9, !dbg !4607
  %34 = load i64, i64* %flags, align 8, !dbg !4608
  store %struct.spinlock* %lock70, %struct.spinlock** %lock.addr.i71, align 8
  store i64 %34, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !4612
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !4612
  store i32 1, i32* %tmp.i, align 4, !dbg !4612
  %35 = load i32, i32* %tmp.i, align 4, !dbg !4612
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !4619
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !4619
  store i32 1, i32* %tmp8.i, align 4, !dbg !4619
  %36 = load i32, i32* %tmp8.i, align 4, !dbg !4619
  %37 = load i64, i64* %flags.addr.i, align 8, !dbg !4621
  call void @arch_local_irq_restore(i64 %37) #10, !dbg !4621
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4622, !srcloc !4624
  %38 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i71, align 8, !dbg !4625
  %39 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %38, i32 0, i32 0, !dbg !4625
  %rlock.i72 = bitcast %union.anon.3* %39 to %struct.raw_spinlock*, !dbg !4625
  %40 = load %struct.media_request_object*, %struct.media_request_object** %found, align 8, !dbg !4627
  store %struct.media_request_object* %40, %struct.media_request_object** %retval, align 8, !dbg !4628
  br label %return, !dbg !4628

return:                                           ; preds = %for.end, %if.then23
  %41 = load %struct.media_request_object*, %struct.media_request_object** %retval, align 8, !dbg !4629
  ret %struct.media_request_object* %41, !dbg !4629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4630 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4634, metadata !DIExpression()), !dbg !4635
  %call = call i64 @arch_local_save_flags() #9, !dbg !4636
  store i64 %call, i64* %f, align 8, !dbg !4637
  call void @arch_local_irq_disable() #9, !dbg !4638
  %0 = load i64, i64* %f, align 8, !dbg !4639
  ret i64 %0, !dbg !4640
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @media_request_object_get(%struct.media_request_object* %obj) #0 !dbg !4641 {
entry:
  %obj.addr = alloca %struct.media_request_object*, align 8
  store %struct.media_request_object* %obj, %struct.media_request_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  %0 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4644
  %kref = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %0, i32 0, i32 4, !dbg !4645
  call void @kref_get(%struct.kref* %kref) #9, !dbg !4646
  ret void, !dbg !4647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @media_request_object_put(%struct.media_request_object* %obj) #0 !dbg !4648 {
entry:
  %obj.addr = alloca %struct.media_request_object*, align 8
  store %struct.media_request_object* %obj, %struct.media_request_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  %0 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4651
  %kref = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %0, i32 0, i32 4, !dbg !4652
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @media_request_object_release) #9, !dbg !4653
  ret void, !dbg !4654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @media_request_object_release(%struct.kref* %kref) #0 !dbg !4655 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %obj = alloca %struct.media_request_object*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.media_request_object*, align 8
  %req = alloca %struct.media_request*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp17 = alloca i64, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4660, metadata !DIExpression()), !dbg !4662
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4662
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !4662
  store i8* %1, i8** %__mptr, align 8, !dbg !4662
  br label %do.body, !dbg !4662

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4663

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4662
  %add.ptr = getelementptr i8, i8* %2, i64 -40, !dbg !4662
  %3 = bitcast i8* %add.ptr to %struct.media_request_object*, !dbg !4662
  store %struct.media_request_object* %3, %struct.media_request_object** %tmp, align 8, !dbg !4663
  %4 = load %struct.media_request_object*, %struct.media_request_object** %tmp, align 8, !dbg !4662
  store %struct.media_request_object* %4, %struct.media_request_object** %obj, align 8, !dbg !4659
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !4665, metadata !DIExpression()), !dbg !4666
  %5 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4667
  %req1 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %5, i32 0, i32 2, !dbg !4668
  %6 = load %struct.media_request*, %struct.media_request** %req1, align 8, !dbg !4668
  store %struct.media_request* %6, %struct.media_request** %req, align 8, !dbg !4666
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4669, metadata !DIExpression()), !dbg !4672
  %7 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4672
  %tobool = icmp ne %struct.media_request* %7, null, !dbg !4672
  %lnot = xor i1 %tobool, true, !dbg !4672
  %lnot2 = xor i1 %lnot, true, !dbg !4672
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4672
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4672
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !4673
  %tobool3 = icmp ne i32 %8, 0, !dbg !4673
  %lnot4 = xor i1 %tobool3, true, !dbg !4673
  %lnot6 = xor i1 %lnot4, true, !dbg !4673
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4673
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4673
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4673
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4672

if.then:                                          ; preds = %do.end
  br label %do.body9, !dbg !4673

do.body9:                                         ; preds = %if.then
  br label %do.body10, !dbg !4675

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4677

do.end11:                                         ; preds = %do.body10
  br label %do.body12, !dbg !4675

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 357, i32 2305, i64 12) #8, !dbg !4679, !srcloc !4681
  br label %do.end13, !dbg !4679

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #8, !dbg !4682, !srcloc !4684
  br label %do.body14, !dbg !4675

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4685

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !4675

do.end16:                                         ; preds = %do.end15
  br label %if.end, !dbg !4675

if.end:                                           ; preds = %do.end16, %do.end
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !4672
  %tobool18 = icmp ne i32 %9, 0, !dbg !4672
  %lnot19 = xor i1 %tobool18, true, !dbg !4672
  %lnot21 = xor i1 %lnot19, true, !dbg !4672
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4672
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4672
  store i64 %conv23, i64* %tmp17, align 8, !dbg !4673
  %10 = load i64, i64* %tmp17, align 8, !dbg !4672
  %tobool24 = icmp ne i64 %10, 0, !dbg !4687
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4688

if.then25:                                        ; preds = %if.end
  %11 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4689
  call void @media_request_object_unbind(%struct.media_request_object* %11) #9, !dbg !4690
  br label %if.end26, !dbg !4690

if.end26:                                         ; preds = %if.then25, %if.end
  %12 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4691
  %ops = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %12, i32 0, i32 0, !dbg !4692
  %13 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops, align 8, !dbg !4692
  %release = getelementptr inbounds %struct.media_request_object_ops, %struct.media_request_object_ops* %13, i32 0, i32 4, !dbg !4693
  %14 = load void (%struct.media_request_object*)*, void (%struct.media_request_object*)** %release, align 8, !dbg !4693
  %15 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !4694
  call void %14(%struct.media_request_object* %15) #9, !dbg !4691
  ret void, !dbg !4695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @media_request_object_init(%struct.media_request_object* %obj) #0 !dbg !4696 {
entry:
  %obj.addr = alloca %struct.media_request_object*, align 8
  store %struct.media_request_object* %obj, %struct.media_request_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  %0 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4699
  %ops = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %0, i32 0, i32 0, !dbg !4700
  store %struct.media_request_object_ops* null, %struct.media_request_object_ops** %ops, align 8, !dbg !4701
  %1 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4702
  %req = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %1, i32 0, i32 2, !dbg !4703
  store %struct.media_request* null, %struct.media_request** %req, align 8, !dbg !4704
  %2 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4705
  %priv = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %2, i32 0, i32 1, !dbg !4706
  store i8* null, i8** %priv, align 8, !dbg !4707
  %3 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4708
  %completed = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %3, i32 0, i32 5, !dbg !4709
  store i8 0, i8* %completed, align 4, !dbg !4710
  %4 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4711
  %list = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %4, i32 0, i32 3, !dbg !4712
  call void @INIT_LIST_HEAD(%struct.list_head* %list) #9, !dbg !4713
  %5 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4714
  %kref = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %5, i32 0, i32 4, !dbg !4715
  call void @kref_init(%struct.kref* %kref) #9, !dbg !4716
  ret void, !dbg !4717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @media_request_object_bind(%struct.media_request* %req, %struct.media_request_object_ops* %ops, i8* %priv, i1 zeroext %is_buffer, %struct.media_request_object* %obj) #0 !dbg !4718 {
entry:
  %lock.addr.i89 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i89, metadata !4502, metadata !DIExpression()), !dbg !4721
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4508, metadata !DIExpression()), !dbg !4723
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !4724
  %retval = alloca i32, align 4
  %req.addr = alloca %struct.media_request*, align 8
  %ops.addr = alloca %struct.media_request_object_ops*, align 8
  %priv.addr = alloca i8*, align 8
  %is_buffer.addr = alloca i8, align 1
  %obj.addr = alloca %struct.media_request_object*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  %__ret_warn_on46 = alloca i32, align 4
  %tmp70 = alloca i64, align 8
  store %struct.media_request* %req, %struct.media_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request** %req.addr, metadata !4731, metadata !DIExpression()), !dbg !4732
  store %struct.media_request_object_ops* %ops, %struct.media_request_object_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object_ops** %ops.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  %frombool = zext i1 %is_buffer to i8
  store i8 %frombool, i8* %is_buffer.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %is_buffer.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  store %struct.media_request_object* %obj, %struct.media_request_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4743, metadata !DIExpression()), !dbg !4744
  store i32 -16, i32* %ret, align 4, !dbg !4744
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4745, metadata !DIExpression()), !dbg !4748
  %0 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops.addr, align 8, !dbg !4748
  %release = getelementptr inbounds %struct.media_request_object_ops, %struct.media_request_object_ops* %0, i32 0, i32 4, !dbg !4748
  %1 = load void (%struct.media_request_object*)*, void (%struct.media_request_object*)** %release, align 8, !dbg !4748
  %tobool = icmp ne void (%struct.media_request_object*)* %1, null, !dbg !4748
  %lnot = xor i1 %tobool, true, !dbg !4748
  %lnot1 = xor i1 %lnot, true, !dbg !4748
  %lnot2 = xor i1 %lnot1, true, !dbg !4748
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4748
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4748
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !4749
  %tobool3 = icmp ne i32 %2, 0, !dbg !4749
  %lnot4 = xor i1 %tobool3, true, !dbg !4749
  %lnot6 = xor i1 %lnot4, true, !dbg !4749
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4749
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4749
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4749
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4748

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4749

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4751

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4753

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4751

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 412, i32 2305, i64 12) #8, !dbg !4755, !srcloc !4757
  br label %do.end11, !dbg !4755

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 224) #8, !dbg !4758, !srcloc !4760
  br label %do.body12, !dbg !4751

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4761

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4751

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4751

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4748
  %tobool15 = icmp ne i32 %3, 0, !dbg !4748
  %lnot16 = xor i1 %tobool15, true, !dbg !4748
  %lnot18 = xor i1 %lnot16, true, !dbg !4748
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4748
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4748
  store i64 %conv20, i64* %tmp, align 8, !dbg !4749
  %4 = load i64, i64* %tmp, align 8, !dbg !4748
  %tobool21 = icmp ne i64 %4, 0, !dbg !4763
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4764

if.then22:                                        ; preds = %if.end
  store i32 -53, i32* %retval, align 4, !dbg !4765
  br label %return, !dbg !4765

if.end23:                                         ; preds = %if.end
  br label %do.body24, !dbg !4766

do.body24:                                        ; preds = %if.end23
  br label %do.body25, !dbg !4767

do.body25:                                        ; preds = %do.body24
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4768, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4771, metadata !DIExpression()), !dbg !4770
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4770
  %conv26 = zext i1 %cmp to i32, !dbg !4770
  store i32 1, i32* %tmp27, align 4, !dbg !4770
  %5 = load i32, i32* %tmp27, align 4, !dbg !4770
  br label %do.body28, !dbg !4772

do.body28:                                        ; preds = %do.body25
  br label %do.body29, !dbg !4773

do.body29:                                        ; preds = %do.body28
  br label %do.body30, !dbg !4774

do.body30:                                        ; preds = %do.body29
  call void @llvm.dbg.declare(metadata i64* %__dummy31, metadata !4776, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.declare(metadata i64* %__dummy232, metadata !4780, metadata !DIExpression()), !dbg !4779
  %cmp33 = icmp eq i64* %__dummy31, %__dummy232, !dbg !4779
  %conv34 = zext i1 %cmp33 to i32, !dbg !4779
  store i32 1, i32* %tmp35, align 4, !dbg !4779
  %6 = load i32, i32* %tmp35, align 4, !dbg !4779
  %call = call i64 @arch_local_irq_save() #9, !dbg !4781
  store i64 %call, i64* %flags, align 8, !dbg !4781
  br label %do.end36, !dbg !4781

do.end36:                                         ; preds = %do.body30
  br label %do.end37, !dbg !4774

do.end37:                                         ; preds = %do.end36
  br label %do.body38, !dbg !4773

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4782, !srcloc !4783
  br label %do.body39, !dbg !4782

do.body39:                                        ; preds = %do.body38
  %7 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4784
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %7, i32 0, i32 9, !dbg !4784
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4785
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !4786
  %rlock.i = bitcast %union.anon.3* %9 to %struct.raw_spinlock*, !dbg !4786
  br label %do.end41, !dbg !4784

do.end41:                                         ; preds = %do.body39
  br label %do.end42, !dbg !4782

do.end42:                                         ; preds = %do.end41
  br label %do.end43, !dbg !4773

do.end43:                                         ; preds = %do.end42
  br label %do.end44, !dbg !4772

do.end44:                                         ; preds = %do.end43
  br label %do.end45, !dbg !4767

do.end45:                                         ; preds = %do.end44
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on46, metadata !4787, metadata !DIExpression()), !dbg !4790
  %10 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4790
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %10, i32 0, i32 3, !dbg !4790
  %11 = load i32, i32* %state, align 8, !dbg !4790
  %cmp47 = icmp ne i32 %11, 5, !dbg !4790
  %lnot49 = xor i1 %cmp47, true, !dbg !4790
  %lnot51 = xor i1 %lnot49, true, !dbg !4790
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !4790
  store i32 %lnot.ext52, i32* %__ret_warn_on46, align 4, !dbg !4790
  %12 = load i32, i32* %__ret_warn_on46, align 4, !dbg !4791
  %tobool53 = icmp ne i32 %12, 0, !dbg !4791
  %lnot54 = xor i1 %tobool53, true, !dbg !4791
  %lnot56 = xor i1 %lnot54, true, !dbg !4791
  %lnot.ext57 = zext i1 %lnot56 to i32, !dbg !4791
  %conv58 = sext i32 %lnot.ext57 to i64, !dbg !4791
  %tobool59 = icmp ne i64 %conv58, 0, !dbg !4791
  br i1 %tobool59, label %if.then60, label %if.end69, !dbg !4790

if.then60:                                        ; preds = %do.end45
  br label %do.body61, !dbg !4791

do.body61:                                        ; preds = %if.then60
  br label %do.body62, !dbg !4793

do.body62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !4795

do.end63:                                         ; preds = %do.body62
  br label %do.body64, !dbg !4793

do.body64:                                        ; preds = %do.end63
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 417, i32 2305, i64 12) #8, !dbg !4797, !srcloc !4799
  br label %do.end65, !dbg !4797

do.end65:                                         ; preds = %do.body64
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #8, !dbg !4800, !srcloc !4802
  br label %do.body66, !dbg !4793

do.body66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !4803

do.end67:                                         ; preds = %do.body66
  br label %do.end68, !dbg !4793

do.end68:                                         ; preds = %do.end67
  br label %if.end69, !dbg !4793

if.end69:                                         ; preds = %do.end68, %do.end45
  %13 = load i32, i32* %__ret_warn_on46, align 4, !dbg !4790
  %tobool71 = icmp ne i32 %13, 0, !dbg !4790
  %lnot72 = xor i1 %tobool71, true, !dbg !4790
  %lnot74 = xor i1 %lnot72, true, !dbg !4790
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !4790
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !4790
  store i64 %conv76, i64* %tmp70, align 8, !dbg !4791
  %14 = load i64, i64* %tmp70, align 8, !dbg !4790
  %tobool77 = icmp ne i64 %14, 0, !dbg !4805
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !4806

if.then78:                                        ; preds = %if.end69
  br label %unlock, !dbg !4807

if.end79:                                         ; preds = %if.end69
  %15 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4808
  %16 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4809
  %req80 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %16, i32 0, i32 2, !dbg !4810
  store %struct.media_request* %15, %struct.media_request** %req80, align 8, !dbg !4811
  %17 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops.addr, align 8, !dbg !4812
  %18 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4813
  %ops81 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %18, i32 0, i32 0, !dbg !4814
  store %struct.media_request_object_ops* %17, %struct.media_request_object_ops** %ops81, align 8, !dbg !4815
  %19 = load i8*, i8** %priv.addr, align 8, !dbg !4816
  %20 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4817
  %priv82 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %20, i32 0, i32 1, !dbg !4818
  store i8* %19, i8** %priv82, align 8, !dbg !4819
  %21 = load i8, i8* %is_buffer.addr, align 1, !dbg !4820
  %tobool83 = trunc i8 %21 to i1, !dbg !4820
  br i1 %tobool83, label %if.then84, label %if.else, !dbg !4822

if.then84:                                        ; preds = %if.end79
  %22 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4823
  %list = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %22, i32 0, i32 3, !dbg !4824
  %23 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4825
  %objects = getelementptr inbounds %struct.media_request, %struct.media_request* %23, i32 0, i32 6, !dbg !4826
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %objects) #9, !dbg !4827
  br label %if.end87, !dbg !4827

if.else:                                          ; preds = %if.end79
  %24 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4828
  %list85 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %24, i32 0, i32 3, !dbg !4829
  %25 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4830
  %objects86 = getelementptr inbounds %struct.media_request, %struct.media_request* %25, i32 0, i32 6, !dbg !4831
  call void @list_add(%struct.list_head* %list85, %struct.list_head* %objects86) #9, !dbg !4832
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then84
  %26 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4833
  %num_incomplete_objects = getelementptr inbounds %struct.media_request, %struct.media_request* %26, i32 0, i32 7, !dbg !4834
  %27 = load i32, i32* %num_incomplete_objects, align 8, !dbg !4835
  %inc = add i32 %27, 1, !dbg !4835
  store i32 %inc, i32* %num_incomplete_objects, align 8, !dbg !4835
  store i32 0, i32* %ret, align 4, !dbg !4836
  br label %unlock, !dbg !4837

unlock:                                           ; preds = %if.end87, %if.then78
  call void @llvm.dbg.label(metadata !4838), !dbg !4839
  %28 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !4840
  %lock88 = getelementptr inbounds %struct.media_request, %struct.media_request* %28, i32 0, i32 9, !dbg !4841
  %29 = load i64, i64* %flags, align 8, !dbg !4842
  store %struct.spinlock* %lock88, %struct.spinlock** %lock.addr.i89, align 8
  store i64 %29, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !4843
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !4843
  store i32 1, i32* %tmp.i, align 4, !dbg !4843
  %30 = load i32, i32* %tmp.i, align 4, !dbg !4843
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !4844
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !4844
  store i32 1, i32* %tmp8.i, align 4, !dbg !4844
  %31 = load i32, i32* %tmp8.i, align 4, !dbg !4844
  %32 = load i64, i64* %flags.addr.i, align 8, !dbg !4845
  call void @arch_local_irq_restore(i64 %32) #10, !dbg !4845
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4846, !srcloc !4624
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i89, align 8, !dbg !4847
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4847
  %rlock.i90 = bitcast %union.anon.3* %34 to %struct.raw_spinlock*, !dbg !4847
  %35 = load i32, i32* %ret, align 4, !dbg !4848
  store i32 %35, i32* %retval, align 4, !dbg !4849
  br label %return, !dbg !4849

return:                                           ; preds = %unlock, %if.then22
  %36 = load i32, i32* %retval, align 4, !dbg !4850
  ret i32 %36, !dbg !4850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4851 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4858
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4859
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4860
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4860
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4861
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !4862
  ret void, !dbg !4863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4864 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4865, metadata !DIExpression()), !dbg !4866
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4867, metadata !DIExpression()), !dbg !4868
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4869
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4870
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4871
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4872
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4872
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #9, !dbg !4873
  ret void, !dbg !4874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @media_request_object_unbind(%struct.media_request_object* %obj) #0 !dbg !4875 {
entry:
  %lock.addr.i151 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i151, metadata !4502, metadata !DIExpression()), !dbg !4876
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4508, metadata !DIExpression()), !dbg !4878
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !4879
  %obj.addr = alloca %struct.media_request_object*, align 8
  %req = alloca %struct.media_request*, align 8
  %flags = alloca i64, align 8
  %completed = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %__dummy32 = alloca i64, align 8
  %__dummy233 = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  %__ret_warn_on52 = alloca i32, align 4
  %tmp77 = alloca i64, align 8
  %__ret_warn_on96 = alloca i32, align 4
  %tmp122 = alloca i64, align 8
  store %struct.media_request_object* %obj, %struct.media_request_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !4888, metadata !DIExpression()), !dbg !4889
  %0 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4890
  %req1 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %0, i32 0, i32 2, !dbg !4891
  %1 = load %struct.media_request*, %struct.media_request** %req1, align 8, !dbg !4891
  store %struct.media_request* %1, %struct.media_request** %req, align 8, !dbg !4889
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4892, metadata !DIExpression()), !dbg !4893
  call void @llvm.dbg.declare(metadata i8* %completed, metadata !4894, metadata !DIExpression()), !dbg !4895
  store i8 0, i8* %completed, align 1, !dbg !4895
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4896, metadata !DIExpression()), !dbg !4899
  %2 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4899
  %tobool = icmp ne %struct.media_request* %2, null, !dbg !4899
  %lnot = xor i1 %tobool, true, !dbg !4899
  %lnot2 = xor i1 %lnot, true, !dbg !4899
  %lnot3 = xor i1 %lnot2, true, !dbg !4899
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4899
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4899
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4900
  %tobool4 = icmp ne i32 %3, 0, !dbg !4900
  %lnot5 = xor i1 %tobool4, true, !dbg !4900
  %lnot7 = xor i1 %lnot5, true, !dbg !4900
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4900
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4900
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4900
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4899

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4900

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !4902

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !4904

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !4902

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 443, i32 2305, i64 12) #8, !dbg !4906, !srcloc !4908
  br label %do.end12, !dbg !4906

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 226) #8, !dbg !4909, !srcloc !4911
  br label %do.body13, !dbg !4902

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4912

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4902

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !4902

if.end:                                           ; preds = %do.end15, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4899
  %tobool16 = icmp ne i32 %4, 0, !dbg !4899
  %lnot17 = xor i1 %tobool16, true, !dbg !4899
  %lnot19 = xor i1 %lnot17, true, !dbg !4899
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4899
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4899
  store i64 %conv21, i64* %tmp, align 8, !dbg !4900
  %5 = load i64, i64* %tmp, align 8, !dbg !4899
  %tobool22 = icmp ne i64 %5, 0, !dbg !4914
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4915

if.then23:                                        ; preds = %if.end
  br label %if.end150, !dbg !4916

if.end24:                                         ; preds = %if.end
  br label %do.body25, !dbg !4917

do.body25:                                        ; preds = %if.end24
  br label %do.body26, !dbg !4918

do.body26:                                        ; preds = %do.body25
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4919, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4922, metadata !DIExpression()), !dbg !4921
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4921
  %conv27 = zext i1 %cmp to i32, !dbg !4921
  store i32 1, i32* %tmp28, align 4, !dbg !4921
  %6 = load i32, i32* %tmp28, align 4, !dbg !4921
  br label %do.body29, !dbg !4923

do.body29:                                        ; preds = %do.body26
  br label %do.body30, !dbg !4924

do.body30:                                        ; preds = %do.body29
  br label %do.body31, !dbg !4925

do.body31:                                        ; preds = %do.body30
  call void @llvm.dbg.declare(metadata i64* %__dummy32, metadata !4927, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.declare(metadata i64* %__dummy233, metadata !4931, metadata !DIExpression()), !dbg !4930
  %cmp34 = icmp eq i64* %__dummy32, %__dummy233, !dbg !4930
  %conv35 = zext i1 %cmp34 to i32, !dbg !4930
  store i32 1, i32* %tmp36, align 4, !dbg !4930
  %7 = load i32, i32* %tmp36, align 4, !dbg !4930
  %call = call i64 @arch_local_irq_save() #9, !dbg !4932
  store i64 %call, i64* %flags, align 8, !dbg !4932
  br label %do.end37, !dbg !4932

do.end37:                                         ; preds = %do.body31
  br label %do.end38, !dbg !4925

do.end38:                                         ; preds = %do.end37
  br label %do.body39, !dbg !4924

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4933, !srcloc !4934
  br label %do.body40, !dbg !4933

do.body40:                                        ; preds = %do.body39
  %8 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4935
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %8, i32 0, i32 9, !dbg !4935
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4936
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !4937
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !4937
  br label %do.end42, !dbg !4935

do.end42:                                         ; preds = %do.body40
  br label %do.end43, !dbg !4933

do.end43:                                         ; preds = %do.end42
  br label %do.end44, !dbg !4924

do.end44:                                         ; preds = %do.end43
  br label %do.end45, !dbg !4923

do.end45:                                         ; preds = %do.end44
  br label %do.end46, !dbg !4918

do.end46:                                         ; preds = %do.end45
  %11 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4938
  %list = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %11, i32 0, i32 3, !dbg !4939
  call void @list_del(%struct.list_head* %list) #9, !dbg !4940
  %12 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4941
  %req47 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %12, i32 0, i32 2, !dbg !4942
  store %struct.media_request* null, %struct.media_request** %req47, align 8, !dbg !4943
  %13 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4944
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %13, i32 0, i32 3, !dbg !4946
  %14 = load i32, i32* %state, align 8, !dbg !4946
  %cmp48 = icmp eq i32 %14, 3, !dbg !4947
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !4948

if.then50:                                        ; preds = %do.end46
  br label %unlock, !dbg !4949

if.end51:                                         ; preds = %do.end46
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on52, metadata !4950, metadata !DIExpression()), !dbg !4953
  %15 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4953
  %state53 = getelementptr inbounds %struct.media_request, %struct.media_request* %15, i32 0, i32 3, !dbg !4953
  %16 = load i32, i32* %state53, align 8, !dbg !4953
  %cmp54 = icmp eq i32 %16, 1, !dbg !4953
  %lnot56 = xor i1 %cmp54, true, !dbg !4953
  %lnot58 = xor i1 %lnot56, true, !dbg !4953
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !4953
  store i32 %lnot.ext59, i32* %__ret_warn_on52, align 4, !dbg !4953
  %17 = load i32, i32* %__ret_warn_on52, align 4, !dbg !4954
  %tobool60 = icmp ne i32 %17, 0, !dbg !4954
  %lnot61 = xor i1 %tobool60, true, !dbg !4954
  %lnot63 = xor i1 %lnot61, true, !dbg !4954
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !4954
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !4954
  %tobool66 = icmp ne i64 %conv65, 0, !dbg !4954
  br i1 %tobool66, label %if.then67, label %if.end76, !dbg !4953

if.then67:                                        ; preds = %if.end51
  br label %do.body68, !dbg !4954

do.body68:                                        ; preds = %if.then67
  br label %do.body69, !dbg !4956

do.body69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !4958

do.end70:                                         ; preds = %do.body69
  br label %do.body71, !dbg !4956

do.body71:                                        ; preds = %do.end70
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 453, i32 2305, i64 12) #8, !dbg !4960, !srcloc !4962
  br label %do.end72, !dbg !4960

do.end72:                                         ; preds = %do.body71
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 227) #8, !dbg !4963, !srcloc !4965
  br label %do.body73, !dbg !4956

do.body73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !4966

do.end74:                                         ; preds = %do.body73
  br label %do.end75, !dbg !4956

do.end75:                                         ; preds = %do.end74
  br label %if.end76, !dbg !4956

if.end76:                                         ; preds = %do.end75, %if.end51
  %18 = load i32, i32* %__ret_warn_on52, align 4, !dbg !4953
  %tobool78 = icmp ne i32 %18, 0, !dbg !4953
  %lnot79 = xor i1 %tobool78, true, !dbg !4953
  %lnot81 = xor i1 %lnot79, true, !dbg !4953
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !4953
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !4953
  store i64 %conv83, i64* %tmp77, align 8, !dbg !4954
  %19 = load i64, i64* %tmp77, align 8, !dbg !4953
  %tobool84 = icmp ne i64 %19, 0, !dbg !4968
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !4969

if.then85:                                        ; preds = %if.end76
  br label %unlock, !dbg !4970

if.end86:                                         ; preds = %if.end76
  %20 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4971
  %state87 = getelementptr inbounds %struct.media_request, %struct.media_request* %20, i32 0, i32 3, !dbg !4973
  %21 = load i32, i32* %state87, align 8, !dbg !4973
  %cmp88 = icmp eq i32 %21, 4, !dbg !4974
  br i1 %cmp88, label %if.then90, label %if.end95, !dbg !4975

if.then90:                                        ; preds = %if.end86
  %22 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !4976
  %completed91 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %22, i32 0, i32 5, !dbg !4979
  %23 = load i8, i8* %completed91, align 4, !dbg !4979
  %tobool92 = trunc i8 %23 to i1, !dbg !4979
  br i1 %tobool92, label %if.end94, label %if.then93, !dbg !4980

if.then93:                                        ; preds = %if.then90
  %24 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4981
  %num_incomplete_objects = getelementptr inbounds %struct.media_request, %struct.media_request* %24, i32 0, i32 7, !dbg !4982
  %25 = load i32, i32* %num_incomplete_objects, align 8, !dbg !4983
  %dec = add i32 %25, -1, !dbg !4983
  store i32 %dec, i32* %num_incomplete_objects, align 8, !dbg !4983
  br label %if.end94, !dbg !4981

if.end94:                                         ; preds = %if.then93, %if.then90
  br label %unlock, !dbg !4984

if.end95:                                         ; preds = %if.end86
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on96, metadata !4985, metadata !DIExpression()), !dbg !4988
  %26 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !4988
  %num_incomplete_objects97 = getelementptr inbounds %struct.media_request, %struct.media_request* %26, i32 0, i32 7, !dbg !4988
  %27 = load i32, i32* %num_incomplete_objects97, align 8, !dbg !4988
  %tobool98 = icmp ne i32 %27, 0, !dbg !4988
  %lnot99 = xor i1 %tobool98, true, !dbg !4988
  %lnot101 = xor i1 %lnot99, true, !dbg !4988
  %lnot103 = xor i1 %lnot101, true, !dbg !4988
  %lnot.ext104 = zext i1 %lnot103 to i32, !dbg !4988
  store i32 %lnot.ext104, i32* %__ret_warn_on96, align 4, !dbg !4988
  %28 = load i32, i32* %__ret_warn_on96, align 4, !dbg !4989
  %tobool105 = icmp ne i32 %28, 0, !dbg !4989
  %lnot106 = xor i1 %tobool105, true, !dbg !4989
  %lnot108 = xor i1 %lnot106, true, !dbg !4989
  %lnot.ext109 = zext i1 %lnot108 to i32, !dbg !4989
  %conv110 = sext i32 %lnot.ext109 to i64, !dbg !4989
  %tobool111 = icmp ne i64 %conv110, 0, !dbg !4989
  br i1 %tobool111, label %if.then112, label %if.end121, !dbg !4988

if.then112:                                       ; preds = %if.end95
  br label %do.body113, !dbg !4989

do.body113:                                       ; preds = %if.then112
  br label %do.body114, !dbg !4991

do.body114:                                       ; preds = %do.body113
  br label %do.end115, !dbg !4993

do.end115:                                        ; preds = %do.body114
  br label %do.body116, !dbg !4991

do.body116:                                       ; preds = %do.end115
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 462, i32 2305, i64 12) #8, !dbg !4995, !srcloc !4997
  br label %do.end117, !dbg !4995

do.end117:                                        ; preds = %do.body116
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 228) #8, !dbg !4998, !srcloc !5000
  br label %do.body118, !dbg !4991

do.body118:                                       ; preds = %do.end117
  br label %do.end119, !dbg !5001

do.end119:                                        ; preds = %do.body118
  br label %do.end120, !dbg !4991

do.end120:                                        ; preds = %do.end119
  br label %if.end121, !dbg !4991

if.end121:                                        ; preds = %do.end120, %if.end95
  %29 = load i32, i32* %__ret_warn_on96, align 4, !dbg !4988
  %tobool123 = icmp ne i32 %29, 0, !dbg !4988
  %lnot124 = xor i1 %tobool123, true, !dbg !4988
  %lnot126 = xor i1 %lnot124, true, !dbg !4988
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !4988
  %conv128 = sext i32 %lnot.ext127 to i64, !dbg !4988
  store i64 %conv128, i64* %tmp122, align 8, !dbg !4989
  %30 = load i64, i64* %tmp122, align 8, !dbg !4988
  %tobool129 = icmp ne i64 %30, 0, !dbg !5003
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !5004

if.then130:                                       ; preds = %if.end121
  br label %unlock, !dbg !5005

if.end131:                                        ; preds = %if.end121
  %31 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5006
  %num_incomplete_objects132 = getelementptr inbounds %struct.media_request, %struct.media_request* %31, i32 0, i32 7, !dbg !5007
  %32 = load i32, i32* %num_incomplete_objects132, align 8, !dbg !5008
  %dec133 = add i32 %32, -1, !dbg !5008
  store i32 %dec133, i32* %num_incomplete_objects132, align 8, !dbg !5008
  %33 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5009
  %state134 = getelementptr inbounds %struct.media_request, %struct.media_request* %33, i32 0, i32 3, !dbg !5011
  %34 = load i32, i32* %state134, align 8, !dbg !5011
  %cmp135 = icmp eq i32 %34, 2, !dbg !5012
  br i1 %cmp135, label %land.lhs.true, label %if.end141, !dbg !5013

land.lhs.true:                                    ; preds = %if.end131
  %35 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5014
  %num_incomplete_objects137 = getelementptr inbounds %struct.media_request, %struct.media_request* %35, i32 0, i32 7, !dbg !5015
  %36 = load i32, i32* %num_incomplete_objects137, align 8, !dbg !5015
  %tobool138 = icmp ne i32 %36, 0, !dbg !5014
  br i1 %tobool138, label %if.end141, label %if.then139, !dbg !5016

if.then139:                                       ; preds = %land.lhs.true
  %37 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5017
  %state140 = getelementptr inbounds %struct.media_request, %struct.media_request* %37, i32 0, i32 3, !dbg !5019
  store i32 3, i32* %state140, align 8, !dbg !5020
  store i8 1, i8* %completed, align 1, !dbg !5021
  %38 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5022
  %poll_wait = getelementptr inbounds %struct.media_request, %struct.media_request* %38, i32 0, i32 8, !dbg !5022
  call void @__wake_up(%struct.wait_queue_head* %poll_wait, i32 1, i32 0, i8* null) #9, !dbg !5022
  br label %if.end141, !dbg !5023

if.end141:                                        ; preds = %if.then139, %land.lhs.true, %if.end131
  br label %unlock, !dbg !5015

unlock:                                           ; preds = %if.end141, %if.then130, %if.end94, %if.then85, %if.then50
  call void @llvm.dbg.label(metadata !5024), !dbg !5025
  %39 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5026
  %lock142 = getelementptr inbounds %struct.media_request, %struct.media_request* %39, i32 0, i32 9, !dbg !5027
  %40 = load i64, i64* %flags, align 8, !dbg !5028
  store %struct.spinlock* %lock142, %struct.spinlock** %lock.addr.i151, align 8
  store i64 %40, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5029
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5029
  store i32 1, i32* %tmp.i, align 4, !dbg !5029
  %41 = load i32, i32* %tmp.i, align 4, !dbg !5029
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5030
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5030
  store i32 1, i32* %tmp8.i, align 4, !dbg !5030
  %42 = load i32, i32* %tmp8.i, align 4, !dbg !5030
  %43 = load i64, i64* %flags.addr.i, align 8, !dbg !5031
  call void @arch_local_irq_restore(i64 %43) #10, !dbg !5031
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5032, !srcloc !4624
  %44 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i151, align 8, !dbg !5033
  %45 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %44, i32 0, i32 0, !dbg !5033
  %rlock.i152 = bitcast %union.anon.3* %45 to %struct.raw_spinlock*, !dbg !5033
  %46 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !5034
  %ops = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %46, i32 0, i32 0, !dbg !5036
  %47 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops, align 8, !dbg !5036
  %unbind = getelementptr inbounds %struct.media_request_object_ops, %struct.media_request_object_ops* %47, i32 0, i32 3, !dbg !5037
  %48 = load void (%struct.media_request_object*)*, void (%struct.media_request_object*)** %unbind, align 8, !dbg !5037
  %tobool143 = icmp ne void (%struct.media_request_object*)* %48, null, !dbg !5034
  br i1 %tobool143, label %if.then144, label %if.end147, !dbg !5038

if.then144:                                       ; preds = %unlock
  %49 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !5039
  %ops145 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %49, i32 0, i32 0, !dbg !5040
  %50 = load %struct.media_request_object_ops*, %struct.media_request_object_ops** %ops145, align 8, !dbg !5040
  %unbind146 = getelementptr inbounds %struct.media_request_object_ops, %struct.media_request_object_ops* %50, i32 0, i32 3, !dbg !5041
  %51 = load void (%struct.media_request_object*)*, void (%struct.media_request_object*)** %unbind146, align 8, !dbg !5041
  %52 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !5042
  call void %51(%struct.media_request_object* %52) #9, !dbg !5039
  br label %if.end147, !dbg !5039

if.end147:                                        ; preds = %if.then144, %unlock
  %53 = load i8, i8* %completed, align 1, !dbg !5043
  %tobool148 = trunc i8 %53 to i1, !dbg !5043
  br i1 %tobool148, label %if.then149, label %if.end150, !dbg !5045

if.then149:                                       ; preds = %if.end147
  %54 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5046
  call void @media_request_put(%struct.media_request* %54) #9, !dbg !5047
  br label %if.end150, !dbg !5047

if.end150:                                        ; preds = %if.then23, %if.then149, %if.end147
  ret void, !dbg !5048
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5049 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5052
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !5053
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5054
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5055
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5056
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5057
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5058
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5059
  ret void, !dbg !5060
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @media_request_object_complete(%struct.media_request_object* %obj) #0 !dbg !5061 {
entry:
  %lock.addr.i93 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i93, metadata !4502, metadata !DIExpression()), !dbg !5062
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4508, metadata !DIExpression()), !dbg !5064
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !5065
  %obj.addr = alloca %struct.media_request_object*, align 8
  %req = alloca %struct.media_request*, align 8
  %flags = alloca i64, align 8
  %completed = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  %__ret_warn_on50 = alloca i32, align 4
  %tmp74 = alloca i64, align 8
  store %struct.media_request_object* %obj, %struct.media_request_object** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !5074, metadata !DIExpression()), !dbg !5075
  %0 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !5076
  %req1 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %0, i32 0, i32 2, !dbg !5077
  %1 = load %struct.media_request*, %struct.media_request** %req1, align 8, !dbg !5077
  store %struct.media_request* %1, %struct.media_request** %req, align 8, !dbg !5075
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5078, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.declare(metadata i8* %completed, metadata !5080, metadata !DIExpression()), !dbg !5081
  store i8 0, i8* %completed, align 1, !dbg !5081
  br label %do.body, !dbg !5082

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5083

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5084, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5087, metadata !DIExpression()), !dbg !5086
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5086
  %conv = zext i1 %cmp to i32, !dbg !5086
  store i32 1, i32* %tmp, align 4, !dbg !5086
  %2 = load i32, i32* %tmp, align 4, !dbg !5086
  br label %do.body3, !dbg !5088

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5089

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5090

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5092, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5096, metadata !DIExpression()), !dbg !5095
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5095
  %conv9 = zext i1 %cmp8 to i32, !dbg !5095
  store i32 1, i32* %tmp10, align 4, !dbg !5095
  %3 = load i32, i32* %tmp10, align 4, !dbg !5095
  %call = call i64 @arch_local_irq_save() #9, !dbg !5097
  store i64 %call, i64* %flags, align 8, !dbg !5097
  br label %do.end, !dbg !5097

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5090

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5089

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5098, !srcloc !5099
  br label %do.body13, !dbg !5098

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5100
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %4, i32 0, i32 9, !dbg !5100
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5101
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !5102
  %rlock.i = bitcast %union.anon.3* %6 to %struct.raw_spinlock*, !dbg !5102
  br label %do.end15, !dbg !5100

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5098

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5089

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5088

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5083

do.end19:                                         ; preds = %do.end18
  %7 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !5103
  %completed20 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %7, i32 0, i32 5, !dbg !5105
  %8 = load i8, i8* %completed20, align 4, !dbg !5105
  %tobool = trunc i8 %8 to i1, !dbg !5105
  br i1 %tobool, label %if.then, label %if.end, !dbg !5106

if.then:                                          ; preds = %do.end19
  br label %unlock, !dbg !5107

if.end:                                           ; preds = %do.end19
  %9 = load %struct.media_request_object*, %struct.media_request_object** %obj.addr, align 8, !dbg !5108
  %completed21 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %9, i32 0, i32 5, !dbg !5109
  store i8 1, i8* %completed21, align 4, !dbg !5110
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5111, metadata !DIExpression()), !dbg !5114
  %10 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5114
  %num_incomplete_objects = getelementptr inbounds %struct.media_request, %struct.media_request* %10, i32 0, i32 7, !dbg !5114
  %11 = load i32, i32* %num_incomplete_objects, align 8, !dbg !5114
  %tobool22 = icmp ne i32 %11, 0, !dbg !5114
  %lnot = xor i1 %tobool22, true, !dbg !5114
  %lnot23 = xor i1 %lnot, true, !dbg !5114
  %lnot24 = xor i1 %lnot23, true, !dbg !5114
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !5114
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5114
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !5115
  %tobool25 = icmp ne i32 %12, 0, !dbg !5115
  %lnot26 = xor i1 %tobool25, true, !dbg !5115
  %lnot28 = xor i1 %lnot26, true, !dbg !5115
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5115
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5115
  %tobool31 = icmp ne i64 %conv30, 0, !dbg !5115
  br i1 %tobool31, label %if.then32, label %if.end41, !dbg !5114

if.then32:                                        ; preds = %if.end
  br label %do.body33, !dbg !5115

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !5117

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5119

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !5117

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 492, i32 2305, i64 12) #8, !dbg !5121, !srcloc !5123
  br label %do.end37, !dbg !5121

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 229) #8, !dbg !5124, !srcloc !5126
  br label %do.body38, !dbg !5117

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !5127

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !5117

do.end40:                                         ; preds = %do.end39
  br label %if.end41, !dbg !5117

if.end41:                                         ; preds = %do.end40, %if.end
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !5114
  %tobool43 = icmp ne i32 %13, 0, !dbg !5114
  %lnot44 = xor i1 %tobool43, true, !dbg !5114
  %lnot46 = xor i1 %lnot44, true, !dbg !5114
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5114
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !5114
  store i64 %conv48, i64* %tmp42, align 8, !dbg !5115
  %14 = load i64, i64* %tmp42, align 8, !dbg !5114
  %tobool49 = icmp ne i64 %14, 0, !dbg !5129
  br i1 %tobool49, label %if.then82, label %lor.lhs.false, !dbg !5130

lor.lhs.false:                                    ; preds = %if.end41
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on50, metadata !5131, metadata !DIExpression()), !dbg !5133
  %15 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5133
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %15, i32 0, i32 3, !dbg !5133
  %16 = load i32, i32* %state, align 8, !dbg !5133
  %cmp51 = icmp ne i32 %16, 2, !dbg !5133
  %lnot53 = xor i1 %cmp51, true, !dbg !5133
  %lnot55 = xor i1 %lnot53, true, !dbg !5133
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !5133
  store i32 %lnot.ext56, i32* %__ret_warn_on50, align 4, !dbg !5133
  %17 = load i32, i32* %__ret_warn_on50, align 4, !dbg !5134
  %tobool57 = icmp ne i32 %17, 0, !dbg !5134
  %lnot58 = xor i1 %tobool57, true, !dbg !5134
  %lnot60 = xor i1 %lnot58, true, !dbg !5134
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !5134
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !5134
  %tobool63 = icmp ne i64 %conv62, 0, !dbg !5134
  br i1 %tobool63, label %if.then64, label %if.end73, !dbg !5133

if.then64:                                        ; preds = %lor.lhs.false
  br label %do.body65, !dbg !5134

do.body65:                                        ; preds = %if.then64
  br label %do.body66, !dbg !5136

do.body66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !5138

do.end67:                                         ; preds = %do.body66
  br label %do.body68, !dbg !5136

do.body68:                                        ; preds = %do.end67
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 493, i32 2305, i64 12) #8, !dbg !5140, !srcloc !5142
  br label %do.end69, !dbg !5140

do.end69:                                         ; preds = %do.body68
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #8, !dbg !5143, !srcloc !5145
  br label %do.body70, !dbg !5136

do.body70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !5146

do.end71:                                         ; preds = %do.body70
  br label %do.end72, !dbg !5136

do.end72:                                         ; preds = %do.end71
  br label %if.end73, !dbg !5136

if.end73:                                         ; preds = %do.end72, %lor.lhs.false
  %18 = load i32, i32* %__ret_warn_on50, align 4, !dbg !5133
  %tobool75 = icmp ne i32 %18, 0, !dbg !5133
  %lnot76 = xor i1 %tobool75, true, !dbg !5133
  %lnot78 = xor i1 %lnot76, true, !dbg !5133
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !5133
  %conv80 = sext i32 %lnot.ext79 to i64, !dbg !5133
  store i64 %conv80, i64* %tmp74, align 8, !dbg !5134
  %19 = load i64, i64* %tmp74, align 8, !dbg !5133
  %tobool81 = icmp ne i64 %19, 0, !dbg !5148
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !5149

if.then82:                                        ; preds = %if.end73, %if.end41
  br label %unlock, !dbg !5150

if.end83:                                         ; preds = %if.end73
  %20 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5151
  %num_incomplete_objects84 = getelementptr inbounds %struct.media_request, %struct.media_request* %20, i32 0, i32 7, !dbg !5153
  %21 = load i32, i32* %num_incomplete_objects84, align 8, !dbg !5154
  %dec = add i32 %21, -1, !dbg !5154
  store i32 %dec, i32* %num_incomplete_objects84, align 8, !dbg !5154
  %tobool85 = icmp ne i32 %dec, 0, !dbg !5154
  br i1 %tobool85, label %if.end88, label %if.then86, !dbg !5155

if.then86:                                        ; preds = %if.end83
  %22 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5156
  %state87 = getelementptr inbounds %struct.media_request, %struct.media_request* %22, i32 0, i32 3, !dbg !5158
  store i32 3, i32* %state87, align 8, !dbg !5159
  %23 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5160
  %poll_wait = getelementptr inbounds %struct.media_request, %struct.media_request* %23, i32 0, i32 8, !dbg !5160
  call void @__wake_up(%struct.wait_queue_head* %poll_wait, i32 1, i32 0, i8* null) #9, !dbg !5160
  store i8 1, i8* %completed, align 1, !dbg !5161
  br label %if.end88, !dbg !5162

if.end88:                                         ; preds = %if.then86, %if.end83
  br label %unlock, !dbg !5153

unlock:                                           ; preds = %if.end88, %if.then82, %if.then
  call void @llvm.dbg.label(metadata !5163), !dbg !5164
  %24 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5165
  %lock89 = getelementptr inbounds %struct.media_request, %struct.media_request* %24, i32 0, i32 9, !dbg !5166
  %25 = load i64, i64* %flags, align 8, !dbg !5167
  store %struct.spinlock* %lock89, %struct.spinlock** %lock.addr.i93, align 8
  store i64 %25, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5168
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5168
  store i32 1, i32* %tmp.i, align 4, !dbg !5168
  %26 = load i32, i32* %tmp.i, align 4, !dbg !5168
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5169
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5169
  store i32 1, i32* %tmp8.i, align 4, !dbg !5169
  %27 = load i32, i32* %tmp8.i, align 4, !dbg !5169
  %28 = load i64, i64* %flags.addr.i, align 8, !dbg !5170
  call void @arch_local_irq_restore(i64 %28) #10, !dbg !5170
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5171, !srcloc !4624
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i93, align 8, !dbg !5172
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !5172
  %rlock.i94 = bitcast %union.anon.3* %30 to %struct.raw_spinlock*, !dbg !5172
  %31 = load i8, i8* %completed, align 1, !dbg !5173
  %tobool90 = trunc i8 %31 to i1, !dbg !5173
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !5175

if.then91:                                        ; preds = %unlock
  %32 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5176
  call void @media_request_put(%struct.media_request* %32) #9, !dbg !5177
  br label %if.end92, !dbg !5177

if.end92:                                         ; preds = %if.then91, %unlock
  ret void, !dbg !5178
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5179 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5185
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !5186
  ret i1 %call, !dbg !5187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5188 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5195
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5196
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5197
  ret i1 %call, !dbg !5198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5199 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5202, metadata !DIExpression()), !dbg !5204
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5208, metadata !DIExpression()), !dbg !5209
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5210, metadata !DIExpression()), !dbg !5212
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4016, metadata !DIExpression()), !dbg !5213
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4026, metadata !DIExpression()), !dbg !5215
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5216, metadata !DIExpression()), !dbg !5217
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5218, metadata !DIExpression()), !dbg !5219
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5226, metadata !DIExpression()), !dbg !5227
  %0 = load i32, i32* %i.addr, align 4, !dbg !5228
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5229
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5230
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5231
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5231
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5232
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5233
  %conv.i.i = trunc i64 %5 to i32, !dbg !5233
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5234
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5235
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5235
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !5235
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5236
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5237
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5212
  %sub.i.i = sub i32 0, %10, !dbg !5212
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5212
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5212
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5212
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5212
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !5212, !srcloc !5238
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5212
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5212
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5212
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5212
  store i32 %15, i32* %old, align 4, !dbg !5227
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5239
  %tobool = icmp ne i32* %16, null, !dbg !5239
  br i1 %tobool, label %if.then, label %if.end, !dbg !5241

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5242
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5243
  store i32 %17, i32* %18, align 4, !dbg !5244
  br label %if.end, !dbg !5245

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5246
  %20 = load i32, i32* %i.addr, align 4, !dbg !5248
  %cmp = icmp eq i32 %19, %20, !dbg !5249
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5250

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5251, !srcloc !5253
  store i1 true, i1* %retval, align 1, !dbg !5254
  br label %return, !dbg !5254

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5255
  %cmp3 = icmp slt i32 %21, 0, !dbg !5255
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5255

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5255
  %23 = load i32, i32* %i.addr, align 4, !dbg !5255
  %sub = sub i32 %22, %23, !dbg !5255
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5255
  br label %lor.end, !dbg !5255

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5255
  %lnot5 = xor i1 %lnot, true, !dbg !5255
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5255
  %conv = sext i32 %lnot.ext to i64, !dbg !5255
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5255
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5257

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5258
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !5259
  br label %if.end8, !dbg !5259

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5260
  br label %return, !dbg !5260

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5261
  ret i1 %26, !dbg !5261
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5262 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5268, metadata !DIExpression()), !dbg !5269
  ret i1 true, !dbg !5270
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5271 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  ret void, !dbg !5281
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @media_request_clean(%struct.media_request* %req) #0 !dbg !5282 {
entry:
  %req.addr = alloca %struct.media_request*, align 8
  %obj = alloca %struct.media_request_object*, align 8
  %obj_safe = alloca %struct.media_request_object*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on19 = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  %__ret_warn_on49 = alloca i32, align 4
  %tmp72 = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp81 = alloca %struct.media_request_object*, align 8
  %__mptr82 = alloca i8*, align 8
  %tmp86 = alloca %struct.media_request_object*, align 8
  %__mptr94 = alloca i8*, align 8
  %tmp99 = alloca %struct.media_request_object*, align 8
  %__ret_warn_on103 = alloca i32, align 4
  %tmp126 = alloca i64, align 8
  store %struct.media_request* %req, %struct.media_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request** %req.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata %struct.media_request_object** %obj_safe, metadata !5287, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5289, metadata !DIExpression()), !dbg !5291
  %0 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5291
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %0, i32 0, i32 3, !dbg !5291
  %1 = load i32, i32* %state, align 8, !dbg !5291
  %cmp = icmp ne i32 %1, 4, !dbg !5291
  %lnot = xor i1 %cmp, true, !dbg !5291
  %lnot1 = xor i1 %lnot, true, !dbg !5291
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5291
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5291
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5292
  %tobool = icmp ne i32 %2, 0, !dbg !5292
  %lnot2 = xor i1 %tobool, true, !dbg !5292
  %lnot4 = xor i1 %lnot2, true, !dbg !5292
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5292
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5292
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5292
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5291

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5292

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !5294

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5296

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5294

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 44, i32 2305, i64 12) #8, !dbg !5298, !srcloc !5300
  br label %do.end9, !dbg !5298

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 210) #8, !dbg !5301, !srcloc !5303
  br label %do.body10, !dbg !5294

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5304

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5294

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !5294

if.end:                                           ; preds = %do.end12, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5291
  %tobool13 = icmp ne i32 %3, 0, !dbg !5291
  %lnot14 = xor i1 %tobool13, true, !dbg !5291
  %lnot16 = xor i1 %lnot14, true, !dbg !5291
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5291
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5291
  store i64 %conv18, i64* %tmp, align 8, !dbg !5292
  %4 = load i64, i64* %tmp, align 8, !dbg !5291
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on19, metadata !5306, metadata !DIExpression()), !dbg !5308
  %5 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5308
  %updating_count = getelementptr inbounds %struct.media_request, %struct.media_request* %5, i32 0, i32 4, !dbg !5308
  %6 = load i32, i32* %updating_count, align 4, !dbg !5308
  %tobool20 = icmp ne i32 %6, 0, !dbg !5308
  %lnot21 = xor i1 %tobool20, true, !dbg !5308
  %lnot23 = xor i1 %lnot21, true, !dbg !5308
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5308
  store i32 %lnot.ext24, i32* %__ret_warn_on19, align 4, !dbg !5308
  %7 = load i32, i32* %__ret_warn_on19, align 4, !dbg !5309
  %tobool25 = icmp ne i32 %7, 0, !dbg !5309
  %lnot26 = xor i1 %tobool25, true, !dbg !5309
  %lnot28 = xor i1 %lnot26, true, !dbg !5309
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5309
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5309
  %tobool31 = icmp ne i64 %conv30, 0, !dbg !5309
  br i1 %tobool31, label %if.then32, label %if.end41, !dbg !5308

if.then32:                                        ; preds = %if.end
  br label %do.body33, !dbg !5309

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !5311

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5313

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !5311

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 45, i32 2305, i64 12) #8, !dbg !5315, !srcloc !5317
  br label %do.end37, !dbg !5315

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 211) #8, !dbg !5318, !srcloc !5320
  br label %do.body38, !dbg !5311

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !5321

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !5311

do.end40:                                         ; preds = %do.end39
  br label %if.end41, !dbg !5311

if.end41:                                         ; preds = %do.end40, %if.end
  %8 = load i32, i32* %__ret_warn_on19, align 4, !dbg !5308
  %tobool43 = icmp ne i32 %8, 0, !dbg !5308
  %lnot44 = xor i1 %tobool43, true, !dbg !5308
  %lnot46 = xor i1 %lnot44, true, !dbg !5308
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5308
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !5308
  store i64 %conv48, i64* %tmp42, align 8, !dbg !5309
  %9 = load i64, i64* %tmp42, align 8, !dbg !5308
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on49, metadata !5323, metadata !DIExpression()), !dbg !5325
  %10 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5325
  %access_count = getelementptr inbounds %struct.media_request, %struct.media_request* %10, i32 0, i32 5, !dbg !5325
  %11 = load i32, i32* %access_count, align 8, !dbg !5325
  %tobool50 = icmp ne i32 %11, 0, !dbg !5325
  %lnot51 = xor i1 %tobool50, true, !dbg !5325
  %lnot53 = xor i1 %lnot51, true, !dbg !5325
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !5325
  store i32 %lnot.ext54, i32* %__ret_warn_on49, align 4, !dbg !5325
  %12 = load i32, i32* %__ret_warn_on49, align 4, !dbg !5326
  %tobool55 = icmp ne i32 %12, 0, !dbg !5326
  %lnot56 = xor i1 %tobool55, true, !dbg !5326
  %lnot58 = xor i1 %lnot56, true, !dbg !5326
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !5326
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !5326
  %tobool61 = icmp ne i64 %conv60, 0, !dbg !5326
  br i1 %tobool61, label %if.then62, label %if.end71, !dbg !5325

if.then62:                                        ; preds = %if.end41
  br label %do.body63, !dbg !5326

do.body63:                                        ; preds = %if.then62
  br label %do.body64, !dbg !5328

do.body64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !5330

do.end65:                                         ; preds = %do.body64
  br label %do.body66, !dbg !5328

do.body66:                                        ; preds = %do.end65
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 46, i32 2305, i64 12) #8, !dbg !5332, !srcloc !5334
  br label %do.end67, !dbg !5332

do.end67:                                         ; preds = %do.body66
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 212) #8, !dbg !5335, !srcloc !5337
  br label %do.body68, !dbg !5328

do.body68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !5338

do.end69:                                         ; preds = %do.body68
  br label %do.end70, !dbg !5328

do.end70:                                         ; preds = %do.end69
  br label %if.end71, !dbg !5328

if.end71:                                         ; preds = %do.end70, %if.end41
  %13 = load i32, i32* %__ret_warn_on49, align 4, !dbg !5325
  %tobool73 = icmp ne i32 %13, 0, !dbg !5325
  %lnot74 = xor i1 %tobool73, true, !dbg !5325
  %lnot76 = xor i1 %lnot74, true, !dbg !5325
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !5325
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !5325
  store i64 %conv78, i64* %tmp72, align 8, !dbg !5326
  %14 = load i64, i64* %tmp72, align 8, !dbg !5325
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5340, metadata !DIExpression()), !dbg !5343
  %15 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5343
  %objects = getelementptr inbounds %struct.media_request, %struct.media_request* %15, i32 0, i32 6, !dbg !5343
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %objects, i32 0, i32 0, !dbg !5343
  %16 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5343
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !5343
  store i8* %17, i8** %__mptr, align 8, !dbg !5343
  br label %do.body79, !dbg !5343

do.body79:                                        ; preds = %if.end71
  br label %do.end80, !dbg !5344

do.end80:                                         ; preds = %do.body79
  %18 = load i8*, i8** %__mptr, align 8, !dbg !5343
  %add.ptr = getelementptr i8, i8* %18, i64 -24, !dbg !5343
  %19 = bitcast i8* %add.ptr to %struct.media_request_object*, !dbg !5343
  store %struct.media_request_object* %19, %struct.media_request_object** %tmp81, align 8, !dbg !5344
  %20 = load %struct.media_request_object*, %struct.media_request_object** %tmp81, align 8, !dbg !5343
  store %struct.media_request_object* %20, %struct.media_request_object** %obj, align 8, !dbg !5346
  call void @llvm.dbg.declare(metadata i8** %__mptr82, metadata !5347, metadata !DIExpression()), !dbg !5349
  %21 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !5349
  %list = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %21, i32 0, i32 3, !dbg !5349
  %next83 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !5349
  %22 = load %struct.list_head*, %struct.list_head** %next83, align 8, !dbg !5349
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !5349
  store i8* %23, i8** %__mptr82, align 8, !dbg !5349
  br label %do.body84, !dbg !5349

do.body84:                                        ; preds = %do.end80
  br label %do.end85, !dbg !5350

do.end85:                                         ; preds = %do.body84
  %24 = load i8*, i8** %__mptr82, align 8, !dbg !5349
  %add.ptr87 = getelementptr i8, i8* %24, i64 -24, !dbg !5349
  %25 = bitcast i8* %add.ptr87 to %struct.media_request_object*, !dbg !5349
  store %struct.media_request_object* %25, %struct.media_request_object** %tmp86, align 8, !dbg !5350
  %26 = load %struct.media_request_object*, %struct.media_request_object** %tmp86, align 8, !dbg !5349
  store %struct.media_request_object* %26, %struct.media_request_object** %obj_safe, align 8, !dbg !5346
  br label %for.cond, !dbg !5346

for.cond:                                         ; preds = %do.end98, %do.end85
  %27 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !5352
  %list88 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %27, i32 0, i32 3, !dbg !5352
  %28 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5352
  %objects89 = getelementptr inbounds %struct.media_request, %struct.media_request* %28, i32 0, i32 6, !dbg !5352
  %cmp90 = icmp eq %struct.list_head* %list88, %objects89, !dbg !5352
  %lnot92 = xor i1 %cmp90, true, !dbg !5352
  br i1 %lnot92, label %for.body, label %for.end, !dbg !5346

for.body:                                         ; preds = %for.cond
  %29 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !5354
  call void @media_request_object_unbind(%struct.media_request_object* %29) #9, !dbg !5356
  %30 = load %struct.media_request_object*, %struct.media_request_object** %obj, align 8, !dbg !5357
  call void @media_request_object_put(%struct.media_request_object* %30) #9, !dbg !5358
  br label %for.inc, !dbg !5359

for.inc:                                          ; preds = %for.body
  %31 = load %struct.media_request_object*, %struct.media_request_object** %obj_safe, align 8, !dbg !5352
  store %struct.media_request_object* %31, %struct.media_request_object** %obj, align 8, !dbg !5352
  call void @llvm.dbg.declare(metadata i8** %__mptr94, metadata !5360, metadata !DIExpression()), !dbg !5362
  %32 = load %struct.media_request_object*, %struct.media_request_object** %obj_safe, align 8, !dbg !5362
  %list95 = getelementptr inbounds %struct.media_request_object, %struct.media_request_object* %32, i32 0, i32 3, !dbg !5362
  %next96 = getelementptr inbounds %struct.list_head, %struct.list_head* %list95, i32 0, i32 0, !dbg !5362
  %33 = load %struct.list_head*, %struct.list_head** %next96, align 8, !dbg !5362
  %34 = bitcast %struct.list_head* %33 to i8*, !dbg !5362
  store i8* %34, i8** %__mptr94, align 8, !dbg !5362
  br label %do.body97, !dbg !5362

do.body97:                                        ; preds = %for.inc
  br label %do.end98, !dbg !5363

do.end98:                                         ; preds = %do.body97
  %35 = load i8*, i8** %__mptr94, align 8, !dbg !5362
  %add.ptr100 = getelementptr i8, i8* %35, i64 -24, !dbg !5362
  %36 = bitcast i8* %add.ptr100 to %struct.media_request_object*, !dbg !5362
  store %struct.media_request_object* %36, %struct.media_request_object** %tmp99, align 8, !dbg !5363
  %37 = load %struct.media_request_object*, %struct.media_request_object** %tmp99, align 8, !dbg !5362
  store %struct.media_request_object* %37, %struct.media_request_object** %obj_safe, align 8, !dbg !5352
  br label %for.cond, !dbg !5352, !llvm.loop !5365

for.end:                                          ; preds = %for.cond
  %38 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5367
  %updating_count101 = getelementptr inbounds %struct.media_request, %struct.media_request* %38, i32 0, i32 4, !dbg !5368
  store i32 0, i32* %updating_count101, align 4, !dbg !5369
  %39 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5370
  %access_count102 = getelementptr inbounds %struct.media_request, %struct.media_request* %39, i32 0, i32 5, !dbg !5371
  store i32 0, i32* %access_count102, align 8, !dbg !5372
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on103, metadata !5373, metadata !DIExpression()), !dbg !5375
  %40 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5375
  %num_incomplete_objects = getelementptr inbounds %struct.media_request, %struct.media_request* %40, i32 0, i32 7, !dbg !5375
  %41 = load i32, i32* %num_incomplete_objects, align 8, !dbg !5375
  %tobool104 = icmp ne i32 %41, 0, !dbg !5375
  %lnot105 = xor i1 %tobool104, true, !dbg !5375
  %lnot107 = xor i1 %lnot105, true, !dbg !5375
  %lnot.ext108 = zext i1 %lnot107 to i32, !dbg !5375
  store i32 %lnot.ext108, i32* %__ret_warn_on103, align 4, !dbg !5375
  %42 = load i32, i32* %__ret_warn_on103, align 4, !dbg !5376
  %tobool109 = icmp ne i32 %42, 0, !dbg !5376
  %lnot110 = xor i1 %tobool109, true, !dbg !5376
  %lnot112 = xor i1 %lnot110, true, !dbg !5376
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !5376
  %conv114 = sext i32 %lnot.ext113 to i64, !dbg !5376
  %tobool115 = icmp ne i64 %conv114, 0, !dbg !5376
  br i1 %tobool115, label %if.then116, label %if.end125, !dbg !5375

if.then116:                                       ; preds = %for.end
  br label %do.body117, !dbg !5376

do.body117:                                       ; preds = %if.then116
  br label %do.body118, !dbg !5378

do.body118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !5380

do.end119:                                        ; preds = %do.body118
  br label %do.body120, !dbg !5378

do.body120:                                       ; preds = %do.end119
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 55, i32 2305, i64 12) #8, !dbg !5382, !srcloc !5384
  br label %do.end121, !dbg !5382

do.end121:                                        ; preds = %do.body120
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 216) #8, !dbg !5385, !srcloc !5387
  br label %do.body122, !dbg !5378

do.body122:                                       ; preds = %do.end121
  br label %do.end123, !dbg !5388

do.end123:                                        ; preds = %do.body122
  br label %do.end124, !dbg !5378

do.end124:                                        ; preds = %do.end123
  br label %if.end125, !dbg !5378

if.end125:                                        ; preds = %do.end124, %for.end
  %43 = load i32, i32* %__ret_warn_on103, align 4, !dbg !5375
  %tobool127 = icmp ne i32 %43, 0, !dbg !5375
  %lnot128 = xor i1 %tobool127, true, !dbg !5375
  %lnot130 = xor i1 %lnot128, true, !dbg !5375
  %lnot.ext131 = zext i1 %lnot130 to i32, !dbg !5375
  %conv132 = sext i32 %lnot.ext131 to i64, !dbg !5375
  store i64 %conv132, i64* %tmp126, align 8, !dbg !5376
  %44 = load i64, i64* %tmp126, align 8, !dbg !5375
  %45 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5390
  %num_incomplete_objects133 = getelementptr inbounds %struct.media_request, %struct.media_request* %45, i32 0, i32 7, !dbg !5391
  store i32 0, i32* %num_incomplete_objects133, align 8, !dbg !5392
  %46 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5393
  %poll_wait = getelementptr inbounds %struct.media_request, %struct.media_request* %46, i32 0, i32 8, !dbg !5393
  call void @__wake_up(%struct.wait_queue_head* %poll_wait, i32 1, i32 0, i8* null) #9, !dbg !5393
  ret void, !dbg !5394
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal { %struct.file*, i32 } @__to_fd(i64 %v) #0 !dbg !5395 {
entry:
  %retval = alloca %struct.fd, align 8
  %v.addr = alloca i64, align 8
  store i64 %v, i64* %v.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %v.addr, metadata !5398, metadata !DIExpression()), !dbg !5399
  %file = getelementptr inbounds %struct.fd, %struct.fd* %retval, i32 0, i32 0, !dbg !5400
  %0 = load i64, i64* %v.addr, align 8, !dbg !5401
  %and = and i64 %0, -4, !dbg !5402
  %1 = inttoptr i64 %and to %struct.file*, !dbg !5403
  store %struct.file* %1, %struct.file** %file, align 8, !dbg !5400
  %flags = getelementptr inbounds %struct.fd, %struct.fd* %retval, i32 0, i32 1, !dbg !5400
  %2 = load i64, i64* %v.addr, align 8, !dbg !5404
  %and1 = and i64 %2, 3, !dbg !5405
  %conv = trunc i64 %and1 to i32, !dbg !5404
  store i32 %conv, i32* %flags, align 8, !dbg !5400
  %3 = bitcast %struct.fd* %retval to { %struct.file*, i32 }*, !dbg !5406
  %4 = load { %struct.file*, i32 }, { %struct.file*, i32 }* %3, align 8, !dbg !5406
  ret { %struct.file*, i32 } %4, !dbg !5406
}

; Function Attrs: noredzone
declare dso_local i64 @__fdget(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @media_request_poll(%struct.file* %filp, %struct.poll_table_struct* %wait) #0 !dbg !5407 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !4502, metadata !DIExpression()), !dbg !5408
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4508, metadata !DIExpression()), !dbg !5410
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !5411
  %retval = alloca i32, align 4
  %filp.addr = alloca %struct.file*, align 8
  %wait.addr = alloca %struct.poll_table_struct*, align 8
  %req = alloca %struct.media_request*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  store %struct.poll_table_struct* %wait, %struct.poll_table_struct** %wait.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %wait.addr, metadata !5420, metadata !DIExpression()), !dbg !5421
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !5422, metadata !DIExpression()), !dbg !5423
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5424
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5425
  %1 = load i8*, i8** %private_data, align 8, !dbg !5425
  %2 = bitcast i8* %1 to %struct.media_request*, !dbg !5424
  store %struct.media_request* %2, %struct.media_request** %req, align 8, !dbg !5423
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5426, metadata !DIExpression()), !dbg !5427
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5428, metadata !DIExpression()), !dbg !5429
  store i32 0, i32* %ret, align 4, !dbg !5429
  %3 = load %struct.poll_table_struct*, %struct.poll_table_struct** %wait.addr, align 8, !dbg !5430
  %call = call i32 @poll_requested_events(%struct.poll_table_struct* %3) #9, !dbg !5432
  %and = and i32 %call, 2, !dbg !5433
  %tobool = icmp ne i32 %and, 0, !dbg !5433
  br i1 %tobool, label %if.end, label %if.then, !dbg !5434

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5435
  br label %return, !dbg !5435

if.end:                                           ; preds = %entry
  %4 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5436
  %5 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5437
  %poll_wait = getelementptr inbounds %struct.media_request, %struct.media_request* %5, i32 0, i32 8, !dbg !5438
  %6 = load %struct.poll_table_struct*, %struct.poll_table_struct** %wait.addr, align 8, !dbg !5439
  call void @poll_wait(%struct.file* %4, %struct.wait_queue_head* %poll_wait, %struct.poll_table_struct* %6) #9, !dbg !5440
  br label %do.body, !dbg !5441

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5442

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5443, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5446, metadata !DIExpression()), !dbg !5445
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5445
  %conv = zext i1 %cmp to i32, !dbg !5445
  store i32 1, i32* %tmp, align 4, !dbg !5445
  %7 = load i32, i32* %tmp, align 4, !dbg !5445
  br label %do.body2, !dbg !5447

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5448

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5449

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5451, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5455, metadata !DIExpression()), !dbg !5454
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5454
  %conv8 = zext i1 %cmp7 to i32, !dbg !5454
  store i32 1, i32* %tmp9, align 4, !dbg !5454
  %8 = load i32, i32* %tmp9, align 4, !dbg !5454
  %call10 = call i64 @arch_local_irq_save() #9, !dbg !5456
  store i64 %call10, i64* %flags, align 8, !dbg !5456
  br label %do.end, !dbg !5456

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !5449

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5448

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5457, !srcloc !5458
  br label %do.body13, !dbg !5457

do.body13:                                        ; preds = %do.body12
  %9 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5459
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %9, i32 0, i32 9, !dbg !5459
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5460
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !5461
  %rlock.i = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !5461
  br label %do.end15, !dbg !5459

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5457

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5448

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5447

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5442

do.end19:                                         ; preds = %do.end18
  %12 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5462
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %12, i32 0, i32 3, !dbg !5464
  %13 = load i32, i32* %state, align 8, !dbg !5464
  %cmp20 = icmp eq i32 %13, 3, !dbg !5465
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5466

if.then22:                                        ; preds = %do.end19
  store i32 2, i32* %ret, align 4, !dbg !5467
  br label %unlock, !dbg !5469

if.end23:                                         ; preds = %do.end19
  %14 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5470
  %state24 = getelementptr inbounds %struct.media_request, %struct.media_request* %14, i32 0, i32 3, !dbg !5472
  %15 = load i32, i32* %state24, align 8, !dbg !5472
  %cmp25 = icmp ne i32 %15, 2, !dbg !5473
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !5474

if.then27:                                        ; preds = %if.end23
  store i32 8, i32* %ret, align 4, !dbg !5475
  br label %unlock, !dbg !5477

if.end28:                                         ; preds = %if.end23
  br label %unlock, !dbg !5478

unlock:                                           ; preds = %if.end28, %if.then27, %if.then22
  call void @llvm.dbg.label(metadata !5479), !dbg !5480
  %16 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5481
  %lock29 = getelementptr inbounds %struct.media_request, %struct.media_request* %16, i32 0, i32 9, !dbg !5482
  %17 = load i64, i64* %flags, align 8, !dbg !5483
  store %struct.spinlock* %lock29, %struct.spinlock** %lock.addr.i30, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5484
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5484
  store i32 1, i32* %tmp.i, align 4, !dbg !5484
  %18 = load i32, i32* %tmp.i, align 4, !dbg !5484
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5485
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5485
  store i32 1, i32* %tmp8.i, align 4, !dbg !5485
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !5485
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !5486
  call void @arch_local_irq_restore(i64 %20) #10, !dbg !5486
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5487, !srcloc !4624
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !5488
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !5488
  %rlock.i31 = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !5488
  %23 = load i32, i32* %ret, align 4, !dbg !5489
  store i32 %23, i32* %retval, align 4, !dbg !5490
  br label %return, !dbg !5490

return:                                           ; preds = %unlock, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !5491
  ret i32 %24, !dbg !5491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @media_request_ioctl(%struct.file* %filp, i32 %cmd, i64 %arg) #0 !dbg !5492 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %req = alloca %struct.media_request*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5493, metadata !DIExpression()), !dbg !5494
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !5499, metadata !DIExpression()), !dbg !5500
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5501
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5502
  %1 = load i8*, i8** %private_data, align 8, !dbg !5502
  %2 = bitcast i8* %1 to %struct.media_request*, !dbg !5501
  store %struct.media_request* %2, %struct.media_request** %req, align 8, !dbg !5500
  %3 = load i32, i32* %cmd.addr, align 4, !dbg !5503
  switch i32 %3, label %sw.default [
    i32 31872, label %sw.bb
    i32 31873, label %sw.bb1
  ], !dbg !5504

sw.bb:                                            ; preds = %entry
  %4 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5505
  %call = call i64 @media_request_ioctl_queue(%struct.media_request* %4) #9, !dbg !5507
  store i64 %call, i64* %retval, align 8, !dbg !5508
  br label %return, !dbg !5508

sw.bb1:                                           ; preds = %entry
  %5 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5509
  %call2 = call i64 @media_request_ioctl_reinit(%struct.media_request* %5) #9, !dbg !5510
  store i64 %call2, i64* %retval, align 8, !dbg !5511
  br label %return, !dbg !5511

sw.default:                                       ; preds = %entry
  store i64 -515, i64* %retval, align 8, !dbg !5512
  br label %return, !dbg !5512

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %6 = load i64, i64* %retval, align 8, !dbg !5513
  ret i64 %6, !dbg !5513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @media_request_close(%struct.inode* %inode, %struct.file* %filp) #0 !dbg !5514 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %req = alloca %struct.media_request*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.declare(metadata %struct.media_request** %req, metadata !5519, metadata !DIExpression()), !dbg !5520
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5521
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5522
  %1 = load i8*, i8** %private_data, align 8, !dbg !5522
  %2 = bitcast i8* %1 to %struct.media_request*, !dbg !5521
  store %struct.media_request* %2, %struct.media_request** %req, align 8, !dbg !5520
  %3 = load %struct.media_request*, %struct.media_request** %req, align 8, !dbg !5523
  call void @media_request_put(%struct.media_request* %3) #9, !dbg !5524
  ret i32 0, !dbg !5525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @poll_requested_events(%struct.poll_table_struct* %p) #0 !dbg !5526 {
entry:
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5534
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !5534
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5534

cond.true:                                        ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5535
  %_key = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 1, !dbg !5536
  %2 = load i32, i32* %_key, align 8, !dbg !5536
  br label %cond.end, !dbg !5534

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5534

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ], !dbg !5534
  ret i32 %cond, !dbg !5537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #0 !dbg !5538 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5548
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !5548
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5550

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5551
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !5552
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !5552
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !5551
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5553

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !5554
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !5554
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5555

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5556
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !5557
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !5557
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5558
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !5559
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5560
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #9, !dbg !5556
  br label %if.end, !dbg !5556

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !5561
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @media_request_ioctl_queue(%struct.media_request* %req) #0 !dbg !5562 {
entry:
  %lock.addr.i75 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i75, metadata !4502, metadata !DIExpression()), !dbg !5565
  %flags.addr.i76 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i76, metadata !4508, metadata !DIExpression()), !dbg !5567
  %tmp.i77 = alloca i32, align 4
  %tmp8.i78 = alloca i32, align 4
  %lock.addr.i73 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i73, metadata !4030, metadata !DIExpression()), !dbg !5568
  %lock.addr.i71 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i71, metadata !4502, metadata !DIExpression()), !dbg !5575
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4508, metadata !DIExpression()), !dbg !5577
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !5578
  %retval = alloca i64, align 8
  %req.addr = alloca %struct.media_request*, align 8
  %mdev = alloca %struct.media_device*, align 8
  %state = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__dummy34 = alloca i64, align 8
  %__dummy235 = alloca i64, align 8
  %tmp38 = alloca i32, align 4
  %__dummy42 = alloca i64, align 8
  %__dummy243 = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  store %struct.media_request* %req, %struct.media_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request** %req.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  call void @llvm.dbg.declare(metadata %struct.media_device** %mdev, metadata !5587, metadata !DIExpression()), !dbg !5588
  %0 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5589
  %mdev1 = getelementptr inbounds %struct.media_request, %struct.media_request* %0, i32 0, i32 0, !dbg !5590
  %1 = load %struct.media_device*, %struct.media_device** %mdev1, align 8, !dbg !5590
  store %struct.media_device* %1, %struct.media_device** %mdev, align 8, !dbg !5588
  call void @llvm.dbg.declare(metadata i32* %state, metadata !5591, metadata !DIExpression()), !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5593, metadata !DIExpression()), !dbg !5594
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5595, metadata !DIExpression()), !dbg !5596
  %2 = load %struct.media_device*, %struct.media_device** %mdev, align 8, !dbg !5597
  %req_queue_mutex = getelementptr inbounds %struct.media_device, %struct.media_device* %2, i32 0, i32 22, !dbg !5598
  call void @mutex_lock(%struct.mutex* %req_queue_mutex) #9, !dbg !5599
  %3 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5600
  call void @media_request_get(%struct.media_request* %3) #9, !dbg !5601
  br label %do.body, !dbg !5602

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5603

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5604, metadata !DIExpression()), !dbg !5606
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5607, metadata !DIExpression()), !dbg !5606
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5606
  %conv = zext i1 %cmp to i32, !dbg !5606
  store i32 1, i32* %tmp, align 4, !dbg !5606
  %4 = load i32, i32* %tmp, align 4, !dbg !5606
  br label %do.body3, !dbg !5608

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5609

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5610

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5612, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5616, metadata !DIExpression()), !dbg !5615
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5615
  %conv9 = zext i1 %cmp8 to i32, !dbg !5615
  store i32 1, i32* %tmp10, align 4, !dbg !5615
  %5 = load i32, i32* %tmp10, align 4, !dbg !5615
  %call = call i64 @arch_local_irq_save() #9, !dbg !5617
  store i64 %call, i64* %flags, align 8, !dbg !5617
  br label %do.end, !dbg !5617

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5610

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5609

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5618, !srcloc !5619
  br label %do.body13, !dbg !5618

do.body13:                                        ; preds = %do.body12
  %6 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5620
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %6, i32 0, i32 9, !dbg !5620
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5621
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !5622
  %rlock.i = bitcast %union.anon.3* %8 to %struct.raw_spinlock*, !dbg !5622
  br label %do.end15, !dbg !5620

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5618

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5609

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5608

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5603

do.end19:                                         ; preds = %do.end18
  %9 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5623
  %state20 = getelementptr inbounds %struct.media_request, %struct.media_request* %9, i32 0, i32 3, !dbg !5625
  %10 = load i32, i32* %state20, align 8, !dbg !5625
  %cmp21 = icmp eq i32 %10, 0, !dbg !5626
  br i1 %cmp21, label %if.then, label %if.end, !dbg !5627

if.then:                                          ; preds = %do.end19
  %11 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5628
  %state23 = getelementptr inbounds %struct.media_request, %struct.media_request* %11, i32 0, i32 3, !dbg !5629
  store i32 1, i32* %state23, align 8, !dbg !5630
  br label %if.end, !dbg !5628

if.end:                                           ; preds = %if.then, %do.end19
  %12 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5631
  %state24 = getelementptr inbounds %struct.media_request, %struct.media_request* %12, i32 0, i32 3, !dbg !5632
  %13 = load i32, i32* %state24, align 8, !dbg !5632
  store i32 %13, i32* %state, align 4, !dbg !5633
  %14 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5634
  %lock25 = getelementptr inbounds %struct.media_request, %struct.media_request* %14, i32 0, i32 9, !dbg !5635
  %15 = load i64, i64* %flags, align 8, !dbg !5636
  store %struct.spinlock* %lock25, %struct.spinlock** %lock.addr.i71, align 8
  store i64 %15, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5637
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5637
  store i32 1, i32* %tmp.i, align 4, !dbg !5637
  %16 = load i32, i32* %tmp.i, align 4, !dbg !5637
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5638
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5638
  store i32 1, i32* %tmp8.i, align 4, !dbg !5638
  %17 = load i32, i32* %tmp8.i, align 4, !dbg !5638
  %18 = load i64, i64* %flags.addr.i, align 8, !dbg !5639
  call void @arch_local_irq_restore(i64 %18) #10, !dbg !5639
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5640, !srcloc !4624
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i71, align 8, !dbg !5641
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !5641
  %rlock.i72 = bitcast %union.anon.3* %20 to %struct.raw_spinlock*, !dbg !5641
  %21 = load i32, i32* %state, align 4, !dbg !5642
  %cmp26 = icmp ne i32 %21, 1, !dbg !5644
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !5645

if.then28:                                        ; preds = %if.end
  %22 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5646
  call void @media_request_put(%struct.media_request* %22) #9, !dbg !5648
  %23 = load %struct.media_device*, %struct.media_device** %mdev, align 8, !dbg !5649
  %req_queue_mutex29 = getelementptr inbounds %struct.media_device, %struct.media_device* %23, i32 0, i32 22, !dbg !5650
  call void @mutex_unlock(%struct.mutex* %req_queue_mutex29) #9, !dbg !5651
  store i64 -16, i64* %retval, align 8, !dbg !5652
  br label %return, !dbg !5652

if.end30:                                         ; preds = %if.end
  %24 = load %struct.media_device*, %struct.media_device** %mdev, align 8, !dbg !5653
  %ops = getelementptr inbounds %struct.media_device, %struct.media_device* %24, i32 0, i32 21, !dbg !5654
  %25 = load %struct.media_device_ops*, %struct.media_device_ops** %ops, align 8, !dbg !5654
  %req_validate = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %25, i32 0, i32 3, !dbg !5655
  %26 = load i32 (%struct.media_request*)*, i32 (%struct.media_request*)** %req_validate, align 8, !dbg !5655
  %27 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5656
  %call31 = call i32 %26(%struct.media_request* %27) #9, !dbg !5653
  store i32 %call31, i32* %ret, align 4, !dbg !5657
  br label %do.body32, !dbg !5658

do.body32:                                        ; preds = %if.end30
  br label %do.body33, !dbg !5659

do.body33:                                        ; preds = %do.body32
  call void @llvm.dbg.declare(metadata i64* %__dummy34, metadata !5660, metadata !DIExpression()), !dbg !5662
  call void @llvm.dbg.declare(metadata i64* %__dummy235, metadata !5663, metadata !DIExpression()), !dbg !5662
  %cmp36 = icmp eq i64* %__dummy34, %__dummy235, !dbg !5662
  %conv37 = zext i1 %cmp36 to i32, !dbg !5662
  store i32 1, i32* %tmp38, align 4, !dbg !5662
  %28 = load i32, i32* %tmp38, align 4, !dbg !5662
  br label %do.body39, !dbg !5664

do.body39:                                        ; preds = %do.body33
  br label %do.body40, !dbg !5665

do.body40:                                        ; preds = %do.body39
  br label %do.body41, !dbg !5666

do.body41:                                        ; preds = %do.body40
  call void @llvm.dbg.declare(metadata i64* %__dummy42, metadata !5668, metadata !DIExpression()), !dbg !5671
  call void @llvm.dbg.declare(metadata i64* %__dummy243, metadata !5672, metadata !DIExpression()), !dbg !5671
  %cmp44 = icmp eq i64* %__dummy42, %__dummy243, !dbg !5671
  %conv45 = zext i1 %cmp44 to i32, !dbg !5671
  store i32 1, i32* %tmp46, align 4, !dbg !5671
  %29 = load i32, i32* %tmp46, align 4, !dbg !5671
  %call47 = call i64 @arch_local_irq_save() #9, !dbg !5673
  store i64 %call47, i64* %flags, align 8, !dbg !5673
  br label %do.end48, !dbg !5673

do.end48:                                         ; preds = %do.body41
  br label %do.end49, !dbg !5666

do.end49:                                         ; preds = %do.end48
  br label %do.body50, !dbg !5665

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5674, !srcloc !5675
  br label %do.body51, !dbg !5674

do.body51:                                        ; preds = %do.body50
  %30 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5676
  %lock52 = getelementptr inbounds %struct.media_request, %struct.media_request* %30, i32 0, i32 9, !dbg !5676
  store %struct.spinlock* %lock52, %struct.spinlock** %lock.addr.i73, align 8
  %31 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i73, align 8, !dbg !5677
  %32 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %31, i32 0, i32 0, !dbg !5678
  %rlock.i74 = bitcast %union.anon.3* %32 to %struct.raw_spinlock*, !dbg !5678
  br label %do.end54, !dbg !5676

do.end54:                                         ; preds = %do.body51
  br label %do.end55, !dbg !5674

do.end55:                                         ; preds = %do.end54
  br label %do.end56, !dbg !5665

do.end56:                                         ; preds = %do.end55
  br label %do.end57, !dbg !5664

do.end57:                                         ; preds = %do.end56
  br label %do.end58, !dbg !5659

do.end58:                                         ; preds = %do.end57
  %33 = load i32, i32* %ret, align 4, !dbg !5679
  %tobool = icmp ne i32 %33, 0, !dbg !5679
  %34 = zext i1 %tobool to i64, !dbg !5679
  %cond = select i1 %tobool, i32 0, i32 2, !dbg !5679
  %35 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5680
  %state59 = getelementptr inbounds %struct.media_request, %struct.media_request* %35, i32 0, i32 3, !dbg !5681
  store i32 %cond, i32* %state59, align 8, !dbg !5682
  %36 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5683
  %lock60 = getelementptr inbounds %struct.media_request, %struct.media_request* %36, i32 0, i32 9, !dbg !5684
  %37 = load i64, i64* %flags, align 8, !dbg !5685
  store %struct.spinlock* %lock60, %struct.spinlock** %lock.addr.i75, align 8
  store i64 %37, i64* %flags.addr.i76, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5686
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5686
  store i32 1, i32* %tmp.i77, align 4, !dbg !5686
  %38 = load i32, i32* %tmp.i77, align 4, !dbg !5686
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5687
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5687
  store i32 1, i32* %tmp8.i78, align 4, !dbg !5687
  %39 = load i32, i32* %tmp8.i78, align 4, !dbg !5687
  %40 = load i64, i64* %flags.addr.i76, align 8, !dbg !5688
  call void @arch_local_irq_restore(i64 %40) #10, !dbg !5688
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5689, !srcloc !4624
  %41 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i75, align 8, !dbg !5690
  %42 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %41, i32 0, i32 0, !dbg !5690
  %rlock.i79 = bitcast %union.anon.3* %42 to %struct.raw_spinlock*, !dbg !5690
  %43 = load i32, i32* %ret, align 4, !dbg !5691
  %tobool61 = icmp ne i32 %43, 0, !dbg !5691
  br i1 %tobool61, label %if.end65, label %if.then62, !dbg !5693

if.then62:                                        ; preds = %do.end58
  %44 = load %struct.media_device*, %struct.media_device** %mdev, align 8, !dbg !5694
  %ops63 = getelementptr inbounds %struct.media_device, %struct.media_device* %44, i32 0, i32 21, !dbg !5695
  %45 = load %struct.media_device_ops*, %struct.media_device_ops** %ops63, align 8, !dbg !5695
  %req_queue = getelementptr inbounds %struct.media_device_ops, %struct.media_device_ops* %45, i32 0, i32 4, !dbg !5696
  %req_queue64 = bitcast {}** %req_queue to void (%struct.media_request*)**, !dbg !5696
  %46 = load void (%struct.media_request*)*, void (%struct.media_request*)** %req_queue64, align 8, !dbg !5696
  %47 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5697
  call void %46(%struct.media_request* %47) #9, !dbg !5694
  br label %if.end65, !dbg !5694

if.end65:                                         ; preds = %if.then62, %do.end58
  %48 = load %struct.media_device*, %struct.media_device** %mdev, align 8, !dbg !5698
  %req_queue_mutex66 = getelementptr inbounds %struct.media_device, %struct.media_device* %48, i32 0, i32 22, !dbg !5699
  call void @mutex_unlock(%struct.mutex* %req_queue_mutex66) #9, !dbg !5700
  %49 = load i32, i32* %ret, align 4, !dbg !5701
  %tobool67 = icmp ne i32 %49, 0, !dbg !5701
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !5703

if.then68:                                        ; preds = %if.end65
  %50 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5704
  call void @media_request_put(%struct.media_request* %50) #9, !dbg !5706
  br label %if.end69, !dbg !5707

if.end69:                                         ; preds = %if.then68, %if.end65
  %51 = load i32, i32* %ret, align 4, !dbg !5708
  %conv70 = sext i32 %51 to i64, !dbg !5708
  store i64 %conv70, i64* %retval, align 8, !dbg !5709
  br label %return, !dbg !5709

return:                                           ; preds = %if.end69, %if.then28
  %52 = load i64, i64* %retval, align 8, !dbg !5710
  ret i64 %52, !dbg !5710
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @media_request_ioctl_reinit(%struct.media_request* %req) #0 !dbg !5711 {
entry:
  %lock.addr.i77 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i77, metadata !4030, metadata !DIExpression()), !dbg !5712
  %lock.addr.i72 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i72, metadata !4502, metadata !DIExpression()), !dbg !5719
  %flags.addr.i73 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i73, metadata !4508, metadata !DIExpression()), !dbg !5721
  %tmp.i74 = alloca i32, align 4
  %tmp8.i75 = alloca i32, align 4
  %lock.addr.i67 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i67, metadata !4502, metadata !DIExpression()), !dbg !5722
  %flags.addr.i68 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i68, metadata !4508, metadata !DIExpression()), !dbg !5726
  %tmp.i69 = alloca i32, align 4
  %tmp8.i70 = alloca i32, align 4
  %lock.addr.i62 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i62, metadata !4502, metadata !DIExpression()), !dbg !5727
  %flags.addr.i63 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i63, metadata !4508, metadata !DIExpression()), !dbg !5731
  %tmp.i64 = alloca i32, align 4
  %tmp8.i65 = alloca i32, align 4
  %lock.addr.i60 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i60, metadata !4502, metadata !DIExpression()), !dbg !5732
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4508, metadata !DIExpression()), !dbg !5734
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4030, metadata !DIExpression()), !dbg !5735
  %retval = alloca i64, align 8
  %req.addr = alloca %struct.media_request*, align 8
  %mdev = alloca %struct.media_device*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__dummy33 = alloca i64, align 8
  %__dummy234 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  %__dummy41 = alloca i64, align 8
  %__dummy242 = alloca i64, align 8
  %tmp45 = alloca i32, align 4
  store %struct.media_request* %req, %struct.media_request** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.media_request** %req.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata %struct.media_device** %mdev, metadata !5744, metadata !DIExpression()), !dbg !5745
  %0 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5746
  %mdev1 = getelementptr inbounds %struct.media_request, %struct.media_request* %0, i32 0, i32 0, !dbg !5747
  %1 = load %struct.media_device*, %struct.media_device** %mdev1, align 8, !dbg !5747
  store %struct.media_device* %1, %struct.media_device** %mdev, align 8, !dbg !5745
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5748, metadata !DIExpression()), !dbg !5749
  br label %do.body, !dbg !5750

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5751

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5752, metadata !DIExpression()), !dbg !5754
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5755, metadata !DIExpression()), !dbg !5754
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5754
  %conv = zext i1 %cmp to i32, !dbg !5754
  store i32 1, i32* %tmp, align 4, !dbg !5754
  %2 = load i32, i32* %tmp, align 4, !dbg !5754
  br label %do.body3, !dbg !5756

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5757

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5758

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5760, metadata !DIExpression()), !dbg !5763
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5764, metadata !DIExpression()), !dbg !5763
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5763
  %conv9 = zext i1 %cmp8 to i32, !dbg !5763
  store i32 1, i32* %tmp10, align 4, !dbg !5763
  %3 = load i32, i32* %tmp10, align 4, !dbg !5763
  %call = call i64 @arch_local_irq_save() #9, !dbg !5765
  store i64 %call, i64* %flags, align 8, !dbg !5765
  br label %do.end, !dbg !5765

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5758

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5757

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5766, !srcloc !5767
  br label %do.body13, !dbg !5766

do.body13:                                        ; preds = %do.body12
  %4 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5768
  %lock = getelementptr inbounds %struct.media_request, %struct.media_request* %4, i32 0, i32 9, !dbg !5768
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5769
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !5770
  %rlock.i = bitcast %union.anon.3* %6 to %struct.raw_spinlock*, !dbg !5770
  br label %do.end15, !dbg !5768

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5766

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5757

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5756

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5751

do.end19:                                         ; preds = %do.end18
  %7 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5771
  %state = getelementptr inbounds %struct.media_request, %struct.media_request* %7, i32 0, i32 3, !dbg !5772
  %8 = load i32, i32* %state, align 8, !dbg !5772
  %cmp20 = icmp ne i32 %8, 0, !dbg !5773
  br i1 %cmp20, label %land.lhs.true, label %if.end, !dbg !5774

land.lhs.true:                                    ; preds = %do.end19
  %9 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5775
  %state22 = getelementptr inbounds %struct.media_request, %struct.media_request* %9, i32 0, i32 3, !dbg !5776
  %10 = load i32, i32* %state22, align 8, !dbg !5776
  %cmp23 = icmp ne i32 %10, 3, !dbg !5777
  br i1 %cmp23, label %if.then, label %if.end, !dbg !5778

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5779
  %lock25 = getelementptr inbounds %struct.media_request, %struct.media_request* %11, i32 0, i32 9, !dbg !5780
  %12 = load i64, i64* %flags, align 8, !dbg !5781
  store %struct.spinlock* %lock25, %struct.spinlock** %lock.addr.i62, align 8
  store i64 %12, i64* %flags.addr.i63, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5782
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5782
  store i32 1, i32* %tmp.i64, align 4, !dbg !5782
  %13 = load i32, i32* %tmp.i64, align 4, !dbg !5782
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5783
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5783
  store i32 1, i32* %tmp8.i65, align 4, !dbg !5783
  %14 = load i32, i32* %tmp8.i65, align 4, !dbg !5783
  %15 = load i64, i64* %flags.addr.i63, align 8, !dbg !5784
  call void @arch_local_irq_restore(i64 %15) #10, !dbg !5784
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5785, !srcloc !4624
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i62, align 8, !dbg !5786
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !5786
  %rlock.i66 = bitcast %union.anon.3* %17 to %struct.raw_spinlock*, !dbg !5786
  store i64 -16, i64* %retval, align 8, !dbg !5787
  br label %return, !dbg !5787

if.end:                                           ; preds = %land.lhs.true, %do.end19
  %18 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5788
  %access_count = getelementptr inbounds %struct.media_request, %struct.media_request* %18, i32 0, i32 5, !dbg !5789
  %19 = load i32, i32* %access_count, align 8, !dbg !5789
  %tobool = icmp ne i32 %19, 0, !dbg !5788
  br i1 %tobool, label %if.then26, label %if.end28, !dbg !5790

if.then26:                                        ; preds = %if.end
  %20 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5791
  %lock27 = getelementptr inbounds %struct.media_request, %struct.media_request* %20, i32 0, i32 9, !dbg !5792
  %21 = load i64, i64* %flags, align 8, !dbg !5793
  store %struct.spinlock* %lock27, %struct.spinlock** %lock.addr.i67, align 8
  store i64 %21, i64* %flags.addr.i68, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5794
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5794
  store i32 1, i32* %tmp.i69, align 4, !dbg !5794
  %22 = load i32, i32* %tmp.i69, align 4, !dbg !5794
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5795
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5795
  store i32 1, i32* %tmp8.i70, align 4, !dbg !5795
  %23 = load i32, i32* %tmp8.i70, align 4, !dbg !5795
  %24 = load i64, i64* %flags.addr.i68, align 8, !dbg !5796
  call void @arch_local_irq_restore(i64 %24) #10, !dbg !5796
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5797, !srcloc !4624
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i67, align 8, !dbg !5798
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !5798
  %rlock.i71 = bitcast %union.anon.3* %26 to %struct.raw_spinlock*, !dbg !5798
  store i64 -16, i64* %retval, align 8, !dbg !5799
  br label %return, !dbg !5799

if.end28:                                         ; preds = %if.end
  %27 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5800
  %state29 = getelementptr inbounds %struct.media_request, %struct.media_request* %27, i32 0, i32 3, !dbg !5801
  store i32 4, i32* %state29, align 8, !dbg !5802
  %28 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5803
  %lock30 = getelementptr inbounds %struct.media_request, %struct.media_request* %28, i32 0, i32 9, !dbg !5804
  %29 = load i64, i64* %flags, align 8, !dbg !5805
  store %struct.spinlock* %lock30, %struct.spinlock** %lock.addr.i72, align 8
  store i64 %29, i64* %flags.addr.i73, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5806
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5806
  store i32 1, i32* %tmp.i74, align 4, !dbg !5806
  %30 = load i32, i32* %tmp.i74, align 4, !dbg !5806
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5807
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5807
  store i32 1, i32* %tmp8.i75, align 4, !dbg !5807
  %31 = load i32, i32* %tmp8.i75, align 4, !dbg !5807
  %32 = load i64, i64* %flags.addr.i73, align 8, !dbg !5808
  call void @arch_local_irq_restore(i64 %32) #10, !dbg !5808
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5809, !srcloc !4624
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i72, align 8, !dbg !5810
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !5810
  %rlock.i76 = bitcast %union.anon.3* %34 to %struct.raw_spinlock*, !dbg !5810
  %35 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5811
  call void @media_request_clean(%struct.media_request* %35) #9, !dbg !5812
  br label %do.body31, !dbg !5813

do.body31:                                        ; preds = %if.end28
  br label %do.body32, !dbg !5814

do.body32:                                        ; preds = %do.body31
  call void @llvm.dbg.declare(metadata i64* %__dummy33, metadata !5815, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.declare(metadata i64* %__dummy234, metadata !5818, metadata !DIExpression()), !dbg !5817
  %cmp35 = icmp eq i64* %__dummy33, %__dummy234, !dbg !5817
  %conv36 = zext i1 %cmp35 to i32, !dbg !5817
  store i32 1, i32* %tmp37, align 4, !dbg !5817
  %36 = load i32, i32* %tmp37, align 4, !dbg !5817
  br label %do.body38, !dbg !5819

do.body38:                                        ; preds = %do.body32
  br label %do.body39, !dbg !5820

do.body39:                                        ; preds = %do.body38
  br label %do.body40, !dbg !5821

do.body40:                                        ; preds = %do.body39
  call void @llvm.dbg.declare(metadata i64* %__dummy41, metadata !5823, metadata !DIExpression()), !dbg !5826
  call void @llvm.dbg.declare(metadata i64* %__dummy242, metadata !5827, metadata !DIExpression()), !dbg !5826
  %cmp43 = icmp eq i64* %__dummy41, %__dummy242, !dbg !5826
  %conv44 = zext i1 %cmp43 to i32, !dbg !5826
  store i32 1, i32* %tmp45, align 4, !dbg !5826
  %37 = load i32, i32* %tmp45, align 4, !dbg !5826
  %call46 = call i64 @arch_local_irq_save() #9, !dbg !5828
  store i64 %call46, i64* %flags, align 8, !dbg !5828
  br label %do.end47, !dbg !5828

do.end47:                                         ; preds = %do.body40
  br label %do.end48, !dbg !5821

do.end48:                                         ; preds = %do.end47
  br label %do.body49, !dbg !5820

do.body49:                                        ; preds = %do.end48
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5829, !srcloc !5830
  br label %do.body50, !dbg !5829

do.body50:                                        ; preds = %do.body49
  %38 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5831
  %lock51 = getelementptr inbounds %struct.media_request, %struct.media_request* %38, i32 0, i32 9, !dbg !5831
  store %struct.spinlock* %lock51, %struct.spinlock** %lock.addr.i77, align 8
  %39 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i77, align 8, !dbg !5832
  %40 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %39, i32 0, i32 0, !dbg !5833
  %rlock.i78 = bitcast %union.anon.3* %40 to %struct.raw_spinlock*, !dbg !5833
  br label %do.end53, !dbg !5831

do.end53:                                         ; preds = %do.body50
  br label %do.end54, !dbg !5829

do.end54:                                         ; preds = %do.end53
  br label %do.end55, !dbg !5820

do.end55:                                         ; preds = %do.end54
  br label %do.end56, !dbg !5819

do.end56:                                         ; preds = %do.end55
  br label %do.end57, !dbg !5814

do.end57:                                         ; preds = %do.end56
  %41 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5834
  %state58 = getelementptr inbounds %struct.media_request, %struct.media_request* %41, i32 0, i32 3, !dbg !5835
  store i32 0, i32* %state58, align 8, !dbg !5836
  %42 = load %struct.media_request*, %struct.media_request** %req.addr, align 8, !dbg !5837
  %lock59 = getelementptr inbounds %struct.media_request, %struct.media_request* %42, i32 0, i32 9, !dbg !5838
  %43 = load i64, i64* %flags, align 8, !dbg !5839
  store %struct.spinlock* %lock59, %struct.spinlock** %lock.addr.i60, align 8
  store i64 %43, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !196, metadata !4609, metadata !DIExpression()) #8, !dbg !5840
  call void @llvm.dbg.declare(metadata !196, metadata !4613, metadata !DIExpression()) #8, !dbg !5840
  store i32 1, i32* %tmp.i, align 4, !dbg !5840
  %44 = load i32, i32* %tmp.i, align 4, !dbg !5840
  call void @llvm.dbg.declare(metadata !196, metadata !4614, metadata !DIExpression()) #8, !dbg !5841
  call void @llvm.dbg.declare(metadata !196, metadata !4620, metadata !DIExpression()) #8, !dbg !5841
  store i32 1, i32* %tmp8.i, align 4, !dbg !5841
  %45 = load i32, i32* %tmp8.i, align 4, !dbg !5841
  %46 = load i64, i64* %flags.addr.i, align 8, !dbg !5842
  call void @arch_local_irq_restore(i64 %46) #10, !dbg !5842
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5843, !srcloc !4624
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i60, align 8, !dbg !5844
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !5844
  %rlock.i61 = bitcast %union.anon.3* %48 to %struct.raw_spinlock*, !dbg !5844
  store i64 0, i64* %retval, align 8, !dbg !5845
  br label %return, !dbg !5845

return:                                           ; preds = %do.end57, %if.then26, %if.then
  %49 = load i64, i64* %retval, align 8, !dbg !5846
  ret i64 %49, !dbg !5846
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5847 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5848, metadata !DIExpression()), !dbg !5849
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5850
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5851
  call void @refcount_inc(%struct.refcount_struct* %refcount) #9, !dbg !5852
  ret void, !dbg !5853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5854 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5857, metadata !DIExpression()), !dbg !5858
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5859
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5860
  ret void, !dbg !5861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5862 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5869
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5870
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5871
  ret void, !dbg !5872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5873 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5876, metadata !DIExpression()), !dbg !5878
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5882, metadata !DIExpression()), !dbg !5883
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5884, metadata !DIExpression()), !dbg !5886
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4016, metadata !DIExpression()), !dbg !5887
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4026, metadata !DIExpression()), !dbg !5889
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5890, metadata !DIExpression()), !dbg !5891
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5892, metadata !DIExpression()), !dbg !5893
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5896, metadata !DIExpression()), !dbg !5897
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5898, metadata !DIExpression()), !dbg !5899
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5900, metadata !DIExpression()), !dbg !5901
  %0 = load i32, i32* %i.addr, align 4, !dbg !5902
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5903
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5904
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5905
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5905
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5906
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5907
  %conv.i.i = trunc i64 %5 to i32, !dbg !5907
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !5908
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5909
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5909
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #10, !dbg !5909
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5910
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5911
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5886
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5886
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5886
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5886
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5886
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #8, !dbg !5886, !srcloc !5912
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5886
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5886
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5886
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5886
  store i32 %15, i32* %old, align 4, !dbg !5901
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5913
  %tobool = icmp ne i32* %16, null, !dbg !5913
  br i1 %tobool, label %if.then, label %if.end, !dbg !5915

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5916
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5917
  store i32 %17, i32* %18, align 4, !dbg !5918
  br label %if.end, !dbg !5919

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5920
  %tobool1 = icmp ne i32 %19, 0, !dbg !5920
  %lnot = xor i1 %tobool1, true, !dbg !5920
  %lnot2 = xor i1 %lnot, true, !dbg !5920
  %lnot3 = xor i1 %lnot2, true, !dbg !5920
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5920
  %conv = sext i32 %lnot.ext to i64, !dbg !5920
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5920
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5922

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5923
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !5924
  br label %if.end17, !dbg !5924

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5925
  %cmp = icmp slt i32 %21, 0, !dbg !5925
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5925

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5925
  %23 = load i32, i32* %i.addr, align 4, !dbg !5925
  %add = add i32 %22, %23, !dbg !5925
  %cmp7 = icmp slt i32 %add, 0, !dbg !5925
  br label %lor.end, !dbg !5925

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5925
  %lnot11 = xor i1 %lnot9, true, !dbg !5925
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5925
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5925
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5925
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5927

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5928
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !5929
  br label %if.end16, !dbg !5929

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5930
}

; Function Attrs: noredzone
declare dso_local void @fput(%struct.file*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5931 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5935, metadata !DIExpression()), !dbg !5940
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5942, metadata !DIExpression()), !dbg !5943
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  %0 = load i64, i64* %size.addr, align 8, !dbg !5946
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5948
  br i1 %1, label %if.then, label %if.end447, !dbg !5949

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5950
  %tobool = icmp ne i64 %2, 0, !dbg !5950
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5953

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5954
  br label %return, !dbg !5954

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5955
  %cmp = icmp ult i64 %3, 4096, !dbg !5957
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5958

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5959
  br label %return, !dbg !5959

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub = sub i64 %4, 1, !dbg !5960
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5960
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5960

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub4 = sub i64 %6, 1, !dbg !5960
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5960
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5960

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub6 = sub i64 %8, 1, !dbg !5960
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5960
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5960

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5960

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub9 = sub i64 %9, 1, !dbg !5960
  %and = and i64 %sub9, -9223372036854775808, !dbg !5960
  %tobool10 = icmp ne i64 %and, 0, !dbg !5960
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5960

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5960

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub13 = sub i64 %10, 1, !dbg !5960
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5960
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5960
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5960

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5960

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub18 = sub i64 %11, 1, !dbg !5960
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5960
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5960
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5960

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5960

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub23 = sub i64 %12, 1, !dbg !5960
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5960
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5960
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5960

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5960

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub28 = sub i64 %13, 1, !dbg !5960
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5960
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5960
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5960

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5960

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub33 = sub i64 %14, 1, !dbg !5960
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5960
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5960
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5960

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5960

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub38 = sub i64 %15, 1, !dbg !5960
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5960
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5960
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5960

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5960

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub43 = sub i64 %16, 1, !dbg !5960
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5960
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5960
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5960

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5960

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub48 = sub i64 %17, 1, !dbg !5960
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5960
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5960
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5960

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5960

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub53 = sub i64 %18, 1, !dbg !5960
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5960
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5960
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5960

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5960

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub58 = sub i64 %19, 1, !dbg !5960
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5960
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5960
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5960

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5960

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub63 = sub i64 %20, 1, !dbg !5960
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5960
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5960
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5960

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5960

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub68 = sub i64 %21, 1, !dbg !5960
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5960
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5960
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5960

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5960

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub73 = sub i64 %22, 1, !dbg !5960
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5960
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5960
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5960

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5960

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub78 = sub i64 %23, 1, !dbg !5960
  %and79 = and i64 %sub78, 562949953421312, !dbg !5960
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5960
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5960

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5960

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub83 = sub i64 %24, 1, !dbg !5960
  %and84 = and i64 %sub83, 281474976710656, !dbg !5960
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5960
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5960

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5960

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub88 = sub i64 %25, 1, !dbg !5960
  %and89 = and i64 %sub88, 140737488355328, !dbg !5960
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5960
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5960

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5960

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub93 = sub i64 %26, 1, !dbg !5960
  %and94 = and i64 %sub93, 70368744177664, !dbg !5960
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5960
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5960

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5960

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub98 = sub i64 %27, 1, !dbg !5960
  %and99 = and i64 %sub98, 35184372088832, !dbg !5960
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5960
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5960

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5960

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub103 = sub i64 %28, 1, !dbg !5960
  %and104 = and i64 %sub103, 17592186044416, !dbg !5960
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5960
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5960

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5960

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub108 = sub i64 %29, 1, !dbg !5960
  %and109 = and i64 %sub108, 8796093022208, !dbg !5960
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5960
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5960

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5960

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub113 = sub i64 %30, 1, !dbg !5960
  %and114 = and i64 %sub113, 4398046511104, !dbg !5960
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5960
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5960

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5960

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub118 = sub i64 %31, 1, !dbg !5960
  %and119 = and i64 %sub118, 2199023255552, !dbg !5960
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5960
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5960

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5960

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub123 = sub i64 %32, 1, !dbg !5960
  %and124 = and i64 %sub123, 1099511627776, !dbg !5960
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5960
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5960

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5960

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub128 = sub i64 %33, 1, !dbg !5960
  %and129 = and i64 %sub128, 549755813888, !dbg !5960
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5960
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5960

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5960

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub133 = sub i64 %34, 1, !dbg !5960
  %and134 = and i64 %sub133, 274877906944, !dbg !5960
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5960
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5960

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5960

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub138 = sub i64 %35, 1, !dbg !5960
  %and139 = and i64 %sub138, 137438953472, !dbg !5960
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5960
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5960

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5960

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub143 = sub i64 %36, 1, !dbg !5960
  %and144 = and i64 %sub143, 68719476736, !dbg !5960
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5960
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5960

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5960

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub148 = sub i64 %37, 1, !dbg !5960
  %and149 = and i64 %sub148, 34359738368, !dbg !5960
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5960
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5960

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5960

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub153 = sub i64 %38, 1, !dbg !5960
  %and154 = and i64 %sub153, 17179869184, !dbg !5960
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5960
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5960

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5960

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub158 = sub i64 %39, 1, !dbg !5960
  %and159 = and i64 %sub158, 8589934592, !dbg !5960
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5960
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5960

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5960

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub163 = sub i64 %40, 1, !dbg !5960
  %and164 = and i64 %sub163, 4294967296, !dbg !5960
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5960
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5960

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5960

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub168 = sub i64 %41, 1, !dbg !5960
  %and169 = and i64 %sub168, 2147483648, !dbg !5960
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5960
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5960

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5960

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub173 = sub i64 %42, 1, !dbg !5960
  %and174 = and i64 %sub173, 1073741824, !dbg !5960
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5960
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5960

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5960

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub178 = sub i64 %43, 1, !dbg !5960
  %and179 = and i64 %sub178, 536870912, !dbg !5960
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5960
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5960

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5960

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub183 = sub i64 %44, 1, !dbg !5960
  %and184 = and i64 %sub183, 268435456, !dbg !5960
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5960
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5960

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5960

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub188 = sub i64 %45, 1, !dbg !5960
  %and189 = and i64 %sub188, 134217728, !dbg !5960
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5960
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5960

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5960

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub193 = sub i64 %46, 1, !dbg !5960
  %and194 = and i64 %sub193, 67108864, !dbg !5960
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5960
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5960

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5960

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub198 = sub i64 %47, 1, !dbg !5960
  %and199 = and i64 %sub198, 33554432, !dbg !5960
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5960
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5960

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5960

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub203 = sub i64 %48, 1, !dbg !5960
  %and204 = and i64 %sub203, 16777216, !dbg !5960
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5960
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5960

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5960

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub208 = sub i64 %49, 1, !dbg !5960
  %and209 = and i64 %sub208, 8388608, !dbg !5960
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5960
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5960

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5960

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub213 = sub i64 %50, 1, !dbg !5960
  %and214 = and i64 %sub213, 4194304, !dbg !5960
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5960
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5960

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5960

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub218 = sub i64 %51, 1, !dbg !5960
  %and219 = and i64 %sub218, 2097152, !dbg !5960
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5960
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5960

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5960

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub223 = sub i64 %52, 1, !dbg !5960
  %and224 = and i64 %sub223, 1048576, !dbg !5960
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5960
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5960

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5960

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub228 = sub i64 %53, 1, !dbg !5960
  %and229 = and i64 %sub228, 524288, !dbg !5960
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5960
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5960

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5960

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub233 = sub i64 %54, 1, !dbg !5960
  %and234 = and i64 %sub233, 262144, !dbg !5960
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5960
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5960

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5960

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub238 = sub i64 %55, 1, !dbg !5960
  %and239 = and i64 %sub238, 131072, !dbg !5960
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5960
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5960

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5960

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub243 = sub i64 %56, 1, !dbg !5960
  %and244 = and i64 %sub243, 65536, !dbg !5960
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5960
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5960

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5960

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub248 = sub i64 %57, 1, !dbg !5960
  %and249 = and i64 %sub248, 32768, !dbg !5960
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5960
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5960

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5960

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub253 = sub i64 %58, 1, !dbg !5960
  %and254 = and i64 %sub253, 16384, !dbg !5960
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5960
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5960

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5960

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub258 = sub i64 %59, 1, !dbg !5960
  %and259 = and i64 %sub258, 8192, !dbg !5960
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5960
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5960

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5960

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub263 = sub i64 %60, 1, !dbg !5960
  %and264 = and i64 %sub263, 4096, !dbg !5960
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5960
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5960

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5960

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub268 = sub i64 %61, 1, !dbg !5960
  %and269 = and i64 %sub268, 2048, !dbg !5960
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5960
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5960

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5960

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub273 = sub i64 %62, 1, !dbg !5960
  %and274 = and i64 %sub273, 1024, !dbg !5960
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5960
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5960

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5960

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub278 = sub i64 %63, 1, !dbg !5960
  %and279 = and i64 %sub278, 512, !dbg !5960
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5960
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5960

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5960

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub283 = sub i64 %64, 1, !dbg !5960
  %and284 = and i64 %sub283, 256, !dbg !5960
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5960
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5960

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5960

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub288 = sub i64 %65, 1, !dbg !5960
  %and289 = and i64 %sub288, 128, !dbg !5960
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5960
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5960

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5960

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub293 = sub i64 %66, 1, !dbg !5960
  %and294 = and i64 %sub293, 64, !dbg !5960
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5960
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5960

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5960

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub298 = sub i64 %67, 1, !dbg !5960
  %and299 = and i64 %sub298, 32, !dbg !5960
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5960
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5960

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5960

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub303 = sub i64 %68, 1, !dbg !5960
  %and304 = and i64 %sub303, 16, !dbg !5960
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5960
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5960

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5960

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub308 = sub i64 %69, 1, !dbg !5960
  %and309 = and i64 %sub308, 8, !dbg !5960
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5960
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5960

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5960

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub313 = sub i64 %70, 1, !dbg !5960
  %and314 = and i64 %sub313, 4, !dbg !5960
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5960
  %71 = zext i1 %tobool315 to i64, !dbg !5960
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5960
  br label %cond.end, !dbg !5960

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5960
  br label %cond.end317, !dbg !5960

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5960
  br label %cond.end319, !dbg !5960

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5960
  br label %cond.end321, !dbg !5960

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5960
  br label %cond.end323, !dbg !5960

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5960
  br label %cond.end325, !dbg !5960

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5960
  br label %cond.end327, !dbg !5960

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5960
  br label %cond.end329, !dbg !5960

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5960
  br label %cond.end331, !dbg !5960

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5960
  br label %cond.end333, !dbg !5960

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5960
  br label %cond.end335, !dbg !5960

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5960
  br label %cond.end337, !dbg !5960

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5960
  br label %cond.end339, !dbg !5960

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5960
  br label %cond.end341, !dbg !5960

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5960
  br label %cond.end343, !dbg !5960

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5960
  br label %cond.end345, !dbg !5960

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5960
  br label %cond.end347, !dbg !5960

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5960
  br label %cond.end349, !dbg !5960

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5960
  br label %cond.end351, !dbg !5960

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5960
  br label %cond.end353, !dbg !5960

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5960
  br label %cond.end355, !dbg !5960

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5960
  br label %cond.end357, !dbg !5960

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5960
  br label %cond.end359, !dbg !5960

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5960
  br label %cond.end361, !dbg !5960

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5960
  br label %cond.end363, !dbg !5960

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5960
  br label %cond.end365, !dbg !5960

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5960
  br label %cond.end367, !dbg !5960

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5960
  br label %cond.end369, !dbg !5960

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5960
  br label %cond.end371, !dbg !5960

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5960
  br label %cond.end373, !dbg !5960

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5960
  br label %cond.end375, !dbg !5960

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5960
  br label %cond.end377, !dbg !5960

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5960
  br label %cond.end379, !dbg !5960

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5960
  br label %cond.end381, !dbg !5960

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5960
  br label %cond.end383, !dbg !5960

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5960
  br label %cond.end385, !dbg !5960

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5960
  br label %cond.end387, !dbg !5960

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5960
  br label %cond.end389, !dbg !5960

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5960
  br label %cond.end391, !dbg !5960

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5960
  br label %cond.end393, !dbg !5960

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5960
  br label %cond.end395, !dbg !5960

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5960
  br label %cond.end397, !dbg !5960

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5960
  br label %cond.end399, !dbg !5960

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5960
  br label %cond.end401, !dbg !5960

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5960
  br label %cond.end403, !dbg !5960

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5960
  br label %cond.end405, !dbg !5960

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5960
  br label %cond.end407, !dbg !5960

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5960
  br label %cond.end409, !dbg !5960

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5960
  br label %cond.end411, !dbg !5960

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5960
  br label %cond.end413, !dbg !5960

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5960
  br label %cond.end415, !dbg !5960

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5960
  br label %cond.end417, !dbg !5960

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5960
  br label %cond.end419, !dbg !5960

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5960
  br label %cond.end421, !dbg !5960

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5960
  br label %cond.end423, !dbg !5960

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5960
  br label %cond.end425, !dbg !5960

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5960
  br label %cond.end427, !dbg !5960

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5960
  br label %cond.end429, !dbg !5960

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5960
  br label %cond.end431, !dbg !5960

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5960
  br label %cond.end433, !dbg !5960

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5960
  br label %cond.end435, !dbg !5960

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5960
  br label %cond.end437, !dbg !5960

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5960
  br label %cond.end440, !dbg !5960

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5960

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5960
  br label %cond.end444, !dbg !5960

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5960
  %sub443 = sub i64 %72, 1, !dbg !5960
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5960
  br label %cond.end444, !dbg !5960

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5960
  %sub446 = sub i32 %cond445, 12, !dbg !5961
  %add = add i32 %sub446, 1, !dbg !5962
  store i32 %add, i32* %retval, align 4, !dbg !5963
  br label %return, !dbg !5963

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5964
  %dec = add i64 %73, -1, !dbg !5964
  store i64 %dec, i64* %size.addr, align 8, !dbg !5964
  %74 = load i64, i64* %size.addr, align 8, !dbg !5965
  %shr = lshr i64 %74, 12, !dbg !5965
  store i64 %shr, i64* %size.addr, align 8, !dbg !5965
  %75 = load i64, i64* %size.addr, align 8, !dbg !5966
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5943
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5967
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5968
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !5967, !srcloc !5969
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5967
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5970
  %add.i = add i32 %79, 1, !dbg !5971
  store i32 %add.i, i32* %retval, align 4, !dbg !5972
  br label %return, !dbg !5972

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5973
  ret i32 %80, !dbg !5973
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5974 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5935, metadata !DIExpression()), !dbg !5978
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5942, metadata !DIExpression()), !dbg !5980
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  %0 = load i64, i64* %n.addr, align 8, !dbg !5983
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5980
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5984
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5985
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !5984, !srcloc !5969
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5984
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5986
  %add.i = add i32 %4, 1, !dbg !5987
  %sub = sub i32 %add.i, 1, !dbg !5988
  ret i32 %sub, !dbg !5989
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5990 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5994, metadata !DIExpression()), !dbg !5995
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5996, metadata !DIExpression()), !dbg !5997
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5998, metadata !DIExpression()), !dbg !5999
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6002
  ret i8* %0, !dbg !6003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !6004 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6007, metadata !DIExpression()), !dbg !6011
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6015, metadata !DIExpression()), !dbg !6016
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6017, metadata !DIExpression()), !dbg !6019
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6021, metadata !DIExpression()), !dbg !6022
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6023, metadata !DIExpression()), !dbg !6024
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6025, metadata !DIExpression()), !dbg !6026
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !6029, metadata !DIExpression()), !dbg !6030
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6031
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6032
  %1 = load i32, i32* %n.addr, align 4, !dbg !6033
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6034
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6034
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6035
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6036
  %conv.i.i = trunc i64 %5 to i32, !dbg !6036
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #10, !dbg !6037
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6038
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6038
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #10, !dbg !6038
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6039
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !6040
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6041
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6041
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !6041
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !6041
  ret void, !dbg !6043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6044 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6045, metadata !DIExpression()), !dbg !6047
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6048, metadata !DIExpression()), !dbg !6047
  %0 = load i64, i64* %__edi, align 8, !dbg !6047
  store i64 %0, i64* %__edi, align 8, !dbg !6047
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6049, metadata !DIExpression()), !dbg !6047
  %1 = load i64, i64* %__esi, align 8, !dbg !6047
  store i64 %1, i64* %__esi, align 8, !dbg !6047
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6050, metadata !DIExpression()), !dbg !6047
  %2 = load i64, i64* %__edx, align 8, !dbg !6047
  store i64 %2, i64* %__edx, align 8, !dbg !6047
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6051, metadata !DIExpression()), !dbg !6047
  %3 = load i64, i64* %__ecx, align 8, !dbg !6047
  store i64 %3, i64* %__ecx, align 8, !dbg !6047
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6052, metadata !DIExpression()), !dbg !6047
  %4 = load i64, i64* %__eax, align 8, !dbg !6047
  store i64 %4, i64* %__eax, align 8, !dbg !6047
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6047
  %6 = call i64 @llvm.read_register.i64(metadata !3822), !dbg !6053
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #8, !dbg !6053, !srcloc !6056
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6053
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6053
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6053
  call void @llvm.write_register.i64(metadata !3822, i64 %asmresult1), !dbg !6053
  %8 = load i64, i64* %__eax, align 8, !dbg !6053
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6057, metadata !DIExpression()), !dbg !6059
  store i64 -1, i64* %__mask, align 8, !dbg !6059
  %9 = load i64, i64* %__mask, align 8, !dbg !6059
  store i64 %9, i64* %tmp, align 8, !dbg !6059
  %10 = load i64, i64* %tmp, align 8, !dbg !6059
  %and = and i64 %8, %10, !dbg !6053
  store i64 %and, i64* %__ret, align 8, !dbg !6053
  %11 = load i64, i64* %__ret, align 8, !dbg !6047
  store i64 %11, i64* %tmp2, align 8, !dbg !6060
  %12 = load i64, i64* %tmp2, align 8, !dbg !6047
  ret i64 %12, !dbg !6061
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6062 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6063, metadata !DIExpression()), !dbg !6065
  %0 = load i64, i64* %__edi, align 8, !dbg !6065
  store i64 %0, i64* %__edi, align 8, !dbg !6065
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6066, metadata !DIExpression()), !dbg !6065
  %1 = load i64, i64* %__esi, align 8, !dbg !6065
  store i64 %1, i64* %__esi, align 8, !dbg !6065
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6067, metadata !DIExpression()), !dbg !6065
  %2 = load i64, i64* %__edx, align 8, !dbg !6065
  store i64 %2, i64* %__edx, align 8, !dbg !6065
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6068, metadata !DIExpression()), !dbg !6065
  %3 = load i64, i64* %__ecx, align 8, !dbg !6065
  store i64 %3, i64* %__ecx, align 8, !dbg !6065
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6069, metadata !DIExpression()), !dbg !6065
  %4 = load i64, i64* %__eax, align 8, !dbg !6065
  store i64 %4, i64* %__eax, align 8, !dbg !6065
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6065
  %6 = call i64 @llvm.read_register.i64(metadata !3822), !dbg !6065
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #8, !dbg !6065, !srcloc !6070
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6065
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6065
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6065
  call void @llvm.write_register.i64(metadata !3822, i64 %asmresult1), !dbg !6065
  ret void, !dbg !6071
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6072 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6075, metadata !DIExpression()), !dbg !6076
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6077, metadata !DIExpression()), !dbg !6079
  %0 = load i64, i64* %__edi, align 8, !dbg !6079
  store i64 %0, i64* %__edi, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6080, metadata !DIExpression()), !dbg !6079
  %1 = load i64, i64* %__esi, align 8, !dbg !6079
  store i64 %1, i64* %__esi, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6081, metadata !DIExpression()), !dbg !6079
  %2 = load i64, i64* %__edx, align 8, !dbg !6079
  store i64 %2, i64* %__edx, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6082, metadata !DIExpression()), !dbg !6079
  %3 = load i64, i64* %__ecx, align 8, !dbg !6079
  store i64 %3, i64* %__ecx, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6083, metadata !DIExpression()), !dbg !6079
  %4 = load i64, i64* %__eax, align 8, !dbg !6079
  store i64 %4, i64* %__eax, align 8, !dbg !6079
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6079
  %6 = call i64 @llvm.read_register.i64(metadata !3822), !dbg !6079
  %7 = load i64, i64* %f.addr, align 8, !dbg !6079
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #8, !dbg !6079, !srcloc !6084
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6079
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6079
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6079
  call void @llvm.write_register.i64(metadata !3822, i64 %asmresult1), !dbg !6079
  ret void, !dbg !6085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6086 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6091, metadata !DIExpression()), !dbg !6092
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6095
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6097
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6098
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !6099
  br i1 %call, label %if.end, label %if.then, !dbg !6100

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6101

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6102
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6103
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6104
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6105
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6106
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6107
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6108
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6109
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6110
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6111
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6112
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6113
  br label %do.body, !dbg !6114

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6115

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6117

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6115

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6119
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6119
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6119
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6119
  br label %do.end7, !dbg !6119

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6115

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6122 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6125, metadata !DIExpression()), !dbg !6126
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6127, metadata !DIExpression()), !dbg !6128
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  ret i1 true, !dbg !6131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6132 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6133, metadata !DIExpression()), !dbg !6134
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6135
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !6137
  br i1 %call, label %if.end, label %if.then, !dbg !6138

if.then:                                          ; preds = %entry
  br label %return, !dbg !6139

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6140
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6141
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6141
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6142
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6143
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6143
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !6144
  br label %return, !dbg !6145

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6146 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6149, metadata !DIExpression()), !dbg !6150
  ret i1 true, !dbg !6151
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6152 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6153, metadata !DIExpression()), !dbg !6154
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6155, metadata !DIExpression()), !dbg !6156
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6157
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6158
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6159
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6160
  br label %do.body, !dbg !6161

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6162

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6164

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6162

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6166
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6166
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6166
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6166
  br label %do.end5, !dbg !6166

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6162

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6168
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3822}
!llvm.module.flags = !{!3823, !3824, !3825, !3826}
!llvm.ident = !{!3827}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "request_fops", scope: !2, file: !3, line: 236, type: !2651, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, globals: !3816, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/mc/mc-request.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !86, !92, !102, !107, !115}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_entity_type", file: !81, line: 244, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/media/media-entity.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_BASE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_VIDEO_DEVICE", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_V4L2_SUBDEV", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_pad_signal_type", file: !81, line: 171, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "PAD_SIGNAL_DEFAULT", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "PAD_SIGNAL_ANALOG", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "PAD_SIGNAL_DV", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "PAD_SIGNAL_AUDIO", value: 3, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_request_state", file: !93, line: 37, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/media/media-request.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_IDLE", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_VALIDATING", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_QUEUED", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_COMPLETE", value: 3, isUnsigned: true)
!99 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_CLEANING", value: 4, isUnsigned: true)
!100 = !DIEnumerator(name: "MEDIA_REQUEST_STATE_UPDATING", value: 5, isUnsigned: true)
!101 = !DIEnumerator(name: "NR_OF_MEDIA_REQUEST_STATE", value: 6, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 10, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !108, line: 119, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !116, line: 305, baseType: !7, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!119 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!120 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!121 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!122 = !{!123, !125, !126, !148, !301, !2692, !273, !258, !3812, !3814}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 148, baseType: !7)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request_object", file: !93, line: 269, size: 384, elements: !128)
!128 = !{!129, !146, !147, !3809, !3810, !3811}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !127, file: !93, line: 270, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request_object_ops", file: !93, line: 247, size: 320, elements: !133)
!133 = !{!134, !139, !143, !144, !145}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !132, file: !93, line: 248, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!138, !126}
!138 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !132, file: !93, line: 249, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !126}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !132, file: !93, line: 250, baseType: !140, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !132, file: !93, line: 251, baseType: !140, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !132, file: !93, line: 252, baseType: !140, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !127, file: !93, line: 271, baseType: !125, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !127, file: !93, line: 272, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_request", file: !93, line: 62, size: 768, elements: !150)
!150 = !{!151, !3797, !3798, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !149, file: !93, line: 63, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device", file: !154, line: 144, size: 5184, elements: !155)
!154 = !DIFile(filename: "./include/media/media-device.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !3606, !3637, !3638, !3639, !3643, !3644, !3645, !3646, !3647, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3764, !3765, !3769, !3773, !3795, !3796}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !153, file: !154, line: 146, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !159)
!159 = !{!160, !3178, !3179, !3182, !3183, !3234, !3307, !3308, !3309, !3310, !3311, !3320, !3425, !3438, !3441, !3442, !3446, !3448, !3449, !3450, !3454, !3460, !3461, !3464, !3468, !3558, !3559, !3560, !3561, !3562, !3594, !3595, !3596, !3599, !3602, !3603, !3604, !3605}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !158, file: !60, line: 462, baseType: !161, size: 512)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !162, line: 64, size: 512, elements: !163)
!162 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!163 = !{!164, !168, !174, !176, !236, !3028, !3168, !3173, !3174, !3175, !3176, !3177}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !162, line: 65, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !161, file: !162, line: 66, baseType: !169, size: 128, offset: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 178, size: 128, elements: !170)
!170 = !{!171, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !124, line: 179, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !124, line: 179, baseType: !172, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !161, file: !162, line: 67, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !161, file: !162, line: 68, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !162, line: 192, size: 704, elements: !179)
!179 = !{!180, !181, !197, !198}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !178, file: !162, line: 193, baseType: !169, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !178, file: !162, line: 194, baseType: !182, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !183, line: 83, baseType: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !183, line: 71, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !183, line: 72, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !183, line: 72, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !187, file: !183, line: 73, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !183, line: 20, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !190, file: !183, line: 21, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !194, line: 25, baseType: !195)
!194 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 25, elements: !196)
!196 = !{}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !178, file: !162, line: 195, baseType: !161, size: 512, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !178, file: !162, line: 196, baseType: !199, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !162, line: 156, size: 192, elements: !202)
!202 = !{!203, !208, !213}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !201, file: !162, line: 157, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!138, !177, !175}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !162, line: 158, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!165, !177, !175}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !201, file: !162, line: 159, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!138, !177, !175, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !162, line: 148, size: 20736, elements: !220)
!220 = !{!221, !226, !230, !231, !235}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !219, file: !162, line: 149, baseType: !222, size: 192)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 192, elements: !224)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!224 = !{!225}
!225 = !DISubrange(count: 3)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !219, file: !162, line: 150, baseType: !227, size: 4096, offset: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 4096, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !219, file: !162, line: 151, baseType: !138, size: 32, offset: 4288)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !219, file: !162, line: 152, baseType: !232, size: 16384, offset: 4320)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 16384, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 2048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !219, file: !162, line: 153, baseType: !138, size: 32, offset: 20704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !161, file: !162, line: 69, baseType: !237, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !162, line: 138, size: 448, elements: !239)
!239 = !{!240, !244, !274, !276, !2988, !3018, !3022}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !238, file: !162, line: 139, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !175}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !238, file: !162, line: 140, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !248, line: 230, size: 128, elements: !249)
!248 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250, !266}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !247, file: !248, line: 231, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !175, !259, !223}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 60, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !256, line: 73, baseType: !257)
!256 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !256, line: 15, baseType: !258)
!258 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !248, line: 30, size: 128, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !248, line: 31, baseType: !165, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !260, file: !248, line: 32, baseType: !264, size: 16, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 19, baseType: !265)
!265 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !247, file: !248, line: 232, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!254, !175, !259, !165, !270}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 55, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !256, line: 72, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !256, line: 16, baseType: !273)
!273 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !238, file: !162, line: 141, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !238, file: !162, line: 142, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !248, line: 84, size: 320, elements: !281)
!281 = !{!282, !283, !287, !2985, !2986}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !248, line: 85, baseType: !165, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !280, file: !248, line: 86, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!264, !175, !259, !138}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !280, file: !248, line: 88, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!264, !175, !291, !138}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !248, line: 168, size: 448, elements: !293)
!293 = !{!294, !295, !296, !297, !2980, !2981}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !292, file: !248, line: 169, baseType: !260, size: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !292, file: !248, line: 170, baseType: !270, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !292, file: !248, line: 171, baseType: !125, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !292, file: !248, line: 172, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!254, !301, !175, !291, !223, !481, !270}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !303)
!303 = !{!304, !322, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2963, !2964, !2973, !2974, !2975, !2976, !2977, !2978, !2979}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !302, file: !31, line: 920, baseType: !305, size: 128)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !31, line: 917, size: 128, elements: !306)
!306 = !{!307, !313}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !305, file: !31, line: 918, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !309, line: 58, size: 64, elements: !310)
!309 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !309, line: 59, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !305, file: !31, line: 919, baseType: !314, size: 128, align: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 216, size: 128, align: 64, elements: !315)
!315 = !{!316, !318}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !124, line: 217, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !314, file: !124, line: 218, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !317}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !302, file: !31, line: 921, baseType: !323, size: 128, offset: 128)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !324, line: 8, size: 128, elements: !325)
!324 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!325 = !{!326, !330}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !323, file: !324, line: 9, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !329, line: 21, flags: DIFlagFwdDecl)
!329 = !DIFile(filename: "./include/linux/file.h", directory: "/home/lizy2001/genbc/linux")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !323, file: !324, line: 10, baseType: !331, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !333, line: 89, size: 1536, elements: !334)
!333 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !336, !346, !354, !355, !378, !2914, !2916, !2928, !2929, !2930, !2931, !2932, !2937, !2938, !2939}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !332, file: !333, line: 91, baseType: !7, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !332, file: !333, line: 92, baseType: !337, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !338, line: 277, baseType: !339)
!338 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !338, line: 277, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !339, file: !338, line: 277, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !338, line: 70, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !338, line: 65, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !343, file: !338, line: 66, baseType: !7, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !332, file: !333, line: 93, baseType: !347, size: 128, offset: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !348, line: 38, size: 128, elements: !349)
!348 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !348, line: 39, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !347, file: !348, line: 39, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !332, file: !333, line: 94, baseType: !331, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !332, file: !333, line: 95, baseType: !356, size: 128, offset: 256)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !333, line: 47, size: 128, elements: !357)
!357 = !{!358, !374}
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !333, line: 48, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !333, line: 48, size: 64, elements: !360)
!360 = !{!361, !370}
!361 = !DIDerivedType(tag: DW_TAG_member, scope: !359, file: !333, line: 49, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !359, file: !333, line: 49, size: 64, elements: !363)
!363 = !{!364, !369}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !362, file: !333, line: 50, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !366, line: 21, baseType: !367)
!366 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !368, line: 27, baseType: !7)
!368 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!369 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !362, file: !333, line: 50, baseType: !365, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !359, file: !333, line: 52, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !366, line: 23, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !368, line: 31, baseType: !373)
!373 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !333, line: 54, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !332, file: !333, line: 96, baseType: !379, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !381)
!381 = !{!382, !383, !384, !392, !399, !400, !548, !2608, !2609, !2610, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2882, !2890, !2891, !2892, !2910, !2911, !2912, !2913}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !380, file: !31, line: 611, baseType: !264, size: 16)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !380, file: !31, line: 612, baseType: !265, size: 16, offset: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !380, file: !31, line: 613, baseType: !385, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !386, line: 23, baseType: !387)
!386 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 21, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !387, file: !386, line: 22, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 32, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !256, line: 49, baseType: !7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !380, file: !31, line: 614, baseType: !393, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !386, line: 28, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 26, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !394, file: !386, line: 27, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 33, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !256, line: 50, baseType: !7)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !380, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !380, file: !31, line: 622, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !404)
!404 = !{!405, !409, !422, !426, !432, !436, !442, !446, !450, !454, !458, !459, !465, !469, !495, !524, !528, !534, !539, !543, !544}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !403, file: !31, line: 1865, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!331, !379, !331, !7}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !403, file: !31, line: 1866, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!165, !331, !379, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !415, line: 10, size: 128, elements: !416)
!415 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417, !421}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !414, file: !415, line: 11, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !125}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !414, file: !415, line: 12, baseType: !125, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !403, file: !31, line: 1867, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!138, !379, !138}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !403, file: !31, line: 1868, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!430, !379, !138}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !403, file: !31, line: 1870, baseType: !433, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!138, !331, !223, !138}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !403, file: !31, line: 1872, baseType: !437, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!138, !379, !331, !264, !440}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 30, baseType: !441)
!441 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !403, file: !31, line: 1873, baseType: !443, size: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!138, !331, !379, !331}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !403, file: !31, line: 1874, baseType: !447, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!138, !379, !331}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !403, file: !31, line: 1875, baseType: !451, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!138, !379, !331, !165}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !403, file: !31, line: 1876, baseType: !455, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!138, !379, !331, !264}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !403, file: !31, line: 1877, baseType: !447, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !403, file: !31, line: 1878, baseType: !460, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!138, !379, !331, !264, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 16, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 13, baseType: !365)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !403, file: !31, line: 1879, baseType: !466, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!138, !379, !331, !379, !331, !7}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !403, file: !31, line: 1881, baseType: !470, size: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!138, !331, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !484, !492, !493, !494}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !474, file: !31, line: 220, baseType: !7, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !474, file: !31, line: 221, baseType: !264, size: 16, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !474, file: !31, line: 222, baseType: !385, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !474, file: !31, line: 223, baseType: !393, size: 32, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !474, file: !31, line: 224, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 46, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !256, line: 88, baseType: !483)
!483 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !474, file: !31, line: 225, baseType: !485, size: 128, offset: 192)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !486, line: 13, size: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !485, file: !486, line: 14, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !486, line: 8, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !368, line: 30, baseType: !483)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !485, file: !486, line: 15, baseType: !258, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !474, file: !31, line: 226, baseType: !485, size: 128, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !474, file: !31, line: 227, baseType: !485, size: 128, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !474, file: !31, line: 234, baseType: !301, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !403, file: !31, line: 1882, baseType: !496, size: 64, offset: 896)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!138, !499, !501, !365, !7}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !503, line: 22, size: 1152, elements: !504)
!503 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !506, !507, !508, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !502, file: !503, line: 23, baseType: !365, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !502, file: !503, line: 24, baseType: !264, size: 16, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !502, file: !503, line: 25, baseType: !7, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !502, file: !503, line: 26, baseType: !509, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 104, baseType: !365)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !502, file: !503, line: 27, baseType: !371, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !502, file: !503, line: 28, baseType: !371, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !502, file: !503, line: 37, baseType: !371, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !502, file: !503, line: 38, baseType: !463, size: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !502, file: !503, line: 39, baseType: !463, size: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !502, file: !503, line: 40, baseType: !385, size: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !502, file: !503, line: 41, baseType: !393, size: 32, offset: 416)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !502, file: !503, line: 42, baseType: !481, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !502, file: !503, line: 43, baseType: !485, size: 128, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !502, file: !503, line: 44, baseType: !485, size: 128, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !502, file: !503, line: 45, baseType: !485, size: 128, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !502, file: !503, line: 46, baseType: !485, size: 128, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !502, file: !503, line: 47, baseType: !371, size: 64, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !502, file: !503, line: 48, baseType: !371, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !403, file: !31, line: 1883, baseType: !525, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!254, !331, !223, !270}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !403, file: !31, line: 1884, baseType: !529, size: 64, offset: 1024)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!138, !379, !532, !371, !371}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !403, file: !31, line: 1886, baseType: !535, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!138, !379, !538, !138}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !403, file: !31, line: 1887, baseType: !540, size: 64, offset: 1152)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!138, !379, !331, !301, !7, !264}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !403, file: !31, line: 1890, baseType: !455, size: 64, offset: 1216)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !403, file: !31, line: 1891, baseType: !545, size: 64, offset: 1280)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!138, !379, !430, !138}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !380, file: !31, line: 623, baseType: !549, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !606, !2215, !2297, !2380, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2396, !2400, !2401, !2404, !2405, !2408, !2409, !2410, !2451, !2478, !2479, !2480, !2481, !2482, !2483, !2486, !2488, !2495, !2496, !2498, !2499, !2500, !2559, !2560, !2575, !2576, !2577, !2578, !2579, !2582, !2583, !2584, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !550, file: !31, line: 1417, baseType: !169, size: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !550, file: !31, line: 1418, baseType: !463, size: 32, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !550, file: !31, line: 1419, baseType: !377, size: 8, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !550, file: !31, line: 1420, baseType: !273, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !550, file: !31, line: 1421, baseType: !481, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !550, file: !31, line: 1422, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !560)
!560 = !{!561, !562, !563, !569, !573, !577, !581, !585, !586, !596, !599, !600, !601, !603, !604, !605}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !31, line: 2229, baseType: !165, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !559, file: !31, line: 2230, baseType: !138, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !559, file: !31, line: 2238, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!138, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !31, line: 69, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !559, file: !31, line: 2239, baseType: !570, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !559, file: !31, line: 2240, baseType: !574, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!331, !558, !138, !165, !125}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !559, file: !31, line: 2242, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !549}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !559, file: !31, line: 2243, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !584, line: 76, flags: DIFlagFwdDecl)
!584 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !31, line: 2244, baseType: !558, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !559, file: !31, line: 2245, baseType: !587, size: 64, offset: 512)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 182, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !587, file: !124, line: 183, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 186, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !124, line: 187, baseType: !590, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !591, file: !124, line: 187, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !559, file: !31, line: 2247, baseType: !597, offset: 576)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !598, line: 187, elements: !196)
!598 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !559, file: !31, line: 2248, baseType: !597, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !559, file: !31, line: 2249, baseType: !597, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !559, file: !31, line: 2250, baseType: !602, offset: 576)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, elements: !224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !559, file: !31, line: 2252, baseType: !597, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !559, file: !31, line: 2253, baseType: !597, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !559, file: !31, line: 2254, baseType: !597, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !550, file: !31, line: 1423, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !610)
!610 = !{!611, !615, !619, !620, !624, !630, !634, !635, !636, !640, !644, !645, !646, !647, !653, !658, !659, !666, !667, !668, !669, !2199, !2214}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !609, file: !31, line: 1936, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!379, !549}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !609, file: !31, line: 1937, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !379}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !609, file: !31, line: 1938, baseType: !616, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !609, file: !31, line: 1940, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !379, !138}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !609, file: !31, line: 1941, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!138, !379, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !609, file: !31, line: 1942, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!138, !379}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !609, file: !31, line: 1943, baseType: !616, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !609, file: !31, line: 1944, baseType: !578, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !609, file: !31, line: 1945, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!138, !549, !138}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !609, file: !31, line: 1946, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!138, !549}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !609, file: !31, line: 1947, baseType: !641, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !609, file: !31, line: 1948, baseType: !641, size: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !609, file: !31, line: 1949, baseType: !641, size: 64, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !609, file: !31, line: 1950, baseType: !648, size: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!138, !331, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !609, file: !31, line: 1951, baseType: !654, size: 64, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!138, !549, !657, !223}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !609, file: !31, line: 1952, baseType: !578, size: 64, offset: 960)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !609, file: !31, line: 1954, baseType: !660, size: 64, offset: 1024)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!138, !663, !331}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !665, line: 539, flags: DIFlagFwdDecl)
!665 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!666 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !609, file: !31, line: 1955, baseType: !660, size: 64, offset: 1088)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !609, file: !31, line: 1956, baseType: !660, size: 64, offset: 1152)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !609, file: !31, line: 1957, baseType: !660, size: 64, offset: 1216)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !609, file: !31, line: 1963, baseType: !670, size: 64, offset: 1280)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!138, !549, !673, !123}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !675, line: 68, size: 512, align: 128, elements: !676)
!675 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !678, !2191, !2198}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !675, line: 69, baseType: !273, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !675, line: 77, baseType: !679, size: 320, offset: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !675, line: 77, size: 320, elements: !680)
!680 = !{!681, !868, !873, !901, !909, !915, !2183, !2190}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 78, baseType: !682, size: 320)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 78, size: 320, elements: !683)
!683 = !{!684, !685, !866, !867}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !682, file: !675, line: 84, baseType: !169, size: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !682, file: !675, line: 86, baseType: !686, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !688)
!688 = !{!689, !690, !697, !698, !703, !718, !734, !735, !736, !737, !859, !860, !863, !864, !865}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !687, file: !31, line: 452, baseType: !379, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !687, file: !31, line: 453, baseType: !691, size: 128, offset: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !692, line: 292, size: 128, elements: !693)
!692 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !691, file: !692, line: 293, baseType: !182)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !691, file: !692, line: 295, baseType: !123, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !691, file: !692, line: 296, baseType: !125, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !687, file: !31, line: 454, baseType: !123, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !687, file: !31, line: 455, baseType: !699, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 168, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 166, size: 32, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !700, file: !124, line: 167, baseType: !138, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !687, file: !31, line: 460, baseType: !704, size: 128, offset: 256)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !705, line: 125, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !717}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !704, file: !705, line: 126, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !705, line: 31, size: 64, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !708, file: !705, line: 32, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !705, line: 24, size: 192, align: 64, elements: !713)
!713 = !{!714, !715, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !712, file: !705, line: 25, baseType: !273, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !712, file: !705, line: 26, baseType: !711, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !712, file: !705, line: 27, baseType: !711, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !704, file: !705, line: 127, baseType: !711, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !687, file: !31, line: 461, baseType: !719, size: 256, offset: 384)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !720, line: 35, size: 256, elements: !721)
!720 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !730, !731, !733}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 36, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !724, line: 13, baseType: !725)
!724 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 175, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 173, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !726, file: !124, line: 174, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !366, line: 22, baseType: !490)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !719, file: !720, line: 42, baseType: !723, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !720, line: 46, baseType: !732, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !183, line: 29, baseType: !190)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !719, file: !720, line: 47, baseType: !169, size: 128, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !687, file: !31, line: 462, baseType: !273, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !687, file: !31, line: 463, baseType: !273, size: 64, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !687, file: !31, line: 464, baseType: !273, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !687, file: !31, line: 465, baseType: !738, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !741)
!741 = !{!742, !746, !750, !754, !758, !762, !768, !774, !778, !783, !787, !791, !795, !823, !827, !833, !834, !835, !839, !844, !848, !855}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !740, file: !31, line: 368, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!138, !673, !628}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !740, file: !31, line: 369, baseType: !747, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!138, !301, !673}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !740, file: !31, line: 372, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!138, !686, !628}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !740, file: !31, line: 375, baseType: !755, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!138, !673}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !740, file: !31, line: 381, baseType: !759, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!138, !301, !686, !172, !7}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !740, file: !31, line: 383, baseType: !763, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !740, file: !31, line: 385, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!138, !301, !686, !481, !7, !7, !772, !773}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !740, file: !31, line: 388, baseType: !775, size: 64, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!138, !301, !686, !481, !7, !7, !673, !125}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !740, file: !31, line: 393, baseType: !779, size: 64, offset: 512)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!782, !686, !782}
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !124, line: 125, baseType: !371)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !740, file: !31, line: 394, baseType: !784, size: 64, offset: 576)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !673, !7, !7}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !740, file: !31, line: 395, baseType: !788, size: 64, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!138, !673, !123}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !740, file: !31, line: 396, baseType: !792, size: 64, offset: 704)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !673}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !740, file: !31, line: 397, baseType: !796, size: 64, offset: 768)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!254, !799, !821}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !801)
!801 = !{!802, !803, !804, !808, !809, !810, !813, !814}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !800, file: !31, line: 321, baseType: !301, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !800, file: !31, line: 326, baseType: !481, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !800, file: !31, line: 327, baseType: !805, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !799, !258, !258}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !800, file: !31, line: 328, baseType: !125, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !800, file: !31, line: 329, baseType: !138, size: 32, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !800, file: !31, line: 330, baseType: !811, size: 16, offset: 288)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !366, line: 19, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !368, line: 24, baseType: !265)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !800, file: !31, line: 331, baseType: !811, size: 16, offset: 304)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !31, line: 332, baseType: !815, size: 64, offset: 320)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !31, line: 332, size: 64, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !815, file: !31, line: 333, baseType: !7, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !815, file: !31, line: 334, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !740, file: !31, line: 402, baseType: !824, size: 64, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!138, !686, !673, !673, !5}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !740, file: !31, line: 404, baseType: !828, size: 64, offset: 896)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!440, !673, !831}
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !832, line: 305, baseType: !7)
!832 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !740, file: !31, line: 405, baseType: !792, size: 64, offset: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !740, file: !31, line: 406, baseType: !755, size: 64, offset: 1024)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !740, file: !31, line: 407, baseType: !836, size: 64, offset: 1088)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!138, !673, !273, !273}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !740, file: !31, line: 409, baseType: !840, size: 64, offset: 1152)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !673, !843, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !740, file: !31, line: 410, baseType: !845, size: 64, offset: 1216)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!138, !686, !673}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !740, file: !31, line: 413, baseType: !849, size: 64, offset: 1280)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!138, !852, !301, !854}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !740, file: !31, line: 415, baseType: !856, size: 64, offset: 1344)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !301}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !31, line: 466, baseType: !273, size: 64, offset: 896)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !687, file: !31, line: 467, baseType: !861, size: 32, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !862, line: 8, baseType: !365)
!862 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!863 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !687, file: !31, line: 468, baseType: !182, offset: 992)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !687, file: !31, line: 469, baseType: !169, size: 128, offset: 1024)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !687, file: !31, line: 470, baseType: !125, size: 64, offset: 1152)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !682, file: !675, line: 87, baseType: !273, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !682, file: !675, line: 94, baseType: !273, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 96, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 96, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !869, file: !675, line: 101, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !124, line: 143, baseType: !371)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 103, baseType: !874, size: 320)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 103, size: 320, elements: !875)
!875 = !{!876, !886, !889, !890}
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !675, line: 104, baseType: !877, size: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !675, line: 104, size: 128, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !877, file: !675, line: 105, baseType: !169, size: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !675, line: 106, baseType: !881, size: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !675, line: 106, size: 128, elements: !882)
!882 = !{!883, !884, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !675, line: 107, baseType: !673, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !881, file: !675, line: 109, baseType: !138, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !881, file: !675, line: 110, baseType: !138, size: 32, offset: 96)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !874, file: !675, line: 117, baseType: !887, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !675, line: 117, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !874, file: !675, line: 119, baseType: !125, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !675, line: 120, baseType: !891, size: 64, offset: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !675, line: 120, size: 64, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !891, file: !675, line: 121, baseType: !125, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !891, file: !675, line: 122, baseType: !273, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !675, line: 123, baseType: !896, size: 32)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !891, file: !675, line: 123, size: 32, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !896, file: !675, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !896, file: !675, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !896, file: !675, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 130, baseType: !902, size: 192)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 130, size: 192, elements: !903)
!903 = !{!904, !905, !906, !907, !908}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !902, file: !675, line: 131, baseType: !273, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !902, file: !675, line: 134, baseType: !377, size: 8, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !902, file: !675, line: 135, baseType: !377, size: 8, offset: 72)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !902, file: !675, line: 136, baseType: !699, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !902, file: !675, line: 137, baseType: !7, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 139, baseType: !910, size: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 139, size: 256, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !910, file: !675, line: 140, baseType: !273, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !910, file: !675, line: 141, baseType: !699, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !910, file: !675, line: 143, baseType: !169, size: 128, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 145, baseType: !916, size: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 145, size: 256, elements: !917)
!917 = !{!918, !919, !921, !922, !2182}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !916, file: !675, line: 146, baseType: !273, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !916, file: !675, line: 147, baseType: !920, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !665, line: 509, baseType: !673)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !916, file: !675, line: 148, baseType: !273, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !916, file: !675, line: 149, baseType: !923, size: 64, offset: 192)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !916, file: !675, line: 149, size: 64, elements: !924)
!924 = !{!925, !2181}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !923, file: !675, line: 150, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !675, line: 388, size: 7296, elements: !928)
!928 = !{!929, !2177}
!929 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !675, line: 389, baseType: !930, size: 7296)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !927, file: !675, line: 389, size: 7296, elements: !931)
!931 = !{!932, !970, !971, !972, !976, !977, !978, !979, !980, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1021, !1029, !1032, !1062, !1063, !2161, !2162, !2165, !2166, !2167, !2170, !2171, !2172, !2175, !2176}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !930, file: !675, line: 390, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !675, line: 305, size: 1472, elements: !935)
!935 = !{!936, !937, !938, !939, !940, !941, !942, !943, !950, !951, !956, !957, !960, !964, !965, !966, !967, !968}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !934, file: !675, line: 308, baseType: !273, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !934, file: !675, line: 309, baseType: !273, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !934, file: !675, line: 313, baseType: !933, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !934, file: !675, line: 313, baseType: !933, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !934, file: !675, line: 315, baseType: !712, size: 192, align: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !934, file: !675, line: 323, baseType: !273, size: 64, offset: 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !934, file: !675, line: 327, baseType: !926, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !934, file: !675, line: 333, baseType: !944, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !665, line: 284, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !665, line: 284, size: 64, elements: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !945, file: !665, line: 284, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !949, line: 19, baseType: !273)
!949 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !934, file: !675, line: 334, baseType: !273, size: 64, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !934, file: !675, line: 343, baseType: !952, size: 256, offset: 704)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !675, line: 340, size: 256, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !952, file: !675, line: 341, baseType: !712, size: 192, align: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !952, file: !675, line: 342, baseType: !273, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !934, file: !675, line: 351, baseType: !169, size: 128, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !934, file: !675, line: 353, baseType: !958, size: 64, offset: 1088)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !675, line: 353, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !934, file: !675, line: 356, baseType: !961, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !963)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !675, line: 356, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !934, file: !675, line: 359, baseType: !273, size: 64, offset: 1216)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !934, file: !675, line: 361, baseType: !301, size: 64, offset: 1280)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !934, file: !675, line: 362, baseType: !125, size: 64, offset: 1344)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !934, file: !675, line: 365, baseType: !723, size: 64, offset: 1408)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !934, file: !675, line: 373, baseType: !969, offset: 1472)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !675, line: 296, elements: !196)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !930, file: !675, line: 391, baseType: !708, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !930, file: !675, line: 392, baseType: !371, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !930, file: !675, line: 394, baseType: !973, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!273, !301, !273, !273, !273, !273}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !930, file: !675, line: 398, baseType: !273, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !930, file: !675, line: 399, baseType: !273, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !930, file: !675, line: 405, baseType: !273, size: 64, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !930, file: !675, line: 406, baseType: !273, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !930, file: !675, line: 407, baseType: !981, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !665, line: 286, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !665, line: 286, size: 64, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !983, file: !665, line: 286, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !949, line: 18, baseType: !273)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !930, file: !675, line: 416, baseType: !699, size: 32, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !930, file: !675, line: 428, baseType: !699, size: 32, offset: 608)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !930, file: !675, line: 437, baseType: !699, size: 32, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !930, file: !675, line: 447, baseType: !699, size: 32, offset: 672)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !930, file: !675, line: 450, baseType: !723, size: 64, offset: 704)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !930, file: !675, line: 452, baseType: !138, size: 32, offset: 768)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !930, file: !675, line: 454, baseType: !182, offset: 800)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !930, file: !675, line: 457, baseType: !719, size: 256, offset: 832)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !930, file: !675, line: 459, baseType: !169, size: 128, offset: 1088)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !930, file: !675, line: 466, baseType: !273, size: 64, offset: 1216)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !930, file: !675, line: 467, baseType: !273, size: 64, offset: 1280)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !930, file: !675, line: 469, baseType: !273, size: 64, offset: 1344)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !930, file: !675, line: 470, baseType: !273, size: 64, offset: 1408)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !930, file: !675, line: 471, baseType: !725, size: 64, offset: 1472)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !930, file: !675, line: 472, baseType: !273, size: 64, offset: 1536)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !930, file: !675, line: 473, baseType: !273, size: 64, offset: 1600)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !930, file: !675, line: 474, baseType: !273, size: 64, offset: 1664)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !930, file: !675, line: 475, baseType: !273, size: 64, offset: 1728)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !930, file: !675, line: 477, baseType: !182, offset: 1792)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !930, file: !675, line: 478, baseType: !273, size: 64, offset: 1792)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !930, file: !675, line: 478, baseType: !273, size: 64, offset: 1856)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !930, file: !675, line: 478, baseType: !273, size: 64, offset: 1920)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !930, file: !675, line: 478, baseType: !273, size: 64, offset: 1984)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !930, file: !675, line: 479, baseType: !273, size: 64, offset: 2048)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !930, file: !675, line: 479, baseType: !273, size: 64, offset: 2112)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !930, file: !675, line: 479, baseType: !273, size: 64, offset: 2176)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !930, file: !675, line: 480, baseType: !273, size: 64, offset: 2240)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !930, file: !675, line: 480, baseType: !273, size: 64, offset: 2304)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !930, file: !675, line: 480, baseType: !273, size: 64, offset: 2368)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !930, file: !675, line: 480, baseType: !273, size: 64, offset: 2432)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !930, file: !675, line: 482, baseType: !1018, size: 2816, offset: 2496)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 2816, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 44)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !930, file: !675, line: 488, baseType: !1022, size: 256, offset: 5312)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1023, line: 60, size: 256, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1022, file: !1023, line: 61, baseType: !1026, size: 256)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 256, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 4)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !930, file: !675, line: 490, baseType: !1030, size: 64, offset: 5568)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !675, line: 490, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !930, file: !675, line: 493, baseType: !1033, size: 896, offset: 5632)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1034, line: 53, baseType: !1035)
!1034 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1034, line: 13, size: 896, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1043, !1044, !1051, !1052, !1056, !1057, !1058}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1035, file: !1034, line: 18, baseType: !371, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1035, file: !1034, line: 28, baseType: !725, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1035, file: !1034, line: 31, baseType: !719, size: 256, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1035, file: !1034, line: 32, baseType: !1041, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1034, line: 32, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1035, file: !1034, line: 37, baseType: !265, size: 16, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1035, file: !1034, line: 40, baseType: !1045, size: 192, offset: 512)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1046, line: 53, size: 192, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1045, file: !1046, line: 54, baseType: !723, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1045, file: !1046, line: 55, baseType: !182, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1045, file: !1046, line: 59, baseType: !169, size: 128, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1035, file: !1034, line: 41, baseType: !125, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1035, file: !1034, line: 42, baseType: !1053, size: 64, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1034, line: 42, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1035, file: !1034, line: 44, baseType: !699, size: 32, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1035, file: !1034, line: 50, baseType: !811, size: 16, offset: 864)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1035, file: !1034, line: 51, baseType: !1059, size: 16, offset: 880)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !366, line: 18, baseType: !1060)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !368, line: 23, baseType: !1061)
!1061 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !675, line: 495, baseType: !273, size: 64, offset: 6528)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !930, file: !675, line: 497, baseType: !1064, size: 64, offset: 6592)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !675, line: 381, size: 384, elements: !1066)
!1066 = !{!1067, !1068, !2160}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1065, file: !675, line: 382, baseType: !699, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1065, file: !675, line: 383, baseType: !1069, size: 128, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !675, line: 376, size: 128, elements: !1070)
!1070 = !{!1071, !2158}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1069, file: !675, line: 377, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1074, line: 640, size: 48640, elements: !1075)
!1074 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1075 = !{!1076, !1082, !1084, !1085, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1101, !1119, !1130, !1215, !1216, !1217, !1228, !1229, !1231, !1232, !1233, !1234, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1318, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1356, !1358, !1359, !1360, !1372, !1373, !1374, !1375, !1376, !1377, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1401, !1406, !1590, !1591, !1592, !1593, !1597, !1600, !1603, !1606, !1609, !1612, !1713, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1759, !1760, !1761, !1762, !1763, !1768, !1769, !1770, !1773, !1774, !1777, !1780, !1783, !1786, !1829, !1832, !1833, !1912, !1913, !1916, !1917, !1920, !1921, !1922, !1926, !1927, !1928, !1941, !1942, !1943, !1953, !1958, !1961, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1073, file: !1074, line: 646, baseType: !1077, size: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1078, line: 56, size: 128, elements: !1079)
!1078 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !1078, line: 57, baseType: !273, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1077, file: !1078, line: 58, baseType: !365, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1073, file: !1074, line: 649, baseType: !1083, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !258)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1073, file: !1074, line: 657, baseType: !125, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1073, file: !1074, line: 658, baseType: !1086, size: 32, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !108, line: 113, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !108, line: 111, size: 32, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1087, file: !108, line: 112, baseType: !699, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !1074, line: 660, baseType: !7, size: 32, offset: 288)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1073, file: !1074, line: 661, baseType: !7, size: 32, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1073, file: !1074, line: 684, baseType: !138, size: 32, offset: 352)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1073, file: !1074, line: 686, baseType: !138, size: 32, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1073, file: !1074, line: 687, baseType: !138, size: 32, offset: 416)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1073, file: !1074, line: 688, baseType: !138, size: 32, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1073, file: !1074, line: 689, baseType: !7, size: 32, offset: 480)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1073, file: !1074, line: 691, baseType: !1098, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1100)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1074, line: 691, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1073, file: !1074, line: 692, baseType: !1102, size: 832, offset: 576)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1074, line: 451, size: 832, elements: !1103)
!1103 = !{!1104, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1102, file: !1074, line: 453, baseType: !1105, size: 128)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1074, line: 325, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1105, file: !1074, line: 326, baseType: !273, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1105, file: !1074, line: 327, baseType: !365, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1102, file: !1074, line: 454, baseType: !712, size: 192, align: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1102, file: !1074, line: 455, baseType: !169, size: 128, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1102, file: !1074, line: 456, baseType: !7, size: 32, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1102, file: !1074, line: 458, baseType: !371, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1102, file: !1074, line: 459, baseType: !371, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1102, file: !1074, line: 460, baseType: !371, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1102, file: !1074, line: 461, baseType: !371, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1102, file: !1074, line: 463, baseType: !371, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1102, file: !1074, line: 465, baseType: !1118, offset: 832)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1074, line: 415, elements: !196)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1073, file: !1074, line: 693, baseType: !1120, size: 384, offset: 1408)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1074, line: 489, size: 384, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1120, file: !1074, line: 490, baseType: !169, size: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1120, file: !1074, line: 491, baseType: !273, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1120, file: !1074, line: 492, baseType: !273, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1120, file: !1074, line: 493, baseType: !7, size: 32, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1120, file: !1074, line: 494, baseType: !265, size: 16, offset: 288)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1120, file: !1074, line: 495, baseType: !265, size: 16, offset: 304)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1120, file: !1074, line: 497, baseType: !1129, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1073, file: !1074, line: 697, baseType: !1131, size: 1792, offset: 1792)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1074, line: 507, size: 1792, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1212, !1213}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1131, file: !1074, line: 508, baseType: !712, size: 192, align: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1131, file: !1074, line: 515, baseType: !371, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1131, file: !1074, line: 516, baseType: !371, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1131, file: !1074, line: 517, baseType: !371, size: 64, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1131, file: !1074, line: 518, baseType: !371, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1131, file: !1074, line: 519, baseType: !371, size: 64, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1131, file: !1074, line: 526, baseType: !729, size: 64, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1131, file: !1074, line: 527, baseType: !371, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !1074, line: 528, baseType: !7, size: 32, offset: 640)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1131, file: !1074, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1131, file: !1074, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1131, file: !1074, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1131, file: !1074, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1131, file: !1074, line: 563, baseType: !1147, size: 512, offset: 704)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1148)
!1148 = !{!1149, !1157, !1158, !1163, !1206, !1209, !1210, !1211}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1147, file: !14, line: 119, baseType: !1150, size: 256)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1151, line: 9, size: 256, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1150, file: !1151, line: 10, baseType: !712, size: 192, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1150, file: !1151, line: 11, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1156, line: 29, baseType: !729)
!1156 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1147, file: !14, line: 120, baseType: !1155, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1147, file: !14, line: 121, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!13, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1147, file: !14, line: 122, baseType: !1164, size: 64, offset: 384)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1166)
!1166 = !{!1167, !1187, !1188, !1191, !1196, !1197, !1201, !1205}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1165, file: !14, line: 160, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1169, file: !14, line: 215, baseType: !732)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1169, file: !14, line: 216, baseType: !7, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1169, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1169, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1169, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1169, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1169, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1169, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1169, file: !14, line: 233, baseType: !1155, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1169, file: !14, line: 234, baseType: !1162, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1169, file: !14, line: 235, baseType: !1155, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1169, file: !14, line: 236, baseType: !1162, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1169, file: !14, line: 237, baseType: !1184, size: 4096, offset: 512)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 4096, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 8)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1165, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1165, file: !14, line: 162, baseType: !1189, size: 32, offset: 96)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 27, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !256, line: 96, baseType: !138)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1165, file: !14, line: 163, baseType: !1192, size: 32, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !338, line: 276, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !338, line: 276, size: 32, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1193, file: !338, line: 276, baseType: !342, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1165, file: !14, line: 164, baseType: !1162, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1165, file: !14, line: 165, baseType: !1198, size: 128, offset: 256)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1151, line: 14, size: 128, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1198, file: !1151, line: 15, baseType: !704, size: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1165, file: !14, line: 166, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!1155}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1165, file: !14, line: 167, baseType: !1155, size: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1147, file: !14, line: 123, baseType: !1207, size: 8, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !366, line: 17, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !368, line: 21, baseType: !377)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1147, file: !14, line: 124, baseType: !1207, size: 8, offset: 456)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1147, file: !14, line: 125, baseType: !1207, size: 8, offset: 464)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1147, file: !14, line: 126, baseType: !1207, size: 8, offset: 472)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1131, file: !1074, line: 572, baseType: !1147, size: 512, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1131, file: !1074, line: 580, baseType: !1214, size: 64, offset: 1728)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1073, file: !1074, line: 721, baseType: !7, size: 32, offset: 3584)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1073, file: !1074, line: 722, baseType: !138, size: 32, offset: 3616)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1073, file: !1074, line: 723, baseType: !1218, size: 64, offset: 3648)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1221, line: 17, baseType: !1222)
!1221 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1221, line: 17, size: 64, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1222, file: !1221, line: 17, baseType: !1225, size: 64)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 64, elements: !1226)
!1226 = !{!1227}
!1227 = !DISubrange(count: 1)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1073, file: !1074, line: 724, baseType: !1220, size: 64, offset: 3712)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1073, file: !1074, line: 749, baseType: !1230, offset: 3776)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1074, line: 290, elements: !196)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1073, file: !1074, line: 751, baseType: !169, size: 128, offset: 3776)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1073, file: !1074, line: 757, baseType: !926, size: 64, offset: 3904)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1073, file: !1074, line: 758, baseType: !926, size: 64, offset: 3968)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1073, file: !1074, line: 761, baseType: !1235, size: 320, offset: 4032)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1023, line: 34, size: 320, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1235, file: !1023, line: 35, baseType: !371, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1235, file: !1023, line: 36, baseType: !1239, size: 256, offset: 64)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 256, elements: !1027)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1073, file: !1074, line: 766, baseType: !138, size: 32, offset: 4352)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1073, file: !1074, line: 767, baseType: !138, size: 32, offset: 4384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1073, file: !1074, line: 768, baseType: !138, size: 32, offset: 4416)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1073, file: !1074, line: 770, baseType: !138, size: 32, offset: 4448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1073, file: !1074, line: 772, baseType: !273, size: 64, offset: 4480)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1073, file: !1074, line: 775, baseType: !7, size: 32, offset: 4544)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1073, file: !1074, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1073, file: !1074, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1073, file: !1074, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1073, file: !1074, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1073, file: !1074, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1073, file: !1074, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1073, file: !1074, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1073, file: !1074, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1073, file: !1074, line: 831, baseType: !273, size: 64, offset: 4672)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1073, file: !1074, line: 833, baseType: !1256, size: 384, offset: 4736)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1257)
!1257 = !{!1258, !1263}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1256, file: !19, line: 26, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!258, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1256, file: !19, line: 27, baseType: !1264, size: 320, offset: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1256, file: !19, line: 27, size: 320, elements: !1265)
!1265 = !{!1266, !1276, !1303}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1264, file: !19, line: 36, baseType: !1267, size: 320)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !19, line: 29, size: 320, elements: !1268)
!1268 = !{!1269, !1271, !1272, !1273, !1274, !1275}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1267, file: !19, line: 30, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1267, file: !19, line: 31, baseType: !365, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1267, file: !19, line: 32, baseType: !365, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1267, file: !19, line: 33, baseType: !365, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1267, file: !19, line: 34, baseType: !371, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1267, file: !19, line: 35, baseType: !1270, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1264, file: !19, line: 46, baseType: !1277, size: 192)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !19, line: 38, size: 192, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1302}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1277, file: !19, line: 39, baseType: !1189, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1277, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1277, file: !19, line: 41, baseType: !1282, size: 64, offset: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1277, file: !19, line: 41, size: 64, elements: !1283)
!1283 = !{!1284, !1292}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1282, file: !19, line: 42, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1287, line: 7, size: 128, elements: !1288)
!1287 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !{!1289, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1286, file: !1287, line: 8, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !256, line: 93, baseType: !483)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1286, file: !1287, line: 9, baseType: !483, size: 64, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1282, file: !19, line: 43, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1295, line: 7, size: 64, elements: !1296)
!1295 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1301}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1294, file: !1295, line: 8, baseType: !1298, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1295, line: 5, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !366, line: 20, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !368, line: 26, baseType: !138)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1294, file: !1295, line: 9, baseType: !1299, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1277, file: !19, line: 45, baseType: !371, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1264, file: !19, line: 54, baseType: !1304, size: 256)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !19, line: 48, size: 256, elements: !1305)
!1305 = !{!1306, !1314, !1315, !1316, !1317}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1304, file: !19, line: 49, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1309, line: 36, size: 64, elements: !1310)
!1309 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1308, file: !1309, line: 37, baseType: !138, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1308, file: !1309, line: 38, baseType: !1061, size: 16, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1308, file: !1309, line: 39, baseType: !1061, size: 16, offset: 48)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1304, file: !19, line: 50, baseType: !138, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1304, file: !19, line: 51, baseType: !138, size: 32, offset: 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1304, file: !19, line: 52, baseType: !273, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1304, file: !19, line: 53, baseType: !273, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1073, file: !1074, line: 835, baseType: !1319, size: 32, offset: 5120)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 22, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !256, line: 28, baseType: !138)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1073, file: !1074, line: 836, baseType: !1319, size: 32, offset: 5152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1073, file: !1074, line: 840, baseType: !273, size: 64, offset: 5184)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1073, file: !1074, line: 849, baseType: !1072, size: 64, offset: 5248)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1073, file: !1074, line: 852, baseType: !1072, size: 64, offset: 5312)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1073, file: !1074, line: 857, baseType: !169, size: 128, offset: 5376)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1073, file: !1074, line: 858, baseType: !169, size: 128, offset: 5504)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1073, file: !1074, line: 859, baseType: !1072, size: 64, offset: 5632)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1073, file: !1074, line: 867, baseType: !169, size: 128, offset: 5696)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1073, file: !1074, line: 868, baseType: !169, size: 128, offset: 5824)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1073, file: !1074, line: 871, baseType: !1331, size: 64, offset: 5952)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1339, !1340, !1347, !1348}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1332, file: !40, line: 61, baseType: !1086, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1332, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1332, file: !40, line: 63, baseType: !182, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1332, file: !40, line: 65, baseType: !1338, size: 256, offset: 64)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !587, size: 256, elements: !1027)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1332, file: !40, line: 66, baseType: !587, size: 64, offset: 320)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1332, file: !40, line: 68, baseType: !1341, size: 128, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1342, line: 40, baseType: !1343)
!1342 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1342, line: 36, size: 128, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !1342, line: 37, baseType: !182)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1343, file: !1342, line: 38, baseType: !169, size: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1332, file: !40, line: 69, baseType: !314, size: 128, align: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1332, file: !40, line: 70, baseType: !1349, size: 128, offset: 640)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 128, elements: !1226)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1350, file: !40, line: 55, baseType: !138, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1350, file: !40, line: 56, baseType: !1354, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1073, file: !1074, line: 872, baseType: !1357, size: 512, offset: 6016)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 512, elements: !1027)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1073, file: !1074, line: 873, baseType: !169, size: 128, offset: 6528)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1073, file: !1074, line: 874, baseType: !169, size: 128, offset: 6656)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1073, file: !1074, line: 876, baseType: !1361, size: 64, offset: 6784)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1363, line: 26, size: 192, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1362, file: !1363, line: 27, baseType: !7, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1362, file: !1363, line: 28, baseType: !1367, size: 128, offset: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1368, line: 43, size: 128, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1367, file: !1368, line: 44, baseType: !732)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1367, file: !1368, line: 45, baseType: !169, size: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1073, file: !1074, line: 879, baseType: !657, size: 64, offset: 6848)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1073, file: !1074, line: 882, baseType: !657, size: 64, offset: 6912)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1073, file: !1074, line: 884, baseType: !371, size: 64, offset: 6976)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1073, file: !1074, line: 885, baseType: !371, size: 64, offset: 7040)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1073, file: !1074, line: 890, baseType: !371, size: 64, offset: 7104)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1073, file: !1074, line: 891, baseType: !1378, size: 128, offset: 7168)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1074, line: 242, size: 128, elements: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1378, file: !1074, line: 244, baseType: !371, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1378, file: !1074, line: 245, baseType: !371, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1378, file: !1074, line: 246, baseType: !732, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1073, file: !1074, line: 900, baseType: !273, size: 64, offset: 7296)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1073, file: !1074, line: 901, baseType: !273, size: 64, offset: 7360)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1073, file: !1074, line: 904, baseType: !371, size: 64, offset: 7424)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1073, file: !1074, line: 907, baseType: !371, size: 64, offset: 7488)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1073, file: !1074, line: 910, baseType: !273, size: 64, offset: 7552)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1073, file: !1074, line: 911, baseType: !273, size: 64, offset: 7616)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1073, file: !1074, line: 914, baseType: !1390, size: 640, offset: 7680)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1391, line: 123, size: 640, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1392 = !{!1393, !1399, !1400}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1390, file: !1391, line: 124, baseType: !1394, size: 576)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 576, elements: !224)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1391, line: 108, size: 192, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1395, file: !1391, line: 109, baseType: !371, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1395, file: !1391, line: 110, baseType: !1198, size: 128, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1390, file: !1391, line: 125, baseType: !7, size: 32, offset: 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1390, file: !1391, line: 126, baseType: !7, size: 32, offset: 608)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1073, file: !1074, line: 917, baseType: !1402, size: 192, offset: 8320)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1391, line: 134, size: 192, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1402, file: !1391, line: 135, baseType: !314, size: 128, align: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1402, file: !1391, line: 136, baseType: !7, size: 32, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1073, file: !1074, line: 923, baseType: !1407, size: 64, offset: 8512)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1410, line: 111, size: 1280, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1431, !1432, !1433, !1434, !1435, !1436, !1543, !1544, !1545, !1546, !1572, !1575, !1585}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1409, file: !1410, line: 112, baseType: !699, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1409, file: !1410, line: 120, baseType: !385, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1409, file: !1410, line: 121, baseType: !393, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1409, file: !1410, line: 122, baseType: !385, size: 32, offset: 96)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1409, file: !1410, line: 123, baseType: !393, size: 32, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1409, file: !1410, line: 124, baseType: !385, size: 32, offset: 160)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1409, file: !1410, line: 125, baseType: !393, size: 32, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1409, file: !1410, line: 126, baseType: !385, size: 32, offset: 224)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1409, file: !1410, line: 127, baseType: !393, size: 32, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1409, file: !1410, line: 128, baseType: !7, size: 32, offset: 288)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1409, file: !1410, line: 129, baseType: !1423, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1424, line: 26, baseType: !1425)
!1424 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1424, line: 24, size: 64, elements: !1426)
!1426 = !{!1427}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1425, file: !1424, line: 25, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 2)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1409, file: !1410, line: 130, baseType: !1423, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1409, file: !1410, line: 131, baseType: !1423, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1409, file: !1410, line: 132, baseType: !1423, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1409, file: !1410, line: 133, baseType: !1423, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1409, file: !1410, line: 135, baseType: !377, size: 8, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1409, file: !1410, line: 137, baseType: !1437, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1439, line: 189, size: 1664, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442, !1445, !1450, !1451, !1454, !1455, !1460, !1461, !1462, !1463, !1465, !1466, !1467, !1468, !1469, !1507, !1528}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1438, file: !1439, line: 190, baseType: !1086, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1438, file: !1439, line: 191, baseType: !1443, size: 32, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1439, line: 28, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !124, line: 98, baseType: !1299)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1439, line: 192, baseType: !1446, size: 192, offset: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1439, line: 192, size: 192, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1446, file: !1439, line: 193, baseType: !169, size: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1446, file: !1439, line: 194, baseType: !712, size: 192, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1438, file: !1439, line: 199, baseType: !719, size: 256, offset: 256)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1438, file: !1439, line: 200, baseType: !1452, size: 64, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1439, line: 200, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1438, file: !1439, line: 201, baseType: !125, size: 64, offset: 576)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1439, line: 202, baseType: !1456, size: 64, offset: 640)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1439, line: 202, size: 64, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1456, file: !1439, line: 203, baseType: !489, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1456, file: !1439, line: 204, baseType: !489, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1438, file: !1439, line: 206, baseType: !489, size: 64, offset: 704)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1438, file: !1439, line: 207, baseType: !385, size: 32, offset: 768)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1438, file: !1439, line: 208, baseType: !393, size: 32, offset: 800)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1438, file: !1439, line: 209, baseType: !1464, size: 32, offset: 832)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1439, line: 31, baseType: !509)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1438, file: !1439, line: 210, baseType: !265, size: 16, offset: 864)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1438, file: !1439, line: 211, baseType: !265, size: 16, offset: 880)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1438, file: !1439, line: 215, baseType: !1061, size: 16, offset: 896)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1438, file: !1439, line: 222, baseType: !273, size: 64, offset: 960)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1439, line: 239, baseType: !1470, size: 320, offset: 1024)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1439, line: 239, size: 320, elements: !1471)
!1471 = !{!1472, !1499}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1470, file: !1439, line: 240, baseType: !1473, size: 320)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1439, line: 108, size: 320, elements: !1474)
!1474 = !{!1475, !1476, !1488, !1491, !1498}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1473, file: !1439, line: 110, baseType: !273, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !1439, line: 111, baseType: !1477, size: 64, offset: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1473, file: !1439, line: 111, size: 64, elements: !1478)
!1478 = !{!1479, !1487}
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1439, line: 112, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !1439, line: 112, size: 64, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1480, file: !1439, line: 114, baseType: !811, size: 16)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1480, file: !1439, line: 115, baseType: !1484, size: 48, offset: 16)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 48, elements: !1485)
!1485 = !{!1486}
!1486 = !DISubrange(count: 6)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1477, file: !1439, line: 121, baseType: !273, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1473, file: !1439, line: 123, baseType: !1489, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1439, line: 96, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1473, file: !1439, line: 124, baseType: !1492, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1439, line: 102, size: 192, elements: !1494)
!1494 = !{!1495, !1496, !1497}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1493, file: !1439, line: 103, baseType: !314, size: 128, align: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1493, file: !1439, line: 104, baseType: !1086, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1493, file: !1439, line: 105, baseType: !440, size: 8, offset: 160)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1473, file: !1439, line: 125, baseType: !165, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1470, file: !1439, line: 241, baseType: !1500, size: 320)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1470, file: !1439, line: 241, size: 320, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1500, file: !1439, line: 242, baseType: !273, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1500, file: !1439, line: 243, baseType: !273, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1500, file: !1439, line: 244, baseType: !1489, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1500, file: !1439, line: 245, baseType: !1492, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1500, file: !1439, line: 246, baseType: !223, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1439, line: 254, baseType: !1508, size: 256, offset: 1344)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1439, line: 254, size: 256, elements: !1509)
!1509 = !{!1510, !1516}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1508, file: !1439, line: 255, baseType: !1511, size: 256)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1439, line: 128, size: 256, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1511, file: !1439, line: 129, baseType: !125, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1511, file: !1439, line: 130, baseType: !1515, size: 256)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !1027)
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1439, line: 256, baseType: !1517, size: 256)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !1439, line: 256, size: 256, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1517, file: !1439, line: 258, baseType: !169, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1517, file: !1439, line: 259, baseType: !1521, size: 128, offset: 128)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1522, line: 22, size: 128, elements: !1523)
!1522 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1523 = !{!1524, !1527}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1521, file: !1522, line: 23, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1522, line: 23, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1521, file: !1522, line: 24, baseType: !273, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1438, file: !1439, line: 274, baseType: !1529, size: 64, offset: 1600)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1439, line: 170, size: 192, elements: !1531)
!1531 = !{!1532, !1541, !1542}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1530, file: !1439, line: 171, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1439, line: 165, baseType: !1534)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!138, !1437, !1537, !1539, !1437}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1490)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1530, file: !1439, line: 172, baseType: !1437, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1530, file: !1439, line: 173, baseType: !1489, size: 64, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1409, file: !1410, line: 138, baseType: !1437, size: 64, offset: 768)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1409, file: !1410, line: 139, baseType: !1437, size: 64, offset: 832)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1409, file: !1410, line: 140, baseType: !1437, size: 64, offset: 896)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1409, file: !1410, line: 145, baseType: !1547, size: 64, offset: 960)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1549, line: 13, size: 896, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1548, file: !1549, line: 14, baseType: !1086, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1548, file: !1549, line: 15, baseType: !699, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1548, file: !1549, line: 16, baseType: !699, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1548, file: !1549, line: 21, baseType: !723, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1548, file: !1549, line: 27, baseType: !273, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1548, file: !1549, line: 28, baseType: !273, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1548, file: !1549, line: 29, baseType: !723, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1548, file: !1549, line: 32, baseType: !591, size: 128, offset: 384)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1548, file: !1549, line: 33, baseType: !385, size: 32, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1548, file: !1549, line: 37, baseType: !723, size: 64, offset: 576)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1548, file: !1549, line: 44, baseType: !1562, size: 256, offset: 640)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1563, line: 15, size: 256, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570, !1571}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !1563, line: 16, baseType: !732)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1562, file: !1563, line: 18, baseType: !138, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1562, file: !1563, line: 19, baseType: !138, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1562, file: !1563, line: 20, baseType: !138, size: 32, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1562, file: !1563, line: 21, baseType: !138, size: 32, offset: 96)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1562, file: !1563, line: 22, baseType: !273, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1562, file: !1563, line: 23, baseType: !273, size: 64, offset: 192)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1409, file: !1410, line: 146, baseType: !1573, size: 64, offset: 1024)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !386, line: 18, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1409, file: !1410, line: 147, baseType: !1576, size: 64, offset: 1088)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1410, line: 25, size: 64, elements: !1578)
!1578 = !{!1579, !1580, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1577, file: !1410, line: 26, baseType: !699, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1577, file: !1410, line: 27, baseType: !138, size: 32, offset: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1577, file: !1410, line: 28, baseType: !1582, offset: 64)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, elements: !1583)
!1583 = !{!1584}
!1584 = !DISubrange(count: 0)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1410, line: 149, baseType: !1586, size: 128, offset: 1152)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1410, line: 149, size: 128, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1586, file: !1410, line: 150, baseType: !138, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1586, file: !1410, line: 151, baseType: !314, size: 128, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1073, file: !1074, line: 926, baseType: !1407, size: 64, offset: 8576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1073, file: !1074, line: 929, baseType: !1407, size: 64, offset: 8640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1073, file: !1074, line: 933, baseType: !1437, size: 64, offset: 8704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1073, file: !1074, line: 943, baseType: !1594, size: 128, offset: 8768)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 16)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1073, file: !1074, line: 945, baseType: !1598, size: 64, offset: 8896)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1074, line: 49, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1073, file: !1074, line: 956, baseType: !1601, size: 64, offset: 8960)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1074, line: 45, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1073, file: !1074, line: 959, baseType: !1604, size: 64, offset: 9024)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1074, line: 959, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1073, file: !1074, line: 962, baseType: !1607, size: 64, offset: 9088)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1074, line: 66, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1073, file: !1074, line: 966, baseType: !1610, size: 64, offset: 9152)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1074, line: 50, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1073, file: !1074, line: 969, baseType: !1613, size: 64, offset: 9216)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1615, line: 82, size: 7296, elements: !1616)
!1615 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1652, !1661, !1662, !1664, !1665, !1666, !1669, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1699, !1700, !1707, !1708, !1709, !1710, !1711, !1712}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1614, file: !1615, line: 83, baseType: !1086, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1614, file: !1615, line: 84, baseType: !699, size: 32, offset: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1614, file: !1615, line: 85, baseType: !138, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1614, file: !1615, line: 86, baseType: !169, size: 128, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1614, file: !1615, line: 88, baseType: !1341, size: 128, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1614, file: !1615, line: 91, baseType: !1072, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1614, file: !1615, line: 94, baseType: !1624, size: 192, offset: 448)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1625, line: 30, size: 192, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1624, file: !1625, line: 31, baseType: !169, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1624, file: !1625, line: 32, baseType: !1629, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1630, line: 25, baseType: !1631)
!1630 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1630, line: 23, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1631, file: !1630, line: 24, baseType: !1225, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1614, file: !1615, line: 97, baseType: !587, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1614, file: !1615, line: 100, baseType: !138, size: 32, offset: 704)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1614, file: !1615, line: 106, baseType: !138, size: 32, offset: 736)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1614, file: !1615, line: 107, baseType: !1072, size: 64, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1614, file: !1615, line: 110, baseType: !138, size: 32, offset: 832)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1614, file: !1615, line: 111, baseType: !7, size: 32, offset: 864)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1614, file: !1615, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1614, file: !1615, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1614, file: !1615, line: 128, baseType: !138, size: 32, offset: 928)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1614, file: !1615, line: 129, baseType: !169, size: 128, offset: 960)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1614, file: !1615, line: 132, baseType: !1147, size: 512, offset: 1088)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1614, file: !1615, line: 133, baseType: !1155, size: 64, offset: 1600)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1614, file: !1615, line: 140, baseType: !1647, size: 256, offset: 1664)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1648, size: 256, elements: !1429)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1615, line: 38, size: 128, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1648, file: !1615, line: 39, baseType: !371, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1648, file: !1615, line: 40, baseType: !371, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1614, file: !1615, line: 146, baseType: !1653, size: 192, offset: 1920)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1615, line: 66, size: 192, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1653, file: !1615, line: 67, baseType: !1656, size: 192)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1615, line: 47, size: 192, elements: !1657)
!1657 = !{!1658, !1659, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1656, file: !1615, line: 48, baseType: !725, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1656, file: !1615, line: 49, baseType: !725, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1656, file: !1615, line: 50, baseType: !725, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1614, file: !1615, line: 150, baseType: !1390, size: 640, offset: 2112)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1614, file: !1615, line: 153, baseType: !1663, size: 256, offset: 2752)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 256, elements: !1027)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1614, file: !1615, line: 159, baseType: !1331, size: 64, offset: 3008)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1614, file: !1615, line: 162, baseType: !138, size: 32, offset: 3072)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1614, file: !1615, line: 164, baseType: !1667, size: 64, offset: 3136)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1615, line: 164, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1614, file: !1615, line: 175, baseType: !1670, size: 32, offset: 3200)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !338, line: 805, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 798, size: 32, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1671, file: !338, line: 803, baseType: !337, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !338, line: 804, baseType: !182, offset: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1614, file: !1615, line: 176, baseType: !371, size: 64, offset: 3264)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1614, file: !1615, line: 176, baseType: !371, size: 64, offset: 3328)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1614, file: !1615, line: 176, baseType: !371, size: 64, offset: 3392)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1614, file: !1615, line: 176, baseType: !371, size: 64, offset: 3456)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1614, file: !1615, line: 177, baseType: !371, size: 64, offset: 3520)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1614, file: !1615, line: 178, baseType: !371, size: 64, offset: 3584)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1614, file: !1615, line: 179, baseType: !1378, size: 128, offset: 3648)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1614, file: !1615, line: 180, baseType: !273, size: 64, offset: 3776)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1614, file: !1615, line: 180, baseType: !273, size: 64, offset: 3840)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1614, file: !1615, line: 180, baseType: !273, size: 64, offset: 3904)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1614, file: !1615, line: 180, baseType: !273, size: 64, offset: 3968)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1614, file: !1615, line: 181, baseType: !273, size: 64, offset: 4032)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1614, file: !1615, line: 181, baseType: !273, size: 64, offset: 4096)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1614, file: !1615, line: 181, baseType: !273, size: 64, offset: 4160)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1614, file: !1615, line: 181, baseType: !273, size: 64, offset: 4224)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1614, file: !1615, line: 182, baseType: !273, size: 64, offset: 4288)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1614, file: !1615, line: 182, baseType: !273, size: 64, offset: 4352)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1614, file: !1615, line: 182, baseType: !273, size: 64, offset: 4416)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1614, file: !1615, line: 182, baseType: !273, size: 64, offset: 4480)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1614, file: !1615, line: 183, baseType: !273, size: 64, offset: 4544)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1614, file: !1615, line: 183, baseType: !273, size: 64, offset: 4608)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1614, file: !1615, line: 184, baseType: !1697, offset: 4672)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1698, line: 12, elements: !196)
!1698 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1614, file: !1615, line: 192, baseType: !373, size: 64, offset: 4672)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1614, file: !1615, line: 203, baseType: !1701, size: 2048, offset: 4736)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1702, size: 2048, elements: !1595)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1703, line: 43, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1702, file: !1703, line: 44, baseType: !272, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1702, file: !1703, line: 45, baseType: !272, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1614, file: !1615, line: 220, baseType: !440, size: 8, offset: 6784)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1614, file: !1615, line: 221, baseType: !1061, size: 16, offset: 6800)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1614, file: !1615, line: 222, baseType: !1061, size: 16, offset: 6816)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1614, file: !1615, line: 224, baseType: !926, size: 64, offset: 6848)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1614, file: !1615, line: 227, baseType: !1045, size: 192, offset: 6912)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1614, file: !1615, line: 233, baseType: !1045, size: 192, offset: 7104)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1073, file: !1074, line: 970, baseType: !1714, size: 64, offset: 9280)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1615, line: 20, size: 16576, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1715, file: !1615, line: 21, baseType: !182)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1715, file: !1615, line: 22, baseType: !1086, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1715, file: !1615, line: 23, baseType: !1341, size: 128, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1715, file: !1615, line: 24, baseType: !1721, size: 16384, offset: 192)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, size: 16384, elements: !228)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1625, line: 49, size: 256, elements: !1723)
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1722, file: !1625, line: 50, baseType: !1725, size: 256)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1625, line: 35, size: 256, elements: !1726)
!1726 = !{!1727, !1734, !1735, !1741}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1725, file: !1625, line: 37, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1729, line: 19, baseType: !1730)
!1729 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1729, line: 18, baseType: !1732)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !138}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1725, file: !1625, line: 38, baseType: !273, size: 64, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1725, file: !1625, line: 44, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1729, line: 22, baseType: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1729, line: 21, baseType: !1739)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1725, file: !1625, line: 46, baseType: !1629, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1073, file: !1074, line: 971, baseType: !1629, size: 64, offset: 9344)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1073, file: !1074, line: 972, baseType: !1629, size: 64, offset: 9408)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1073, file: !1074, line: 974, baseType: !1629, size: 64, offset: 9472)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1073, file: !1074, line: 975, baseType: !1624, size: 192, offset: 9536)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1073, file: !1074, line: 976, baseType: !273, size: 64, offset: 9728)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1073, file: !1074, line: 977, baseType: !270, size: 64, offset: 9792)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1073, file: !1074, line: 978, baseType: !7, size: 32, offset: 9856)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1073, file: !1074, line: 980, baseType: !317, size: 64, offset: 9920)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1073, file: !1074, line: 989, baseType: !1751, size: 128, offset: 9984)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1752, line: 35, size: 128, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1751, file: !1752, line: 36, baseType: !138, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1751, file: !1752, line: 37, baseType: !699, size: 32, offset: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1751, file: !1752, line: 38, baseType: !1757, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1752, line: 23, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1073, file: !1074, line: 992, baseType: !371, size: 64, offset: 10112)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1073, file: !1074, line: 993, baseType: !371, size: 64, offset: 10176)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1073, file: !1074, line: 996, baseType: !182, offset: 10240)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1073, file: !1074, line: 999, baseType: !732, offset: 10240)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1073, file: !1074, line: 1001, baseType: !1764, size: 64, offset: 10240)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1074, line: 636, size: 64, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1764, file: !1074, line: 637, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1073, file: !1074, line: 1005, baseType: !704, size: 128, offset: 10304)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1073, file: !1074, line: 1007, baseType: !1072, size: 64, offset: 10432)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1073, file: !1074, line: 1009, baseType: !1771, size: 64, offset: 10496)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1074, line: 1009, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1073, file: !1074, line: 1043, baseType: !125, size: 64, offset: 10560)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1073, file: !1074, line: 1046, baseType: !1775, size: 64, offset: 10624)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1074, line: 41, flags: DIFlagFwdDecl)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1073, file: !1074, line: 1050, baseType: !1778, size: 64, offset: 10688)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1074, line: 42, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1073, file: !1074, line: 1054, baseType: !1781, size: 64, offset: 10752)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1074, line: 55, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1073, file: !1074, line: 1056, baseType: !1784, size: 64, offset: 10816)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1074, line: 40, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1073, file: !1074, line: 1058, baseType: !1787, size: 64, offset: 10880)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1789, line: 99, size: 704, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1816, !1817}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1788, file: !1789, line: 100, baseType: !723, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1788, file: !1789, line: 101, baseType: !699, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1788, file: !1789, line: 102, baseType: !699, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1788, file: !1789, line: 105, baseType: !182, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1788, file: !1789, line: 107, baseType: !265, size: 16, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1788, file: !1789, line: 109, baseType: !691, size: 128, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1788, file: !1789, line: 110, baseType: !1798, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1789, line: 73, size: 448, elements: !1800)
!1800 = !{!1801, !1804, !1805, !1810, !1815}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1799, file: !1789, line: 74, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1789, line: 74, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1799, file: !1789, line: 75, baseType: !1787, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1789, line: 83, baseType: !1806, size: 128, offset: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1789, line: 83, size: 128, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1806, file: !1789, line: 84, baseType: !169, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1806, file: !1789, line: 85, baseType: !887, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1789, line: 87, baseType: !1811, size: 128, offset: 256)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1789, line: 87, size: 128, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1811, file: !1789, line: 88, baseType: !591, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1811, file: !1789, line: 89, baseType: !314, size: 128, align: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1789, line: 92, baseType: !7, size: 32, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1788, file: !1789, line: 111, baseType: !587, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1788, file: !1789, line: 113, baseType: !1818, size: 256, offset: 448)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1819, line: 102, size: 256, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1822, !1823}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1818, file: !1819, line: 103, baseType: !723, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1818, file: !1819, line: 104, baseType: !169, size: 128, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1818, file: !1819, line: 105, baseType: !1824, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1819, line: 21, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !1828}
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1073, file: !1074, line: 1061, baseType: !1830, size: 64, offset: 10944)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1074, line: 43, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1073, file: !1074, line: 1064, baseType: !273, size: 64, offset: 11008)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1073, file: !1074, line: 1065, baseType: !1834, size: 64, offset: 11072)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1625, line: 14, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1625, line: 12, size: 384, elements: !1837)
!1837 = !{!1838}
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !1625, line: 13, baseType: !1839, size: 384)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1836, file: !1625, line: 13, size: 384, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1839, file: !1625, line: 13, baseType: !138, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1839, file: !1625, line: 13, baseType: !138, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1839, file: !1625, line: 13, baseType: !138, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1839, file: !1625, line: 13, baseType: !1845, size: 256, offset: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1846, line: 32, size: 256, elements: !1847)
!1846 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1853, !1866, !1872, !1881, !1901, !1906}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1845, file: !1846, line: 37, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 34, size: 64, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1849, file: !1846, line: 35, baseType: !1320, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1849, file: !1846, line: 36, baseType: !391, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1845, file: !1846, line: 45, baseType: !1854, size: 192)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 40, size: 192, elements: !1855)
!1855 = !{!1856, !1858, !1859, !1865}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1854, file: !1846, line: 41, baseType: !1857, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !256, line: 95, baseType: !138)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1854, file: !1846, line: 42, baseType: !138, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1854, file: !1846, line: 43, baseType: !1860, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1846, line: 11, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1846, line: 8, size: 64, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1861, file: !1846, line: 9, baseType: !138, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1861, file: !1846, line: 10, baseType: !125, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1854, file: !1846, line: 44, baseType: !138, size: 32, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1845, file: !1846, line: 52, baseType: !1867, size: 128)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 48, size: 128, elements: !1868)
!1868 = !{!1869, !1870, !1871}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1867, file: !1846, line: 49, baseType: !1320, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1867, file: !1846, line: 50, baseType: !391, size: 32, offset: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1867, file: !1846, line: 51, baseType: !1860, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1845, file: !1846, line: 61, baseType: !1873, size: 256)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 55, size: 256, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1880}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1873, file: !1846, line: 56, baseType: !1320, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1873, file: !1846, line: 57, baseType: !391, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1873, file: !1846, line: 58, baseType: !138, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1873, file: !1846, line: 59, baseType: !1879, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !256, line: 94, baseType: !257)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1873, file: !1846, line: 60, baseType: !1879, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1845, file: !1846, line: 95, baseType: !1882, size: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 64, size: 256, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1882, file: !1846, line: 65, baseType: !125, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1882, file: !1846, line: 77, baseType: !1886, size: 192, offset: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1882, file: !1846, line: 77, size: 192, elements: !1887)
!1887 = !{!1888, !1889, !1896}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1886, file: !1846, line: 82, baseType: !1061, size: 16)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1886, file: !1846, line: 88, baseType: !1890, size: 192)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1846, line: 84, size: 192, elements: !1891)
!1891 = !{!1892, !1894, !1895}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1890, file: !1846, line: 85, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !1185)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1890, file: !1846, line: 86, baseType: !125, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1890, file: !1846, line: 87, baseType: !125, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1886, file: !1846, line: 93, baseType: !1897, size: 96)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1886, file: !1846, line: 90, size: 96, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1897, file: !1846, line: 91, baseType: !1893, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1897, file: !1846, line: 92, baseType: !367, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1845, file: !1846, line: 101, baseType: !1902, size: 128)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 98, size: 128, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1902, file: !1846, line: 99, baseType: !258, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1902, file: !1846, line: 100, baseType: !138, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1845, file: !1846, line: 108, baseType: !1907, size: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1845, file: !1846, line: 104, size: 128, elements: !1908)
!1908 = !{!1909, !1910, !1911}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1907, file: !1846, line: 105, baseType: !125, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1907, file: !1846, line: 106, baseType: !138, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1907, file: !1846, line: 107, baseType: !7, size: 32, offset: 96)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1073, file: !1074, line: 1067, baseType: !1697, offset: 11136)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1073, file: !1074, line: 1099, baseType: !1914, size: 64, offset: 11136)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1074, line: 56, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1073, file: !1074, line: 1103, baseType: !169, size: 128, offset: 11200)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1073, file: !1074, line: 1104, baseType: !1918, size: 64, offset: 11328)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1074, line: 46, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1073, file: !1074, line: 1105, baseType: !1045, size: 192, offset: 11392)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1073, file: !1074, line: 1106, baseType: !7, size: 32, offset: 11584)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1073, file: !1074, line: 1109, baseType: !1923, size: 128, offset: 11648)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1924, size: 128, elements: !1429)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1074, line: 51, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1073, file: !1074, line: 1110, baseType: !1045, size: 192, offset: 11776)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1073, file: !1074, line: 1111, baseType: !169, size: 128, offset: 11968)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1073, file: !1074, line: 1173, baseType: !1929, size: 64, offset: 12096)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1931, line: 62, size: 256, align: 256, elements: !1932)
!1931 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1932 = !{!1933, !1934, !1935, !1940}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1930, file: !1931, line: 75, baseType: !367, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1930, file: !1931, line: 90, baseType: !367, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1930, file: !1931, line: 124, baseType: !1936, size: 64, offset: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1930, file: !1931, line: 109, size: 64, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1936, file: !1931, line: 110, baseType: !372, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1936, file: !1931, line: 112, baseType: !372, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1930, file: !1931, line: 144, baseType: !367, size: 32, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1073, file: !1074, line: 1174, baseType: !365, size: 32, offset: 12160)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1073, file: !1074, line: 1179, baseType: !273, size: 64, offset: 12224)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1073, file: !1074, line: 1182, baseType: !1944, size: 128, offset: 12288)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1023, line: 76, size: 128, elements: !1945)
!1945 = !{!1946, !1951, !1952}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1944, file: !1023, line: 85, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1948, line: 7, size: 64, elements: !1949)
!1948 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1947, file: !1948, line: 12, baseType: !1222, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1944, file: !1023, line: 88, baseType: !440, size: 8, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1944, file: !1023, line: 95, baseType: !440, size: 8, offset: 72)
!1953 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !1074, line: 1184, baseType: !1954, size: 128, offset: 12416)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !1074, line: 1184, size: 128, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1954, file: !1074, line: 1185, baseType: !1086, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1954, file: !1074, line: 1186, baseType: !314, size: 128, align: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1073, file: !1074, line: 1190, baseType: !1959, size: 64, offset: 12544)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1074, line: 53, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1073, file: !1074, line: 1192, baseType: !1962, size: 128, offset: 12608)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1023, line: 64, size: 128, elements: !1963)
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1962, file: !1023, line: 65, baseType: !673, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1962, file: !1023, line: 67, baseType: !367, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1962, file: !1023, line: 68, baseType: !367, size: 32, offset: 96)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1073, file: !1074, line: 1206, baseType: !138, size: 32, offset: 12736)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1073, file: !1074, line: 1207, baseType: !138, size: 32, offset: 12768)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1073, file: !1074, line: 1209, baseType: !273, size: 64, offset: 12800)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1073, file: !1074, line: 1219, baseType: !371, size: 64, offset: 12864)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1073, file: !1074, line: 1220, baseType: !371, size: 64, offset: 12928)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1073, file: !1074, line: 1317, baseType: !138, size: 32, offset: 12992)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1073, file: !1074, line: 1319, baseType: !1072, size: 64, offset: 13056)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1073, file: !1074, line: 1322, baseType: !1975, size: 64, offset: 13120)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1074, line: 1322, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1073, file: !1074, line: 1326, baseType: !1086, size: 32, offset: 13184)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1073, file: !1074, line: 1342, baseType: !125, size: 64, offset: 13248)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1073, file: !1074, line: 1343, baseType: !372, size: 64, offset: 13312)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1073, file: !1074, line: 1344, baseType: !371, size: 64, offset: 13376)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1073, file: !1074, line: 1345, baseType: !372, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1073, file: !1074, line: 1346, baseType: !372, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1073, file: !1074, line: 1347, baseType: !372, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1073, file: !1074, line: 1348, baseType: !314, size: 128, align: 64, offset: 13504)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1073, file: !1074, line: 1358, baseType: !1986, size: 34816, offset: 13824)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1987, line: 485, size: 34816, elements: !1988)
!1987 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2018, !2019, !2020, !2021, !2022, !2023, !2026, !2027, !2028}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1986, file: !1987, line: 487, baseType: !1990, size: 192)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1991, size: 192, elements: !224)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1992, line: 16, size: 64, elements: !1993)
!1992 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1993 = !{!1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1991, file: !1992, line: 17, baseType: !811, size: 16)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1991, file: !1992, line: 18, baseType: !811, size: 16, offset: 16)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1991, file: !1992, line: 19, baseType: !811, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1991, file: !1992, line: 19, baseType: !811, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1991, file: !1992, line: 19, baseType: !811, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1991, file: !1992, line: 19, baseType: !811, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1991, file: !1992, line: 19, baseType: !811, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1991, file: !1992, line: 20, baseType: !811, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1991, file: !1992, line: 20, baseType: !811, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1991, file: !1992, line: 20, baseType: !811, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1991, file: !1992, line: 20, baseType: !811, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1991, file: !1992, line: 20, baseType: !811, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1991, file: !1992, line: 20, baseType: !811, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1986, file: !1987, line: 491, baseType: !273, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1986, file: !1987, line: 495, baseType: !265, size: 16, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1986, file: !1987, line: 496, baseType: !265, size: 16, offset: 272)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1986, file: !1987, line: 497, baseType: !265, size: 16, offset: 288)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1986, file: !1987, line: 498, baseType: !265, size: 16, offset: 304)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1986, file: !1987, line: 502, baseType: !273, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1986, file: !1987, line: 503, baseType: !273, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1986, file: !1987, line: 514, baseType: !2015, size: 256, offset: 448)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 256, elements: !1027)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1987, line: 483, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1986, file: !1987, line: 516, baseType: !273, size: 64, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1986, file: !1987, line: 518, baseType: !273, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1986, file: !1987, line: 520, baseType: !273, size: 64, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1986, file: !1987, line: 521, baseType: !273, size: 64, offset: 896)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1986, file: !1987, line: 522, baseType: !273, size: 64, offset: 960)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1986, file: !1987, line: 528, baseType: !2024, size: 64, offset: 1024)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1987, line: 10, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1986, file: !1987, line: 535, baseType: !273, size: 64, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1986, file: !1987, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1986, file: !1987, line: 540, baseType: !2029, size: 33280, offset: 1536)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2030, line: 317, size: 33280, elements: !2031)
!2030 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2029, file: !2030, line: 330, baseType: !7, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2029, file: !2030, line: 337, baseType: !273, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2029, file: !2030, line: 348, baseType: !2035, size: 32768, offset: 512)
!2035 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2030, line: 304, size: 32768, elements: !2036)
!2036 = !{!2037, !2052, !2091, !2141, !2154}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2035, file: !2030, line: 305, baseType: !2038, size: 896)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2030, line: 12, size: 896, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2051}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2038, file: !2030, line: 13, baseType: !365, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2038, file: !2030, line: 14, baseType: !365, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2038, file: !2030, line: 15, baseType: !365, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2038, file: !2030, line: 16, baseType: !365, size: 32, offset: 96)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2038, file: !2030, line: 17, baseType: !365, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2038, file: !2030, line: 18, baseType: !365, size: 32, offset: 160)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2038, file: !2030, line: 19, baseType: !365, size: 32, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2038, file: !2030, line: 22, baseType: !2048, size: 640, offset: 224)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 640, elements: !2049)
!2049 = !{!2050}
!2050 = !DISubrange(count: 20)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2038, file: !2030, line: 25, baseType: !365, size: 32, offset: 864)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2035, file: !2030, line: 306, baseType: !2053, size: 4096, align: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2030, line: 34, size: 4096, align: 128, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2074, !2075, !2076, !2080, !2082, !2086}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2053, file: !2030, line: 35, baseType: !811, size: 16)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2053, file: !2030, line: 36, baseType: !811, size: 16, offset: 16)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2053, file: !2030, line: 37, baseType: !811, size: 16, offset: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2053, file: !2030, line: 38, baseType: !811, size: 16, offset: 48)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !2030, line: 39, baseType: !2060, size: 128, offset: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !2030, line: 39, size: 128, elements: !2061)
!2061 = !{!2062, !2067}
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2030, line: 40, baseType: !2063, size: 128)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2030, line: 40, size: 128, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2063, file: !2030, line: 41, baseType: !371, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2063, file: !2030, line: 42, baseType: !371, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !2030, line: 44, baseType: !2068, size: 128)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2060, file: !2030, line: 44, size: 128, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2073}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2068, file: !2030, line: 45, baseType: !365, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2068, file: !2030, line: 46, baseType: !365, size: 32, offset: 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2068, file: !2030, line: 47, baseType: !365, size: 32, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2068, file: !2030, line: 48, baseType: !365, size: 32, offset: 96)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2053, file: !2030, line: 51, baseType: !365, size: 32, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2053, file: !2030, line: 52, baseType: !365, size: 32, offset: 224)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2053, file: !2030, line: 55, baseType: !2077, size: 1024, offset: 256)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 1024, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2053, file: !2030, line: 58, baseType: !2081, size: 2048, offset: 1280)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 2048, elements: !228)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2053, file: !2030, line: 60, baseType: !2083, size: 384, offset: 3328)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 384, elements: !2084)
!2084 = !{!2085}
!2085 = !DISubrange(count: 12)
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !2030, line: 62, baseType: !2087, size: 384, offset: 3712)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !2030, line: 62, size: 384, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2087, file: !2030, line: 63, baseType: !2083, size: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2087, file: !2030, line: 64, baseType: !2083, size: 384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2035, file: !2030, line: 307, baseType: !2092, size: 1088)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2030, line: 79, size: 1088, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2140}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2092, file: !2030, line: 80, baseType: !365, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2092, file: !2030, line: 81, baseType: !365, size: 32, offset: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2092, file: !2030, line: 82, baseType: !365, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2092, file: !2030, line: 83, baseType: !365, size: 32, offset: 96)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2092, file: !2030, line: 84, baseType: !365, size: 32, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2092, file: !2030, line: 85, baseType: !365, size: 32, offset: 160)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2092, file: !2030, line: 86, baseType: !365, size: 32, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2092, file: !2030, line: 88, baseType: !2048, size: 640, offset: 224)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2092, file: !2030, line: 89, baseType: !1207, size: 8, offset: 864)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2092, file: !2030, line: 90, baseType: !1207, size: 8, offset: 872)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2092, file: !2030, line: 91, baseType: !1207, size: 8, offset: 880)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2092, file: !2030, line: 92, baseType: !1207, size: 8, offset: 888)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2092, file: !2030, line: 93, baseType: !1207, size: 8, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2092, file: !2030, line: 94, baseType: !1207, size: 8, offset: 904)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2092, file: !2030, line: 95, baseType: !2109, size: 64, offset: 960)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2111, line: 11, size: 128, elements: !2112)
!2111 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2110, file: !2111, line: 12, baseType: !258, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2110, file: !2111, line: 13, baseType: !2115, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2117, line: 56, size: 1344, elements: !2118)
!2117 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2116, file: !2117, line: 61, baseType: !273, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2116, file: !2117, line: 62, baseType: !273, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2116, file: !2117, line: 63, baseType: !273, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2116, file: !2117, line: 64, baseType: !273, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2116, file: !2117, line: 65, baseType: !273, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2116, file: !2117, line: 66, baseType: !273, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2116, file: !2117, line: 68, baseType: !273, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2116, file: !2117, line: 69, baseType: !273, size: 64, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2116, file: !2117, line: 70, baseType: !273, size: 64, offset: 512)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2116, file: !2117, line: 71, baseType: !273, size: 64, offset: 576)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2116, file: !2117, line: 72, baseType: !273, size: 64, offset: 640)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2116, file: !2117, line: 73, baseType: !273, size: 64, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2116, file: !2117, line: 74, baseType: !273, size: 64, offset: 768)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2116, file: !2117, line: 75, baseType: !273, size: 64, offset: 832)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2116, file: !2117, line: 76, baseType: !273, size: 64, offset: 896)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2116, file: !2117, line: 81, baseType: !273, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2116, file: !2117, line: 83, baseType: !273, size: 64, offset: 1024)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2116, file: !2117, line: 84, baseType: !273, size: 64, offset: 1088)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2116, file: !2117, line: 85, baseType: !273, size: 64, offset: 1152)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2116, file: !2117, line: 86, baseType: !273, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2116, file: !2117, line: 87, baseType: !273, size: 64, offset: 1280)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2092, file: !2030, line: 96, baseType: !365, size: 32, offset: 1024)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2035, file: !2030, line: 308, baseType: !2142, size: 4608, align: 512)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2030, line: 289, size: 4608, align: 512, elements: !2143)
!2143 = !{!2144, !2145, !2152}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2142, file: !2030, line: 290, baseType: !2053, size: 4096, align: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2142, file: !2030, line: 291, baseType: !2146, size: 512, offset: 4096)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2030, line: 268, size: 512, elements: !2147)
!2147 = !{!2148, !2149, !2150}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2146, file: !2030, line: 269, baseType: !371, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2146, file: !2030, line: 270, baseType: !371, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2146, file: !2030, line: 271, baseType: !2151, size: 384, offset: 128)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !1485)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2142, file: !2030, line: 292, baseType: !2153, offset: 4608)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, elements: !1583)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2035, file: !2030, line: 309, baseType: !2155, size: 32768)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 32768, elements: !2156)
!2156 = !{!2157}
!2157 = !DISubrange(count: 4096)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1069, file: !675, line: 378, baseType: !2159, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1065, file: !675, line: 384, baseType: !1362, size: 192, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !930, file: !675, line: 500, baseType: !182, offset: 6656)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !930, file: !675, line: 501, baseType: !2163, size: 64, offset: 6656)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !675, line: 387, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !930, file: !675, line: 516, baseType: !1573, size: 64, offset: 6720)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !930, file: !675, line: 519, baseType: !301, size: 64, offset: 6784)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !930, file: !675, line: 521, baseType: !2168, size: 64, offset: 6848)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !675, line: 521, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !930, file: !675, line: 545, baseType: !699, size: 32, offset: 6912)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !930, file: !675, line: 548, baseType: !440, size: 8, offset: 6944)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !930, file: !675, line: 550, baseType: !2173, offset: 6952)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2174, line: 142, elements: !196)
!2174 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !930, file: !675, line: 554, baseType: !1818, size: 256, offset: 6976)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !930, file: !675, line: 557, baseType: !365, size: 32, offset: 7232)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !927, file: !675, line: 565, baseType: !2178, offset: 7296)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, elements: !2179)
!2179 = !{!2180}
!2180 = !DISubrange(count: -1)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !923, file: !675, line: 151, baseType: !699, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !916, file: !675, line: 156, baseType: !182, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !675, line: 159, baseType: !2184, size: 128)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !675, line: 159, size: 128, elements: !2185)
!2185 = !{!2186, !2189}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2184, file: !675, line: 161, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !675, line: 161, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2184, file: !675, line: 162, baseType: !125, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !679, file: !675, line: 176, baseType: !314, size: 128, align: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !675, line: 179, baseType: !2192, size: 32, offset: 384)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !675, line: 179, size: 32, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2192, file: !675, line: 184, baseType: !699, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2192, file: !675, line: 192, baseType: !7, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2192, file: !675, line: 194, baseType: !7, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2192, file: !675, line: 195, baseType: !138, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !674, file: !675, line: 199, baseType: !699, size: 32, offset: 416)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !609, file: !31, line: 1964, baseType: !2200, size: 64, offset: 1344)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!258, !549, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2205, line: 12, size: 256, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2206 = !{!2207, !2208, !2209, !2210, !2211}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2204, file: !2205, line: 13, baseType: !123, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2204, file: !2205, line: 16, baseType: !138, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2204, file: !2205, line: 23, baseType: !273, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2204, file: !2205, line: 30, baseType: !273, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2204, file: !2205, line: 33, baseType: !2212, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2205, line: 33, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !609, file: !31, line: 1966, baseType: !2200, size: 64, offset: 1408)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !550, file: !31, line: 1424, baseType: !2216, size: 64, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2218)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2219)
!2219 = !{!2220, !2266, !2270, !2274, !2275, !2276, !2277, !2278, !2283, !2288, !2292}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2218, file: !25, line: 323, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!138, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2251, !2252, !2253}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2225, file: !25, line: 295, baseType: !591, size: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2225, file: !25, line: 296, baseType: !169, size: 128, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2225, file: !25, line: 297, baseType: !169, size: 128, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2225, file: !25, line: 298, baseType: !169, size: 128, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2225, file: !25, line: 299, baseType: !1045, size: 192, offset: 512)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2225, file: !25, line: 300, baseType: !182, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2225, file: !25, line: 301, baseType: !699, size: 32, offset: 704)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2225, file: !25, line: 302, baseType: !549, size: 64, offset: 768)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2225, file: !25, line: 303, baseType: !2236, size: 64, offset: 832)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2237)
!2237 = !{!2238, !2250}
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !25, line: 69, baseType: !2239, size: 32)
!2239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !25, line: 69, size: 32, elements: !2240)
!2240 = !{!2241, !2242, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2239, file: !25, line: 70, baseType: !385, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2239, file: !25, line: 71, baseType: !393, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2239, file: !25, line: 72, baseType: !2244, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2245, line: 24, baseType: !2246)
!2245 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2245, line: 22, size: 32, elements: !2247)
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2246, file: !2245, line: 23, baseType: !2249, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2245, line: 20, baseType: !391)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2236, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2225, file: !25, line: 304, baseType: !481, size: 64, offset: 896)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2225, file: !25, line: 305, baseType: !273, size: 64, offset: 960)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2225, file: !25, line: 306, baseType: !2254, size: 576, offset: 1024)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2255)
!2255 = !{!2256, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2254, file: !25, line: 206, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !483)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2254, file: !25, line: 207, baseType: !2257, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2254, file: !25, line: 208, baseType: !2257, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2254, file: !25, line: 209, baseType: !2257, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2254, file: !25, line: 210, baseType: !2257, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2254, file: !25, line: 211, baseType: !2257, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2254, file: !25, line: 212, baseType: !2257, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2254, file: !25, line: 213, baseType: !489, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2254, file: !25, line: 214, baseType: !489, size: 64, offset: 512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2218, file: !25, line: 324, baseType: !2267, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!2224, !549, !138}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2218, file: !25, line: 325, baseType: !2271, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !2224}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2218, file: !25, line: 326, baseType: !2221, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2218, file: !25, line: 327, baseType: !2221, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2218, file: !25, line: 328, baseType: !2221, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2218, file: !25, line: 329, baseType: !637, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2218, file: !25, line: 332, baseType: !2279, size: 64, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!2282, !379}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2218, file: !25, line: 333, baseType: !2284, size: 64, offset: 512)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!138, !379, !2287}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2218, file: !25, line: 335, baseType: !2289, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!138, !379, !2282}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2218, file: !25, line: 337, baseType: !2293, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!138, !549, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !550, file: !31, line: 1425, baseType: !2298, size: 64, offset: 512)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2301)
!2301 = !{!2302, !2306, !2307, !2311, !2312, !2313, !2328, !2351, !2355, !2356, !2379}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2300, file: !25, line: 429, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!138, !549, !138, !138, !499}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2300, file: !25, line: 430, baseType: !637, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2300, file: !25, line: 431, baseType: !2308, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!138, !549, !7}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2300, file: !25, line: 432, baseType: !2308, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2300, file: !25, line: 433, baseType: !637, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2300, file: !25, line: 434, baseType: !2314, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!138, !549, !138, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2318, file: !25, line: 416, baseType: !138, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2318, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2318, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2318, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2318, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2318, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2318, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2318, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2300, file: !25, line: 435, baseType: !2329, size: 64, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!138, !549, !2236, !2332}
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2333, file: !25, line: 344, baseType: !138, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2333, file: !25, line: 345, baseType: !371, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2333, file: !25, line: 346, baseType: !371, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2333, file: !25, line: 347, baseType: !371, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2333, file: !25, line: 348, baseType: !371, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2333, file: !25, line: 349, baseType: !371, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2333, file: !25, line: 350, baseType: !371, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2333, file: !25, line: 351, baseType: !729, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2333, file: !25, line: 353, baseType: !729, size: 64, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2333, file: !25, line: 354, baseType: !138, size: 32, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2333, file: !25, line: 355, baseType: !138, size: 32, offset: 608)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2333, file: !25, line: 356, baseType: !371, size: 64, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2333, file: !25, line: 357, baseType: !371, size: 64, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2333, file: !25, line: 358, baseType: !371, size: 64, offset: 768)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2333, file: !25, line: 359, baseType: !729, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2333, file: !25, line: 360, baseType: !138, size: 32, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2300, file: !25, line: 436, baseType: !2352, size: 64, offset: 448)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!138, !549, !2296, !2332}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2300, file: !25, line: 438, baseType: !2329, size: 64, offset: 512)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2300, file: !25, line: 439, baseType: !2357, size: 64, offset: 576)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!138, !549, !2360}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2362)
!2362 = !{!2363, !2364}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2361, file: !25, line: 410, baseType: !7, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2361, file: !25, line: 411, baseType: !2365, size: 1344, offset: 64)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, size: 1344, elements: !224)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2378}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !25, line: 396, baseType: !7, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2366, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2366, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2366, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2366, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2366, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2366, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2366, file: !25, line: 404, baseType: !373, size: 64, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2366, file: !25, line: 405, baseType: !2377, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !124, line: 126, baseType: !371)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2366, file: !25, line: 406, baseType: !2377, size: 64, offset: 384)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2300, file: !25, line: 440, baseType: !2308, size: 64, offset: 640)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !550, file: !31, line: 1426, baseType: !2381, size: 64, offset: 576)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2383)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !550, file: !31, line: 1427, baseType: !273, size: 64, offset: 640)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !550, file: !31, line: 1428, baseType: !273, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !550, file: !31, line: 1429, baseType: !273, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !550, file: !31, line: 1430, baseType: !331, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !550, file: !31, line: 1431, baseType: !719, size: 256, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !550, file: !31, line: 1432, baseType: !138, size: 32, offset: 1152)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !550, file: !31, line: 1433, baseType: !699, size: 32, offset: 1184)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !550, file: !31, line: 1437, baseType: !2392, size: 64, offset: 1216)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !550, file: !31, line: 1449, baseType: !2397, size: 64, offset: 1280)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !348, line: 34, size: 64, elements: !2398)
!2398 = !{!2399}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2397, file: !348, line: 35, baseType: !351, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !550, file: !31, line: 1450, baseType: !169, size: 128, offset: 1344)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !550, file: !31, line: 1451, baseType: !2402, size: 64, offset: 1472)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !550, file: !31, line: 1452, baseType: !1784, size: 64, offset: 1536)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !550, file: !31, line: 1453, baseType: !2406, size: 64, offset: 1600)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !550, file: !31, line: 1454, baseType: !591, size: 128, offset: 1664)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !550, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !550, file: !31, line: 1456, baseType: !2411, size: 2432, offset: 1856)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2412)
!2412 = !{!2413, !2414, !2415, !2417, !2449}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2411, file: !25, line: 519, baseType: !7, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2411, file: !25, line: 520, baseType: !719, size: 256, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2411, file: !25, line: 521, baseType: !2416, size: 192, offset: 320)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 192, elements: !224)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2411, file: !25, line: 522, baseType: !2418, size: 1728, offset: 512)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2419, size: 1728, elements: !224)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2420)
!2420 = !{!2421, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2419, file: !25, line: 223, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2424)
!2424 = !{!2425, !2426, !2439, !2440}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2423, file: !25, line: 444, baseType: !138, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2423, file: !25, line: 445, baseType: !2427, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2429)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2430)
!2430 = !{!2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2429, file: !25, line: 311, baseType: !637, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2429, file: !25, line: 312, baseType: !637, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2429, file: !25, line: 313, baseType: !637, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2429, file: !25, line: 314, baseType: !637, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2429, file: !25, line: 315, baseType: !2221, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2429, file: !25, line: 316, baseType: !2221, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2429, file: !25, line: 317, baseType: !2221, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2429, file: !25, line: 318, baseType: !2293, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2423, file: !25, line: 446, baseType: !582, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2423, file: !25, line: 447, baseType: !2422, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2419, file: !25, line: 224, baseType: !138, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2419, file: !25, line: 226, baseType: !169, size: 128, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2419, file: !25, line: 227, baseType: !273, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2419, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2419, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2419, file: !25, line: 230, baseType: !2257, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2419, file: !25, line: 231, baseType: !2257, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2419, file: !25, line: 232, baseType: !125, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2411, file: !25, line: 523, baseType: !2450, size: 192, offset: 2240)
!2450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2427, size: 192, elements: !224)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !550, file: !31, line: 1458, baseType: !2452, size: 2112, offset: 4288)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2453)
!2453 = !{!2454, !2455, !2456}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2452, file: !31, line: 1411, baseType: !138, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2452, file: !31, line: 1412, baseType: !1341, size: 128, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2452, file: !31, line: 1413, baseType: !2457, size: 1920, offset: 192)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2458, size: 1920, elements: !224)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2459, line: 12, size: 640, elements: !2460)
!2459 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2460 = !{!2461, !2469, !2471, !2476, !2477}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2458, file: !2459, line: 13, baseType: !2462, size: 320)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2463, line: 17, size: 320, elements: !2464)
!2463 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !{!2465, !2466, !2467, !2468}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2462, file: !2463, line: 18, baseType: !138, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2462, file: !2463, line: 19, baseType: !138, size: 32, offset: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2462, file: !2463, line: 20, baseType: !1341, size: 128, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2462, file: !2463, line: 22, baseType: !314, size: 128, align: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2458, file: !2459, line: 14, baseType: !2470, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2458, file: !2459, line: 15, baseType: !2472, size: 64, offset: 384)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2473, line: 16, size: 64, elements: !2474)
!2473 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2474 = !{!2475}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2472, file: !2473, line: 17, baseType: !1072, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2458, file: !2459, line: 16, baseType: !1341, size: 128, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2458, file: !2459, line: 17, baseType: !699, size: 32, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !550, file: !31, line: 1465, baseType: !125, size: 64, offset: 6400)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !550, file: !31, line: 1468, baseType: !365, size: 32, offset: 6464)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !550, file: !31, line: 1470, baseType: !489, size: 64, offset: 6528)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !550, file: !31, line: 1471, baseType: !489, size: 64, offset: 6592)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !550, file: !31, line: 1473, baseType: !367, size: 32, offset: 6656)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !550, file: !31, line: 1474, baseType: !2484, size: 64, offset: 6720)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !550, file: !31, line: 1477, baseType: !2487, size: 256, offset: 6784)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !2078)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !550, file: !31, line: 1478, baseType: !2489, size: 128, offset: 7040)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2490, line: 18, baseType: !2491)
!2490 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2490, line: 16, size: 128, elements: !2492)
!2492 = !{!2493}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2491, file: !2490, line: 17, baseType: !2494, size: 128)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 128, elements: !1595)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !550, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !550, file: !31, line: 1481, baseType: !2497, size: 32, offset: 7200)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !124, line: 150, baseType: !7)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !550, file: !31, line: 1487, baseType: !1045, size: 192, offset: 7232)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !550, file: !31, line: 1493, baseType: !165, size: 64, offset: 7424)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !550, file: !31, line: 1495, baseType: !2501, size: 64, offset: 7488)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !333, line: 135, size: 1024, align: 512, elements: !2504)
!2504 = !{!2505, !2509, !2510, !2517, !2523, !2527, !2531, !2535, !2536, !2540, !2544, !2549, !2553}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2503, file: !333, line: 136, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!138, !331, !7}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2503, file: !333, line: 137, baseType: !2506, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2503, file: !333, line: 138, baseType: !2511, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!138, !2514, !2516}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2503, file: !333, line: 139, baseType: !2518, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!138, !2514, !7, !165, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2503, file: !333, line: 141, baseType: !2524, size: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!138, !2514}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2503, file: !333, line: 142, baseType: !2528, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!138, !331}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2503, file: !333, line: 143, baseType: !2532, size: 64, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !331}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2503, file: !333, line: 144, baseType: !2532, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2503, file: !333, line: 145, baseType: !2537, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !331, !379}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2503, file: !333, line: 146, baseType: !2541, size: 64, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!223, !331, !223, !138}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2503, file: !333, line: 147, baseType: !2545, size: 64, offset: 640)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!327, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2503, file: !333, line: 148, baseType: !2550, size: 64, offset: 704)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!138, !499, !440}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2503, file: !333, line: 149, baseType: !2554, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!331, !331, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !550, file: !31, line: 1500, baseType: !138, size: 32, offset: 7552)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !550, file: !31, line: 1502, baseType: !2561, size: 448, offset: 7616)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2205, line: 60, size: 448, elements: !2562)
!2562 = !{!2563, !2568, !2569, !2570, !2571, !2572, !2573}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2561, file: !2205, line: 61, baseType: !2564, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!273, !2567, !2203}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2561, file: !2205, line: 63, baseType: !2564, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2561, file: !2205, line: 66, baseType: !258, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2561, file: !2205, line: 67, baseType: !138, size: 32, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2561, file: !2205, line: 68, baseType: !7, size: 32, offset: 224)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2561, file: !2205, line: 71, baseType: !169, size: 128, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2561, file: !2205, line: 77, baseType: !2574, size: 64, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !550, file: !31, line: 1505, baseType: !723, size: 64, offset: 8064)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !550, file: !31, line: 1508, baseType: !723, size: 64, offset: 8128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !550, file: !31, line: 1511, baseType: !138, size: 32, offset: 8192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !550, file: !31, line: 1514, baseType: !861, size: 32, offset: 8224)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !550, file: !31, line: 1517, baseType: !2580, size: 64, offset: 8256)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1819, line: 18, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !550, file: !31, line: 1518, baseType: !587, size: 64, offset: 8320)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !550, file: !31, line: 1525, baseType: !1573, size: 64, offset: 8384)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !550, file: !31, line: 1532, baseType: !2585, size: 64, offset: 8448)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2586, line: 52, size: 64, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2585, file: !2586, line: 53, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2586, line: 40, size: 256, elements: !2591)
!2591 = !{!2592, !2593, !2598}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2590, file: !2586, line: 42, baseType: !182)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2590, file: !2586, line: 44, baseType: !2594, size: 192)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2586, line: 28, size: 192, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2594, file: !2586, line: 29, baseType: !169, size: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2594, file: !2586, line: 31, baseType: !258, size: 64, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2590, file: !2586, line: 49, baseType: !258, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !550, file: !31, line: 1533, baseType: !2585, size: 64, offset: 8512)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !550, file: !31, line: 1534, baseType: !314, size: 128, align: 64, offset: 8576)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !550, file: !31, line: 1535, baseType: !1818, size: 256, offset: 8704)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !550, file: !31, line: 1537, baseType: !1045, size: 192, offset: 8960)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !550, file: !31, line: 1542, baseType: !138, size: 32, offset: 9152)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !550, file: !31, line: 1545, baseType: !182, offset: 9184)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !550, file: !31, line: 1546, baseType: !169, size: 128, offset: 9216)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !550, file: !31, line: 1548, baseType: !182, offset: 9344)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !550, file: !31, line: 1549, baseType: !169, size: 128, offset: 9344)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !380, file: !31, line: 624, baseType: !686, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !380, file: !31, line: 631, baseType: !273, size: 64, offset: 320)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !31, line: 639, baseType: !2611, size: 32, offset: 384)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !31, line: 639, size: 32, elements: !2612)
!2612 = !{!2613, !2615}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2611, file: !31, line: 640, baseType: !2614, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2611, file: !31, line: 641, baseType: !7, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !380, file: !31, line: 643, baseType: !463, size: 32, offset: 416)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !380, file: !31, line: 644, baseType: !481, size: 64, offset: 448)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !380, file: !31, line: 645, baseType: !485, size: 128, offset: 512)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !380, file: !31, line: 646, baseType: !485, size: 128, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !380, file: !31, line: 647, baseType: !485, size: 128, offset: 768)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !380, file: !31, line: 648, baseType: !182, offset: 896)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !380, file: !31, line: 649, baseType: !265, size: 16, offset: 896)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !380, file: !31, line: 650, baseType: !1207, size: 8, offset: 912)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !380, file: !31, line: 651, baseType: !1207, size: 8, offset: 920)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !380, file: !31, line: 652, baseType: !2377, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !380, file: !31, line: 659, baseType: !273, size: 64, offset: 1024)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !380, file: !31, line: 660, baseType: !719, size: 256, offset: 1088)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !380, file: !31, line: 662, baseType: !273, size: 64, offset: 1344)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !380, file: !31, line: 663, baseType: !273, size: 64, offset: 1408)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !380, file: !31, line: 665, baseType: !591, size: 128, offset: 1472)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !380, file: !31, line: 666, baseType: !169, size: 128, offset: 1600)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !380, file: !31, line: 675, baseType: !169, size: 128, offset: 1728)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !380, file: !31, line: 676, baseType: !169, size: 128, offset: 1856)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !380, file: !31, line: 677, baseType: !169, size: 128, offset: 1984)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !31, line: 678, baseType: !2636, size: 128, offset: 2112)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !31, line: 678, size: 128, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2636, file: !31, line: 679, baseType: !587, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2636, file: !31, line: 680, baseType: !314, size: 128, align: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !380, file: !31, line: 682, baseType: !725, size: 64, offset: 2240)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !380, file: !31, line: 683, baseType: !725, size: 64, offset: 2304)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !380, file: !31, line: 684, baseType: !699, size: 32, offset: 2368)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !380, file: !31, line: 685, baseType: !699, size: 32, offset: 2400)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !380, file: !31, line: 686, baseType: !699, size: 32, offset: 2432)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !380, file: !31, line: 688, baseType: !699, size: 32, offset: 2464)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !31, line: 690, baseType: !2647, size: 64, offset: 2496)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !31, line: 690, size: 64, elements: !2648)
!2648 = !{!2649, !2881}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2647, file: !31, line: 691, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2653)
!2653 = !{!2654, !2655, !2659, !2664, !2668, !2669, !2670, !2674, !2687, !2688, !2705, !2709, !2710, !2714, !2715, !2719, !2724, !2725, !2729, !2733, !2841, !2845, !2846, !2850, !2851, !2855, !2859, !2864, !2868, !2872, !2876, !2880}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2652, file: !31, line: 1823, baseType: !582, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2652, file: !31, line: 1824, baseType: !2656, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!481, !301, !481, !138}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2652, file: !31, line: 1825, baseType: !2660, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!254, !301, !223, !270, !2663}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2652, file: !31, line: 1826, baseType: !2665, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!254, !301, !165, !270, !2663}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2652, file: !31, line: 1827, baseType: !796, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2652, file: !31, line: 1828, baseType: !796, size: 64, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2652, file: !31, line: 1829, baseType: !2671, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!138, !799, !440}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2652, file: !31, line: 1830, baseType: !2675, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!138, !301, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2680)
!2680 = !{!2681, !2686}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2679, file: !31, line: 1777, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2683)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!138, !2678, !165, !138, !481, !371, !7}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2679, file: !31, line: 1778, baseType: !481, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2652, file: !31, line: 1831, baseType: !2675, size: 64, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2652, file: !31, line: 1832, baseType: !2689, size: 64, offset: 576)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!2692, !301, !2694}
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2693, line: 52, baseType: !7)
!2693 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2696, line: 43, size: 128, elements: !2697)
!2696 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2697 = !{!2698, !2704}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2695, file: !2696, line: 44, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2696, line: 37, baseType: !2700)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{null, !301, !2703, !2694}
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2695, file: !2696, line: 45, baseType: !2692, size: 32, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2652, file: !31, line: 1833, baseType: !2706, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!258, !301, !7, !273}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2652, file: !31, line: 1834, baseType: !2706, size: 64, offset: 704)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2652, file: !31, line: 1835, baseType: !2711, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!138, !301, !933}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2652, file: !31, line: 1836, baseType: !273, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2652, file: !31, line: 1837, baseType: !2716, size: 64, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!138, !379, !301}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2652, file: !31, line: 1838, baseType: !2720, size: 64, offset: 960)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!138, !301, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !125)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2652, file: !31, line: 1839, baseType: !2716, size: 64, offset: 1024)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2652, file: !31, line: 1840, baseType: !2726, size: 64, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!138, !301, !481, !481, !138}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2652, file: !31, line: 1841, baseType: !2730, size: 64, offset: 1152)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!138, !138, !301, !138}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2652, file: !31, line: 1842, baseType: !2734, size: 64, offset: 1216)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!138, !301, !138, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2771, !2772, !2773, !2786, !2817}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2738, file: !31, line: 1063, baseType: !2737, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2738, file: !31, line: 1064, baseType: !169, size: 128, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2738, file: !31, line: 1065, baseType: !591, size: 128, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2738, file: !31, line: 1066, baseType: !169, size: 128, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2738, file: !31, line: 1069, baseType: !169, size: 128, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2738, file: !31, line: 1072, baseType: !2723, size: 64, offset: 576)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2738, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2738, file: !31, line: 1074, baseType: !377, size: 8, offset: 672)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2738, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2738, file: !31, line: 1076, baseType: !138, size: 32, offset: 736)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2738, file: !31, line: 1077, baseType: !1341, size: 128, offset: 768)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2738, file: !31, line: 1078, baseType: !301, size: 64, offset: 896)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2738, file: !31, line: 1079, baseType: !481, size: 64, offset: 960)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2738, file: !31, line: 1080, baseType: !481, size: 64, offset: 1024)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2738, file: !31, line: 1082, baseType: !2755, size: 64, offset: 1088)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2757)
!2757 = !{!2758, !2766, !2767, !2768, !2769, !2770}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2756, file: !31, line: 1315, baseType: !2759)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2760, line: 20, baseType: !2761)
!2760 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2760, line: 11, elements: !2762)
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2761, file: !2760, line: 12, baseType: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !194, line: 33, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 31, elements: !196)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2756, file: !31, line: 1316, baseType: !138, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2756, file: !31, line: 1317, baseType: !138, size: 32, offset: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2756, file: !31, line: 1318, baseType: !2755, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2756, file: !31, line: 1319, baseType: !301, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2756, file: !31, line: 1320, baseType: !314, size: 128, align: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2738, file: !31, line: 1084, baseType: !273, size: 64, offset: 1152)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2738, file: !31, line: 1085, baseType: !273, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2738, file: !31, line: 1087, baseType: !2774, size: 64, offset: 1280)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2776)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2777)
!2777 = !{!2778, !2782}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2776, file: !31, line: 1012, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !2737, !2737}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2776, file: !31, line: 1013, baseType: !2783, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2737}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2738, file: !31, line: 1088, baseType: !2787, size: 64, offset: 1344)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2790)
!2790 = !{!2791, !2795, !2799, !2800, !2804, !2808, !2812, !2816}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2789, file: !31, line: 1017, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!2723, !2723}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2789, file: !31, line: 1018, baseType: !2796, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2723}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2789, file: !31, line: 1019, baseType: !2783, size: 64, offset: 128)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2789, file: !31, line: 1020, baseType: !2801, size: 64, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!138, !2737, !138}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2789, file: !31, line: 1021, baseType: !2805, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!440, !2737}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2789, file: !31, line: 1022, baseType: !2809, size: 64, offset: 320)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!138, !2737, !138, !172}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2789, file: !31, line: 1023, baseType: !2813, size: 64, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2737, !773}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2789, file: !31, line: 1024, baseType: !2805, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2738, file: !31, line: 1097, baseType: !2818, size: 256, offset: 1408)
!2818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2738, file: !31, line: 1089, size: 256, elements: !2819)
!2819 = !{!2820, !2829, !2835}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2818, file: !31, line: 1090, baseType: !2821, size: 256)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2822, line: 10, size: 256, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2823 = !{!2824, !2825, !2828}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2821, file: !2822, line: 11, baseType: !365, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2821, file: !2822, line: 12, baseType: !2826, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2822, line: 5, flags: DIFlagFwdDecl)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2821, file: !2822, line: 13, baseType: !169, size: 128, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2818, file: !31, line: 1091, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2822, line: 17, size: 64, elements: !2831)
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2830, file: !2822, line: 18, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2822, line: 16, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2818, file: !31, line: 1096, baseType: !2836, size: 192)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2818, file: !31, line: 1092, size: 192, elements: !2837)
!2837 = !{!2838, !2839, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2836, file: !31, line: 1093, baseType: !169, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2836, file: !31, line: 1094, baseType: !138, size: 32, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2836, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2652, file: !31, line: 1843, baseType: !2842, size: 64, offset: 1280)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!254, !301, !673, !138, !270, !2663, !138}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2652, file: !31, line: 1844, baseType: !973, size: 64, offset: 1344)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2652, file: !31, line: 1845, baseType: !2847, size: 64, offset: 1408)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!138, !138}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2652, file: !31, line: 1846, baseType: !2734, size: 64, offset: 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2652, file: !31, line: 1847, baseType: !2852, size: 64, offset: 1536)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!254, !1959, !301, !2663, !270, !7}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2652, file: !31, line: 1848, baseType: !2856, size: 64, offset: 1600)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!254, !301, !2663, !1959, !270, !7}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2652, file: !31, line: 1849, baseType: !2860, size: 64, offset: 1664)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!138, !301, !258, !2863, !773}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2652, file: !31, line: 1850, baseType: !2865, size: 64, offset: 1728)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!258, !301, !138, !481, !481}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2652, file: !31, line: 1852, baseType: !2869, size: 64, offset: 1792)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !663, !301}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2652, file: !31, line: 1856, baseType: !2873, size: 64, offset: 1856)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!254, !301, !481, !301, !481, !270, !7}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2652, file: !31, line: 1858, baseType: !2877, size: 64, offset: 1920)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!481, !301, !481, !301, !481, !481, !7}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2652, file: !31, line: 1861, baseType: !2726, size: 64, offset: 1984)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2647, file: !31, line: 692, baseType: !616, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !380, file: !31, line: 694, baseType: !2883, size: 64, offset: 2560)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2884, file: !31, line: 1101, baseType: !182)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2884, file: !31, line: 1102, baseType: !169, size: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2884, file: !31, line: 1103, baseType: !169, size: 128, offset: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2884, file: !31, line: 1104, baseType: !169, size: 128, offset: 256)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !380, file: !31, line: 695, baseType: !687, size: 1216, align: 64, offset: 2624)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !380, file: !31, line: 696, baseType: !169, size: 128, offset: 3840)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !31, line: 697, baseType: !2893, size: 64, offset: 3968)
!2893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !31, line: 697, size: 64, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2908, !2909}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2893, file: !31, line: 698, baseType: !1959, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2893, file: !31, line: 699, baseType: !2402, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2893, file: !31, line: 700, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2900, line: 14, size: 832, elements: !2901)
!2900 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2899, file: !2900, line: 15, baseType: !161, size: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2899, file: !2900, line: 16, baseType: !582, size: 64, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2899, file: !2900, line: 17, baseType: !2650, size: 64, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2899, file: !2900, line: 18, baseType: !169, size: 128, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2899, file: !2900, line: 19, baseType: !463, size: 32, offset: 768)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2899, file: !2900, line: 20, baseType: !7, size: 32, offset: 800)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2893, file: !31, line: 701, baseType: !223, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2893, file: !31, line: 702, baseType: !7, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !380, file: !31, line: 705, baseType: !367, size: 32, offset: 4032)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !380, file: !31, line: 708, baseType: !367, size: 32, offset: 4064)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !380, file: !31, line: 709, baseType: !2484, size: 64, offset: 4096)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !380, file: !31, line: 720, baseType: !125, size: 64, offset: 4160)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !332, file: !333, line: 98, baseType: !2915, size: 256, offset: 448)
!2915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 256, elements: !2078)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !332, file: !333, line: 101, baseType: !2917, size: 32, offset: 704)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2918, line: 25, size: 32, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2917, file: !2918, line: 26, baseType: !2921, size: 32)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2917, file: !2918, line: 26, size: 32, elements: !2922)
!2922 = !{!2923}
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !2921, file: !2918, line: 30, baseType: !2924, size: 32)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2921, file: !2918, line: 30, size: 32, elements: !2925)
!2925 = !{!2926, !2927}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2924, file: !2918, line: 31, baseType: !182)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2924, file: !2918, line: 32, baseType: !138, size: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !332, file: !333, line: 102, baseType: !2501, size: 64, offset: 768)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !332, file: !333, line: 103, baseType: !549, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !332, file: !333, line: 104, baseType: !273, size: 64, offset: 896)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !332, file: !333, line: 105, baseType: !125, size: 64, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !333, line: 107, baseType: !2933, size: 128, offset: 1024)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 107, size: 128, elements: !2934)
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2933, file: !333, line: 108, baseType: !169, size: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2933, file: !333, line: 109, baseType: !2703, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !332, file: !333, line: 111, baseType: !169, size: 128, offset: 1152)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !332, file: !333, line: 112, baseType: !169, size: 128, offset: 1280)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !332, file: !333, line: 120, baseType: !2940, size: 128, offset: 1408)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !332, file: !333, line: 116, size: 128, elements: !2941)
!2941 = !{!2942, !2943, !2944}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2940, file: !333, line: 117, baseType: !591, size: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2940, file: !333, line: 118, baseType: !347, size: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2940, file: !333, line: 119, baseType: !314, size: 128, align: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !302, file: !31, line: 922, baseType: !379, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !302, file: !31, line: 923, baseType: !2650, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !302, file: !31, line: 929, baseType: !182, offset: 384)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !302, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !302, file: !31, line: 931, baseType: !723, size: 64, offset: 448)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !302, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !302, file: !31, line: 933, baseType: !2497, size: 32, offset: 544)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !302, file: !31, line: 934, baseType: !1045, size: 192, offset: 576)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !302, file: !31, line: 935, baseType: !481, size: 64, offset: 768)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !302, file: !31, line: 936, baseType: !2955, size: 192, offset: 832)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2956)
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2955, file: !31, line: 886, baseType: !2759)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2955, file: !31, line: 887, baseType: !1331, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2955, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2955, file: !31, line: 889, baseType: !385, size: 32, offset: 96)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2955, file: !31, line: 889, baseType: !385, size: 32, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2955, file: !31, line: 890, baseType: !138, size: 32, offset: 160)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !302, file: !31, line: 937, baseType: !1407, size: 64, offset: 1024)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !302, file: !31, line: 938, baseType: !2965, size: 256, offset: 1088)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2965, file: !31, line: 897, baseType: !273, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2965, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2965, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2965, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2965, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2965, file: !31, line: 904, baseType: !481, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !302, file: !31, line: 940, baseType: !371, size: 64, offset: 1344)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !302, file: !31, line: 945, baseType: !125, size: 64, offset: 1408)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !302, file: !31, line: 949, baseType: !169, size: 128, offset: 1472)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !302, file: !31, line: 950, baseType: !169, size: 128, offset: 1600)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !302, file: !31, line: 952, baseType: !686, size: 64, offset: 1728)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !302, file: !31, line: 953, baseType: !861, size: 32, offset: 1792)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !302, file: !31, line: 954, baseType: !861, size: 32, offset: 1824)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !292, file: !248, line: 174, baseType: !298, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !292, file: !248, line: 176, baseType: !2982, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!138, !301, !175, !291, !933}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !280, file: !248, line: 90, baseType: !275, size: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !280, file: !248, line: 91, baseType: !2987, size: 64, offset: 256)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !238, file: !162, line: 143, baseType: !2989, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!2992, !175}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2994)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2995)
!2995 = !{!2996, !2997, !3001, !3005, !3013, !3017}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2994, file: !48, line: 40, baseType: !47, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2994, file: !48, line: 41, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!440}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2994, file: !48, line: 42, baseType: !3002, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!125}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2994, file: !48, line: 43, baseType: !3006, size: 64, offset: 192)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!3009, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2994, file: !48, line: 44, baseType: !3014, size: 64, offset: 256)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!3009}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2994, file: !48, line: 45, baseType: !418, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !238, file: !162, line: 144, baseType: !3019, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!3009, !175}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !238, file: !162, line: 145, baseType: !3023, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !175, !3026, !3027}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !161, file: !162, line: 70, baseType: !3029, size: 64, offset: 384)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3031, line: 123, size: 1024, elements: !3032)
!3031 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3161, !3162, !3163, !3164, !3165}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3030, file: !3031, line: 124, baseType: !699, size: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3030, file: !3031, line: 125, baseType: !699, size: 32, offset: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3030, file: !3031, line: 135, baseType: !3029, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3030, file: !3031, line: 136, baseType: !165, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3030, file: !3031, line: 138, baseType: !712, size: 192, align: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3030, file: !3031, line: 140, baseType: !3009, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3030, file: !3031, line: 141, baseType: !7, size: 32, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3030, file: !3031, line: 142, baseType: !3041, size: 256, offset: 512)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3030, file: !3031, line: 142, size: 256, elements: !3042)
!3042 = !{!3043, !3089, !3093}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3041, file: !3031, line: 143, baseType: !3044, size: 192)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3031, line: 91, size: 192, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3044, file: !3031, line: 92, baseType: !273, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3044, file: !3031, line: 94, baseType: !708, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3044, file: !3031, line: 100, baseType: !3049, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3031, line: 180, size: 704, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3061, !3062, !3063, !3087, !3088}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3050, file: !3031, line: 182, baseType: !3029, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3050, file: !3031, line: 183, baseType: !7, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3050, file: !3031, line: 186, baseType: !3055, size: 192, offset: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3056, line: 19, size: 192, elements: !3057)
!3056 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3055, file: !3056, line: 20, baseType: !691, size: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3055, file: !3056, line: 21, baseType: !7, size: 32, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3055, file: !3056, line: 22, baseType: !7, size: 32, offset: 160)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3050, file: !3031, line: 187, baseType: !365, size: 32, offset: 320)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3050, file: !3031, line: 188, baseType: !365, size: 32, offset: 352)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3050, file: !3031, line: 189, baseType: !3064, size: 64, offset: 384)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3031, line: 168, size: 320, elements: !3066)
!3066 = !{!3067, !3071, !3075, !3079, !3083}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3065, file: !3031, line: 169, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!138, !663, !3049}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3065, file: !3031, line: 171, baseType: !3072, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!138, !3029, !165, !264}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3065, file: !3031, line: 173, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!138, !3029}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3065, file: !3031, line: 174, baseType: !3080, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!138, !3029, !3029, !165}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3065, file: !3031, line: 176, baseType: !3084, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!138, !663, !3029, !3049}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3050, file: !3031, line: 192, baseType: !169, size: 128, offset: 448)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3050, file: !3031, line: 194, baseType: !1341, size: 128, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3041, file: !3031, line: 144, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3031, line: 103, size: 64, elements: !3091)
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3090, file: !3031, line: 104, baseType: !3029, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3041, file: !3031, line: 145, baseType: !3094, size: 256)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3031, line: 107, size: 256, elements: !3095)
!3095 = !{!3096, !3156, !3159, !3160}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3094, file: !3031, line: 108, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3031, line: 217, size: 768, elements: !3100)
!3100 = !{!3101, !3121, !3125, !3129, !3133, !3137, !3141, !3145, !3146, !3147, !3148, !3152}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3099, file: !3031, line: 222, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!138, !3105}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3031, line: 197, size: 1088, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3106, file: !3031, line: 199, baseType: !3029, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3106, file: !3031, line: 200, baseType: !301, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3106, file: !3031, line: 201, baseType: !663, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3106, file: !3031, line: 202, baseType: !125, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3106, file: !3031, line: 205, baseType: !1045, size: 192, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3106, file: !3031, line: 206, baseType: !1045, size: 192, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3106, file: !3031, line: 207, baseType: !138, size: 32, offset: 640)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3106, file: !3031, line: 208, baseType: !169, size: 128, offset: 704)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3106, file: !3031, line: 209, baseType: !223, size: 64, offset: 832)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3106, file: !3031, line: 211, baseType: !270, size: 64, offset: 896)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3106, file: !3031, line: 212, baseType: !440, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3106, file: !3031, line: 213, baseType: !440, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3106, file: !3031, line: 214, baseType: !961, size: 64, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3099, file: !3031, line: 223, baseType: !3122, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null, !3105}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3099, file: !3031, line: 236, baseType: !3126, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!138, !663, !125}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3099, file: !3031, line: 238, baseType: !3130, size: 64, offset: 192)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!125, !663, !2663}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3099, file: !3031, line: 239, baseType: !3134, size: 64, offset: 256)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!125, !663, !125, !2663}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3099, file: !3031, line: 240, baseType: !3138, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !663, !125}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3099, file: !3031, line: 242, baseType: !3142, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!254, !3105, !223, !270, !481}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3099, file: !3031, line: 252, baseType: !270, size: 64, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3099, file: !3031, line: 259, baseType: !440, size: 8, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3099, file: !3031, line: 260, baseType: !3142, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3099, file: !3031, line: 263, baseType: !3149, size: 64, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!2692, !3105, !2694}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3099, file: !3031, line: 266, baseType: !3153, size: 64, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!138, !3105, !933}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3094, file: !3031, line: 109, baseType: !3157, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3031, line: 31, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3094, file: !3031, line: 110, baseType: !481, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3094, file: !3031, line: 111, baseType: !3029, size: 64, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3030, file: !3031, line: 148, baseType: !125, size: 64, offset: 768)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3030, file: !3031, line: 154, baseType: !371, size: 64, offset: 832)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3030, file: !3031, line: 156, baseType: !265, size: 16, offset: 896)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3030, file: !3031, line: 157, baseType: !264, size: 16, offset: 912)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3030, file: !3031, line: 158, baseType: !3166, size: 64, offset: 960)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3031, line: 32, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !161, file: !162, line: 71, baseType: !3169, size: 32, offset: 448)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3170, line: 19, size: 32, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3171 = !{!3172}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3169, file: !3170, line: 20, baseType: !1086, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !161, file: !162, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !161, file: !162, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !161, file: !162, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !161, file: !162, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !161, file: !162, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !158, file: !60, line: 463, baseType: !157, size: 64, offset: 512)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !158, file: !60, line: 465, baseType: !3180, size: 64, offset: 576)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !158, file: !60, line: 467, baseType: !165, size: 64, offset: 640)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !60, line: 468, baseType: !3184, size: 64, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3186)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3194, !3199, !3203}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3186, file: !60, line: 88, baseType: !165, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3186, file: !60, line: 89, baseType: !277, size: 64, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3186, file: !60, line: 90, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!138, !157, !218}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3186, file: !60, line: 91, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!223, !157, !3198, !3026, !3027}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3186, file: !60, line: 93, baseType: !3200, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !157}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3186, file: !60, line: 95, baseType: !3204, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3207)
!3207 = !{!3208, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3206, file: !67, line: 279, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!138, !157}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3206, file: !67, line: 280, baseType: !3200, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3206, file: !67, line: 281, baseType: !3209, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3206, file: !67, line: 282, baseType: !3209, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3206, file: !67, line: 283, baseType: !3209, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3206, file: !67, line: 284, baseType: !3209, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3206, file: !67, line: 285, baseType: !3209, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3206, file: !67, line: 286, baseType: !3209, size: 64, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3206, file: !67, line: 287, baseType: !3209, size: 64, offset: 512)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3206, file: !67, line: 288, baseType: !3209, size: 64, offset: 576)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3206, file: !67, line: 289, baseType: !3209, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3206, file: !67, line: 290, baseType: !3209, size: 64, offset: 704)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3206, file: !67, line: 291, baseType: !3209, size: 64, offset: 768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3206, file: !67, line: 292, baseType: !3209, size: 64, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3206, file: !67, line: 293, baseType: !3209, size: 64, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3206, file: !67, line: 294, baseType: !3209, size: 64, offset: 960)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3206, file: !67, line: 295, baseType: !3209, size: 64, offset: 1024)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3206, file: !67, line: 296, baseType: !3209, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3206, file: !67, line: 297, baseType: !3209, size: 64, offset: 1152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3206, file: !67, line: 298, baseType: !3209, size: 64, offset: 1216)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3206, file: !67, line: 299, baseType: !3209, size: 64, offset: 1280)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3206, file: !67, line: 300, baseType: !3209, size: 64, offset: 1344)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3206, file: !67, line: 301, baseType: !3209, size: 64, offset: 1408)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !158, file: !60, line: 470, baseType: !3235, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3237, line: 82, size: 1408, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3302, !3305, !3306}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3236, file: !3237, line: 83, baseType: !165, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3236, file: !3237, line: 84, baseType: !165, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3236, file: !3237, line: 85, baseType: !157, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3236, file: !3237, line: 86, baseType: !277, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3236, file: !3237, line: 87, baseType: !277, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3236, file: !3237, line: 88, baseType: !277, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3236, file: !3237, line: 90, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!138, !157, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3262, !3266, !3267, !3268, !3269, !3270, !3278, !3279, !3280, !3281, !3282, !3283}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3250, file: !54, line: 96, baseType: !165, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3250, file: !54, line: 97, baseType: !3235, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3250, file: !54, line: 99, baseType: !582, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3250, file: !54, line: 100, baseType: !165, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3250, file: !54, line: 102, baseType: !440, size: 8, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3250, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3250, file: !54, line: 105, baseType: !3259, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !54, line: 105, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3250, file: !54, line: 106, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !54, line: 106, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3250, file: !54, line: 108, baseType: !3209, size: 64, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3250, file: !54, line: 109, baseType: !3200, size: 64, offset: 512)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3250, file: !54, line: 110, baseType: !3209, size: 64, offset: 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3250, file: !54, line: 111, baseType: !3200, size: 64, offset: 640)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3250, file: !54, line: 112, baseType: !3271, size: 64, offset: 704)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!138, !157, !3274}
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3276)
!3276 = !{!3277}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3275, file: !67, line: 51, baseType: !138, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3250, file: !54, line: 113, baseType: !3209, size: 64, offset: 768)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3250, file: !54, line: 114, baseType: !277, size: 64, offset: 832)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3250, file: !54, line: 115, baseType: !277, size: 64, offset: 896)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3250, file: !54, line: 117, baseType: !3204, size: 64, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3250, file: !54, line: 118, baseType: !3200, size: 64, offset: 1024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3250, file: !54, line: 120, baseType: !3284, size: 64, offset: 1088)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3236, file: !3237, line: 91, baseType: !3191, size: 64, offset: 448)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3236, file: !3237, line: 92, baseType: !3209, size: 64, offset: 512)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3236, file: !3237, line: 93, baseType: !3200, size: 64, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3236, file: !3237, line: 94, baseType: !3209, size: 64, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3236, file: !3237, line: 95, baseType: !3200, size: 64, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3236, file: !3237, line: 97, baseType: !3209, size: 64, offset: 768)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3236, file: !3237, line: 98, baseType: !3209, size: 64, offset: 832)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3236, file: !3237, line: 100, baseType: !3271, size: 64, offset: 896)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3236, file: !3237, line: 101, baseType: !3209, size: 64, offset: 960)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3236, file: !3237, line: 103, baseType: !3209, size: 64, offset: 1024)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3236, file: !3237, line: 105, baseType: !3209, size: 64, offset: 1088)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3236, file: !3237, line: 107, baseType: !3204, size: 64, offset: 1152)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3236, file: !3237, line: 109, baseType: !3299, size: 64, offset: 1216)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3237, line: 109, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3236, file: !3237, line: 111, baseType: !3303, size: 64, offset: 1280)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3237, line: 111, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3236, file: !3237, line: 112, baseType: !597, offset: 1344)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3236, file: !3237, line: 114, baseType: !440, size: 8, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !158, file: !60, line: 471, baseType: !3249, size: 64, offset: 832)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !158, file: !60, line: 473, baseType: !125, size: 64, offset: 896)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !158, file: !60, line: 475, baseType: !125, size: 64, offset: 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !158, file: !60, line: 480, baseType: !1045, size: 192, offset: 1024)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !158, file: !60, line: 484, baseType: !3312, size: 576, offset: 1216)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3312, file: !60, line: 362, baseType: !169, size: 128)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3312, file: !60, line: 363, baseType: !169, size: 128, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3312, file: !60, line: 364, baseType: !169, size: 128, offset: 256)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3312, file: !60, line: 365, baseType: !169, size: 128, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3312, file: !60, line: 366, baseType: !440, size: 8, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3312, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !158, file: !60, line: 485, baseType: !3321, size: 2304, offset: 1792)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3418, !3422}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3321, file: !67, line: 566, baseType: !3274, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3321, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3321, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3321, file: !67, line: 569, baseType: !440, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3321, file: !67, line: 570, baseType: !440, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3321, file: !67, line: 571, baseType: !440, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3321, file: !67, line: 572, baseType: !440, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3321, file: !67, line: 573, baseType: !440, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3321, file: !67, line: 574, baseType: !440, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3321, file: !67, line: 575, baseType: !440, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3321, file: !67, line: 576, baseType: !440, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3321, file: !67, line: 577, baseType: !365, size: 32, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3321, file: !67, line: 578, baseType: !182, offset: 96)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3321, file: !67, line: 580, baseType: !169, size: 128, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3321, file: !67, line: 581, baseType: !1362, size: 192, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3321, file: !67, line: 582, baseType: !3339, size: 64, offset: 448)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3341, line: 43, size: 1472, elements: !3342)
!3341 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3350, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3340, file: !3341, line: 44, baseType: !165, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3340, file: !3341, line: 45, baseType: !138, size: 32, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3340, file: !3341, line: 46, baseType: !169, size: 128, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3340, file: !3341, line: 47, baseType: !182, offset: 256)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3340, file: !3341, line: 48, baseType: !3348, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3340, file: !3341, line: 49, baseType: !3351, size: 320, offset: 320)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3352, line: 11, size: 320, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356, !3361}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3351, file: !3352, line: 16, baseType: !591, size: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3351, file: !3352, line: 17, baseType: !273, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3351, file: !3352, line: 18, baseType: !3357, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3360}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3351, file: !3352, line: 19, baseType: !365, size: 32, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3340, file: !3341, line: 50, baseType: !273, size: 64, offset: 640)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3340, file: !3341, line: 51, baseType: !1155, size: 64, offset: 704)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3340, file: !3341, line: 52, baseType: !1155, size: 64, offset: 768)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3340, file: !3341, line: 53, baseType: !1155, size: 64, offset: 832)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3340, file: !3341, line: 54, baseType: !1155, size: 64, offset: 896)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3340, file: !3341, line: 55, baseType: !1155, size: 64, offset: 960)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3340, file: !3341, line: 56, baseType: !273, size: 64, offset: 1024)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3340, file: !3341, line: 57, baseType: !273, size: 64, offset: 1088)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3340, file: !3341, line: 58, baseType: !273, size: 64, offset: 1152)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3340, file: !3341, line: 59, baseType: !273, size: 64, offset: 1216)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3340, file: !3341, line: 60, baseType: !273, size: 64, offset: 1280)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3340, file: !3341, line: 61, baseType: !157, size: 64, offset: 1344)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3340, file: !3341, line: 62, baseType: !440, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3340, file: !3341, line: 63, baseType: !440, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3321, file: !67, line: 583, baseType: !440, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3321, file: !67, line: 584, baseType: !440, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3321, file: !67, line: 585, baseType: !440, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3321, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3321, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3321, file: !67, line: 592, baseType: !1147, size: 512, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3321, file: !67, line: 593, baseType: !371, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3321, file: !67, line: 594, baseType: !1818, size: 256, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3321, file: !67, line: 595, baseType: !1341, size: 128, offset: 1408)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3321, file: !67, line: 596, baseType: !3348, size: 64, offset: 1536)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3321, file: !67, line: 597, baseType: !699, size: 32, offset: 1600)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3321, file: !67, line: 598, baseType: !699, size: 32, offset: 1632)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3321, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3321, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3321, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3321, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3321, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3321, file: !67, line: 604, baseType: !440, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3321, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3321, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3321, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3321, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3321, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3321, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3321, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3321, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3321, file: !67, line: 613, baseType: !138, size: 32, offset: 1792)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3321, file: !67, line: 614, baseType: !138, size: 32, offset: 1824)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3321, file: !67, line: 615, baseType: !371, size: 64, offset: 1856)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3321, file: !67, line: 616, baseType: !371, size: 64, offset: 1920)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3321, file: !67, line: 617, baseType: !371, size: 64, offset: 1984)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3321, file: !67, line: 618, baseType: !371, size: 64, offset: 2048)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3321, file: !67, line: 620, baseType: !3409, size: 64, offset: 2112)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3410, file: !67, line: 537, baseType: !182)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3410, file: !67, line: 538, baseType: !7, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3410, file: !67, line: 540, baseType: !169, size: 128, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3410, file: !67, line: 543, baseType: !3416, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3321, file: !67, line: 621, baseType: !3419, size: 64, offset: 2176)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !157, !1299}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3321, file: !67, line: 622, baseType: !3423, size: 64, offset: 2240)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !158, file: !60, line: 486, baseType: !3426, size: 64, offset: 4096)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3435, !3436, !3437}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3427, file: !67, line: 643, baseType: !3206, size: 1472)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3427, file: !67, line: 644, baseType: !3209, size: 64, offset: 1472)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3427, file: !67, line: 645, baseType: !3432, size: 64, offset: 1536)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !157, !440}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3427, file: !67, line: 646, baseType: !3209, size: 64, offset: 1600)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3427, file: !67, line: 647, baseType: !3200, size: 64, offset: 1664)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3427, file: !67, line: 648, baseType: !3200, size: 64, offset: 1728)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !158, file: !60, line: 493, baseType: !3439, size: 64, offset: 4160)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !158, file: !60, line: 499, baseType: !169, size: 128, offset: 4224)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !158, file: !60, line: 502, baseType: !3443, size: 64, offset: 4352)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3445)
!3445 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !158, file: !60, line: 504, baseType: !3447, size: 64, offset: 4416)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !158, file: !60, line: 505, baseType: !371, size: 64, offset: 4480)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !158, file: !60, line: 510, baseType: !371, size: 64, offset: 4544)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !158, file: !60, line: 511, baseType: !3451, size: 64, offset: 4608)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3453)
!3453 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !158, file: !60, line: 513, baseType: !3455, size: 64, offset: 4672)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3457)
!3457 = !{!3458, !3459}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3456, file: !60, line: 293, baseType: !7, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3456, file: !60, line: 294, baseType: !273, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !158, file: !60, line: 515, baseType: !169, size: 128, offset: 4736)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !158, file: !60, line: 526, baseType: !3462, offset: 4864)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3463, line: 5, elements: !196)
!3463 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !158, file: !60, line: 528, baseType: !3465, size: 64, offset: 4864)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3467, line: 14, flags: DIFlagFwdDecl)
!3467 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !158, file: !60, line: 529, baseType: !3469, size: 64, offset: 4928)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3471, line: 17, size: 192, elements: !3472)
!3471 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3472 = !{!3473, !3474, !3557}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3470, file: !3471, line: 18, baseType: !3469, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3470, file: !3471, line: 19, baseType: !3475, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3477)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3471, line: 110, size: 1152, elements: !3478)
!3478 = !{!3479, !3483, !3487, !3493, !3499, !3503, !3507, !3512, !3516, !3517, !3521, !3525, !3529, !3540, !3541, !3542, !3543, !3553}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3477, file: !3471, line: 111, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!3469, !3469}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3477, file: !3471, line: 112, baseType: !3484, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{null, !3469}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3477, file: !3471, line: 113, baseType: !3488, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!440, !3491}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3470)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3477, file: !3471, line: 114, baseType: !3494, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!3009, !3491, !3497}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3477, file: !3471, line: 116, baseType: !3500, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!440, !3491, !165}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3477, file: !3471, line: 118, baseType: !3504, size: 64, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!138, !3491, !165, !7, !125, !270}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3477, file: !3471, line: 123, baseType: !3508, size: 64, offset: 384)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!138, !3491, !165, !3511, !270}
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3477, file: !3471, line: 126, baseType: !3513, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!165, !3491}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3477, file: !3471, line: 127, baseType: !3513, size: 64, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3477, file: !3471, line: 128, baseType: !3518, size: 64, offset: 576)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!3469, !3491}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3477, file: !3471, line: 130, baseType: !3522, size: 64, offset: 640)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!3469, !3491, !3469}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3477, file: !3471, line: 133, baseType: !3526, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!3469, !3491, !165}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3477, file: !3471, line: 135, baseType: !3530, size: 64, offset: 768)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!138, !3491, !165, !165, !7, !7, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3471, line: 43, size: 640, elements: !3535)
!3535 = !{!3536, !3537, !3538}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3534, file: !3471, line: 44, baseType: !3469, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3534, file: !3471, line: 45, baseType: !7, size: 32, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3534, file: !3471, line: 46, baseType: !3539, size: 512, offset: 128)
!3539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 512, elements: !1185)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3477, file: !3471, line: 140, baseType: !3522, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3477, file: !3471, line: 143, baseType: !3518, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3477, file: !3471, line: 145, baseType: !3480, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3477, file: !3471, line: 146, baseType: !3544, size: 64, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!138, !3491, !3547}
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3471, line: 29, size: 128, elements: !3549)
!3549 = !{!3550, !3551, !3552}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3548, file: !3471, line: 30, baseType: !7, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3548, file: !3471, line: 31, baseType: !7, size: 32, offset: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3548, file: !3471, line: 32, baseType: !3491, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3477, file: !3471, line: 148, baseType: !3554, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!138, !3491, !157}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3470, file: !3471, line: 20, baseType: !157, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !158, file: !60, line: 534, baseType: !463, size: 32, offset: 4992)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !158, file: !60, line: 535, baseType: !365, size: 32, offset: 5024)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !158, file: !60, line: 537, baseType: !182, offset: 5056)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !158, file: !60, line: 538, baseType: !169, size: 128, offset: 5056)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !158, file: !60, line: 540, baseType: !3563, size: 64, offset: 5184)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3565, line: 54, size: 960, elements: !3566)
!3565 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573, !3577, !3581, !3582, !3583, !3584, !3588, !3592, !3593}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3564, file: !3565, line: 55, baseType: !165, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3564, file: !3565, line: 56, baseType: !582, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3564, file: !3565, line: 58, baseType: !277, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3564, file: !3565, line: 59, baseType: !277, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3564, file: !3565, line: 60, baseType: !175, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3564, file: !3565, line: 62, baseType: !3191, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3564, file: !3565, line: 63, baseType: !3574, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!223, !157, !3198}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3564, file: !3565, line: 65, baseType: !3578, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3563}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3564, file: !3565, line: 66, baseType: !3200, size: 64, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3564, file: !3565, line: 68, baseType: !3209, size: 64, offset: 576)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3564, file: !3565, line: 70, baseType: !2992, size: 64, offset: 640)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3564, file: !3565, line: 71, baseType: !3585, size: 64, offset: 704)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!3009, !157}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3564, file: !3565, line: 73, baseType: !3589, size: 64, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !157, !3026, !3027}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3564, file: !3565, line: 75, baseType: !3204, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3564, file: !3565, line: 77, baseType: !3303, size: 64, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !158, file: !60, line: 541, baseType: !277, size: 64, offset: 5248)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !158, file: !60, line: 543, baseType: !3200, size: 64, offset: 5312)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !158, file: !60, line: 544, baseType: !3597, size: 64, offset: 5376)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !158, file: !60, line: 545, baseType: !3600, size: 64, offset: 5440)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !158, file: !60, line: 547, baseType: !440, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !158, file: !60, line: 548, baseType: !440, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !158, file: !60, line: 549, baseType: !440, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !158, file: !60, line: 550, baseType: !440, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !153, file: !154, line: 147, baseType: !3607, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_devnode", file: !3609, line: 75, size: 6784, elements: !3610)
!3609 = !DIFile(filename: "./include/media/media-devnode.h", directory: "/home/lizy2001/genbc/linux")
!3610 = !{!3611, !3612, !3628, !3629, !3630, !3631, !3632, !3633}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "media_dev", scope: !3608, file: !3609, line: 76, baseType: !152, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3608, file: !3609, line: 79, baseType: !3613, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3615)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_file_operations", file: !3609, line: 47, size: 512, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3627}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3615, file: !3609, line: 48, baseType: !582, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3615, file: !3609, line: 49, baseType: !2660, size: 64, offset: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3615, file: !3609, line: 50, baseType: !2665, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3615, file: !3609, line: 51, baseType: !2689, size: 64, offset: 192)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3615, file: !3609, line: 52, baseType: !2706, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3615, file: !3609, line: 53, baseType: !2706, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3615, file: !3609, line: 54, baseType: !3624, size: 64, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!138, !301}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3615, file: !3609, line: 55, baseType: !3624, size: 64, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3608, file: !3609, line: 82, baseType: !158, size: 5568, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !3608, file: !3609, line: 83, baseType: !2899, size: 832, offset: 5696)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3608, file: !3609, line: 84, baseType: !157, size: 64, offset: 6528)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3608, file: !3609, line: 87, baseType: !138, size: 32, offset: 6592)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3608, file: !3609, line: 88, baseType: !273, size: 64, offset: 6656)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3608, file: !3609, line: 91, baseType: !3634, size: 64, offset: 6720)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3607}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !153, file: !154, line: 149, baseType: !2487, size: 256, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !153, file: !154, line: 150, baseType: !2487, size: 256, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !153, file: !154, line: 151, baseType: !3640, size: 320, offset: 640)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 320, elements: !3641)
!3641 = !{!3642}
!3642 = !DISubrange(count: 40)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "bus_info", scope: !153, file: !154, line: 152, baseType: !2487, size: 256, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "hw_revision", scope: !153, file: !154, line: 153, baseType: !365, size: 32, offset: 1216)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "topology_version", scope: !153, file: !154, line: 155, baseType: !371, size: 64, offset: 1280)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !153, file: !154, line: 157, baseType: !365, size: 32, offset: 1344)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx", scope: !153, file: !154, line: 158, baseType: !3648, size: 128, offset: 1408)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3056, line: 244, size: 128, elements: !3649)
!3649 = !{!3650}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3648, file: !3056, line: 245, baseType: !691, size: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "entity_internal_idx_max", scope: !153, file: !154, line: 159, baseType: !138, size: 32, offset: 1536)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !153, file: !154, line: 161, baseType: !169, size: 128, offset: 1600)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !153, file: !154, line: 162, baseType: !169, size: 128, offset: 1728)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !153, file: !154, line: 163, baseType: !169, size: 128, offset: 1856)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !153, file: !154, line: 164, baseType: !169, size: 128, offset: 1984)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "entity_notify", scope: !153, file: !154, line: 167, baseType: !169, size: 128, offset: 2112)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "graph_mutex", scope: !153, file: !154, line: 170, baseType: !1045, size: 192, offset: 2240)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "pm_count_walk", scope: !153, file: !154, line: 171, baseType: !3659, size: 2240, offset: 2432)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_graph", file: !81, line: 88, size: 2240, elements: !3660)
!3660 = !{!3661, !3757, !3763}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3659, file: !81, line: 92, baseType: !3662, size: 2048)
!3662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3663, size: 2048, elements: !1595)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3659, file: !81, line: 89, size: 128, elements: !3664)
!3664 = !{!3665, !3756}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !3663, file: !81, line: 90, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity", file: !81, line: 290, size: 1024, elements: !3668)
!3668 = !{!3669, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3692, !3693, !3740, !3741, !3742, !3748}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !3667, file: !81, line: 291, baseType: !3670, size: 256)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_gobj", file: !81, line: 57, size: 256, elements: !3671)
!3671 = !{!3672, !3673, !3674}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !3670, file: !81, line: 58, baseType: !152, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3670, file: !81, line: 59, baseType: !365, size: 32, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3670, file: !81, line: 60, baseType: !169, size: 128, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3667, file: !81, line: 292, baseType: !165, size: 64, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "obj_type", scope: !3667, file: !81, line: 293, baseType: !80, size: 32, offset: 320)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3667, file: !81, line: 294, baseType: !365, size: 32, offset: 352)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3667, file: !81, line: 295, baseType: !273, size: 64, offset: 384)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "num_pads", scope: !3667, file: !81, line: 297, baseType: !811, size: 16, offset: 448)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "num_links", scope: !3667, file: !81, line: 298, baseType: !811, size: 16, offset: 464)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "num_backlinks", scope: !3667, file: !81, line: 299, baseType: !811, size: 16, offset: 480)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "internal_idx", scope: !3667, file: !81, line: 300, baseType: !138, size: 32, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !3667, file: !81, line: 302, baseType: !3684, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pad", file: !81, line: 189, size: 448, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3690, !3691}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !3685, file: !81, line: 190, baseType: !3670, size: 256)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !3685, file: !81, line: 191, baseType: !3666, size: 64, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3685, file: !81, line: 192, baseType: !811, size: 16, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sig_type", scope: !3685, file: !81, line: 193, baseType: !86, size: 32, offset: 352)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3685, file: !81, line: 194, baseType: !273, size: 64, offset: 384)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3667, file: !81, line: 303, baseType: !169, size: 128, offset: 640)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3667, file: !81, line: 305, baseType: !3694, size: 64, offset: 768)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3696)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_operations", file: !81, line: 214, size: 192, elements: !3697)
!3697 = !{!3698, !3702, !3708}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "get_fwnode_pad", scope: !3696, file: !81, line: 215, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!138, !3666, !3547}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "link_setup", scope: !3696, file: !81, line: 217, baseType: !3703, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!138, !3666, !3706, !3706, !365}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !3696, file: !81, line: 220, baseType: !3709, size: 64, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!138, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_link", file: !81, line: 132, size: 704, elements: !3714)
!3714 = !{!3715, !3716, !3717, !3731, !3737, !3738, !3739}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !3713, file: !81, line: 133, baseType: !3670, size: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3713, file: !81, line: 134, baseType: !169, size: 128, offset: 256)
!3717 = !DIDerivedType(tag: DW_TAG_member, scope: !3713, file: !81, line: 135, baseType: !3718, size: 64, offset: 384)
!3718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3713, file: !81, line: 135, size: 64, elements: !3719)
!3719 = !{!3720, !3722, !3723}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "gobj0", scope: !3718, file: !81, line: 136, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !3718, file: !81, line: 137, baseType: !3684, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3718, file: !81, line: 138, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_interface", file: !81, line: 336, size: 448, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !3725, file: !81, line: 337, baseType: !3670, size: 256)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3725, file: !81, line: 338, baseType: !169, size: 128, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3725, file: !81, line: 339, baseType: !365, size: 32, offset: 384)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3725, file: !81, line: 340, baseType: !365, size: 32, offset: 416)
!3731 = !DIDerivedType(tag: DW_TAG_member, scope: !3713, file: !81, line: 140, baseType: !3732, size: 64, offset: 448)
!3732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3713, file: !81, line: 140, size: 64, elements: !3733)
!3733 = !{!3734, !3735, !3736}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "gobj1", scope: !3732, file: !81, line: 141, baseType: !3721, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "sink", scope: !3732, file: !81, line: 142, baseType: !3684, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !3732, file: !81, line: 143, baseType: !3666, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !3713, file: !81, line: 145, baseType: !3712, size: 64, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3713, file: !81, line: 146, baseType: !273, size: 64, offset: 576)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "is_backlink", scope: !3713, file: !81, line: 147, baseType: !440, size: 8, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "stream_count", scope: !3667, file: !81, line: 307, baseType: !138, size: 32, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !3667, file: !81, line: 308, baseType: !138, size: 32, offset: 864)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !3667, file: !81, line: 310, baseType: !3743, size: 64, offset: 896)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pipeline", file: !81, line: 104, size: 2304, elements: !3745)
!3745 = !{!3746, !3747}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "streaming_count", scope: !3744, file: !81, line: 105, baseType: !138, size: 32)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !3744, file: !81, line: 106, baseType: !3659, size: 2240, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3667, file: !81, line: 317, baseType: !3749, size: 64, offset: 960)
!3749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3667, file: !81, line: 312, size: 64, elements: !3750)
!3750 = !{!3751}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3749, file: !81, line: 316, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3749, file: !81, line: 313, size: 64, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3752, file: !81, line: 314, baseType: !365, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3752, file: !81, line: 315, baseType: !365, size: 32, offset: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3663, file: !81, line: 91, baseType: !172, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ent_enum", scope: !3659, file: !81, line: 94, baseType: !3758, size: 128, offset: 2048)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_enum", file: !81, line: 72, size: 128, elements: !3759)
!3759 = !{!3760, !3762}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3758, file: !81, line: 73, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "idx_max", scope: !3758, file: !81, line: 74, baseType: !138, size: 32, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !3659, file: !81, line: 95, baseType: !138, size: 32, offset: 2176)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "source_priv", scope: !153, file: !154, line: 173, baseType: !125, size: 64, offset: 4672)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "enable_source", scope: !153, file: !154, line: 174, baseType: !3766, size: 64, offset: 4736)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!138, !3666, !3743}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "disable_source", scope: !153, file: !154, line: 176, baseType: !3770, size: 64, offset: 4800)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3666}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !153, file: !154, line: 178, baseType: !3774, size: 64, offset: 4864)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3776)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_device_ops", file: !154, line: 65, size: 320, elements: !3777)
!3777 = !{!3778, !3782, !3786, !3790, !3794}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "link_notify", scope: !3776, file: !154, line: 66, baseType: !3779, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!138, !3712, !365, !7}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "req_alloc", scope: !3776, file: !154, line: 68, baseType: !3783, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!148, !152}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "req_free", scope: !3776, file: !154, line: 69, baseType: !3787, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null, !148}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "req_validate", scope: !3776, file: !154, line: 70, baseType: !3791, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!138, !148}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue", scope: !3776, file: !154, line: 71, baseType: !3787, size: 64, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "req_queue_mutex", scope: !153, file: !154, line: 180, baseType: !1045, size: 192, offset: 4928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "request_id", scope: !153, file: !154, line: 181, baseType: !699, size: 32, offset: 5120)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !149, file: !93, line: 64, baseType: !3169, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "debug_str", scope: !149, file: !93, line: 65, baseType: !3799, size: 216, offset: 96)
!3799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 216, elements: !3800)
!3800 = !{!3801}
!3801 = !DISubrange(count: 27)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !149, file: !93, line: 66, baseType: !92, size: 32, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "updating_count", scope: !149, file: !93, line: 67, baseType: !7, size: 32, offset: 352)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "access_count", scope: !149, file: !93, line: 68, baseType: !7, size: 32, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !149, file: !93, line: 69, baseType: !169, size: 128, offset: 448)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "num_incomplete_objects", scope: !149, file: !93, line: 70, baseType: !7, size: 32, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "poll_wait", scope: !149, file: !93, line: 71, baseType: !1341, size: 128, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !149, file: !93, line: 72, baseType: !182, offset: 768)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !127, file: !93, line: 273, baseType: !169, size: 128, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !127, file: !93, line: 274, baseType: !3169, size: 32, offset: 320)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "completed", scope: !127, file: !93, line: 275, baseType: !440, size: 8, offset: 352)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !172)
!3816 = !{!3817, !0}
!3817 = !DIGlobalVariableExpression(var: !3818, expr: !DIExpression())
!3818 = distinct !DIGlobalVariable(name: "__key", scope: !3819, file: !3, line: 325, type: !597, isLocal: true, isDefinition: true)
!3819 = distinct !DISubprogram(name: "media_request_alloc", scope: !3, file: !3, line: 288, type: !3820, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!138, !152, !657}
!3822 = !{!"rsp"}
!3823 = !{i32 7, !"Dwarf Version", i32 4}
!3824 = !{i32 2, !"Debug Info Version", i32 3}
!3825 = !{i32 1, !"wchar_size", i32 2}
!3826 = !{i32 1, !"Code Model", i32 2}
!3827 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3828 = distinct !DISubprogram(name: "media_request_put", scope: !3, file: !3, line: 79, type: !3788, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3829 = !DILocalVariable(name: "req", arg: 1, scope: !3828, file: !3, line: 79, type: !148)
!3830 = !DILocation(line: 79, column: 46, scope: !3828)
!3831 = !DILocation(line: 81, column: 12, scope: !3828)
!3832 = !DILocation(line: 81, column: 17, scope: !3828)
!3833 = !DILocation(line: 81, column: 2, scope: !3828)
!3834 = !DILocation(line: 82, column: 1, scope: !3828)
!3835 = distinct !DISubprogram(name: "kref_put", scope: !3170, file: !3170, line: 62, type: !3836, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!138, !3838, !3839}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !3838}
!3842 = !DILocalVariable(name: "kref", arg: 1, scope: !3835, file: !3170, line: 62, type: !3838)
!3843 = !DILocation(line: 62, column: 41, scope: !3835)
!3844 = !DILocalVariable(name: "release", arg: 2, scope: !3835, file: !3170, line: 62, type: !3839)
!3845 = !DILocation(line: 62, column: 54, scope: !3835)
!3846 = !DILocation(line: 64, column: 29, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3835, file: !3170, line: 64, column: 6)
!3848 = !DILocation(line: 64, column: 35, scope: !3847)
!3849 = !DILocation(line: 64, column: 6, scope: !3847)
!3850 = !DILocation(line: 64, column: 6, scope: !3835)
!3851 = !DILocation(line: 65, column: 3, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3847, file: !3170, line: 64, column: 46)
!3853 = !DILocation(line: 65, column: 11, scope: !3852)
!3854 = !DILocation(line: 66, column: 3, scope: !3852)
!3855 = !DILocation(line: 68, column: 2, scope: !3835)
!3856 = !DILocation(line: 69, column: 1, scope: !3835)
!3857 = distinct !DISubprogram(name: "media_request_release", scope: !3, file: !3, line: 60, type: !3840, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3858 = !DILocalVariable(name: "kref", arg: 1, scope: !3857, file: !3, line: 60, type: !3838)
!3859 = !DILocation(line: 60, column: 48, scope: !3857)
!3860 = !DILocalVariable(name: "req", scope: !3857, file: !3, line: 62, type: !148)
!3861 = !DILocation(line: 62, column: 24, scope: !3857)
!3862 = !DILocalVariable(name: "__mptr", scope: !3863, file: !3, line: 63, type: !125)
!3863 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 63, column: 3)
!3864 = !DILocation(line: 63, column: 3, scope: !3863)
!3865 = !DILocation(line: 63, column: 3, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 63, column: 3)
!3867 = !DILocalVariable(name: "mdev", scope: !3857, file: !3, line: 64, type: !152)
!3868 = !DILocation(line: 64, column: 23, scope: !3857)
!3869 = !DILocation(line: 64, column: 30, scope: !3857)
!3870 = !DILocation(line: 64, column: 35, scope: !3857)
!3871 = !DILocation(line: 69, column: 2, scope: !3857)
!3872 = !DILocation(line: 69, column: 7, scope: !3857)
!3873 = !DILocation(line: 69, column: 13, scope: !3857)
!3874 = !DILocation(line: 71, column: 22, scope: !3857)
!3875 = !DILocation(line: 71, column: 2, scope: !3857)
!3876 = !DILocation(line: 73, column: 6, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 73, column: 6)
!3878 = !DILocation(line: 73, column: 12, scope: !3877)
!3879 = !DILocation(line: 73, column: 17, scope: !3877)
!3880 = !DILocation(line: 73, column: 6, scope: !3857)
!3881 = !DILocation(line: 74, column: 3, scope: !3877)
!3882 = !DILocation(line: 74, column: 9, scope: !3877)
!3883 = !DILocation(line: 74, column: 14, scope: !3877)
!3884 = !DILocation(line: 74, column: 23, scope: !3877)
!3885 = !DILocation(line: 76, column: 9, scope: !3877)
!3886 = !DILocation(line: 76, column: 3, scope: !3877)
!3887 = !DILocation(line: 77, column: 1, scope: !3857)
!3888 = distinct !DISubprogram(name: "media_request_get_by_fd", scope: !3, file: !3, line: 247, type: !3889, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!148, !152, !138}
!3891 = !DILocalVariable(name: "mdev", arg: 1, scope: !3888, file: !3, line: 247, type: !152)
!3892 = !DILocation(line: 247, column: 46, scope: !3888)
!3893 = !DILocalVariable(name: "request_fd", arg: 2, scope: !3888, file: !3, line: 247, type: !138)
!3894 = !DILocation(line: 247, column: 56, scope: !3888)
!3895 = !DILocalVariable(name: "f", scope: !3888, file: !3, line: 249, type: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fd", file: !329, line: 36, size: 128, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3896, file: !329, line: 37, baseType: !301, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3896, file: !329, line: 38, baseType: !7, size: 32, offset: 64)
!3900 = !DILocation(line: 249, column: 12, scope: !3888)
!3901 = !DILocalVariable(name: "req", scope: !3888, file: !3, line: 250, type: !148)
!3902 = !DILocation(line: 250, column: 24, scope: !3888)
!3903 = !DILocation(line: 252, column: 7, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 252, column: 6)
!3905 = !DILocation(line: 252, column: 12, scope: !3904)
!3906 = !DILocation(line: 252, column: 16, scope: !3904)
!3907 = !DILocation(line: 252, column: 22, scope: !3904)
!3908 = !DILocation(line: 252, column: 26, scope: !3904)
!3909 = !DILocation(line: 253, column: 7, scope: !3904)
!3910 = !DILocation(line: 253, column: 13, scope: !3904)
!3911 = !DILocation(line: 253, column: 18, scope: !3904)
!3912 = !DILocation(line: 253, column: 31, scope: !3904)
!3913 = !DILocation(line: 253, column: 35, scope: !3904)
!3914 = !DILocation(line: 253, column: 41, scope: !3904)
!3915 = !DILocation(line: 253, column: 46, scope: !3904)
!3916 = !DILocation(line: 252, column: 6, scope: !3888)
!3917 = !DILocation(line: 254, column: 10, scope: !3904)
!3918 = !DILocation(line: 254, column: 3, scope: !3904)
!3919 = !DILocation(line: 256, column: 12, scope: !3888)
!3920 = !DILocation(line: 256, column: 6, scope: !3888)
!3921 = !DILocation(line: 257, column: 9, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 257, column: 6)
!3923 = !DILocation(line: 257, column: 7, scope: !3922)
!3924 = !DILocation(line: 257, column: 6, scope: !3888)
!3925 = !DILocation(line: 258, column: 3, scope: !3922)
!3926 = !DILocation(line: 260, column: 8, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 260, column: 6)
!3928 = !DILocation(line: 260, column: 14, scope: !3927)
!3929 = !DILocation(line: 260, column: 19, scope: !3927)
!3930 = !DILocation(line: 260, column: 6, scope: !3888)
!3931 = !DILocation(line: 261, column: 3, scope: !3927)
!3932 = !DILocation(line: 262, column: 10, scope: !3888)
!3933 = !DILocation(line: 262, column: 16, scope: !3888)
!3934 = !DILocation(line: 262, column: 8, scope: !3888)
!3935 = !DILocation(line: 262, column: 6, scope: !3888)
!3936 = !DILocation(line: 263, column: 6, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 263, column: 6)
!3938 = !DILocation(line: 263, column: 11, scope: !3937)
!3939 = !DILocation(line: 263, column: 19, scope: !3937)
!3940 = !DILocation(line: 263, column: 16, scope: !3937)
!3941 = !DILocation(line: 263, column: 6, scope: !3888)
!3942 = !DILocation(line: 264, column: 3, scope: !3937)
!3943 = !DILocation(line: 274, column: 20, scope: !3888)
!3944 = !DILocation(line: 274, column: 2, scope: !3888)
!3945 = !DILocation(line: 275, column: 2, scope: !3888)
!3946 = !DILocation(line: 277, column: 9, scope: !3888)
!3947 = !DILocation(line: 277, column: 2, scope: !3888)
!3948 = !DILabel(scope: !3888, name: "err_fput", file: !3, line: 279)
!3949 = !DILocation(line: 279, column: 1, scope: !3888)
!3950 = !DILocation(line: 280, column: 2, scope: !3888)
!3951 = !DILabel(scope: !3888, name: "err_no_req_fd", file: !3, line: 282)
!3952 = !DILocation(line: 282, column: 1, scope: !3888)
!3953 = !DILocation(line: 284, column: 9, scope: !3888)
!3954 = !DILocation(line: 284, column: 2, scope: !3888)
!3955 = !DILocation(line: 285, column: 1, scope: !3888)
!3956 = distinct !DISubprogram(name: "ERR_PTR", scope: !3957, file: !3957, line: 24, type: !3958, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3957 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!125, !258}
!3960 = !DILocalVariable(name: "error", arg: 1, scope: !3956, file: !3957, line: 24, type: !258)
!3961 = !DILocation(line: 24, column: 48, scope: !3956)
!3962 = !DILocation(line: 26, column: 18, scope: !3956)
!3963 = !DILocation(line: 26, column: 9, scope: !3956)
!3964 = !DILocation(line: 26, column: 2, scope: !3956)
!3965 = distinct !DISubprogram(name: "fdget", scope: !329, file: !329, line: 63, type: !3966, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!3896, !7}
!3968 = !DILocalVariable(name: "fd", arg: 1, scope: !3965, file: !329, line: 63, type: !7)
!3969 = !DILocation(line: 63, column: 44, scope: !3965)
!3970 = !DILocation(line: 65, column: 25, scope: !3965)
!3971 = !DILocation(line: 65, column: 17, scope: !3965)
!3972 = !DILocation(line: 65, column: 9, scope: !3965)
!3973 = !DILocation(line: 65, column: 2, scope: !3965)
!3974 = distinct !DISubprogram(name: "media_request_get", scope: !93, file: !93, line: 177, type: !3788, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3975 = !DILocalVariable(name: "req", arg: 1, scope: !3974, file: !93, line: 177, type: !148)
!3976 = !DILocation(line: 177, column: 60, scope: !3974)
!3977 = !DILocation(line: 179, column: 12, scope: !3974)
!3978 = !DILocation(line: 179, column: 17, scope: !3974)
!3979 = !DILocation(line: 179, column: 2, scope: !3974)
!3980 = !DILocation(line: 180, column: 1, scope: !3974)
!3981 = distinct !DISubprogram(name: "fdput", scope: !329, file: !329, line: 43, type: !3982, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3896}
!3984 = !DILocalVariable(name: "fd", arg: 1, scope: !3981, file: !329, line: 43, type: !3896)
!3985 = !DILocation(line: 43, column: 36, scope: !3981)
!3986 = !DILocation(line: 45, column: 9, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3981, file: !329, line: 45, column: 6)
!3988 = !DILocation(line: 45, column: 15, scope: !3987)
!3989 = !DILocation(line: 45, column: 6, scope: !3981)
!3990 = !DILocation(line: 46, column: 11, scope: !3987)
!3991 = !DILocation(line: 46, column: 3, scope: !3987)
!3992 = !DILocation(line: 47, column: 1, scope: !3981)
!3993 = !DILocalVariable(name: "i", arg: 1, scope: !3994, file: !3995, line: 163, type: !138)
!3994 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !3995, file: !3995, line: 163, type: !3996, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!3995 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!138, !138, !3998}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!3999 = !DILocation(line: 163, column: 55, scope: !3994, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 286, column: 9, scope: !4001, inlinedAt: !4005)
!4001 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !4002, file: !4002, line: 284, type: !4003, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4002 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!138, !3998}
!4005 = distinct !DILocation(line: 251, column: 9, scope: !4006, inlinedAt: !4008)
!4006 = distinct !DISubprogram(name: "atomic_inc_return", scope: !4007, file: !4007, line: 248, type: !4003, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4007 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4008 = distinct !DILocation(line: 332, column: 4, scope: !3819)
!4009 = !DILocalVariable(name: "v", arg: 2, scope: !3994, file: !3995, line: 163, type: !3998)
!4010 = !DILocation(line: 163, column: 68, scope: !3994, inlinedAt: !4000)
!4011 = !DILocalVariable(name: "__ret", scope: !4012, file: !3995, line: 165, type: !138)
!4012 = distinct !DILexicalBlock(scope: !3994, file: !3995, line: 165, column: 13)
!4013 = !DILocation(line: 165, column: 13, scope: !4012, inlinedAt: !4000)
!4014 = !DILocalVariable(name: "v", arg: 1, scope: !4001, file: !4002, line: 284, type: !3998)
!4015 = !DILocation(line: 284, column: 34, scope: !4001, inlinedAt: !4005)
!4016 = !DILocalVariable(name: "v", arg: 1, scope: !4017, file: !4018, line: 99, type: !4021)
!4017 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4018, file: !4018, line: 99, type: !4019, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4018 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !4021, !270}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4024 = !DILocation(line: 99, column: 79, scope: !4017, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 250, column: 2, scope: !4006, inlinedAt: !4008)
!4026 = !DILocalVariable(name: "size", arg: 2, scope: !4017, file: !4018, line: 99, type: !270)
!4027 = !DILocation(line: 99, column: 89, scope: !4017, inlinedAt: !4025)
!4028 = !DILocalVariable(name: "v", arg: 1, scope: !4006, file: !4007, line: 248, type: !3998)
!4029 = !DILocation(line: 248, column: 29, scope: !4006, inlinedAt: !4008)
!4030 = !DILocalVariable(name: "lock", arg: 1, scope: !4031, file: !4032, line: 327, type: !4036)
!4031 = distinct !DISubprogram(name: "spinlock_check", scope: !4032, file: !4032, line: 327, type: !4033, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4032 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!4035, !4036}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!4037 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 324, column: 2, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 324, column: 2)
!4040 = !DILocalVariable(name: "mdev", arg: 1, scope: !3819, file: !3, line: 288, type: !152)
!4041 = !DILocation(line: 288, column: 46, scope: !3819)
!4042 = !DILocalVariable(name: "alloc_fd", arg: 2, scope: !3819, file: !3, line: 288, type: !657)
!4043 = !DILocation(line: 288, column: 57, scope: !3819)
!4044 = !DILocalVariable(name: "req", scope: !3819, file: !3, line: 290, type: !148)
!4045 = !DILocation(line: 290, column: 24, scope: !3819)
!4046 = !DILocalVariable(name: "filp", scope: !3819, file: !3, line: 291, type: !301)
!4047 = !DILocation(line: 291, column: 15, scope: !3819)
!4048 = !DILocalVariable(name: "fd", scope: !3819, file: !3, line: 292, type: !138)
!4049 = !DILocation(line: 292, column: 6, scope: !3819)
!4050 = !DILocalVariable(name: "ret", scope: !3819, file: !3, line: 293, type: !138)
!4051 = !DILocation(line: 293, column: 6, scope: !3819)
!4052 = !DILocalVariable(name: "__ret_warn_on", scope: !4053, file: !3, line: 296, type: !138)
!4053 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 296, column: 6)
!4054 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 296, column: 6)
!4055 = !DILocation(line: 296, column: 6, scope: !4053)
!4056 = !DILocation(line: 296, column: 6, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 296, column: 6)
!4058 = !DILocation(line: 296, column: 6, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 296, column: 6)
!4060 = !DILocation(line: 296, column: 6, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 296, column: 6)
!4062 = !DILocation(line: 296, column: 6, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 296, column: 6)
!4064 = !{i32 -2142866233, i32 -2142866204, i32 -2142866158, i32 -2142866100, i32 -2142866046, i32 -2142865992, i32 -2142865937, i32 -2142865906}
!4065 = !DILocation(line: 296, column: 6, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 296, column: 6)
!4067 = !{i32 -2142865495, i32 -2142865488, i32 -2142865436, i32 -2142865405, i32 -2142865375}
!4068 = !DILocation(line: 296, column: 6, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 296, column: 6)
!4070 = !DILocation(line: 296, column: 6, scope: !4054)
!4071 = !DILocation(line: 296, column: 6, scope: !3819)
!4072 = !DILocation(line: 297, column: 3, scope: !4054)
!4073 = !DILocation(line: 299, column: 6, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 299, column: 6)
!4075 = !DILocation(line: 299, column: 12, scope: !4074)
!4076 = !DILocation(line: 299, column: 17, scope: !4074)
!4077 = !DILocation(line: 299, column: 6, scope: !3819)
!4078 = !DILocation(line: 300, column: 9, scope: !4074)
!4079 = !DILocation(line: 300, column: 15, scope: !4074)
!4080 = !DILocation(line: 300, column: 20, scope: !4074)
!4081 = !DILocation(line: 300, column: 30, scope: !4074)
!4082 = !DILocation(line: 300, column: 7, scope: !4074)
!4083 = !DILocation(line: 300, column: 3, scope: !4074)
!4084 = !DILocation(line: 302, column: 9, scope: !4074)
!4085 = !DILocation(line: 302, column: 7, scope: !4074)
!4086 = !DILocation(line: 303, column: 7, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 303, column: 6)
!4088 = !DILocation(line: 303, column: 6, scope: !3819)
!4089 = !DILocation(line: 304, column: 3, scope: !4087)
!4090 = !DILocation(line: 306, column: 7, scope: !3819)
!4091 = !DILocation(line: 306, column: 5, scope: !3819)
!4092 = !DILocation(line: 307, column: 6, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 307, column: 6)
!4094 = !DILocation(line: 307, column: 9, scope: !4093)
!4095 = !DILocation(line: 307, column: 6, scope: !3819)
!4096 = !DILocation(line: 308, column: 9, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 307, column: 14)
!4098 = !DILocation(line: 308, column: 7, scope: !4097)
!4099 = !DILocation(line: 309, column: 3, scope: !4097)
!4100 = !DILocation(line: 312, column: 9, scope: !3819)
!4101 = !DILocation(line: 312, column: 7, scope: !3819)
!4102 = !DILocation(line: 313, column: 13, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 313, column: 6)
!4104 = !DILocation(line: 313, column: 6, scope: !4103)
!4105 = !DILocation(line: 313, column: 6, scope: !3819)
!4106 = !DILocation(line: 314, column: 17, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 313, column: 20)
!4108 = !DILocation(line: 314, column: 9, scope: !4107)
!4109 = !DILocation(line: 314, column: 7, scope: !4107)
!4110 = !DILocation(line: 315, column: 3, scope: !4107)
!4111 = !DILocation(line: 318, column: 23, scope: !3819)
!4112 = !DILocation(line: 318, column: 2, scope: !3819)
!4113 = !DILocation(line: 318, column: 8, scope: !3819)
!4114 = !DILocation(line: 318, column: 21, scope: !3819)
!4115 = !DILocation(line: 319, column: 14, scope: !3819)
!4116 = !DILocation(line: 319, column: 2, scope: !3819)
!4117 = !DILocation(line: 319, column: 7, scope: !3819)
!4118 = !DILocation(line: 319, column: 12, scope: !3819)
!4119 = !DILocation(line: 320, column: 2, scope: !3819)
!4120 = !DILocation(line: 320, column: 7, scope: !3819)
!4121 = !DILocation(line: 320, column: 13, scope: !3819)
!4122 = !DILocation(line: 321, column: 2, scope: !3819)
!4123 = !DILocation(line: 321, column: 7, scope: !3819)
!4124 = !DILocation(line: 321, column: 30, scope: !3819)
!4125 = !DILocation(line: 322, column: 13, scope: !3819)
!4126 = !DILocation(line: 322, column: 18, scope: !3819)
!4127 = !DILocation(line: 322, column: 2, scope: !3819)
!4128 = !DILocation(line: 323, column: 18, scope: !3819)
!4129 = !DILocation(line: 323, column: 23, scope: !3819)
!4130 = !DILocation(line: 323, column: 2, scope: !3819)
!4131 = !DILocation(line: 324, column: 2, scope: !3819)
!4132 = !DILocation(line: 324, column: 2, scope: !4039)
!4133 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !4038)
!4134 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !4038)
!4135 = !DILocation(line: 325, column: 2, scope: !3819)
!4136 = !DILocation(line: 325, column: 2, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 325, column: 2)
!4138 = !DILocation(line: 326, column: 2, scope: !3819)
!4139 = !DILocation(line: 326, column: 7, scope: !3819)
!4140 = !DILocation(line: 326, column: 22, scope: !3819)
!4141 = !DILocation(line: 327, column: 2, scope: !3819)
!4142 = !DILocation(line: 327, column: 7, scope: !3819)
!4143 = !DILocation(line: 327, column: 20, scope: !3819)
!4144 = !DILocation(line: 329, column: 14, scope: !3819)
!4145 = !DILocation(line: 329, column: 3, scope: !3819)
!4146 = !DILocation(line: 329, column: 12, scope: !3819)
!4147 = !DILocation(line: 331, column: 11, scope: !3819)
!4148 = !DILocation(line: 331, column: 16, scope: !3819)
!4149 = !DILocation(line: 332, column: 23, scope: !3819)
!4150 = !DILocation(line: 332, column: 29, scope: !3819)
!4151 = !DILocation(line: 250, column: 31, scope: !4006, inlinedAt: !4008)
!4152 = !DILocation(line: 101, column: 20, scope: !4017, inlinedAt: !4025)
!4153 = !DILocation(line: 101, column: 23, scope: !4017, inlinedAt: !4025)
!4154 = !DILocation(line: 101, column: 2, scope: !4017, inlinedAt: !4025)
!4155 = !DILocation(line: 102, column: 2, scope: !4017, inlinedAt: !4025)
!4156 = !DILocation(line: 251, column: 32, scope: !4006, inlinedAt: !4008)
!4157 = !DILocation(line: 286, column: 35, scope: !4001, inlinedAt: !4005)
!4158 = !DILocation(line: 165, column: 9, scope: !3994, inlinedAt: !4000)
!4159 = !{i32 -2147192951}
!4160 = !DILocation(line: 165, column: 11, scope: !3994, inlinedAt: !4000)
!4161 = !DILocation(line: 332, column: 42, scope: !3819)
!4162 = !DILocation(line: 331, column: 2, scope: !3819)
!4163 = !DILocation(line: 335, column: 13, scope: !3819)
!4164 = !DILocation(line: 335, column: 17, scope: !3819)
!4165 = !DILocation(line: 335, column: 2, scope: !3819)
!4166 = !DILocation(line: 337, column: 2, scope: !3819)
!4167 = !DILabel(scope: !3819, name: "err_put_fd", file: !3, line: 339)
!4168 = !DILocation(line: 339, column: 1, scope: !3819)
!4169 = !DILocation(line: 340, column: 16, scope: !3819)
!4170 = !DILocation(line: 340, column: 2, scope: !3819)
!4171 = !DILabel(scope: !3819, name: "err_free_req", file: !3, line: 342)
!4172 = !DILocation(line: 342, column: 1, scope: !3819)
!4173 = !DILocation(line: 343, column: 6, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 343, column: 6)
!4175 = !DILocation(line: 343, column: 12, scope: !4174)
!4176 = !DILocation(line: 343, column: 17, scope: !4174)
!4177 = !DILocation(line: 343, column: 6, scope: !3819)
!4178 = !DILocation(line: 344, column: 3, scope: !4174)
!4179 = !DILocation(line: 344, column: 9, scope: !4174)
!4180 = !DILocation(line: 344, column: 14, scope: !4174)
!4181 = !DILocation(line: 344, column: 23, scope: !4174)
!4182 = !DILocation(line: 346, column: 9, scope: !4174)
!4183 = !DILocation(line: 346, column: 3, scope: !4174)
!4184 = !DILocation(line: 348, column: 9, scope: !3819)
!4185 = !DILocation(line: 348, column: 2, scope: !3819)
!4186 = !DILocation(line: 349, column: 1, scope: !3819)
!4187 = distinct !DISubprogram(name: "kzalloc", scope: !116, file: !116, line: 662, type: !4188, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!125, !270, !123}
!4190 = !DILocalVariable(name: "s", arg: 1, scope: !4191, file: !116, line: 445, type: !887)
!4191 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !116, file: !116, line: 445, type: !4192, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!125, !887, !123, !270}
!4194 = !DILocation(line: 445, column: 72, scope: !4191, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 552, column: 10, scope: !4196, inlinedAt: !4199)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !116, line: 540, column: 34)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !116, line: 540, column: 6)
!4198 = distinct !DISubprogram(name: "kmalloc", scope: !116, file: !116, line: 538, type: !4188, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4199 = distinct !DILocation(line: 664, column: 9, scope: !4187)
!4200 = !DILocalVariable(name: "flags", arg: 2, scope: !4191, file: !116, line: 446, type: !123)
!4201 = !DILocation(line: 446, column: 9, scope: !4191, inlinedAt: !4195)
!4202 = !DILocalVariable(name: "size", arg: 3, scope: !4191, file: !116, line: 446, type: !270)
!4203 = !DILocation(line: 446, column: 23, scope: !4191, inlinedAt: !4195)
!4204 = !DILocalVariable(name: "ret", scope: !4191, file: !116, line: 448, type: !125)
!4205 = !DILocation(line: 448, column: 8, scope: !4191, inlinedAt: !4195)
!4206 = !DILocalVariable(name: "flags", arg: 1, scope: !4207, file: !116, line: 318, type: !123)
!4207 = distinct !DISubprogram(name: "kmalloc_type", scope: !116, file: !116, line: 318, type: !4208, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!115, !123}
!4210 = !DILocation(line: 318, column: 67, scope: !4207, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 553, column: 20, scope: !4196, inlinedAt: !4199)
!4212 = !DILocalVariable(name: "size", arg: 1, scope: !4213, file: !116, line: 346, type: !270)
!4213 = distinct !DISubprogram(name: "kmalloc_index", scope: !116, file: !116, line: 346, type: !4214, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!7, !270}
!4216 = !DILocation(line: 346, column: 58, scope: !4213, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 547, column: 11, scope: !4196, inlinedAt: !4199)
!4218 = !DILocalVariable(name: "size", arg: 1, scope: !4219, file: !116, line: 472, type: !270)
!4219 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !116, file: !116, line: 472, type: !4220, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!125, !270, !123, !7}
!4222 = !DILocation(line: 472, column: 28, scope: !4219, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 481, column: 9, scope: !4224, inlinedAt: !4225)
!4224 = distinct !DISubprogram(name: "kmalloc_large", scope: !116, file: !116, line: 478, type: !4188, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4225 = distinct !DILocation(line: 545, column: 11, scope: !4226, inlinedAt: !4199)
!4226 = distinct !DILexicalBlock(scope: !4196, file: !116, line: 544, column: 7)
!4227 = !DILocalVariable(name: "flags", arg: 2, scope: !4219, file: !116, line: 472, type: !123)
!4228 = !DILocation(line: 472, column: 40, scope: !4219, inlinedAt: !4223)
!4229 = !DILocalVariable(name: "order", arg: 3, scope: !4219, file: !116, line: 472, type: !7)
!4230 = !DILocation(line: 472, column: 60, scope: !4219, inlinedAt: !4223)
!4231 = !DILocalVariable(name: "size", arg: 1, scope: !4224, file: !116, line: 478, type: !270)
!4232 = !DILocation(line: 478, column: 51, scope: !4224, inlinedAt: !4225)
!4233 = !DILocalVariable(name: "flags", arg: 2, scope: !4224, file: !116, line: 478, type: !123)
!4234 = !DILocation(line: 478, column: 63, scope: !4224, inlinedAt: !4225)
!4235 = !DILocalVariable(name: "order", scope: !4224, file: !116, line: 480, type: !7)
!4236 = !DILocation(line: 480, column: 15, scope: !4224, inlinedAt: !4225)
!4237 = !DILocalVariable(name: "size", arg: 1, scope: !4198, file: !116, line: 538, type: !270)
!4238 = !DILocation(line: 538, column: 45, scope: !4198, inlinedAt: !4199)
!4239 = !DILocalVariable(name: "flags", arg: 2, scope: !4198, file: !116, line: 538, type: !123)
!4240 = !DILocation(line: 538, column: 57, scope: !4198, inlinedAt: !4199)
!4241 = !DILocalVariable(name: "index", scope: !4196, file: !116, line: 542, type: !7)
!4242 = !DILocation(line: 542, column: 16, scope: !4196, inlinedAt: !4199)
!4243 = !DILocalVariable(name: "size", arg: 1, scope: !4187, file: !116, line: 662, type: !270)
!4244 = !DILocation(line: 662, column: 36, scope: !4187)
!4245 = !DILocalVariable(name: "flags", arg: 2, scope: !4187, file: !116, line: 662, type: !123)
!4246 = !DILocation(line: 662, column: 48, scope: !4187)
!4247 = !DILocation(line: 664, column: 17, scope: !4187)
!4248 = !DILocation(line: 664, column: 23, scope: !4187)
!4249 = !DILocation(line: 664, column: 29, scope: !4187)
!4250 = !DILocation(line: 540, column: 27, scope: !4197, inlinedAt: !4199)
!4251 = !DILocation(line: 540, column: 6, scope: !4197, inlinedAt: !4199)
!4252 = !DILocation(line: 540, column: 6, scope: !4198, inlinedAt: !4199)
!4253 = !DILocation(line: 544, column: 7, scope: !4226, inlinedAt: !4199)
!4254 = !DILocation(line: 544, column: 12, scope: !4226, inlinedAt: !4199)
!4255 = !DILocation(line: 544, column: 7, scope: !4196, inlinedAt: !4199)
!4256 = !DILocation(line: 545, column: 25, scope: !4226, inlinedAt: !4199)
!4257 = !DILocation(line: 545, column: 31, scope: !4226, inlinedAt: !4199)
!4258 = !DILocation(line: 480, column: 33, scope: !4224, inlinedAt: !4225)
!4259 = !DILocation(line: 480, column: 23, scope: !4224, inlinedAt: !4225)
!4260 = !DILocation(line: 481, column: 29, scope: !4224, inlinedAt: !4225)
!4261 = !DILocation(line: 481, column: 35, scope: !4224, inlinedAt: !4225)
!4262 = !DILocation(line: 481, column: 42, scope: !4224, inlinedAt: !4225)
!4263 = !DILocation(line: 474, column: 23, scope: !4219, inlinedAt: !4223)
!4264 = !DILocation(line: 474, column: 29, scope: !4219, inlinedAt: !4223)
!4265 = !DILocation(line: 474, column: 36, scope: !4219, inlinedAt: !4223)
!4266 = !DILocation(line: 474, column: 9, scope: !4219, inlinedAt: !4223)
!4267 = !DILocation(line: 545, column: 4, scope: !4226, inlinedAt: !4199)
!4268 = !DILocation(line: 547, column: 25, scope: !4196, inlinedAt: !4199)
!4269 = !DILocation(line: 348, column: 7, scope: !4270, inlinedAt: !4217)
!4270 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 348, column: 6)
!4271 = !DILocation(line: 348, column: 6, scope: !4213, inlinedAt: !4217)
!4272 = !DILocation(line: 349, column: 3, scope: !4270, inlinedAt: !4217)
!4273 = !DILocation(line: 351, column: 6, scope: !4274, inlinedAt: !4217)
!4274 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 351, column: 6)
!4275 = !DILocation(line: 351, column: 11, scope: !4274, inlinedAt: !4217)
!4276 = !DILocation(line: 351, column: 6, scope: !4213, inlinedAt: !4217)
!4277 = !DILocation(line: 352, column: 3, scope: !4274, inlinedAt: !4217)
!4278 = !DILocation(line: 354, column: 32, scope: !4279, inlinedAt: !4217)
!4279 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 354, column: 6)
!4280 = !DILocation(line: 354, column: 37, scope: !4279, inlinedAt: !4217)
!4281 = !DILocation(line: 354, column: 42, scope: !4279, inlinedAt: !4217)
!4282 = !DILocation(line: 354, column: 45, scope: !4279, inlinedAt: !4217)
!4283 = !DILocation(line: 354, column: 50, scope: !4279, inlinedAt: !4217)
!4284 = !DILocation(line: 354, column: 6, scope: !4213, inlinedAt: !4217)
!4285 = !DILocation(line: 355, column: 3, scope: !4279, inlinedAt: !4217)
!4286 = !DILocation(line: 356, column: 32, scope: !4287, inlinedAt: !4217)
!4287 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 356, column: 6)
!4288 = !DILocation(line: 356, column: 37, scope: !4287, inlinedAt: !4217)
!4289 = !DILocation(line: 356, column: 43, scope: !4287, inlinedAt: !4217)
!4290 = !DILocation(line: 356, column: 46, scope: !4287, inlinedAt: !4217)
!4291 = !DILocation(line: 356, column: 51, scope: !4287, inlinedAt: !4217)
!4292 = !DILocation(line: 356, column: 6, scope: !4213, inlinedAt: !4217)
!4293 = !DILocation(line: 357, column: 3, scope: !4287, inlinedAt: !4217)
!4294 = !DILocation(line: 358, column: 6, scope: !4295, inlinedAt: !4217)
!4295 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 358, column: 6)
!4296 = !DILocation(line: 358, column: 11, scope: !4295, inlinedAt: !4217)
!4297 = !DILocation(line: 358, column: 6, scope: !4213, inlinedAt: !4217)
!4298 = !DILocation(line: 358, column: 26, scope: !4295, inlinedAt: !4217)
!4299 = !DILocation(line: 359, column: 6, scope: !4300, inlinedAt: !4217)
!4300 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 359, column: 6)
!4301 = !DILocation(line: 359, column: 11, scope: !4300, inlinedAt: !4217)
!4302 = !DILocation(line: 359, column: 6, scope: !4213, inlinedAt: !4217)
!4303 = !DILocation(line: 359, column: 26, scope: !4300, inlinedAt: !4217)
!4304 = !DILocation(line: 360, column: 6, scope: !4305, inlinedAt: !4217)
!4305 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 360, column: 6)
!4306 = !DILocation(line: 360, column: 11, scope: !4305, inlinedAt: !4217)
!4307 = !DILocation(line: 360, column: 6, scope: !4213, inlinedAt: !4217)
!4308 = !DILocation(line: 360, column: 26, scope: !4305, inlinedAt: !4217)
!4309 = !DILocation(line: 361, column: 6, scope: !4310, inlinedAt: !4217)
!4310 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 361, column: 6)
!4311 = !DILocation(line: 361, column: 11, scope: !4310, inlinedAt: !4217)
!4312 = !DILocation(line: 361, column: 6, scope: !4213, inlinedAt: !4217)
!4313 = !DILocation(line: 361, column: 26, scope: !4310, inlinedAt: !4217)
!4314 = !DILocation(line: 362, column: 6, scope: !4315, inlinedAt: !4217)
!4315 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 362, column: 6)
!4316 = !DILocation(line: 362, column: 11, scope: !4315, inlinedAt: !4217)
!4317 = !DILocation(line: 362, column: 6, scope: !4213, inlinedAt: !4217)
!4318 = !DILocation(line: 362, column: 26, scope: !4315, inlinedAt: !4217)
!4319 = !DILocation(line: 363, column: 6, scope: !4320, inlinedAt: !4217)
!4320 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 363, column: 6)
!4321 = !DILocation(line: 363, column: 11, scope: !4320, inlinedAt: !4217)
!4322 = !DILocation(line: 363, column: 6, scope: !4213, inlinedAt: !4217)
!4323 = !DILocation(line: 363, column: 26, scope: !4320, inlinedAt: !4217)
!4324 = !DILocation(line: 364, column: 6, scope: !4325, inlinedAt: !4217)
!4325 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 364, column: 6)
!4326 = !DILocation(line: 364, column: 11, scope: !4325, inlinedAt: !4217)
!4327 = !DILocation(line: 364, column: 6, scope: !4213, inlinedAt: !4217)
!4328 = !DILocation(line: 364, column: 26, scope: !4325, inlinedAt: !4217)
!4329 = !DILocation(line: 365, column: 6, scope: !4330, inlinedAt: !4217)
!4330 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 365, column: 6)
!4331 = !DILocation(line: 365, column: 11, scope: !4330, inlinedAt: !4217)
!4332 = !DILocation(line: 365, column: 6, scope: !4213, inlinedAt: !4217)
!4333 = !DILocation(line: 365, column: 26, scope: !4330, inlinedAt: !4217)
!4334 = !DILocation(line: 366, column: 6, scope: !4335, inlinedAt: !4217)
!4335 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 366, column: 6)
!4336 = !DILocation(line: 366, column: 11, scope: !4335, inlinedAt: !4217)
!4337 = !DILocation(line: 366, column: 6, scope: !4213, inlinedAt: !4217)
!4338 = !DILocation(line: 366, column: 26, scope: !4335, inlinedAt: !4217)
!4339 = !DILocation(line: 367, column: 6, scope: !4340, inlinedAt: !4217)
!4340 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 367, column: 6)
!4341 = !DILocation(line: 367, column: 11, scope: !4340, inlinedAt: !4217)
!4342 = !DILocation(line: 367, column: 6, scope: !4213, inlinedAt: !4217)
!4343 = !DILocation(line: 367, column: 26, scope: !4340, inlinedAt: !4217)
!4344 = !DILocation(line: 368, column: 6, scope: !4345, inlinedAt: !4217)
!4345 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 368, column: 6)
!4346 = !DILocation(line: 368, column: 11, scope: !4345, inlinedAt: !4217)
!4347 = !DILocation(line: 368, column: 6, scope: !4213, inlinedAt: !4217)
!4348 = !DILocation(line: 368, column: 26, scope: !4345, inlinedAt: !4217)
!4349 = !DILocation(line: 369, column: 6, scope: !4350, inlinedAt: !4217)
!4350 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 369, column: 6)
!4351 = !DILocation(line: 369, column: 11, scope: !4350, inlinedAt: !4217)
!4352 = !DILocation(line: 369, column: 6, scope: !4213, inlinedAt: !4217)
!4353 = !DILocation(line: 369, column: 26, scope: !4350, inlinedAt: !4217)
!4354 = !DILocation(line: 370, column: 6, scope: !4355, inlinedAt: !4217)
!4355 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 370, column: 6)
!4356 = !DILocation(line: 370, column: 11, scope: !4355, inlinedAt: !4217)
!4357 = !DILocation(line: 370, column: 6, scope: !4213, inlinedAt: !4217)
!4358 = !DILocation(line: 370, column: 26, scope: !4355, inlinedAt: !4217)
!4359 = !DILocation(line: 371, column: 6, scope: !4360, inlinedAt: !4217)
!4360 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 371, column: 6)
!4361 = !DILocation(line: 371, column: 11, scope: !4360, inlinedAt: !4217)
!4362 = !DILocation(line: 371, column: 6, scope: !4213, inlinedAt: !4217)
!4363 = !DILocation(line: 371, column: 26, scope: !4360, inlinedAt: !4217)
!4364 = !DILocation(line: 372, column: 6, scope: !4365, inlinedAt: !4217)
!4365 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 372, column: 6)
!4366 = !DILocation(line: 372, column: 11, scope: !4365, inlinedAt: !4217)
!4367 = !DILocation(line: 372, column: 6, scope: !4213, inlinedAt: !4217)
!4368 = !DILocation(line: 372, column: 26, scope: !4365, inlinedAt: !4217)
!4369 = !DILocation(line: 373, column: 6, scope: !4370, inlinedAt: !4217)
!4370 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 373, column: 6)
!4371 = !DILocation(line: 373, column: 11, scope: !4370, inlinedAt: !4217)
!4372 = !DILocation(line: 373, column: 6, scope: !4213, inlinedAt: !4217)
!4373 = !DILocation(line: 373, column: 26, scope: !4370, inlinedAt: !4217)
!4374 = !DILocation(line: 374, column: 6, scope: !4375, inlinedAt: !4217)
!4375 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 374, column: 6)
!4376 = !DILocation(line: 374, column: 11, scope: !4375, inlinedAt: !4217)
!4377 = !DILocation(line: 374, column: 6, scope: !4213, inlinedAt: !4217)
!4378 = !DILocation(line: 374, column: 26, scope: !4375, inlinedAt: !4217)
!4379 = !DILocation(line: 375, column: 6, scope: !4380, inlinedAt: !4217)
!4380 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 375, column: 6)
!4381 = !DILocation(line: 375, column: 11, scope: !4380, inlinedAt: !4217)
!4382 = !DILocation(line: 375, column: 6, scope: !4213, inlinedAt: !4217)
!4383 = !DILocation(line: 375, column: 27, scope: !4380, inlinedAt: !4217)
!4384 = !DILocation(line: 376, column: 6, scope: !4385, inlinedAt: !4217)
!4385 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 376, column: 6)
!4386 = !DILocation(line: 376, column: 11, scope: !4385, inlinedAt: !4217)
!4387 = !DILocation(line: 376, column: 6, scope: !4213, inlinedAt: !4217)
!4388 = !DILocation(line: 376, column: 32, scope: !4385, inlinedAt: !4217)
!4389 = !DILocation(line: 377, column: 6, scope: !4390, inlinedAt: !4217)
!4390 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 377, column: 6)
!4391 = !DILocation(line: 377, column: 11, scope: !4390, inlinedAt: !4217)
!4392 = !DILocation(line: 377, column: 6, scope: !4213, inlinedAt: !4217)
!4393 = !DILocation(line: 377, column: 32, scope: !4390, inlinedAt: !4217)
!4394 = !DILocation(line: 378, column: 6, scope: !4395, inlinedAt: !4217)
!4395 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 378, column: 6)
!4396 = !DILocation(line: 378, column: 11, scope: !4395, inlinedAt: !4217)
!4397 = !DILocation(line: 378, column: 6, scope: !4213, inlinedAt: !4217)
!4398 = !DILocation(line: 378, column: 32, scope: !4395, inlinedAt: !4217)
!4399 = !DILocation(line: 379, column: 6, scope: !4400, inlinedAt: !4217)
!4400 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 379, column: 6)
!4401 = !DILocation(line: 379, column: 11, scope: !4400, inlinedAt: !4217)
!4402 = !DILocation(line: 379, column: 6, scope: !4213, inlinedAt: !4217)
!4403 = !DILocation(line: 379, column: 33, scope: !4400, inlinedAt: !4217)
!4404 = !DILocation(line: 380, column: 6, scope: !4405, inlinedAt: !4217)
!4405 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 380, column: 6)
!4406 = !DILocation(line: 380, column: 11, scope: !4405, inlinedAt: !4217)
!4407 = !DILocation(line: 380, column: 6, scope: !4213, inlinedAt: !4217)
!4408 = !DILocation(line: 380, column: 33, scope: !4405, inlinedAt: !4217)
!4409 = !DILocation(line: 381, column: 6, scope: !4410, inlinedAt: !4217)
!4410 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 381, column: 6)
!4411 = !DILocation(line: 381, column: 11, scope: !4410, inlinedAt: !4217)
!4412 = !DILocation(line: 381, column: 6, scope: !4213, inlinedAt: !4217)
!4413 = !DILocation(line: 381, column: 33, scope: !4410, inlinedAt: !4217)
!4414 = !DILocation(line: 382, column: 2, scope: !4415, inlinedAt: !4217)
!4415 = distinct !DILexicalBlock(scope: !4416, file: !116, line: 382, column: 2)
!4416 = distinct !DILexicalBlock(scope: !4213, file: !116, line: 382, column: 2)
!4417 = !{i32 -2142909661, i32 -2142909632, i32 -2142909586, i32 -2142909528, i32 -2142909474, i32 -2142909420, i32 -2142909365, i32 -2142909334}
!4418 = !DILocation(line: 382, column: 2, scope: !4419, inlinedAt: !4217)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !116, line: 382, column: 2)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !116, line: 382, column: 2)
!4421 = !{i32 -2142908891, i32 -2142908884, i32 -2142908830, i32 -2142908799, i32 -2142908769}
!4422 = !DILocation(line: 382, column: 2, scope: !4420, inlinedAt: !4217)
!4423 = !DILocation(line: 386, column: 1, scope: !4213, inlinedAt: !4217)
!4424 = !DILocation(line: 547, column: 9, scope: !4196, inlinedAt: !4199)
!4425 = !DILocation(line: 549, column: 8, scope: !4426, inlinedAt: !4199)
!4426 = distinct !DILexicalBlock(scope: !4196, file: !116, line: 549, column: 7)
!4427 = !DILocation(line: 549, column: 7, scope: !4196, inlinedAt: !4199)
!4428 = !DILocation(line: 550, column: 4, scope: !4426, inlinedAt: !4199)
!4429 = !DILocation(line: 553, column: 33, scope: !4196, inlinedAt: !4199)
!4430 = !DILocation(line: 325, column: 6, scope: !4431, inlinedAt: !4211)
!4431 = distinct !DILexicalBlock(scope: !4207, file: !116, line: 325, column: 6)
!4432 = !DILocation(line: 325, column: 6, scope: !4207, inlinedAt: !4211)
!4433 = !DILocation(line: 326, column: 3, scope: !4431, inlinedAt: !4211)
!4434 = !DILocation(line: 332, column: 9, scope: !4207, inlinedAt: !4211)
!4435 = !DILocation(line: 332, column: 15, scope: !4207, inlinedAt: !4211)
!4436 = !DILocation(line: 332, column: 2, scope: !4207, inlinedAt: !4211)
!4437 = !DILocation(line: 336, column: 1, scope: !4207, inlinedAt: !4211)
!4438 = !DILocation(line: 553, column: 5, scope: !4196, inlinedAt: !4199)
!4439 = !DILocation(line: 553, column: 41, scope: !4196, inlinedAt: !4199)
!4440 = !DILocation(line: 554, column: 5, scope: !4196, inlinedAt: !4199)
!4441 = !DILocation(line: 554, column: 12, scope: !4196, inlinedAt: !4199)
!4442 = !DILocation(line: 448, column: 31, scope: !4191, inlinedAt: !4195)
!4443 = !DILocation(line: 448, column: 34, scope: !4191, inlinedAt: !4195)
!4444 = !DILocation(line: 448, column: 14, scope: !4191, inlinedAt: !4195)
!4445 = !DILocation(line: 450, column: 22, scope: !4191, inlinedAt: !4195)
!4446 = !DILocation(line: 450, column: 25, scope: !4191, inlinedAt: !4195)
!4447 = !DILocation(line: 450, column: 30, scope: !4191, inlinedAt: !4195)
!4448 = !DILocation(line: 450, column: 36, scope: !4191, inlinedAt: !4195)
!4449 = !DILocation(line: 450, column: 8, scope: !4191, inlinedAt: !4195)
!4450 = !DILocation(line: 450, column: 6, scope: !4191, inlinedAt: !4195)
!4451 = !DILocation(line: 451, column: 9, scope: !4191, inlinedAt: !4195)
!4452 = !DILocation(line: 552, column: 3, scope: !4196, inlinedAt: !4199)
!4453 = !DILocation(line: 557, column: 19, scope: !4198, inlinedAt: !4199)
!4454 = !DILocation(line: 557, column: 25, scope: !4198, inlinedAt: !4199)
!4455 = !DILocation(line: 557, column: 9, scope: !4198, inlinedAt: !4199)
!4456 = !DILocation(line: 557, column: 2, scope: !4198, inlinedAt: !4199)
!4457 = !DILocation(line: 558, column: 1, scope: !4198, inlinedAt: !4199)
!4458 = !DILocation(line: 664, column: 2, scope: !4187)
!4459 = distinct !DISubprogram(name: "IS_ERR", scope: !3957, file: !3957, line: 34, type: !4460, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!440, !3009}
!4462 = !DILocalVariable(name: "ptr", arg: 1, scope: !4459, file: !3957, line: 34, type: !3009)
!4463 = !DILocation(line: 34, column: 60, scope: !4459)
!4464 = !DILocation(line: 36, column: 9, scope: !4459)
!4465 = !DILocation(line: 36, column: 2, scope: !4459)
!4466 = distinct !DISubprogram(name: "PTR_ERR", scope: !3957, file: !3957, line: 29, type: !4467, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!258, !3009}
!4469 = !DILocalVariable(name: "ptr", arg: 1, scope: !4466, file: !3957, line: 29, type: !3009)
!4470 = !DILocation(line: 29, column: 61, scope: !4466)
!4471 = !DILocation(line: 31, column: 16, scope: !4466)
!4472 = !DILocation(line: 31, column: 9, scope: !4466)
!4473 = !DILocation(line: 31, column: 2, scope: !4466)
!4474 = distinct !DISubprogram(name: "kref_init", scope: !3170, file: !3170, line: 29, type: !3840, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4475 = !DILocalVariable(name: "kref", arg: 1, scope: !4474, file: !3170, line: 29, type: !3838)
!4476 = !DILocation(line: 29, column: 43, scope: !4474)
!4477 = !DILocation(line: 31, column: 16, scope: !4474)
!4478 = !DILocation(line: 31, column: 22, scope: !4474)
!4479 = !DILocation(line: 31, column: 2, scope: !4474)
!4480 = !DILocation(line: 32, column: 1, scope: !4474)
!4481 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4482, file: !4482, line: 33, type: !4483, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4482 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !172}
!4485 = !DILocalVariable(name: "list", arg: 1, scope: !4481, file: !4482, line: 33, type: !172)
!4486 = !DILocation(line: 33, column: 53, scope: !4481)
!4487 = !DILocation(line: 35, column: 2, scope: !4481)
!4488 = !DILocation(line: 35, column: 2, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4481, file: !4482, line: 35, column: 2)
!4490 = !DILocation(line: 35, column: 2, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4489, file: !4482, line: 35, column: 2)
!4492 = !DILocation(line: 35, column: 2, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4489, file: !4482, line: 35, column: 2)
!4494 = !DILocation(line: 36, column: 15, scope: !4481)
!4495 = !DILocation(line: 36, column: 2, scope: !4481)
!4496 = !DILocation(line: 36, column: 8, scope: !4481)
!4497 = !DILocation(line: 36, column: 13, scope: !4481)
!4498 = !DILocation(line: 37, column: 1, scope: !4481)
!4499 = distinct !DISubprogram(name: "media_request_object_find", scope: !3, file: !3, line: 363, type: !4500, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!126, !148, !130, !125}
!4502 = !DILocalVariable(name: "lock", arg: 1, scope: !4503, file: !4032, line: 407, type: !4036)
!4503 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4032, file: !4032, line: 407, type: !4504, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{null, !4036, !273}
!4506 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 382, column: 2, scope: !4499)
!4508 = !DILocalVariable(name: "flags", arg: 2, scope: !4503, file: !4032, line: 407, type: !273)
!4509 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !4507)
!4510 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 374, column: 2, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 374, column: 2)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 374, column: 2)
!4514 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 374, column: 2)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 374, column: 2)
!4516 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 374, column: 2)
!4517 = !DILocalVariable(name: "req", arg: 1, scope: !4499, file: !3, line: 363, type: !148)
!4518 = !DILocation(line: 363, column: 49, scope: !4499)
!4519 = !DILocalVariable(name: "ops", arg: 2, scope: !4499, file: !3, line: 364, type: !130)
!4520 = !DILocation(line: 364, column: 45, scope: !4499)
!4521 = !DILocalVariable(name: "priv", arg: 3, scope: !4499, file: !3, line: 365, type: !125)
!4522 = !DILocation(line: 365, column: 12, scope: !4499)
!4523 = !DILocalVariable(name: "obj", scope: !4499, file: !3, line: 367, type: !126)
!4524 = !DILocation(line: 367, column: 31, scope: !4499)
!4525 = !DILocalVariable(name: "found", scope: !4499, file: !3, line: 368, type: !126)
!4526 = !DILocation(line: 368, column: 31, scope: !4499)
!4527 = !DILocalVariable(name: "flags", scope: !4499, file: !3, line: 369, type: !273)
!4528 = !DILocation(line: 369, column: 16, scope: !4499)
!4529 = !DILocalVariable(name: "__ret_warn_on", scope: !4530, file: !3, line: 371, type: !138)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 371, column: 6)
!4531 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 371, column: 6)
!4532 = !DILocation(line: 371, column: 6, scope: !4530)
!4533 = !DILocation(line: 371, column: 6, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 371, column: 6)
!4535 = !DILocation(line: 371, column: 6, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 371, column: 6)
!4537 = !DILocation(line: 371, column: 6, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 371, column: 6)
!4539 = !DILocation(line: 371, column: 6, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 371, column: 6)
!4541 = !{i32 -2142860811, i32 -2142860782, i32 -2142860736, i32 -2142860678, i32 -2142860624, i32 -2142860570, i32 -2142860515, i32 -2142860484}
!4542 = !DILocation(line: 371, column: 6, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 371, column: 6)
!4544 = !{i32 -2142860073, i32 -2142860066, i32 -2142860014, i32 -2142859983, i32 -2142859953}
!4545 = !DILocation(line: 371, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 371, column: 6)
!4547 = !DILocation(line: 371, column: 6, scope: !4531)
!4548 = !DILocation(line: 371, column: 6, scope: !4499)
!4549 = !DILocation(line: 372, column: 3, scope: !4531)
!4550 = !DILocation(line: 374, column: 2, scope: !4499)
!4551 = !DILocation(line: 374, column: 2, scope: !4516)
!4552 = !DILocalVariable(name: "__dummy", scope: !4553, file: !3, line: 374, type: !273)
!4553 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 374, column: 2)
!4554 = !DILocation(line: 374, column: 2, scope: !4553)
!4555 = !DILocalVariable(name: "__dummy2", scope: !4553, file: !3, line: 374, type: !273)
!4556 = !DILocation(line: 374, column: 2, scope: !4515)
!4557 = !DILocation(line: 374, column: 2, scope: !4514)
!4558 = !DILocation(line: 374, column: 2, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 374, column: 2)
!4560 = !DILocalVariable(name: "__dummy", scope: !4561, file: !3, line: 374, type: !273)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 374, column: 2)
!4562 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 374, column: 2)
!4563 = !DILocation(line: 374, column: 2, scope: !4561)
!4564 = !DILocalVariable(name: "__dummy2", scope: !4561, file: !3, line: 374, type: !273)
!4565 = !DILocation(line: 374, column: 2, scope: !4562)
!4566 = !DILocation(line: 374, column: 2, scope: !4513)
!4567 = !{i32 -2142858965}
!4568 = !DILocation(line: 374, column: 2, scope: !4512)
!4569 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !4511)
!4570 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !4511)
!4571 = !DILocalVariable(name: "__mptr", scope: !4572, file: !3, line: 375, type: !125)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 375, column: 2)
!4573 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 375, column: 2)
!4574 = !DILocation(line: 375, column: 2, scope: !4572)
!4575 = !DILocation(line: 375, column: 2, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 375, column: 2)
!4577 = !DILocation(line: 375, column: 2, scope: !4573)
!4578 = !DILocation(line: 375, column: 2, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 375, column: 2)
!4580 = !DILocation(line: 376, column: 7, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 376, column: 7)
!4582 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 375, column: 48)
!4583 = !DILocation(line: 376, column: 12, scope: !4581)
!4584 = !DILocation(line: 376, column: 19, scope: !4581)
!4585 = !DILocation(line: 376, column: 16, scope: !4581)
!4586 = !DILocation(line: 376, column: 23, scope: !4581)
!4587 = !DILocation(line: 376, column: 26, scope: !4581)
!4588 = !DILocation(line: 376, column: 31, scope: !4581)
!4589 = !DILocation(line: 376, column: 39, scope: !4581)
!4590 = !DILocation(line: 376, column: 36, scope: !4581)
!4591 = !DILocation(line: 376, column: 7, scope: !4582)
!4592 = !DILocation(line: 377, column: 29, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 376, column: 45)
!4594 = !DILocation(line: 377, column: 4, scope: !4593)
!4595 = !DILocation(line: 378, column: 12, scope: !4593)
!4596 = !DILocation(line: 378, column: 10, scope: !4593)
!4597 = !DILocation(line: 379, column: 4, scope: !4593)
!4598 = !DILocation(line: 381, column: 2, scope: !4582)
!4599 = !DILocalVariable(name: "__mptr", scope: !4600, file: !3, line: 375, type: !125)
!4600 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 375, column: 2)
!4601 = !DILocation(line: 375, column: 2, scope: !4600)
!4602 = !DILocation(line: 375, column: 2, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 375, column: 2)
!4604 = distinct !{!4604, !4577, !4605}
!4605 = !DILocation(line: 381, column: 2, scope: !4573)
!4606 = !DILocation(line: 382, column: 26, scope: !4499)
!4607 = !DILocation(line: 382, column: 31, scope: !4499)
!4608 = !DILocation(line: 382, column: 37, scope: !4499)
!4609 = !DILocalVariable(name: "__dummy", scope: !4610, file: !4032, line: 409, type: !273)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !4032, line: 409, column: 2)
!4611 = distinct !DILexicalBlock(scope: !4503, file: !4032, line: 409, column: 2)
!4612 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !4507)
!4613 = !DILocalVariable(name: "__dummy2", scope: !4610, file: !4032, line: 409, type: !273)
!4614 = !DILocalVariable(name: "__dummy", scope: !4615, file: !4032, line: 409, type: !273)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !4032, line: 409, column: 2)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !4032, line: 409, column: 2)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !4032, line: 409, column: 2)
!4618 = distinct !DILexicalBlock(scope: !4611, file: !4032, line: 409, column: 2)
!4619 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !4507)
!4620 = !DILocalVariable(name: "__dummy2", scope: !4615, file: !4032, line: 409, type: !273)
!4621 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !4507)
!4622 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !4507)
!4623 = distinct !DILexicalBlock(scope: !4618, file: !4032, line: 409, column: 2)
!4624 = !{i32 -2145439930}
!4625 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !4507)
!4626 = distinct !DILexicalBlock(scope: !4623, file: !4032, line: 409, column: 2)
!4627 = !DILocation(line: 383, column: 9, scope: !4499)
!4628 = !DILocation(line: 383, column: 2, scope: !4499)
!4629 = !DILocation(line: 384, column: 1, scope: !4499)
!4630 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4631, file: !4631, line: 666, type: !4632, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4631 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!273}
!4634 = !DILocalVariable(name: "f", scope: !4630, file: !4631, line: 668, type: !273)
!4635 = !DILocation(line: 668, column: 16, scope: !4630)
!4636 = !DILocation(line: 670, column: 6, scope: !4630)
!4637 = !DILocation(line: 670, column: 4, scope: !4630)
!4638 = !DILocation(line: 671, column: 2, scope: !4630)
!4639 = !DILocation(line: 672, column: 9, scope: !4630)
!4640 = !DILocation(line: 672, column: 2, scope: !4630)
!4641 = distinct !DISubprogram(name: "media_request_object_get", scope: !93, file: !93, line: 287, type: !141, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4642 = !DILocalVariable(name: "obj", arg: 1, scope: !4641, file: !93, line: 287, type: !126)
!4643 = !DILocation(line: 287, column: 74, scope: !4641)
!4644 = !DILocation(line: 289, column: 12, scope: !4641)
!4645 = !DILocation(line: 289, column: 17, scope: !4641)
!4646 = !DILocation(line: 289, column: 2, scope: !4641)
!4647 = !DILocation(line: 290, column: 1, scope: !4641)
!4648 = distinct !DISubprogram(name: "media_request_object_put", scope: !3, file: !3, line: 387, type: !141, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4649 = !DILocalVariable(name: "obj", arg: 1, scope: !4648, file: !3, line: 387, type: !126)
!4650 = !DILocation(line: 387, column: 60, scope: !4648)
!4651 = !DILocation(line: 389, column: 12, scope: !4648)
!4652 = !DILocation(line: 389, column: 17, scope: !4648)
!4653 = !DILocation(line: 389, column: 2, scope: !4648)
!4654 = !DILocation(line: 390, column: 1, scope: !4648)
!4655 = distinct !DISubprogram(name: "media_request_object_release", scope: !3, file: !3, line: 351, type: !3840, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4656 = !DILocalVariable(name: "kref", arg: 1, scope: !4655, file: !3, line: 351, type: !3838)
!4657 = !DILocation(line: 351, column: 55, scope: !4655)
!4658 = !DILocalVariable(name: "obj", scope: !4655, file: !3, line: 353, type: !126)
!4659 = !DILocation(line: 353, column: 31, scope: !4655)
!4660 = !DILocalVariable(name: "__mptr", scope: !4661, file: !3, line: 354, type: !125)
!4661 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 354, column: 3)
!4662 = !DILocation(line: 354, column: 3, scope: !4661)
!4663 = !DILocation(line: 354, column: 3, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 354, column: 3)
!4665 = !DILocalVariable(name: "req", scope: !4655, file: !3, line: 355, type: !148)
!4666 = !DILocation(line: 355, column: 24, scope: !4655)
!4667 = !DILocation(line: 355, column: 30, scope: !4655)
!4668 = !DILocation(line: 355, column: 35, scope: !4655)
!4669 = !DILocalVariable(name: "__ret_warn_on", scope: !4670, file: !3, line: 357, type: !138)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 357, column: 6)
!4671 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 357, column: 6)
!4672 = !DILocation(line: 357, column: 6, scope: !4670)
!4673 = !DILocation(line: 357, column: 6, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 357, column: 6)
!4675 = !DILocation(line: 357, column: 6, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 357, column: 6)
!4677 = !DILocation(line: 357, column: 6, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 357, column: 6)
!4679 = !DILocation(line: 357, column: 6, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 357, column: 6)
!4681 = !{i32 -2142862266, i32 -2142862237, i32 -2142862191, i32 -2142862133, i32 -2142862079, i32 -2142862025, i32 -2142861970, i32 -2142861939}
!4682 = !DILocation(line: 357, column: 6, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 357, column: 6)
!4684 = !{i32 -2142861528, i32 -2142861521, i32 -2142861469, i32 -2142861438, i32 -2142861408}
!4685 = !DILocation(line: 357, column: 6, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 357, column: 6)
!4687 = !DILocation(line: 357, column: 6, scope: !4671)
!4688 = !DILocation(line: 357, column: 6, scope: !4655)
!4689 = !DILocation(line: 358, column: 31, scope: !4671)
!4690 = !DILocation(line: 358, column: 3, scope: !4671)
!4691 = !DILocation(line: 359, column: 2, scope: !4655)
!4692 = !DILocation(line: 359, column: 7, scope: !4655)
!4693 = !DILocation(line: 359, column: 12, scope: !4655)
!4694 = !DILocation(line: 359, column: 20, scope: !4655)
!4695 = !DILocation(line: 360, column: 1, scope: !4655)
!4696 = distinct !DISubprogram(name: "media_request_object_init", scope: !3, file: !3, line: 393, type: !141, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4697 = !DILocalVariable(name: "obj", arg: 1, scope: !4696, file: !3, line: 393, type: !126)
!4698 = !DILocation(line: 393, column: 61, scope: !4696)
!4699 = !DILocation(line: 395, column: 2, scope: !4696)
!4700 = !DILocation(line: 395, column: 7, scope: !4696)
!4701 = !DILocation(line: 395, column: 11, scope: !4696)
!4702 = !DILocation(line: 396, column: 2, scope: !4696)
!4703 = !DILocation(line: 396, column: 7, scope: !4696)
!4704 = !DILocation(line: 396, column: 11, scope: !4696)
!4705 = !DILocation(line: 397, column: 2, scope: !4696)
!4706 = !DILocation(line: 397, column: 7, scope: !4696)
!4707 = !DILocation(line: 397, column: 12, scope: !4696)
!4708 = !DILocation(line: 398, column: 2, scope: !4696)
!4709 = !DILocation(line: 398, column: 7, scope: !4696)
!4710 = !DILocation(line: 398, column: 17, scope: !4696)
!4711 = !DILocation(line: 399, column: 18, scope: !4696)
!4712 = !DILocation(line: 399, column: 23, scope: !4696)
!4713 = !DILocation(line: 399, column: 2, scope: !4696)
!4714 = !DILocation(line: 400, column: 13, scope: !4696)
!4715 = !DILocation(line: 400, column: 18, scope: !4696)
!4716 = !DILocation(line: 400, column: 2, scope: !4696)
!4717 = !DILocation(line: 401, column: 1, scope: !4696)
!4718 = distinct !DISubprogram(name: "media_request_object_bind", scope: !3, file: !3, line: 404, type: !4719, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!138, !148, !130, !125, !440, !126}
!4721 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 432, column: 2, scope: !4718)
!4723 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !4722)
!4724 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 415, column: 2, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 415, column: 2)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 415, column: 2)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 415, column: 2)
!4729 = distinct !DILexicalBlock(scope: !4730, file: !3, line: 415, column: 2)
!4730 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 415, column: 2)
!4731 = !DILocalVariable(name: "req", arg: 1, scope: !4718, file: !3, line: 404, type: !148)
!4732 = !DILocation(line: 404, column: 53, scope: !4718)
!4733 = !DILocalVariable(name: "ops", arg: 2, scope: !4718, file: !3, line: 405, type: !130)
!4734 = !DILocation(line: 405, column: 49, scope: !4718)
!4735 = !DILocalVariable(name: "priv", arg: 3, scope: !4718, file: !3, line: 406, type: !125)
!4736 = !DILocation(line: 406, column: 16, scope: !4718)
!4737 = !DILocalVariable(name: "is_buffer", arg: 4, scope: !4718, file: !3, line: 406, type: !440)
!4738 = !DILocation(line: 406, column: 27, scope: !4718)
!4739 = !DILocalVariable(name: "obj", arg: 5, scope: !4718, file: !3, line: 407, type: !126)
!4740 = !DILocation(line: 407, column: 39, scope: !4718)
!4741 = !DILocalVariable(name: "flags", scope: !4718, file: !3, line: 409, type: !273)
!4742 = !DILocation(line: 409, column: 16, scope: !4718)
!4743 = !DILocalVariable(name: "ret", scope: !4718, file: !3, line: 410, type: !138)
!4744 = !DILocation(line: 410, column: 6, scope: !4718)
!4745 = !DILocalVariable(name: "__ret_warn_on", scope: !4746, file: !3, line: 412, type: !138)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 412, column: 6)
!4747 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 412, column: 6)
!4748 = !DILocation(line: 412, column: 6, scope: !4746)
!4749 = !DILocation(line: 412, column: 6, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 412, column: 6)
!4751 = !DILocation(line: 412, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 412, column: 6)
!4753 = !DILocation(line: 412, column: 6, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 412, column: 6)
!4755 = !DILocation(line: 412, column: 6, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 412, column: 6)
!4757 = !{i32 -2142854151, i32 -2142854122, i32 -2142854076, i32 -2142854018, i32 -2142853964, i32 -2142853910, i32 -2142853855, i32 -2142853824}
!4758 = !DILocation(line: 412, column: 6, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 412, column: 6)
!4760 = !{i32 -2142853413, i32 -2142853406, i32 -2142853354, i32 -2142853323, i32 -2142853293}
!4761 = !DILocation(line: 412, column: 6, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 412, column: 6)
!4763 = !DILocation(line: 412, column: 6, scope: !4747)
!4764 = !DILocation(line: 412, column: 6, scope: !4718)
!4765 = !DILocation(line: 413, column: 3, scope: !4747)
!4766 = !DILocation(line: 415, column: 2, scope: !4718)
!4767 = !DILocation(line: 415, column: 2, scope: !4730)
!4768 = !DILocalVariable(name: "__dummy", scope: !4769, file: !3, line: 415, type: !273)
!4769 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 415, column: 2)
!4770 = !DILocation(line: 415, column: 2, scope: !4769)
!4771 = !DILocalVariable(name: "__dummy2", scope: !4769, file: !3, line: 415, type: !273)
!4772 = !DILocation(line: 415, column: 2, scope: !4729)
!4773 = !DILocation(line: 415, column: 2, scope: !4728)
!4774 = !DILocation(line: 415, column: 2, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 415, column: 2)
!4776 = !DILocalVariable(name: "__dummy", scope: !4777, file: !3, line: 415, type: !273)
!4777 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 415, column: 2)
!4778 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 415, column: 2)
!4779 = !DILocation(line: 415, column: 2, scope: !4777)
!4780 = !DILocalVariable(name: "__dummy2", scope: !4777, file: !3, line: 415, type: !273)
!4781 = !DILocation(line: 415, column: 2, scope: !4778)
!4782 = !DILocation(line: 415, column: 2, scope: !4727)
!4783 = !{i32 -2142852314}
!4784 = !DILocation(line: 415, column: 2, scope: !4726)
!4785 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !4725)
!4786 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !4725)
!4787 = !DILocalVariable(name: "__ret_warn_on", scope: !4788, file: !3, line: 417, type: !138)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 417, column: 6)
!4789 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 417, column: 6)
!4790 = !DILocation(line: 417, column: 6, scope: !4788)
!4791 = !DILocation(line: 417, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 417, column: 6)
!4793 = !DILocation(line: 417, column: 6, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4792, file: !3, line: 417, column: 6)
!4795 = !DILocation(line: 417, column: 6, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 417, column: 6)
!4797 = !DILocation(line: 417, column: 6, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 417, column: 6)
!4799 = !{i32 -2142851664, i32 -2142851635, i32 -2142851589, i32 -2142851531, i32 -2142851477, i32 -2142851423, i32 -2142851368, i32 -2142851337}
!4800 = !DILocation(line: 417, column: 6, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 417, column: 6)
!4802 = !{i32 -2142850926, i32 -2142850919, i32 -2142850867, i32 -2142850836, i32 -2142850806}
!4803 = !DILocation(line: 417, column: 6, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 417, column: 6)
!4805 = !DILocation(line: 417, column: 6, scope: !4789)
!4806 = !DILocation(line: 417, column: 6, scope: !4718)
!4807 = !DILocation(line: 418, column: 3, scope: !4789)
!4808 = !DILocation(line: 420, column: 13, scope: !4718)
!4809 = !DILocation(line: 420, column: 2, scope: !4718)
!4810 = !DILocation(line: 420, column: 7, scope: !4718)
!4811 = !DILocation(line: 420, column: 11, scope: !4718)
!4812 = !DILocation(line: 421, column: 13, scope: !4718)
!4813 = !DILocation(line: 421, column: 2, scope: !4718)
!4814 = !DILocation(line: 421, column: 7, scope: !4718)
!4815 = !DILocation(line: 421, column: 11, scope: !4718)
!4816 = !DILocation(line: 422, column: 14, scope: !4718)
!4817 = !DILocation(line: 422, column: 2, scope: !4718)
!4818 = !DILocation(line: 422, column: 7, scope: !4718)
!4819 = !DILocation(line: 422, column: 12, scope: !4718)
!4820 = !DILocation(line: 424, column: 6, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 424, column: 6)
!4822 = !DILocation(line: 424, column: 6, scope: !4718)
!4823 = !DILocation(line: 425, column: 18, scope: !4821)
!4824 = !DILocation(line: 425, column: 23, scope: !4821)
!4825 = !DILocation(line: 425, column: 30, scope: !4821)
!4826 = !DILocation(line: 425, column: 35, scope: !4821)
!4827 = !DILocation(line: 425, column: 3, scope: !4821)
!4828 = !DILocation(line: 427, column: 13, scope: !4821)
!4829 = !DILocation(line: 427, column: 18, scope: !4821)
!4830 = !DILocation(line: 427, column: 25, scope: !4821)
!4831 = !DILocation(line: 427, column: 30, scope: !4821)
!4832 = !DILocation(line: 427, column: 3, scope: !4821)
!4833 = !DILocation(line: 428, column: 2, scope: !4718)
!4834 = !DILocation(line: 428, column: 7, scope: !4718)
!4835 = !DILocation(line: 428, column: 29, scope: !4718)
!4836 = !DILocation(line: 429, column: 6, scope: !4718)
!4837 = !DILocation(line: 429, column: 2, scope: !4718)
!4838 = !DILabel(scope: !4718, name: "unlock", file: !3, line: 431)
!4839 = !DILocation(line: 431, column: 1, scope: !4718)
!4840 = !DILocation(line: 432, column: 26, scope: !4718)
!4841 = !DILocation(line: 432, column: 31, scope: !4718)
!4842 = !DILocation(line: 432, column: 37, scope: !4718)
!4843 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !4722)
!4844 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !4722)
!4845 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !4722)
!4846 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !4722)
!4847 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !4722)
!4848 = !DILocation(line: 433, column: 9, scope: !4718)
!4849 = !DILocation(line: 433, column: 2, scope: !4718)
!4850 = !DILocation(line: 434, column: 1, scope: !4718)
!4851 = distinct !DISubprogram(name: "list_add_tail", scope: !4482, file: !4482, line: 98, type: !4852, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{null, !172, !172}
!4854 = !DILocalVariable(name: "new", arg: 1, scope: !4851, file: !4482, line: 98, type: !172)
!4855 = !DILocation(line: 98, column: 52, scope: !4851)
!4856 = !DILocalVariable(name: "head", arg: 2, scope: !4851, file: !4482, line: 98, type: !172)
!4857 = !DILocation(line: 98, column: 75, scope: !4851)
!4858 = !DILocation(line: 100, column: 13, scope: !4851)
!4859 = !DILocation(line: 100, column: 18, scope: !4851)
!4860 = !DILocation(line: 100, column: 24, scope: !4851)
!4861 = !DILocation(line: 100, column: 30, scope: !4851)
!4862 = !DILocation(line: 100, column: 2, scope: !4851)
!4863 = !DILocation(line: 101, column: 1, scope: !4851)
!4864 = distinct !DISubprogram(name: "list_add", scope: !4482, file: !4482, line: 84, type: !4852, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4865 = !DILocalVariable(name: "new", arg: 1, scope: !4864, file: !4482, line: 84, type: !172)
!4866 = !DILocation(line: 84, column: 47, scope: !4864)
!4867 = !DILocalVariable(name: "head", arg: 2, scope: !4864, file: !4482, line: 84, type: !172)
!4868 = !DILocation(line: 84, column: 70, scope: !4864)
!4869 = !DILocation(line: 86, column: 13, scope: !4864)
!4870 = !DILocation(line: 86, column: 18, scope: !4864)
!4871 = !DILocation(line: 86, column: 24, scope: !4864)
!4872 = !DILocation(line: 86, column: 30, scope: !4864)
!4873 = !DILocation(line: 86, column: 2, scope: !4864)
!4874 = !DILocation(line: 87, column: 1, scope: !4864)
!4875 = distinct !DISubprogram(name: "media_request_object_unbind", scope: !3, file: !3, line: 437, type: !141, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4876 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 474, column: 2, scope: !4875)
!4878 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !4877)
!4879 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 446, column: 2, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 446, column: 2)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 446, column: 2)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 446, column: 2)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 446, column: 2)
!4885 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 446, column: 2)
!4886 = !DILocalVariable(name: "obj", arg: 1, scope: !4875, file: !3, line: 437, type: !126)
!4887 = !DILocation(line: 437, column: 63, scope: !4875)
!4888 = !DILocalVariable(name: "req", scope: !4875, file: !3, line: 439, type: !148)
!4889 = !DILocation(line: 439, column: 24, scope: !4875)
!4890 = !DILocation(line: 439, column: 30, scope: !4875)
!4891 = !DILocation(line: 439, column: 35, scope: !4875)
!4892 = !DILocalVariable(name: "flags", scope: !4875, file: !3, line: 440, type: !273)
!4893 = !DILocation(line: 440, column: 16, scope: !4875)
!4894 = !DILocalVariable(name: "completed", scope: !4875, file: !3, line: 441, type: !440)
!4895 = !DILocation(line: 441, column: 7, scope: !4875)
!4896 = !DILocalVariable(name: "__ret_warn_on", scope: !4897, file: !3, line: 443, type: !138)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 443, column: 6)
!4898 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 443, column: 6)
!4899 = !DILocation(line: 443, column: 6, scope: !4897)
!4900 = !DILocation(line: 443, column: 6, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 443, column: 6)
!4902 = !DILocation(line: 443, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 443, column: 6)
!4904 = !DILocation(line: 443, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 443, column: 6)
!4906 = !DILocation(line: 443, column: 6, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 443, column: 6)
!4908 = !{i32 -2142850113, i32 -2142850084, i32 -2142850038, i32 -2142849980, i32 -2142849926, i32 -2142849872, i32 -2142849817, i32 -2142849786}
!4909 = !DILocation(line: 443, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 443, column: 6)
!4911 = !{i32 -2142849375, i32 -2142849368, i32 -2142849316, i32 -2142849285, i32 -2142849255}
!4912 = !DILocation(line: 443, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 443, column: 6)
!4914 = !DILocation(line: 443, column: 6, scope: !4898)
!4915 = !DILocation(line: 443, column: 6, scope: !4875)
!4916 = !DILocation(line: 444, column: 3, scope: !4898)
!4917 = !DILocation(line: 446, column: 2, scope: !4875)
!4918 = !DILocation(line: 446, column: 2, scope: !4885)
!4919 = !DILocalVariable(name: "__dummy", scope: !4920, file: !3, line: 446, type: !273)
!4920 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 446, column: 2)
!4921 = !DILocation(line: 446, column: 2, scope: !4920)
!4922 = !DILocalVariable(name: "__dummy2", scope: !4920, file: !3, line: 446, type: !273)
!4923 = !DILocation(line: 446, column: 2, scope: !4884)
!4924 = !DILocation(line: 446, column: 2, scope: !4883)
!4925 = !DILocation(line: 446, column: 2, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 446, column: 2)
!4927 = !DILocalVariable(name: "__dummy", scope: !4928, file: !3, line: 446, type: !273)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 446, column: 2)
!4929 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 446, column: 2)
!4930 = !DILocation(line: 446, column: 2, scope: !4928)
!4931 = !DILocalVariable(name: "__dummy2", scope: !4928, file: !3, line: 446, type: !273)
!4932 = !DILocation(line: 446, column: 2, scope: !4929)
!4933 = !DILocation(line: 446, column: 2, scope: !4882)
!4934 = !{i32 -2142848279}
!4935 = !DILocation(line: 446, column: 2, scope: !4881)
!4936 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !4880)
!4937 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !4880)
!4938 = !DILocation(line: 447, column: 12, scope: !4875)
!4939 = !DILocation(line: 447, column: 17, scope: !4875)
!4940 = !DILocation(line: 447, column: 2, scope: !4875)
!4941 = !DILocation(line: 448, column: 2, scope: !4875)
!4942 = !DILocation(line: 448, column: 7, scope: !4875)
!4943 = !DILocation(line: 448, column: 11, scope: !4875)
!4944 = !DILocation(line: 450, column: 6, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 450, column: 6)
!4946 = !DILocation(line: 450, column: 11, scope: !4945)
!4947 = !DILocation(line: 450, column: 17, scope: !4945)
!4948 = !DILocation(line: 450, column: 6, scope: !4875)
!4949 = !DILocation(line: 451, column: 3, scope: !4945)
!4950 = !DILocalVariable(name: "__ret_warn_on", scope: !4951, file: !3, line: 453, type: !138)
!4951 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 453, column: 6)
!4952 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 453, column: 6)
!4953 = !DILocation(line: 453, column: 6, scope: !4951)
!4954 = !DILocation(line: 453, column: 6, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 453, column: 6)
!4956 = !DILocation(line: 453, column: 6, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 453, column: 6)
!4958 = !DILocation(line: 453, column: 6, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 453, column: 6)
!4960 = !DILocation(line: 453, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 453, column: 6)
!4962 = !{i32 -2142847615, i32 -2142847586, i32 -2142847540, i32 -2142847482, i32 -2142847428, i32 -2142847374, i32 -2142847319, i32 -2142847288}
!4963 = !DILocation(line: 453, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 453, column: 6)
!4965 = !{i32 -2142846877, i32 -2142846870, i32 -2142846818, i32 -2142846787, i32 -2142846757}
!4966 = !DILocation(line: 453, column: 6, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 453, column: 6)
!4968 = !DILocation(line: 453, column: 6, scope: !4952)
!4969 = !DILocation(line: 453, column: 6, scope: !4875)
!4970 = !DILocation(line: 454, column: 3, scope: !4952)
!4971 = !DILocation(line: 456, column: 6, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 456, column: 6)
!4973 = !DILocation(line: 456, column: 11, scope: !4972)
!4974 = !DILocation(line: 456, column: 17, scope: !4972)
!4975 = !DILocation(line: 456, column: 6, scope: !4875)
!4976 = !DILocation(line: 457, column: 8, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 457, column: 7)
!4978 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 456, column: 50)
!4979 = !DILocation(line: 457, column: 13, scope: !4977)
!4980 = !DILocation(line: 457, column: 7, scope: !4978)
!4981 = !DILocation(line: 458, column: 4, scope: !4977)
!4982 = !DILocation(line: 458, column: 9, scope: !4977)
!4983 = !DILocation(line: 458, column: 31, scope: !4977)
!4984 = !DILocation(line: 459, column: 3, scope: !4978)
!4985 = !DILocalVariable(name: "__ret_warn_on", scope: !4986, file: !3, line: 462, type: !138)
!4986 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 462, column: 6)
!4987 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 462, column: 6)
!4988 = !DILocation(line: 462, column: 6, scope: !4986)
!4989 = !DILocation(line: 462, column: 6, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 462, column: 6)
!4991 = !DILocation(line: 462, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 462, column: 6)
!4993 = !DILocation(line: 462, column: 6, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 462, column: 6)
!4995 = !DILocation(line: 462, column: 6, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 462, column: 6)
!4997 = !{i32 -2142846157, i32 -2142846128, i32 -2142846082, i32 -2142846024, i32 -2142845970, i32 -2142845916, i32 -2142845861, i32 -2142845830}
!4998 = !DILocation(line: 462, column: 6, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 462, column: 6)
!5000 = !{i32 -2142845419, i32 -2142845412, i32 -2142845360, i32 -2142845329, i32 -2142845299}
!5001 = !DILocation(line: 462, column: 6, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 462, column: 6)
!5003 = !DILocation(line: 462, column: 6, scope: !4987)
!5004 = !DILocation(line: 462, column: 6, scope: !4875)
!5005 = !DILocation(line: 463, column: 3, scope: !4987)
!5006 = !DILocation(line: 465, column: 2, scope: !4875)
!5007 = !DILocation(line: 465, column: 7, scope: !4875)
!5008 = !DILocation(line: 465, column: 29, scope: !4875)
!5009 = !DILocation(line: 466, column: 6, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 466, column: 6)
!5011 = !DILocation(line: 466, column: 11, scope: !5010)
!5012 = !DILocation(line: 466, column: 17, scope: !5010)
!5013 = !DILocation(line: 466, column: 47, scope: !5010)
!5014 = !DILocation(line: 467, column: 7, scope: !5010)
!5015 = !DILocation(line: 467, column: 12, scope: !5010)
!5016 = !DILocation(line: 466, column: 6, scope: !4875)
!5017 = !DILocation(line: 468, column: 3, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 467, column: 36)
!5019 = !DILocation(line: 468, column: 8, scope: !5018)
!5020 = !DILocation(line: 468, column: 14, scope: !5018)
!5021 = !DILocation(line: 469, column: 13, scope: !5018)
!5022 = !DILocation(line: 470, column: 3, scope: !5018)
!5023 = !DILocation(line: 471, column: 2, scope: !5018)
!5024 = !DILabel(scope: !4875, name: "unlock", file: !3, line: 473)
!5025 = !DILocation(line: 473, column: 1, scope: !4875)
!5026 = !DILocation(line: 474, column: 26, scope: !4875)
!5027 = !DILocation(line: 474, column: 31, scope: !4875)
!5028 = !DILocation(line: 474, column: 37, scope: !4875)
!5029 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !4877)
!5030 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !4877)
!5031 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !4877)
!5032 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !4877)
!5033 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !4877)
!5034 = !DILocation(line: 475, column: 6, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 475, column: 6)
!5036 = !DILocation(line: 475, column: 11, scope: !5035)
!5037 = !DILocation(line: 475, column: 16, scope: !5035)
!5038 = !DILocation(line: 475, column: 6, scope: !4875)
!5039 = !DILocation(line: 476, column: 3, scope: !5035)
!5040 = !DILocation(line: 476, column: 8, scope: !5035)
!5041 = !DILocation(line: 476, column: 13, scope: !5035)
!5042 = !DILocation(line: 476, column: 20, scope: !5035)
!5043 = !DILocation(line: 477, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 477, column: 6)
!5045 = !DILocation(line: 477, column: 6, scope: !4875)
!5046 = !DILocation(line: 478, column: 21, scope: !5044)
!5047 = !DILocation(line: 478, column: 3, scope: !5044)
!5048 = !DILocation(line: 479, column: 1, scope: !4875)
!5049 = distinct !DISubprogram(name: "list_del", scope: !4482, file: !4482, line: 144, type: !4483, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5050 = !DILocalVariable(name: "entry", arg: 1, scope: !5049, file: !4482, line: 144, type: !172)
!5051 = !DILocation(line: 144, column: 47, scope: !5049)
!5052 = !DILocation(line: 146, column: 19, scope: !5049)
!5053 = !DILocation(line: 146, column: 2, scope: !5049)
!5054 = !DILocation(line: 147, column: 2, scope: !5049)
!5055 = !DILocation(line: 147, column: 9, scope: !5049)
!5056 = !DILocation(line: 147, column: 14, scope: !5049)
!5057 = !DILocation(line: 148, column: 2, scope: !5049)
!5058 = !DILocation(line: 148, column: 9, scope: !5049)
!5059 = !DILocation(line: 148, column: 14, scope: !5049)
!5060 = !DILocation(line: 149, column: 1, scope: !5049)
!5061 = distinct !DISubprogram(name: "media_request_object_complete", scope: !3, file: !3, line: 482, type: !141, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5062 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 502, column: 2, scope: !5061)
!5064 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5063)
!5065 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !5066)
!5066 = distinct !DILocation(line: 488, column: 2, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 488, column: 2)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 488, column: 2)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 488, column: 2)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 488, column: 2)
!5071 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 488, column: 2)
!5072 = !DILocalVariable(name: "obj", arg: 1, scope: !5061, file: !3, line: 482, type: !126)
!5073 = !DILocation(line: 482, column: 65, scope: !5061)
!5074 = !DILocalVariable(name: "req", scope: !5061, file: !3, line: 484, type: !148)
!5075 = !DILocation(line: 484, column: 24, scope: !5061)
!5076 = !DILocation(line: 484, column: 30, scope: !5061)
!5077 = !DILocation(line: 484, column: 35, scope: !5061)
!5078 = !DILocalVariable(name: "flags", scope: !5061, file: !3, line: 485, type: !273)
!5079 = !DILocation(line: 485, column: 16, scope: !5061)
!5080 = !DILocalVariable(name: "completed", scope: !5061, file: !3, line: 486, type: !440)
!5081 = !DILocation(line: 486, column: 7, scope: !5061)
!5082 = !DILocation(line: 488, column: 2, scope: !5061)
!5083 = !DILocation(line: 488, column: 2, scope: !5071)
!5084 = !DILocalVariable(name: "__dummy", scope: !5085, file: !3, line: 488, type: !273)
!5085 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 488, column: 2)
!5086 = !DILocation(line: 488, column: 2, scope: !5085)
!5087 = !DILocalVariable(name: "__dummy2", scope: !5085, file: !3, line: 488, type: !273)
!5088 = !DILocation(line: 488, column: 2, scope: !5070)
!5089 = !DILocation(line: 488, column: 2, scope: !5069)
!5090 = !DILocation(line: 488, column: 2, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 488, column: 2)
!5092 = !DILocalVariable(name: "__dummy", scope: !5093, file: !3, line: 488, type: !273)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 488, column: 2)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 488, column: 2)
!5095 = !DILocation(line: 488, column: 2, scope: !5093)
!5096 = !DILocalVariable(name: "__dummy2", scope: !5093, file: !3, line: 488, type: !273)
!5097 = !DILocation(line: 488, column: 2, scope: !5094)
!5098 = !DILocation(line: 488, column: 2, scope: !5068)
!5099 = !{i32 -2142844125}
!5100 = !DILocation(line: 488, column: 2, scope: !5067)
!5101 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !5066)
!5102 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !5066)
!5103 = !DILocation(line: 489, column: 6, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 489, column: 6)
!5105 = !DILocation(line: 489, column: 11, scope: !5104)
!5106 = !DILocation(line: 489, column: 6, scope: !5061)
!5107 = !DILocation(line: 490, column: 3, scope: !5104)
!5108 = !DILocation(line: 491, column: 2, scope: !5061)
!5109 = !DILocation(line: 491, column: 7, scope: !5061)
!5110 = !DILocation(line: 491, column: 17, scope: !5061)
!5111 = !DILocalVariable(name: "__ret_warn_on", scope: !5112, file: !3, line: 492, type: !138)
!5112 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 492, column: 6)
!5113 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 492, column: 6)
!5114 = !DILocation(line: 492, column: 6, scope: !5112)
!5115 = !DILocation(line: 492, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 492, column: 6)
!5117 = !DILocation(line: 492, column: 6, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 492, column: 6)
!5119 = !DILocation(line: 492, column: 6, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 492, column: 6)
!5121 = !DILocation(line: 492, column: 6, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 492, column: 6)
!5123 = !{i32 -2142843489, i32 -2142843460, i32 -2142843414, i32 -2142843356, i32 -2142843302, i32 -2142843248, i32 -2142843193, i32 -2142843162}
!5124 = !DILocation(line: 492, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 492, column: 6)
!5126 = !{i32 -2142842751, i32 -2142842744, i32 -2142842692, i32 -2142842661, i32 -2142842631}
!5127 = !DILocation(line: 492, column: 6, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 492, column: 6)
!5129 = !DILocation(line: 492, column: 6, scope: !5113)
!5130 = !DILocation(line: 492, column: 44, scope: !5113)
!5131 = !DILocalVariable(name: "__ret_warn_on", scope: !5132, file: !3, line: 493, type: !138)
!5132 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 493, column: 6)
!5133 = !DILocation(line: 493, column: 6, scope: !5132)
!5134 = !DILocation(line: 493, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 493, column: 6)
!5136 = !DILocation(line: 493, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 493, column: 6)
!5138 = !DILocation(line: 493, column: 6, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 493, column: 6)
!5140 = !DILocation(line: 493, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 493, column: 6)
!5142 = !{i32 -2142842019, i32 -2142841990, i32 -2142841944, i32 -2142841886, i32 -2142841832, i32 -2142841778, i32 -2142841723, i32 -2142841692}
!5143 = !DILocation(line: 493, column: 6, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 493, column: 6)
!5145 = !{i32 -2142841281, i32 -2142841274, i32 -2142841222, i32 -2142841191, i32 -2142841161}
!5146 = !DILocation(line: 493, column: 6, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 493, column: 6)
!5148 = !DILocation(line: 493, column: 6, scope: !5113)
!5149 = !DILocation(line: 492, column: 6, scope: !5061)
!5150 = !DILocation(line: 494, column: 3, scope: !5113)
!5151 = !DILocation(line: 496, column: 9, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 496, column: 6)
!5153 = !DILocation(line: 496, column: 14, scope: !5152)
!5154 = !DILocation(line: 496, column: 7, scope: !5152)
!5155 = !DILocation(line: 496, column: 6, scope: !5061)
!5156 = !DILocation(line: 497, column: 3, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 496, column: 38)
!5158 = !DILocation(line: 497, column: 8, scope: !5157)
!5159 = !DILocation(line: 497, column: 14, scope: !5157)
!5160 = !DILocation(line: 498, column: 3, scope: !5157)
!5161 = !DILocation(line: 499, column: 13, scope: !5157)
!5162 = !DILocation(line: 500, column: 2, scope: !5157)
!5163 = !DILabel(scope: !5061, name: "unlock", file: !3, line: 501)
!5164 = !DILocation(line: 501, column: 1, scope: !5061)
!5165 = !DILocation(line: 502, column: 26, scope: !5061)
!5166 = !DILocation(line: 502, column: 31, scope: !5061)
!5167 = !DILocation(line: 502, column: 37, scope: !5061)
!5168 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5063)
!5169 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5063)
!5170 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5063)
!5171 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5063)
!5172 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5063)
!5173 = !DILocation(line: 503, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 503, column: 6)
!5175 = !DILocation(line: 503, column: 6, scope: !5061)
!5176 = !DILocation(line: 504, column: 21, scope: !5174)
!5177 = !DILocation(line: 504, column: 3, scope: !5174)
!5178 = !DILocation(line: 505, column: 1, scope: !5061)
!5179 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !108, file: !108, line: 331, type: !5180, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!440, !5182}
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!5183 = !DILocalVariable(name: "r", arg: 1, scope: !5179, file: !108, line: 331, type: !5182)
!5184 = !DILocation(line: 331, column: 67, scope: !5179)
!5185 = !DILocation(line: 333, column: 33, scope: !5179)
!5186 = !DILocation(line: 333, column: 9, scope: !5179)
!5187 = !DILocation(line: 333, column: 2, scope: !5179)
!5188 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !108, file: !108, line: 313, type: !5189, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{!440, !5182, !657}
!5191 = !DILocalVariable(name: "r", arg: 1, scope: !5188, file: !108, line: 313, type: !5182)
!5192 = !DILocation(line: 313, column: 69, scope: !5188)
!5193 = !DILocalVariable(name: "oldp", arg: 2, scope: !5188, file: !108, line: 313, type: !657)
!5194 = !DILocation(line: 313, column: 77, scope: !5188)
!5195 = !DILocation(line: 315, column: 36, scope: !5188)
!5196 = !DILocation(line: 315, column: 39, scope: !5188)
!5197 = !DILocation(line: 315, column: 9, scope: !5188)
!5198 = !DILocation(line: 315, column: 2, scope: !5188)
!5199 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !108, file: !108, line: 270, type: !5200, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!440, !138, !5182, !657}
!5202 = !DILocalVariable(name: "i", arg: 1, scope: !5203, file: !3995, line: 188, type: !138)
!5203 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !3995, file: !3995, line: 188, type: !3996, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5204 = !DILocation(line: 188, column: 54, scope: !5203, inlinedAt: !5205)
!5205 = distinct !DILocation(line: 221, column: 9, scope: !5206, inlinedAt: !5207)
!5206 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4007, file: !4007, line: 218, type: !3996, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5207 = distinct !DILocation(line: 272, column: 12, scope: !5199)
!5208 = !DILocalVariable(name: "v", arg: 2, scope: !5203, file: !3995, line: 188, type: !3998)
!5209 = !DILocation(line: 188, column: 67, scope: !5203, inlinedAt: !5205)
!5210 = !DILocalVariable(name: "__ret", scope: !5211, file: !3995, line: 190, type: !138)
!5211 = distinct !DILexicalBlock(scope: !5203, file: !3995, line: 190, column: 9)
!5212 = !DILocation(line: 190, column: 9, scope: !5211, inlinedAt: !5205)
!5213 = !DILocation(line: 99, column: 79, scope: !4017, inlinedAt: !5214)
!5214 = distinct !DILocation(line: 220, column: 2, scope: !5206, inlinedAt: !5207)
!5215 = !DILocation(line: 99, column: 89, scope: !4017, inlinedAt: !5214)
!5216 = !DILocalVariable(name: "i", arg: 1, scope: !5206, file: !4007, line: 218, type: !138)
!5217 = !DILocation(line: 218, column: 30, scope: !5206, inlinedAt: !5207)
!5218 = !DILocalVariable(name: "v", arg: 2, scope: !5206, file: !4007, line: 218, type: !3998)
!5219 = !DILocation(line: 218, column: 43, scope: !5206, inlinedAt: !5207)
!5220 = !DILocalVariable(name: "i", arg: 1, scope: !5199, file: !108, line: 270, type: !138)
!5221 = !DILocation(line: 270, column: 61, scope: !5199)
!5222 = !DILocalVariable(name: "r", arg: 2, scope: !5199, file: !108, line: 270, type: !5182)
!5223 = !DILocation(line: 270, column: 76, scope: !5199)
!5224 = !DILocalVariable(name: "oldp", arg: 3, scope: !5199, file: !108, line: 270, type: !657)
!5225 = !DILocation(line: 270, column: 84, scope: !5199)
!5226 = !DILocalVariable(name: "old", scope: !5199, file: !108, line: 272, type: !138)
!5227 = !DILocation(line: 272, column: 6, scope: !5199)
!5228 = !DILocation(line: 272, column: 37, scope: !5199)
!5229 = !DILocation(line: 272, column: 41, scope: !5199)
!5230 = !DILocation(line: 272, column: 44, scope: !5199)
!5231 = !DILocation(line: 220, column: 31, scope: !5206, inlinedAt: !5207)
!5232 = !DILocation(line: 101, column: 20, scope: !4017, inlinedAt: !5214)
!5233 = !DILocation(line: 101, column: 23, scope: !4017, inlinedAt: !5214)
!5234 = !DILocation(line: 101, column: 2, scope: !4017, inlinedAt: !5214)
!5235 = !DILocation(line: 102, column: 2, scope: !4017, inlinedAt: !5214)
!5236 = !DILocation(line: 221, column: 39, scope: !5206, inlinedAt: !5207)
!5237 = !DILocation(line: 221, column: 42, scope: !5206, inlinedAt: !5207)
!5238 = !{i32 -2147190008}
!5239 = !DILocation(line: 274, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5199, file: !108, line: 274, column: 6)
!5241 = !DILocation(line: 274, column: 6, scope: !5199)
!5242 = !DILocation(line: 275, column: 11, scope: !5240)
!5243 = !DILocation(line: 275, column: 4, scope: !5240)
!5244 = !DILocation(line: 275, column: 9, scope: !5240)
!5245 = !DILocation(line: 275, column: 3, scope: !5240)
!5246 = !DILocation(line: 277, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5199, file: !108, line: 277, column: 6)
!5248 = !DILocation(line: 277, column: 13, scope: !5247)
!5249 = !DILocation(line: 277, column: 10, scope: !5247)
!5250 = !DILocation(line: 277, column: 6, scope: !5199)
!5251 = !DILocation(line: 278, column: 3, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5247, file: !108, line: 277, column: 16)
!5253 = !{i32 -2146658726}
!5254 = !DILocation(line: 279, column: 3, scope: !5252)
!5255 = !DILocation(line: 282, column: 6, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5199, file: !108, line: 282, column: 6)
!5257 = !DILocation(line: 282, column: 6, scope: !5199)
!5258 = !DILocation(line: 283, column: 26, scope: !5256)
!5259 = !DILocation(line: 283, column: 3, scope: !5256)
!5260 = !DILocation(line: 285, column: 2, scope: !5199)
!5261 = !DILocation(line: 286, column: 1, scope: !5199)
!5262 = distinct !DISubprogram(name: "kasan_check_write", scope: !5263, file: !5263, line: 38, type: !5264, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5263 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!440, !4021, !7}
!5266 = !DILocalVariable(name: "p", arg: 1, scope: !5262, file: !5263, line: 38, type: !4021)
!5267 = !DILocation(line: 38, column: 59, scope: !5262)
!5268 = !DILocalVariable(name: "size", arg: 2, scope: !5262, file: !5263, line: 38, type: !7)
!5269 = !DILocation(line: 38, column: 75, scope: !5262)
!5270 = !DILocation(line: 40, column: 2, scope: !5262)
!5271 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5272, file: !5272, line: 178, type: !5273, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5272 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5273 = !DISubroutineType(types: !5274)
!5274 = !{null, !4021, !270, !138}
!5275 = !DILocalVariable(name: "ptr", arg: 1, scope: !5271, file: !5272, line: 178, type: !4021)
!5276 = !DILocation(line: 178, column: 60, scope: !5271)
!5277 = !DILocalVariable(name: "size", arg: 2, scope: !5271, file: !5272, line: 178, type: !270)
!5278 = !DILocation(line: 178, column: 72, scope: !5271)
!5279 = !DILocalVariable(name: "type", arg: 3, scope: !5271, file: !5272, line: 179, type: !138)
!5280 = !DILocation(line: 179, column: 15, scope: !5271)
!5281 = !DILocation(line: 179, column: 23, scope: !5271)
!5282 = distinct !DISubprogram(name: "media_request_clean", scope: !3, file: !3, line: 39, type: !3788, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5283 = !DILocalVariable(name: "req", arg: 1, scope: !5282, file: !3, line: 39, type: !148)
!5284 = !DILocation(line: 39, column: 55, scope: !5282)
!5285 = !DILocalVariable(name: "obj", scope: !5282, file: !3, line: 41, type: !126)
!5286 = !DILocation(line: 41, column: 31, scope: !5282)
!5287 = !DILocalVariable(name: "obj_safe", scope: !5282, file: !3, line: 41, type: !126)
!5288 = !DILocation(line: 41, column: 37, scope: !5282)
!5289 = !DILocalVariable(name: "__ret_warn_on", scope: !5290, file: !3, line: 44, type: !138)
!5290 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 44, column: 2)
!5291 = !DILocation(line: 44, column: 2, scope: !5290)
!5292 = !DILocation(line: 44, column: 2, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 44, column: 2)
!5294 = !DILocation(line: 44, column: 2, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 44, column: 2)
!5296 = !DILocation(line: 44, column: 2, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 44, column: 2)
!5298 = !DILocation(line: 44, column: 2, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 44, column: 2)
!5300 = !{i32 -2142887185, i32 -2142887156, i32 -2142887110, i32 -2142887052, i32 -2142886998, i32 -2142886944, i32 -2142886889, i32 -2142886858}
!5301 = !DILocation(line: 44, column: 2, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 44, column: 2)
!5303 = !{i32 -2142886448, i32 -2142886441, i32 -2142886389, i32 -2142886358, i32 -2142886328}
!5304 = !DILocation(line: 44, column: 2, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 44, column: 2)
!5306 = !DILocalVariable(name: "__ret_warn_on", scope: !5307, file: !3, line: 45, type: !138)
!5307 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 45, column: 2)
!5308 = !DILocation(line: 45, column: 2, scope: !5307)
!5309 = !DILocation(line: 45, column: 2, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 45, column: 2)
!5311 = !DILocation(line: 45, column: 2, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 45, column: 2)
!5313 = !DILocation(line: 45, column: 2, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 45, column: 2)
!5315 = !DILocation(line: 45, column: 2, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 45, column: 2)
!5317 = !{i32 -2142885737, i32 -2142885708, i32 -2142885662, i32 -2142885604, i32 -2142885550, i32 -2142885496, i32 -2142885441, i32 -2142885410}
!5318 = !DILocation(line: 45, column: 2, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 45, column: 2)
!5320 = !{i32 -2142885000, i32 -2142884993, i32 -2142884941, i32 -2142884910, i32 -2142884880}
!5321 = !DILocation(line: 45, column: 2, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 45, column: 2)
!5323 = !DILocalVariable(name: "__ret_warn_on", scope: !5324, file: !3, line: 46, type: !138)
!5324 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 46, column: 2)
!5325 = !DILocation(line: 46, column: 2, scope: !5324)
!5326 = !DILocation(line: 46, column: 2, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 46, column: 2)
!5328 = !DILocation(line: 46, column: 2, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 46, column: 2)
!5330 = !DILocation(line: 46, column: 2, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 46, column: 2)
!5332 = !DILocation(line: 46, column: 2, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 46, column: 2)
!5334 = !{i32 -2142884291, i32 -2142884262, i32 -2142884216, i32 -2142884158, i32 -2142884104, i32 -2142884050, i32 -2142883995, i32 -2142883964}
!5335 = !DILocation(line: 46, column: 2, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 46, column: 2)
!5337 = !{i32 -2142883554, i32 -2142883547, i32 -2142883495, i32 -2142883464, i32 -2142883434}
!5338 = !DILocation(line: 46, column: 2, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 46, column: 2)
!5340 = !DILocalVariable(name: "__mptr", scope: !5341, file: !3, line: 48, type: !125)
!5341 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 48, column: 2)
!5342 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 48, column: 2)
!5343 = !DILocation(line: 48, column: 2, scope: !5341)
!5344 = !DILocation(line: 48, column: 2, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 48, column: 2)
!5346 = !DILocation(line: 48, column: 2, scope: !5342)
!5347 = !DILocalVariable(name: "__mptr", scope: !5348, file: !3, line: 48, type: !125)
!5348 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 48, column: 2)
!5349 = !DILocation(line: 48, column: 2, scope: !5348)
!5350 = !DILocation(line: 48, column: 2, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 48, column: 2)
!5352 = !DILocation(line: 48, column: 2, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 48, column: 2)
!5354 = !DILocation(line: 49, column: 31, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 48, column: 63)
!5356 = !DILocation(line: 49, column: 3, scope: !5355)
!5357 = !DILocation(line: 50, column: 28, scope: !5355)
!5358 = !DILocation(line: 50, column: 3, scope: !5355)
!5359 = !DILocation(line: 51, column: 2, scope: !5355)
!5360 = !DILocalVariable(name: "__mptr", scope: !5361, file: !3, line: 48, type: !125)
!5361 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 48, column: 2)
!5362 = !DILocation(line: 48, column: 2, scope: !5361)
!5363 = !DILocation(line: 48, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 48, column: 2)
!5365 = distinct !{!5365, !5346, !5366}
!5366 = !DILocation(line: 51, column: 2, scope: !5342)
!5367 = !DILocation(line: 53, column: 2, scope: !5282)
!5368 = !DILocation(line: 53, column: 7, scope: !5282)
!5369 = !DILocation(line: 53, column: 22, scope: !5282)
!5370 = !DILocation(line: 54, column: 2, scope: !5282)
!5371 = !DILocation(line: 54, column: 7, scope: !5282)
!5372 = !DILocation(line: 54, column: 20, scope: !5282)
!5373 = !DILocalVariable(name: "__ret_warn_on", scope: !5374, file: !3, line: 55, type: !138)
!5374 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 55, column: 2)
!5375 = !DILocation(line: 55, column: 2, scope: !5374)
!5376 = !DILocation(line: 55, column: 2, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 55, column: 2)
!5378 = !DILocation(line: 55, column: 2, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 55, column: 2)
!5380 = !DILocation(line: 55, column: 2, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 55, column: 2)
!5382 = !DILocation(line: 55, column: 2, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 55, column: 2)
!5384 = !{i32 -2142877059, i32 -2142877030, i32 -2142876984, i32 -2142876926, i32 -2142876872, i32 -2142876818, i32 -2142876763, i32 -2142876732}
!5385 = !DILocation(line: 55, column: 2, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 55, column: 2)
!5387 = !{i32 -2142876322, i32 -2142876315, i32 -2142876263, i32 -2142876232, i32 -2142876202}
!5388 = !DILocation(line: 55, column: 2, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5379, file: !3, line: 55, column: 2)
!5390 = !DILocation(line: 56, column: 2, scope: !5282)
!5391 = !DILocation(line: 56, column: 7, scope: !5282)
!5392 = !DILocation(line: 56, column: 30, scope: !5282)
!5393 = !DILocation(line: 57, column: 2, scope: !5282)
!5394 = !DILocation(line: 58, column: 1, scope: !5282)
!5395 = distinct !DISubprogram(name: "__to_fd", scope: !329, file: !329, line: 58, type: !5396, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!3896, !273}
!5398 = !DILocalVariable(name: "v", arg: 1, scope: !5395, file: !329, line: 58, type: !273)
!5399 = !DILocation(line: 58, column: 47, scope: !5395)
!5400 = !DILocation(line: 60, column: 20, scope: !5395)
!5401 = !DILocation(line: 60, column: 37, scope: !5395)
!5402 = !DILocation(line: 60, column: 39, scope: !5395)
!5403 = !DILocation(line: 60, column: 21, scope: !5395)
!5404 = !DILocation(line: 60, column: 45, scope: !5395)
!5405 = !DILocation(line: 60, column: 47, scope: !5395)
!5406 = !DILocation(line: 60, column: 2, scope: !5395)
!5407 = distinct !DISubprogram(name: "media_request_poll", scope: !3, file: !3, line: 93, type: !2690, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5408 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5409)
!5409 = distinct !DILocation(line: 115, column: 2, scope: !5407)
!5410 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5409)
!5411 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !5412)
!5412 = distinct !DILocation(line: 104, column: 2, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 104, column: 2)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 104, column: 2)
!5415 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 104, column: 2)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 104, column: 2)
!5417 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 104, column: 2)
!5418 = !DILocalVariable(name: "filp", arg: 1, scope: !5407, file: !3, line: 93, type: !301)
!5419 = !DILocation(line: 93, column: 49, scope: !5407)
!5420 = !DILocalVariable(name: "wait", arg: 2, scope: !5407, file: !3, line: 94, type: !2694)
!5421 = !DILocation(line: 94, column: 34, scope: !5407)
!5422 = !DILocalVariable(name: "req", scope: !5407, file: !3, line: 96, type: !148)
!5423 = !DILocation(line: 96, column: 24, scope: !5407)
!5424 = !DILocation(line: 96, column: 30, scope: !5407)
!5425 = !DILocation(line: 96, column: 36, scope: !5407)
!5426 = !DILocalVariable(name: "flags", scope: !5407, file: !3, line: 97, type: !273)
!5427 = !DILocation(line: 97, column: 16, scope: !5407)
!5428 = !DILocalVariable(name: "ret", scope: !5407, file: !3, line: 98, type: !2692)
!5429 = !DILocation(line: 98, column: 11, scope: !5407)
!5430 = !DILocation(line: 100, column: 30, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 100, column: 6)
!5432 = !DILocation(line: 100, column: 8, scope: !5431)
!5433 = !DILocation(line: 100, column: 36, scope: !5431)
!5434 = !DILocation(line: 100, column: 6, scope: !5407)
!5435 = !DILocation(line: 101, column: 3, scope: !5431)
!5436 = !DILocation(line: 103, column: 12, scope: !5407)
!5437 = !DILocation(line: 103, column: 19, scope: !5407)
!5438 = !DILocation(line: 103, column: 24, scope: !5407)
!5439 = !DILocation(line: 103, column: 35, scope: !5407)
!5440 = !DILocation(line: 103, column: 2, scope: !5407)
!5441 = !DILocation(line: 104, column: 2, scope: !5407)
!5442 = !DILocation(line: 104, column: 2, scope: !5417)
!5443 = !DILocalVariable(name: "__dummy", scope: !5444, file: !3, line: 104, type: !273)
!5444 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 104, column: 2)
!5445 = !DILocation(line: 104, column: 2, scope: !5444)
!5446 = !DILocalVariable(name: "__dummy2", scope: !5444, file: !3, line: 104, type: !273)
!5447 = !DILocation(line: 104, column: 2, scope: !5416)
!5448 = !DILocation(line: 104, column: 2, scope: !5415)
!5449 = !DILocation(line: 104, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 104, column: 2)
!5451 = !DILocalVariable(name: "__dummy", scope: !5452, file: !3, line: 104, type: !273)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 104, column: 2)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 104, column: 2)
!5454 = !DILocation(line: 104, column: 2, scope: !5452)
!5455 = !DILocalVariable(name: "__dummy2", scope: !5452, file: !3, line: 104, type: !273)
!5456 = !DILocation(line: 104, column: 2, scope: !5453)
!5457 = !DILocation(line: 104, column: 2, scope: !5414)
!5458 = !{i32 -2142873349}
!5459 = !DILocation(line: 104, column: 2, scope: !5413)
!5460 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !5412)
!5461 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !5412)
!5462 = !DILocation(line: 105, column: 6, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 105, column: 6)
!5464 = !DILocation(line: 105, column: 11, scope: !5463)
!5465 = !DILocation(line: 105, column: 17, scope: !5463)
!5466 = !DILocation(line: 105, column: 6, scope: !5407)
!5467 = !DILocation(line: 106, column: 7, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 105, column: 50)
!5469 = !DILocation(line: 107, column: 3, scope: !5468)
!5470 = !DILocation(line: 109, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 109, column: 6)
!5472 = !DILocation(line: 109, column: 11, scope: !5471)
!5473 = !DILocation(line: 109, column: 17, scope: !5471)
!5474 = !DILocation(line: 109, column: 6, scope: !5407)
!5475 = !DILocation(line: 110, column: 7, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 109, column: 48)
!5477 = !DILocation(line: 111, column: 3, scope: !5476)
!5478 = !DILocation(line: 109, column: 20, scope: !5471)
!5479 = !DILabel(scope: !5407, name: "unlock", file: !3, line: 114)
!5480 = !DILocation(line: 114, column: 1, scope: !5407)
!5481 = !DILocation(line: 115, column: 26, scope: !5407)
!5482 = !DILocation(line: 115, column: 31, scope: !5407)
!5483 = !DILocation(line: 115, column: 37, scope: !5407)
!5484 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5409)
!5485 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5409)
!5486 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5409)
!5487 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5409)
!5488 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5409)
!5489 = !DILocation(line: 116, column: 9, scope: !5407)
!5490 = !DILocation(line: 116, column: 2, scope: !5407)
!5491 = !DILocation(line: 117, column: 1, scope: !5407)
!5492 = distinct !DISubprogram(name: "media_request_ioctl", scope: !3, file: !3, line: 221, type: !2707, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5493 = !DILocalVariable(name: "filp", arg: 1, scope: !5492, file: !3, line: 221, type: !301)
!5494 = !DILocation(line: 221, column: 46, scope: !5492)
!5495 = !DILocalVariable(name: "cmd", arg: 2, scope: !5492, file: !3, line: 221, type: !7)
!5496 = !DILocation(line: 221, column: 65, scope: !5492)
!5497 = !DILocalVariable(name: "arg", arg: 3, scope: !5492, file: !3, line: 222, type: !273)
!5498 = !DILocation(line: 222, column: 19, scope: !5492)
!5499 = !DILocalVariable(name: "req", scope: !5492, file: !3, line: 224, type: !148)
!5500 = !DILocation(line: 224, column: 24, scope: !5492)
!5501 = !DILocation(line: 224, column: 30, scope: !5492)
!5502 = !DILocation(line: 224, column: 36, scope: !5492)
!5503 = !DILocation(line: 226, column: 10, scope: !5492)
!5504 = !DILocation(line: 226, column: 2, scope: !5492)
!5505 = !DILocation(line: 228, column: 36, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 226, column: 15)
!5507 = !DILocation(line: 228, column: 10, scope: !5506)
!5508 = !DILocation(line: 228, column: 3, scope: !5506)
!5509 = !DILocation(line: 230, column: 37, scope: !5506)
!5510 = !DILocation(line: 230, column: 10, scope: !5506)
!5511 = !DILocation(line: 230, column: 3, scope: !5506)
!5512 = !DILocation(line: 232, column: 3, scope: !5506)
!5513 = !DILocation(line: 234, column: 1, scope: !5492)
!5514 = distinct !DISubprogram(name: "media_request_close", scope: !3, file: !3, line: 85, type: !2717, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5515 = !DILocalVariable(name: "inode", arg: 1, scope: !5514, file: !3, line: 85, type: !379)
!5516 = !DILocation(line: 85, column: 46, scope: !5514)
!5517 = !DILocalVariable(name: "filp", arg: 2, scope: !5514, file: !3, line: 85, type: !301)
!5518 = !DILocation(line: 85, column: 66, scope: !5514)
!5519 = !DILocalVariable(name: "req", scope: !5514, file: !3, line: 87, type: !148)
!5520 = !DILocation(line: 87, column: 24, scope: !5514)
!5521 = !DILocation(line: 87, column: 30, scope: !5514)
!5522 = !DILocation(line: 87, column: 36, scope: !5514)
!5523 = !DILocation(line: 89, column: 20, scope: !5514)
!5524 = !DILocation(line: 89, column: 2, scope: !5514)
!5525 = !DILocation(line: 90, column: 2, scope: !5514)
!5526 = distinct !DISubprogram(name: "poll_requested_events", scope: !2696, file: !2696, line: 70, type: !5527, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{!2692, !5529}
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5531)
!5531 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2696, line: 46, baseType: !2695)
!5532 = !DILocalVariable(name: "p", arg: 1, scope: !5526, file: !2696, line: 70, type: !5529)
!5533 = !DILocation(line: 70, column: 64, scope: !5526)
!5534 = !DILocation(line: 72, column: 9, scope: !5526)
!5535 = !DILocation(line: 72, column: 13, scope: !5526)
!5536 = !DILocation(line: 72, column: 16, scope: !5526)
!5537 = !DILocation(line: 72, column: 2, scope: !5526)
!5538 = distinct !DISubprogram(name: "poll_wait", scope: !2696, file: !2696, line: 48, type: !5539, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{null, !301, !2703, !5541}
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!5542 = !DILocalVariable(name: "filp", arg: 1, scope: !5538, file: !2696, line: 48, type: !301)
!5543 = !DILocation(line: 48, column: 44, scope: !5538)
!5544 = !DILocalVariable(name: "wait_address", arg: 2, scope: !5538, file: !2696, line: 48, type: !2703)
!5545 = !DILocation(line: 48, column: 70, scope: !5538)
!5546 = !DILocalVariable(name: "p", arg: 3, scope: !5538, file: !2696, line: 48, type: !5541)
!5547 = !DILocation(line: 48, column: 96, scope: !5538)
!5548 = !DILocation(line: 50, column: 6, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5538, file: !2696, line: 50, column: 6)
!5550 = !DILocation(line: 50, column: 8, scope: !5549)
!5551 = !DILocation(line: 50, column: 11, scope: !5549)
!5552 = !DILocation(line: 50, column: 14, scope: !5549)
!5553 = !DILocation(line: 50, column: 21, scope: !5549)
!5554 = !DILocation(line: 50, column: 24, scope: !5549)
!5555 = !DILocation(line: 50, column: 6, scope: !5538)
!5556 = !DILocation(line: 51, column: 3, scope: !5549)
!5557 = !DILocation(line: 51, column: 6, scope: !5549)
!5558 = !DILocation(line: 51, column: 13, scope: !5549)
!5559 = !DILocation(line: 51, column: 19, scope: !5549)
!5560 = !DILocation(line: 51, column: 33, scope: !5549)
!5561 = !DILocation(line: 52, column: 1, scope: !5538)
!5562 = distinct !DISubprogram(name: "media_request_ioctl_queue", scope: !3, file: !3, line: 119, type: !5563, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!258, !148}
!5565 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5566)
!5566 = distinct !DILocation(line: 172, column: 2, scope: !5562)
!5567 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5566)
!5568 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !5569)
!5569 = distinct !DILocation(line: 169, column: 2, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5571, file: !3, line: 169, column: 2)
!5571 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 169, column: 2)
!5572 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 169, column: 2)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 169, column: 2)
!5574 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 169, column: 2)
!5575 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5576)
!5576 = distinct !DILocation(line: 142, column: 2, scope: !5562)
!5577 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5576)
!5578 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !5579)
!5579 = distinct !DILocation(line: 138, column: 2, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 138, column: 2)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 138, column: 2)
!5582 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 138, column: 2)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 138, column: 2)
!5584 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 138, column: 2)
!5585 = !DILocalVariable(name: "req", arg: 1, scope: !5562, file: !3, line: 119, type: !148)
!5586 = !DILocation(line: 119, column: 61, scope: !5562)
!5587 = !DILocalVariable(name: "mdev", scope: !5562, file: !3, line: 121, type: !152)
!5588 = !DILocation(line: 121, column: 23, scope: !5562)
!5589 = !DILocation(line: 121, column: 30, scope: !5562)
!5590 = !DILocation(line: 121, column: 35, scope: !5562)
!5591 = !DILocalVariable(name: "state", scope: !5562, file: !3, line: 122, type: !92)
!5592 = !DILocation(line: 122, column: 27, scope: !5562)
!5593 = !DILocalVariable(name: "flags", scope: !5562, file: !3, line: 123, type: !273)
!5594 = !DILocation(line: 123, column: 16, scope: !5562)
!5595 = !DILocalVariable(name: "ret", scope: !5562, file: !3, line: 124, type: !138)
!5596 = !DILocation(line: 124, column: 6, scope: !5562)
!5597 = !DILocation(line: 134, column: 14, scope: !5562)
!5598 = !DILocation(line: 134, column: 20, scope: !5562)
!5599 = !DILocation(line: 134, column: 2, scope: !5562)
!5600 = !DILocation(line: 136, column: 20, scope: !5562)
!5601 = !DILocation(line: 136, column: 2, scope: !5562)
!5602 = !DILocation(line: 138, column: 2, scope: !5562)
!5603 = !DILocation(line: 138, column: 2, scope: !5584)
!5604 = !DILocalVariable(name: "__dummy", scope: !5605, file: !3, line: 138, type: !273)
!5605 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 138, column: 2)
!5606 = !DILocation(line: 138, column: 2, scope: !5605)
!5607 = !DILocalVariable(name: "__dummy2", scope: !5605, file: !3, line: 138, type: !273)
!5608 = !DILocation(line: 138, column: 2, scope: !5583)
!5609 = !DILocation(line: 138, column: 2, scope: !5582)
!5610 = !DILocation(line: 138, column: 2, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 138, column: 2)
!5612 = !DILocalVariable(name: "__dummy", scope: !5613, file: !3, line: 138, type: !273)
!5613 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 138, column: 2)
!5614 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 138, column: 2)
!5615 = !DILocation(line: 138, column: 2, scope: !5613)
!5616 = !DILocalVariable(name: "__dummy2", scope: !5613, file: !3, line: 138, type: !273)
!5617 = !DILocation(line: 138, column: 2, scope: !5614)
!5618 = !DILocation(line: 138, column: 2, scope: !5581)
!5619 = !{i32 -2142872089}
!5620 = !DILocation(line: 138, column: 2, scope: !5580)
!5621 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !5579)
!5622 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !5579)
!5623 = !DILocation(line: 139, column: 6, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 139, column: 6)
!5625 = !DILocation(line: 139, column: 11, scope: !5624)
!5626 = !DILocation(line: 139, column: 17, scope: !5624)
!5627 = !DILocation(line: 139, column: 6, scope: !5562)
!5628 = !DILocation(line: 140, column: 3, scope: !5624)
!5629 = !DILocation(line: 140, column: 8, scope: !5624)
!5630 = !DILocation(line: 140, column: 14, scope: !5624)
!5631 = !DILocation(line: 141, column: 10, scope: !5562)
!5632 = !DILocation(line: 141, column: 15, scope: !5562)
!5633 = !DILocation(line: 141, column: 8, scope: !5562)
!5634 = !DILocation(line: 142, column: 26, scope: !5562)
!5635 = !DILocation(line: 142, column: 31, scope: !5562)
!5636 = !DILocation(line: 142, column: 37, scope: !5562)
!5637 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5576)
!5638 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5576)
!5639 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5576)
!5640 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5576)
!5641 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5576)
!5642 = !DILocation(line: 143, column: 6, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 143, column: 6)
!5644 = !DILocation(line: 143, column: 12, scope: !5643)
!5645 = !DILocation(line: 143, column: 6, scope: !5562)
!5646 = !DILocation(line: 147, column: 21, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 143, column: 47)
!5648 = !DILocation(line: 147, column: 3, scope: !5647)
!5649 = !DILocation(line: 148, column: 17, scope: !5647)
!5650 = !DILocation(line: 148, column: 23, scope: !5647)
!5651 = !DILocation(line: 148, column: 3, scope: !5647)
!5652 = !DILocation(line: 149, column: 3, scope: !5647)
!5653 = !DILocation(line: 152, column: 8, scope: !5562)
!5654 = !DILocation(line: 152, column: 14, scope: !5562)
!5655 = !DILocation(line: 152, column: 19, scope: !5562)
!5656 = !DILocation(line: 152, column: 32, scope: !5562)
!5657 = !DILocation(line: 152, column: 6, scope: !5562)
!5658 = !DILocation(line: 169, column: 2, scope: !5562)
!5659 = !DILocation(line: 169, column: 2, scope: !5574)
!5660 = !DILocalVariable(name: "__dummy", scope: !5661, file: !3, line: 169, type: !273)
!5661 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 169, column: 2)
!5662 = !DILocation(line: 169, column: 2, scope: !5661)
!5663 = !DILocalVariable(name: "__dummy2", scope: !5661, file: !3, line: 169, type: !273)
!5664 = !DILocation(line: 169, column: 2, scope: !5573)
!5665 = !DILocation(line: 169, column: 2, scope: !5572)
!5666 = !DILocation(line: 169, column: 2, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 169, column: 2)
!5668 = !DILocalVariable(name: "__dummy", scope: !5669, file: !3, line: 169, type: !273)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 169, column: 2)
!5670 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 169, column: 2)
!5671 = !DILocation(line: 169, column: 2, scope: !5669)
!5672 = !DILocalVariable(name: "__dummy2", scope: !5669, file: !3, line: 169, type: !273)
!5673 = !DILocation(line: 169, column: 2, scope: !5670)
!5674 = !DILocation(line: 169, column: 2, scope: !5571)
!5675 = !{i32 -2142870790}
!5676 = !DILocation(line: 169, column: 2, scope: !5570)
!5677 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !5569)
!5678 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !5569)
!5679 = !DILocation(line: 170, column: 15, scope: !5562)
!5680 = !DILocation(line: 170, column: 2, scope: !5562)
!5681 = !DILocation(line: 170, column: 7, scope: !5562)
!5682 = !DILocation(line: 170, column: 13, scope: !5562)
!5683 = !DILocation(line: 172, column: 26, scope: !5562)
!5684 = !DILocation(line: 172, column: 31, scope: !5562)
!5685 = !DILocation(line: 172, column: 37, scope: !5562)
!5686 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5566)
!5687 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5566)
!5688 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5566)
!5689 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5566)
!5690 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5566)
!5691 = !DILocation(line: 174, column: 7, scope: !5692)
!5692 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 174, column: 6)
!5693 = !DILocation(line: 174, column: 6, scope: !5562)
!5694 = !DILocation(line: 175, column: 3, scope: !5692)
!5695 = !DILocation(line: 175, column: 9, scope: !5692)
!5696 = !DILocation(line: 175, column: 14, scope: !5692)
!5697 = !DILocation(line: 175, column: 24, scope: !5692)
!5698 = !DILocation(line: 177, column: 16, scope: !5562)
!5699 = !DILocation(line: 177, column: 22, scope: !5562)
!5700 = !DILocation(line: 177, column: 2, scope: !5562)
!5701 = !DILocation(line: 179, column: 6, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 179, column: 6)
!5703 = !DILocation(line: 179, column: 6, scope: !5562)
!5704 = !DILocation(line: 182, column: 21, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 179, column: 11)
!5706 = !DILocation(line: 182, column: 3, scope: !5705)
!5707 = !DILocation(line: 183, column: 2, scope: !5705)
!5708 = !DILocation(line: 185, column: 9, scope: !5562)
!5709 = !DILocation(line: 185, column: 2, scope: !5562)
!5710 = !DILocation(line: 186, column: 1, scope: !5562)
!5711 = distinct !DISubprogram(name: "media_request_ioctl_reinit", scope: !3, file: !3, line: 188, type: !5563, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5712 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !5713)
!5713 = distinct !DILocation(line: 214, column: 2, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 214, column: 2)
!5715 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 214, column: 2)
!5716 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 214, column: 2)
!5717 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 214, column: 2)
!5718 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 214, column: 2)
!5719 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5720)
!5720 = distinct !DILocation(line: 210, column: 2, scope: !5711)
!5721 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5720)
!5722 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5723)
!5723 = distinct !DILocation(line: 206, column: 3, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 202, column: 25)
!5725 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 202, column: 6)
!5726 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5723)
!5727 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5728)
!5728 = distinct !DILocation(line: 199, column: 3, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 195, column: 50)
!5730 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 194, column: 6)
!5731 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5728)
!5732 = !DILocation(line: 407, column: 64, scope: !4503, inlinedAt: !5733)
!5733 = distinct !DILocation(line: 216, column: 2, scope: !5711)
!5734 = !DILocation(line: 407, column: 84, scope: !4503, inlinedAt: !5733)
!5735 = !DILocation(line: 327, column: 67, scope: !4031, inlinedAt: !5736)
!5736 = distinct !DILocation(line: 193, column: 2, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 193, column: 2)
!5738 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 193, column: 2)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 193, column: 2)
!5740 = distinct !DILexicalBlock(scope: !5741, file: !3, line: 193, column: 2)
!5741 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 193, column: 2)
!5742 = !DILocalVariable(name: "req", arg: 1, scope: !5711, file: !3, line: 188, type: !148)
!5743 = !DILocation(line: 188, column: 62, scope: !5711)
!5744 = !DILocalVariable(name: "mdev", scope: !5711, file: !3, line: 190, type: !152)
!5745 = !DILocation(line: 190, column: 23, scope: !5711)
!5746 = !DILocation(line: 190, column: 30, scope: !5711)
!5747 = !DILocation(line: 190, column: 35, scope: !5711)
!5748 = !DILocalVariable(name: "flags", scope: !5711, file: !3, line: 191, type: !273)
!5749 = !DILocation(line: 191, column: 16, scope: !5711)
!5750 = !DILocation(line: 193, column: 2, scope: !5711)
!5751 = !DILocation(line: 193, column: 2, scope: !5741)
!5752 = !DILocalVariable(name: "__dummy", scope: !5753, file: !3, line: 193, type: !273)
!5753 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 193, column: 2)
!5754 = !DILocation(line: 193, column: 2, scope: !5753)
!5755 = !DILocalVariable(name: "__dummy2", scope: !5753, file: !3, line: 193, type: !273)
!5756 = !DILocation(line: 193, column: 2, scope: !5740)
!5757 = !DILocation(line: 193, column: 2, scope: !5739)
!5758 = !DILocation(line: 193, column: 2, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 193, column: 2)
!5760 = !DILocalVariable(name: "__dummy", scope: !5761, file: !3, line: 193, type: !273)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 193, column: 2)
!5762 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 193, column: 2)
!5763 = !DILocation(line: 193, column: 2, scope: !5761)
!5764 = !DILocalVariable(name: "__dummy2", scope: !5761, file: !3, line: 193, type: !273)
!5765 = !DILocation(line: 193, column: 2, scope: !5762)
!5766 = !DILocation(line: 193, column: 2, scope: !5738)
!5767 = !{i32 -2142869561}
!5768 = !DILocation(line: 193, column: 2, scope: !5737)
!5769 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !5736)
!5770 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !5736)
!5771 = !DILocation(line: 194, column: 6, scope: !5730)
!5772 = !DILocation(line: 194, column: 11, scope: !5730)
!5773 = !DILocation(line: 194, column: 17, scope: !5730)
!5774 = !DILocation(line: 194, column: 45, scope: !5730)
!5775 = !DILocation(line: 195, column: 6, scope: !5730)
!5776 = !DILocation(line: 195, column: 11, scope: !5730)
!5777 = !DILocation(line: 195, column: 17, scope: !5730)
!5778 = !DILocation(line: 194, column: 6, scope: !5711)
!5779 = !DILocation(line: 199, column: 27, scope: !5729)
!5780 = !DILocation(line: 199, column: 32, scope: !5729)
!5781 = !DILocation(line: 199, column: 38, scope: !5729)
!5782 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5728)
!5783 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5728)
!5784 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5728)
!5785 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5728)
!5786 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5728)
!5787 = !DILocation(line: 200, column: 3, scope: !5729)
!5788 = !DILocation(line: 202, column: 6, scope: !5725)
!5789 = !DILocation(line: 202, column: 11, scope: !5725)
!5790 = !DILocation(line: 202, column: 6, scope: !5711)
!5791 = !DILocation(line: 206, column: 27, scope: !5724)
!5792 = !DILocation(line: 206, column: 32, scope: !5724)
!5793 = !DILocation(line: 206, column: 38, scope: !5724)
!5794 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5723)
!5795 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5723)
!5796 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5723)
!5797 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5723)
!5798 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5723)
!5799 = !DILocation(line: 207, column: 3, scope: !5724)
!5800 = !DILocation(line: 209, column: 2, scope: !5711)
!5801 = !DILocation(line: 209, column: 7, scope: !5711)
!5802 = !DILocation(line: 209, column: 13, scope: !5711)
!5803 = !DILocation(line: 210, column: 26, scope: !5711)
!5804 = !DILocation(line: 210, column: 31, scope: !5711)
!5805 = !DILocation(line: 210, column: 37, scope: !5711)
!5806 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5720)
!5807 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5720)
!5808 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5720)
!5809 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5720)
!5810 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5720)
!5811 = !DILocation(line: 212, column: 22, scope: !5711)
!5812 = !DILocation(line: 212, column: 2, scope: !5711)
!5813 = !DILocation(line: 214, column: 2, scope: !5711)
!5814 = !DILocation(line: 214, column: 2, scope: !5718)
!5815 = !DILocalVariable(name: "__dummy", scope: !5816, file: !3, line: 214, type: !273)
!5816 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 214, column: 2)
!5817 = !DILocation(line: 214, column: 2, scope: !5816)
!5818 = !DILocalVariable(name: "__dummy2", scope: !5816, file: !3, line: 214, type: !273)
!5819 = !DILocation(line: 214, column: 2, scope: !5717)
!5820 = !DILocation(line: 214, column: 2, scope: !5716)
!5821 = !DILocation(line: 214, column: 2, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 214, column: 2)
!5823 = !DILocalVariable(name: "__dummy", scope: !5824, file: !3, line: 214, type: !273)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 214, column: 2)
!5825 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 214, column: 2)
!5826 = !DILocation(line: 214, column: 2, scope: !5824)
!5827 = !DILocalVariable(name: "__dummy2", scope: !5824, file: !3, line: 214, type: !273)
!5828 = !DILocation(line: 214, column: 2, scope: !5825)
!5829 = !DILocation(line: 214, column: 2, scope: !5715)
!5830 = !{i32 -2142868031}
!5831 = !DILocation(line: 214, column: 2, scope: !5714)
!5832 = !DILocation(line: 329, column: 10, scope: !4031, inlinedAt: !5713)
!5833 = !DILocation(line: 329, column: 16, scope: !4031, inlinedAt: !5713)
!5834 = !DILocation(line: 215, column: 2, scope: !5711)
!5835 = !DILocation(line: 215, column: 7, scope: !5711)
!5836 = !DILocation(line: 215, column: 13, scope: !5711)
!5837 = !DILocation(line: 216, column: 26, scope: !5711)
!5838 = !DILocation(line: 216, column: 31, scope: !5711)
!5839 = !DILocation(line: 216, column: 37, scope: !5711)
!5840 = !DILocation(line: 409, column: 2, scope: !4610, inlinedAt: !5733)
!5841 = !DILocation(line: 409, column: 2, scope: !4615, inlinedAt: !5733)
!5842 = !DILocation(line: 409, column: 2, scope: !4616, inlinedAt: !5733)
!5843 = !DILocation(line: 409, column: 2, scope: !4623, inlinedAt: !5733)
!5844 = !DILocation(line: 409, column: 2, scope: !4626, inlinedAt: !5733)
!5845 = !DILocation(line: 218, column: 2, scope: !5711)
!5846 = !DILocation(line: 219, column: 1, scope: !5711)
!5847 = distinct !DISubprogram(name: "kref_get", scope: !3170, file: !3170, line: 43, type: !3840, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5848 = !DILocalVariable(name: "kref", arg: 1, scope: !5847, file: !3170, line: 43, type: !3838)
!5849 = !DILocation(line: 43, column: 42, scope: !5847)
!5850 = !DILocation(line: 45, column: 16, scope: !5847)
!5851 = !DILocation(line: 45, column: 22, scope: !5847)
!5852 = !DILocation(line: 45, column: 2, scope: !5847)
!5853 = !DILocation(line: 46, column: 1, scope: !5847)
!5854 = distinct !DISubprogram(name: "refcount_inc", scope: !108, file: !108, line: 265, type: !5855, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{null, !5182}
!5857 = !DILocalVariable(name: "r", arg: 1, scope: !5854, file: !108, line: 265, type: !5182)
!5858 = !DILocation(line: 265, column: 45, scope: !5854)
!5859 = !DILocation(line: 267, column: 17, scope: !5854)
!5860 = !DILocation(line: 267, column: 2, scope: !5854)
!5861 = !DILocation(line: 268, column: 1, scope: !5854)
!5862 = distinct !DISubprogram(name: "__refcount_inc", scope: !108, file: !108, line: 248, type: !5863, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5863 = !DISubroutineType(types: !5864)
!5864 = !{null, !5182, !657}
!5865 = !DILocalVariable(name: "r", arg: 1, scope: !5862, file: !108, line: 248, type: !5182)
!5866 = !DILocation(line: 248, column: 47, scope: !5862)
!5867 = !DILocalVariable(name: "oldp", arg: 2, scope: !5862, file: !108, line: 248, type: !657)
!5868 = !DILocation(line: 248, column: 55, scope: !5862)
!5869 = !DILocation(line: 250, column: 20, scope: !5862)
!5870 = !DILocation(line: 250, column: 23, scope: !5862)
!5871 = !DILocation(line: 250, column: 2, scope: !5862)
!5872 = !DILocation(line: 251, column: 1, scope: !5862)
!5873 = distinct !DISubprogram(name: "__refcount_add", scope: !108, file: !108, line: 191, type: !5874, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5874 = !DISubroutineType(types: !5875)
!5875 = !{null, !138, !5182, !657}
!5876 = !DILocalVariable(name: "i", arg: 1, scope: !5877, file: !3995, line: 182, type: !138)
!5877 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !3995, file: !3995, line: 182, type: !3996, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5878 = !DILocation(line: 182, column: 54, scope: !5877, inlinedAt: !5879)
!5879 = distinct !DILocation(line: 143, column: 9, scope: !5880, inlinedAt: !5881)
!5880 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4007, file: !4007, line: 140, type: !3996, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5881 = distinct !DILocation(line: 193, column: 12, scope: !5873)
!5882 = !DILocalVariable(name: "v", arg: 2, scope: !5877, file: !3995, line: 182, type: !3998)
!5883 = !DILocation(line: 182, column: 67, scope: !5877, inlinedAt: !5879)
!5884 = !DILocalVariable(name: "__ret", scope: !5885, file: !3995, line: 184, type: !138)
!5885 = distinct !DILexicalBlock(scope: !5877, file: !3995, line: 184, column: 9)
!5886 = !DILocation(line: 184, column: 9, scope: !5885, inlinedAt: !5879)
!5887 = !DILocation(line: 99, column: 79, scope: !4017, inlinedAt: !5888)
!5888 = distinct !DILocation(line: 142, column: 2, scope: !5880, inlinedAt: !5881)
!5889 = !DILocation(line: 99, column: 89, scope: !4017, inlinedAt: !5888)
!5890 = !DILocalVariable(name: "i", arg: 1, scope: !5880, file: !4007, line: 140, type: !138)
!5891 = !DILocation(line: 140, column: 30, scope: !5880, inlinedAt: !5881)
!5892 = !DILocalVariable(name: "v", arg: 2, scope: !5880, file: !4007, line: 140, type: !3998)
!5893 = !DILocation(line: 140, column: 43, scope: !5880, inlinedAt: !5881)
!5894 = !DILocalVariable(name: "i", arg: 1, scope: !5873, file: !108, line: 191, type: !138)
!5895 = !DILocation(line: 191, column: 39, scope: !5873)
!5896 = !DILocalVariable(name: "r", arg: 2, scope: !5873, file: !108, line: 191, type: !5182)
!5897 = !DILocation(line: 191, column: 54, scope: !5873)
!5898 = !DILocalVariable(name: "oldp", arg: 3, scope: !5873, file: !108, line: 191, type: !657)
!5899 = !DILocation(line: 191, column: 62, scope: !5873)
!5900 = !DILocalVariable(name: "old", scope: !5873, file: !108, line: 193, type: !138)
!5901 = !DILocation(line: 193, column: 6, scope: !5873)
!5902 = !DILocation(line: 193, column: 37, scope: !5873)
!5903 = !DILocation(line: 193, column: 41, scope: !5873)
!5904 = !DILocation(line: 193, column: 44, scope: !5873)
!5905 = !DILocation(line: 142, column: 31, scope: !5880, inlinedAt: !5881)
!5906 = !DILocation(line: 101, column: 20, scope: !4017, inlinedAt: !5888)
!5907 = !DILocation(line: 101, column: 23, scope: !4017, inlinedAt: !5888)
!5908 = !DILocation(line: 101, column: 2, scope: !4017, inlinedAt: !5888)
!5909 = !DILocation(line: 102, column: 2, scope: !4017, inlinedAt: !5888)
!5910 = !DILocation(line: 143, column: 39, scope: !5880, inlinedAt: !5881)
!5911 = !DILocation(line: 143, column: 42, scope: !5880, inlinedAt: !5881)
!5912 = !{i32 -2147191364}
!5913 = !DILocation(line: 195, column: 6, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5873, file: !108, line: 195, column: 6)
!5915 = !DILocation(line: 195, column: 6, scope: !5873)
!5916 = !DILocation(line: 196, column: 11, scope: !5914)
!5917 = !DILocation(line: 196, column: 4, scope: !5914)
!5918 = !DILocation(line: 196, column: 9, scope: !5914)
!5919 = !DILocation(line: 196, column: 3, scope: !5914)
!5920 = !DILocation(line: 198, column: 6, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5873, file: !108, line: 198, column: 6)
!5922 = !DILocation(line: 198, column: 6, scope: !5873)
!5923 = !DILocation(line: 199, column: 26, scope: !5921)
!5924 = !DILocation(line: 199, column: 3, scope: !5921)
!5925 = !DILocation(line: 200, column: 11, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5921, file: !108, line: 200, column: 11)
!5927 = !DILocation(line: 200, column: 11, scope: !5921)
!5928 = !DILocation(line: 201, column: 26, scope: !5926)
!5929 = !DILocation(line: 201, column: 3, scope: !5926)
!5930 = !DILocation(line: 202, column: 1, scope: !5873)
!5931 = distinct !DISubprogram(name: "get_order", scope: !5932, file: !5932, line: 29, type: !5933, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5932 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5933 = !DISubroutineType(types: !5934)
!5934 = !{!138, !273}
!5935 = !DILocalVariable(name: "x", arg: 1, scope: !5936, file: !5937, line: 366, type: !372)
!5936 = distinct !DISubprogram(name: "fls64", scope: !5937, file: !5937, line: 366, type: !5938, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5937 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!138, !372}
!5940 = !DILocation(line: 366, column: 40, scope: !5936, inlinedAt: !5941)
!5941 = distinct !DILocation(line: 46, column: 9, scope: !5931)
!5942 = !DILocalVariable(name: "bitpos", scope: !5936, file: !5937, line: 368, type: !138)
!5943 = !DILocation(line: 368, column: 6, scope: !5936, inlinedAt: !5941)
!5944 = !DILocalVariable(name: "size", arg: 1, scope: !5931, file: !5932, line: 29, type: !273)
!5945 = !DILocation(line: 29, column: 63, scope: !5931)
!5946 = !DILocation(line: 31, column: 27, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5931, file: !5932, line: 31, column: 6)
!5948 = !DILocation(line: 31, column: 6, scope: !5947)
!5949 = !DILocation(line: 31, column: 6, scope: !5931)
!5950 = !DILocation(line: 32, column: 8, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5952, file: !5932, line: 32, column: 7)
!5952 = distinct !DILexicalBlock(scope: !5947, file: !5932, line: 31, column: 34)
!5953 = !DILocation(line: 32, column: 7, scope: !5952)
!5954 = !DILocation(line: 33, column: 4, scope: !5951)
!5955 = !DILocation(line: 35, column: 7, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5952, file: !5932, line: 35, column: 7)
!5957 = !DILocation(line: 35, column: 12, scope: !5956)
!5958 = !DILocation(line: 35, column: 7, scope: !5952)
!5959 = !DILocation(line: 36, column: 4, scope: !5956)
!5960 = !DILocation(line: 38, column: 10, scope: !5952)
!5961 = !DILocation(line: 38, column: 28, scope: !5952)
!5962 = !DILocation(line: 38, column: 41, scope: !5952)
!5963 = !DILocation(line: 38, column: 3, scope: !5952)
!5964 = !DILocation(line: 41, column: 6, scope: !5931)
!5965 = !DILocation(line: 42, column: 7, scope: !5931)
!5966 = !DILocation(line: 46, column: 15, scope: !5931)
!5967 = !DILocation(line: 374, column: 2, scope: !5936, inlinedAt: !5941)
!5968 = !DILocation(line: 376, column: 14, scope: !5936, inlinedAt: !5941)
!5969 = !{i32 635905}
!5970 = !DILocation(line: 377, column: 9, scope: !5936, inlinedAt: !5941)
!5971 = !DILocation(line: 377, column: 16, scope: !5936, inlinedAt: !5941)
!5972 = !DILocation(line: 46, column: 2, scope: !5931)
!5973 = !DILocation(line: 48, column: 1, scope: !5931)
!5974 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5975, file: !5975, line: 30, type: !5976, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5975 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5976 = !DISubroutineType(types: !5977)
!5977 = !{!138, !371}
!5978 = !DILocation(line: 366, column: 40, scope: !5936, inlinedAt: !5979)
!5979 = distinct !DILocation(line: 32, column: 9, scope: !5974)
!5980 = !DILocation(line: 368, column: 6, scope: !5936, inlinedAt: !5979)
!5981 = !DILocalVariable(name: "n", arg: 1, scope: !5974, file: !5975, line: 30, type: !371)
!5982 = !DILocation(line: 30, column: 21, scope: !5974)
!5983 = !DILocation(line: 32, column: 15, scope: !5974)
!5984 = !DILocation(line: 374, column: 2, scope: !5936, inlinedAt: !5979)
!5985 = !DILocation(line: 376, column: 14, scope: !5936, inlinedAt: !5979)
!5986 = !DILocation(line: 377, column: 9, scope: !5936, inlinedAt: !5979)
!5987 = !DILocation(line: 377, column: 16, scope: !5936, inlinedAt: !5979)
!5988 = !DILocation(line: 32, column: 18, scope: !5974)
!5989 = !DILocation(line: 32, column: 2, scope: !5974)
!5990 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5991, file: !5991, line: 137, type: !5992, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5991 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5992 = !DISubroutineType(types: !5993)
!5993 = !{!125, !887, !3009, !270, !123}
!5994 = !DILocalVariable(name: "s", arg: 1, scope: !5990, file: !5991, line: 137, type: !887)
!5995 = !DILocation(line: 137, column: 54, scope: !5990)
!5996 = !DILocalVariable(name: "object", arg: 2, scope: !5990, file: !5991, line: 137, type: !3009)
!5997 = !DILocation(line: 137, column: 69, scope: !5990)
!5998 = !DILocalVariable(name: "size", arg: 3, scope: !5990, file: !5991, line: 138, type: !270)
!5999 = !DILocation(line: 138, column: 12, scope: !5990)
!6000 = !DILocalVariable(name: "flags", arg: 4, scope: !5990, file: !5991, line: 138, type: !123)
!6001 = !DILocation(line: 138, column: 24, scope: !5990)
!6002 = !DILocation(line: 140, column: 17, scope: !5990)
!6003 = !DILocation(line: 140, column: 2, scope: !5990)
!6004 = distinct !DISubprogram(name: "refcount_set", scope: !108, file: !108, line: 134, type: !6005, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !5182, !138}
!6007 = !DILocalVariable(name: "v", arg: 1, scope: !6008, file: !3995, line: 39, type: !3998)
!6008 = distinct !DISubprogram(name: "arch_atomic_set", scope: !3995, file: !3995, line: 39, type: !6009, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6009 = !DISubroutineType(types: !6010)
!6010 = !{null, !3998, !138}
!6011 = !DILocation(line: 39, column: 55, scope: !6008, inlinedAt: !6012)
!6012 = distinct !DILocation(line: 46, column: 2, scope: !6013, inlinedAt: !6014)
!6013 = distinct !DISubprogram(name: "atomic_set", scope: !4007, file: !4007, line: 43, type: !6009, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6014 = distinct !DILocation(line: 136, column: 2, scope: !6004)
!6015 = !DILocalVariable(name: "i", arg: 2, scope: !6008, file: !3995, line: 39, type: !138)
!6016 = !DILocation(line: 39, column: 62, scope: !6008, inlinedAt: !6012)
!6017 = !DILocalVariable(name: "v", arg: 1, scope: !6018, file: !4018, line: 84, type: !4021)
!6018 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4018, file: !4018, line: 84, type: !4019, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6019 = !DILocation(line: 84, column: 74, scope: !6018, inlinedAt: !6020)
!6020 = distinct !DILocation(line: 45, column: 2, scope: !6013, inlinedAt: !6014)
!6021 = !DILocalVariable(name: "size", arg: 2, scope: !6018, file: !4018, line: 84, type: !270)
!6022 = !DILocation(line: 84, column: 84, scope: !6018, inlinedAt: !6020)
!6023 = !DILocalVariable(name: "v", arg: 1, scope: !6013, file: !4007, line: 43, type: !3998)
!6024 = !DILocation(line: 43, column: 22, scope: !6013, inlinedAt: !6014)
!6025 = !DILocalVariable(name: "i", arg: 2, scope: !6013, file: !4007, line: 43, type: !138)
!6026 = !DILocation(line: 43, column: 29, scope: !6013, inlinedAt: !6014)
!6027 = !DILocalVariable(name: "r", arg: 1, scope: !6004, file: !108, line: 134, type: !5182)
!6028 = !DILocation(line: 134, column: 45, scope: !6004)
!6029 = !DILocalVariable(name: "n", arg: 2, scope: !6004, file: !108, line: 134, type: !138)
!6030 = !DILocation(line: 134, column: 52, scope: !6004)
!6031 = !DILocation(line: 136, column: 14, scope: !6004)
!6032 = !DILocation(line: 136, column: 17, scope: !6004)
!6033 = !DILocation(line: 136, column: 23, scope: !6004)
!6034 = !DILocation(line: 45, column: 26, scope: !6013, inlinedAt: !6014)
!6035 = !DILocation(line: 86, column: 20, scope: !6018, inlinedAt: !6020)
!6036 = !DILocation(line: 86, column: 23, scope: !6018, inlinedAt: !6020)
!6037 = !DILocation(line: 86, column: 2, scope: !6018, inlinedAt: !6020)
!6038 = !DILocation(line: 87, column: 2, scope: !6018, inlinedAt: !6020)
!6039 = !DILocation(line: 46, column: 18, scope: !6013, inlinedAt: !6014)
!6040 = !DILocation(line: 46, column: 21, scope: !6013, inlinedAt: !6014)
!6041 = !DILocation(line: 41, column: 2, scope: !6042, inlinedAt: !6012)
!6042 = distinct !DILexicalBlock(scope: !6008, file: !3995, line: 41, column: 2)
!6043 = !DILocation(line: 137, column: 1, scope: !6004)
!6044 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4631, file: !4631, line: 646, type: !4632, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6045 = !DILocalVariable(name: "__ret", scope: !6046, file: !4631, line: 648, type: !273)
!6046 = distinct !DILexicalBlock(scope: !6044, file: !4631, line: 648, column: 9)
!6047 = !DILocation(line: 648, column: 9, scope: !6046)
!6048 = !DILocalVariable(name: "__edi", scope: !6046, file: !4631, line: 648, type: !273)
!6049 = !DILocalVariable(name: "__esi", scope: !6046, file: !4631, line: 648, type: !273)
!6050 = !DILocalVariable(name: "__edx", scope: !6046, file: !4631, line: 648, type: !273)
!6051 = !DILocalVariable(name: "__ecx", scope: !6046, file: !4631, line: 648, type: !273)
!6052 = !DILocalVariable(name: "__eax", scope: !6046, file: !4631, line: 648, type: !273)
!6053 = !DILocation(line: 648, column: 9, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6055, file: !4631, line: 648, column: 9)
!6055 = distinct !DILexicalBlock(scope: !6046, file: !4631, line: 648, column: 9)
!6056 = !{i32 -2145765197, i32 -2145762882, i32 -2145762648, i32 -2145762597, i32 -2145762569, i32 -2145762544, i32 -2145762860, i32 -2145762847, i32 -2145762409, i32 -2145762290, i32 -2145762755, i32 -2145762728, i32 -2145762700, i32 -2145762670}
!6057 = !DILocalVariable(name: "__mask", scope: !6058, file: !4631, line: 648, type: !273)
!6058 = distinct !DILexicalBlock(scope: !6054, file: !4631, line: 648, column: 9)
!6059 = !DILocation(line: 648, column: 9, scope: !6058)
!6060 = !DILocation(line: 648, column: 9, scope: !6055)
!6061 = !DILocation(line: 648, column: 2, scope: !6044)
!6062 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4631, file: !4631, line: 656, type: !1739, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6063 = !DILocalVariable(name: "__edi", scope: !6064, file: !4631, line: 658, type: !273)
!6064 = distinct !DILexicalBlock(scope: !6062, file: !4631, line: 658, column: 2)
!6065 = !DILocation(line: 658, column: 2, scope: !6064)
!6066 = !DILocalVariable(name: "__esi", scope: !6064, file: !4631, line: 658, type: !273)
!6067 = !DILocalVariable(name: "__edx", scope: !6064, file: !4631, line: 658, type: !273)
!6068 = !DILocalVariable(name: "__ecx", scope: !6064, file: !4631, line: 658, type: !273)
!6069 = !DILocalVariable(name: "__eax", scope: !6064, file: !4631, line: 658, type: !273)
!6070 = !{i32 -2145758103, i32 -2145757371, i32 -2145757137, i32 -2145757086, i32 -2145757058, i32 -2145757033, i32 -2145757349, i32 -2145757336, i32 -2145756898, i32 -2145756779, i32 -2145757244, i32 -2145757217, i32 -2145757189, i32 -2145757159}
!6071 = !DILocation(line: 659, column: 1, scope: !6062)
!6072 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4631, file: !4631, line: 651, type: !6073, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{null, !273}
!6075 = !DILocalVariable(name: "f", arg: 1, scope: !6072, file: !4631, line: 651, type: !273)
!6076 = !DILocation(line: 651, column: 65, scope: !6072)
!6077 = !DILocalVariable(name: "__edi", scope: !6078, file: !4631, line: 653, type: !273)
!6078 = distinct !DILexicalBlock(scope: !6072, file: !4631, line: 653, column: 2)
!6079 = !DILocation(line: 653, column: 2, scope: !6078)
!6080 = !DILocalVariable(name: "__esi", scope: !6078, file: !4631, line: 653, type: !273)
!6081 = !DILocalVariable(name: "__edx", scope: !6078, file: !4631, line: 653, type: !273)
!6082 = !DILocalVariable(name: "__ecx", scope: !6078, file: !4631, line: 653, type: !273)
!6083 = !DILocalVariable(name: "__eax", scope: !6078, file: !4631, line: 653, type: !273)
!6084 = !{i32 -2145760730, i32 -2145759980, i32 -2145759746, i32 -2145759695, i32 -2145759667, i32 -2145759642, i32 -2145759958, i32 -2145759945, i32 -2145759507, i32 -2145759388, i32 -2145759853, i32 -2145759826, i32 -2145759798, i32 -2145759768}
!6085 = !DILocation(line: 654, column: 1, scope: !6072)
!6086 = distinct !DISubprogram(name: "__list_add", scope: !4482, file: !4482, line: 63, type: !6087, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{null, !172, !172, !172}
!6089 = !DILocalVariable(name: "new", arg: 1, scope: !6086, file: !4482, line: 63, type: !172)
!6090 = !DILocation(line: 63, column: 49, scope: !6086)
!6091 = !DILocalVariable(name: "prev", arg: 2, scope: !6086, file: !4482, line: 64, type: !172)
!6092 = !DILocation(line: 64, column: 28, scope: !6086)
!6093 = !DILocalVariable(name: "next", arg: 3, scope: !6086, file: !4482, line: 65, type: !172)
!6094 = !DILocation(line: 65, column: 28, scope: !6086)
!6095 = !DILocation(line: 67, column: 24, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6086, file: !4482, line: 67, column: 6)
!6097 = !DILocation(line: 67, column: 29, scope: !6096)
!6098 = !DILocation(line: 67, column: 35, scope: !6096)
!6099 = !DILocation(line: 67, column: 7, scope: !6096)
!6100 = !DILocation(line: 67, column: 6, scope: !6086)
!6101 = !DILocation(line: 68, column: 3, scope: !6096)
!6102 = !DILocation(line: 70, column: 15, scope: !6086)
!6103 = !DILocation(line: 70, column: 2, scope: !6086)
!6104 = !DILocation(line: 70, column: 8, scope: !6086)
!6105 = !DILocation(line: 70, column: 13, scope: !6086)
!6106 = !DILocation(line: 71, column: 14, scope: !6086)
!6107 = !DILocation(line: 71, column: 2, scope: !6086)
!6108 = !DILocation(line: 71, column: 7, scope: !6086)
!6109 = !DILocation(line: 71, column: 12, scope: !6086)
!6110 = !DILocation(line: 72, column: 14, scope: !6086)
!6111 = !DILocation(line: 72, column: 2, scope: !6086)
!6112 = !DILocation(line: 72, column: 7, scope: !6086)
!6113 = !DILocation(line: 72, column: 12, scope: !6086)
!6114 = !DILocation(line: 73, column: 2, scope: !6086)
!6115 = !DILocation(line: 73, column: 2, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6086, file: !4482, line: 73, column: 2)
!6117 = !DILocation(line: 73, column: 2, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6116, file: !4482, line: 73, column: 2)
!6119 = !DILocation(line: 73, column: 2, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6116, file: !4482, line: 73, column: 2)
!6121 = !DILocation(line: 74, column: 1, scope: !6086)
!6122 = distinct !DISubprogram(name: "__list_add_valid", scope: !4482, file: !4482, line: 45, type: !6123, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!440, !172, !172, !172}
!6125 = !DILocalVariable(name: "new", arg: 1, scope: !6122, file: !4482, line: 45, type: !172)
!6126 = !DILocation(line: 45, column: 55, scope: !6122)
!6127 = !DILocalVariable(name: "prev", arg: 2, scope: !6122, file: !4482, line: 46, type: !172)
!6128 = !DILocation(line: 46, column: 23, scope: !6122)
!6129 = !DILocalVariable(name: "next", arg: 3, scope: !6122, file: !4482, line: 47, type: !172)
!6130 = !DILocation(line: 47, column: 23, scope: !6122)
!6131 = !DILocation(line: 49, column: 2, scope: !6122)
!6132 = distinct !DISubprogram(name: "__list_del_entry", scope: !4482, file: !4482, line: 130, type: !4483, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6133 = !DILocalVariable(name: "entry", arg: 1, scope: !6132, file: !4482, line: 130, type: !172)
!6134 = !DILocation(line: 130, column: 55, scope: !6132)
!6135 = !DILocation(line: 132, column: 30, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6132, file: !4482, line: 132, column: 6)
!6137 = !DILocation(line: 132, column: 7, scope: !6136)
!6138 = !DILocation(line: 132, column: 6, scope: !6132)
!6139 = !DILocation(line: 133, column: 3, scope: !6136)
!6140 = !DILocation(line: 135, column: 13, scope: !6132)
!6141 = !DILocation(line: 135, column: 20, scope: !6132)
!6142 = !DILocation(line: 135, column: 26, scope: !6132)
!6143 = !DILocation(line: 135, column: 33, scope: !6132)
!6144 = !DILocation(line: 135, column: 2, scope: !6132)
!6145 = !DILocation(line: 136, column: 1, scope: !6132)
!6146 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4482, file: !4482, line: 51, type: !6147, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!440, !172}
!6149 = !DILocalVariable(name: "entry", arg: 1, scope: !6146, file: !4482, line: 51, type: !172)
!6150 = !DILocation(line: 51, column: 61, scope: !6146)
!6151 = !DILocation(line: 53, column: 2, scope: !6146)
!6152 = distinct !DISubprogram(name: "__list_del", scope: !4482, file: !4482, line: 110, type: !4852, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!6153 = !DILocalVariable(name: "prev", arg: 1, scope: !6152, file: !4482, line: 110, type: !172)
!6154 = !DILocation(line: 110, column: 50, scope: !6152)
!6155 = !DILocalVariable(name: "next", arg: 2, scope: !6152, file: !4482, line: 110, type: !172)
!6156 = !DILocation(line: 110, column: 75, scope: !6152)
!6157 = !DILocation(line: 112, column: 15, scope: !6152)
!6158 = !DILocation(line: 112, column: 2, scope: !6152)
!6159 = !DILocation(line: 112, column: 8, scope: !6152)
!6160 = !DILocation(line: 112, column: 13, scope: !6152)
!6161 = !DILocation(line: 113, column: 2, scope: !6152)
!6162 = !DILocation(line: 113, column: 2, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6152, file: !4482, line: 113, column: 2)
!6164 = !DILocation(line: 113, column: 2, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6163, file: !4482, line: 113, column: 2)
!6166 = !DILocation(line: 113, column: 2, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6163, file: !4482, line: 113, column: 2)
!6168 = !DILocation(line: 114, column: 1, scope: !6152)
