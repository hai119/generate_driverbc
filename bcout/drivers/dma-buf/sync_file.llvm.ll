; ModuleID = '../bcout/drivers/dma-buf/sync_file.llvm.bc'
source_filename = "drivers/dma-buf/sync_file.c"
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
%struct.dma_fence_ops = type { i8, i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)*, i64 (%struct.dma_fence*, i1, i64)*, void (%struct.dma_fence*)*, void (%struct.dma_fence*, i8*, i32)*, void (%struct.dma_fence*, i8*, i32)* }
%struct.dma_fence = type { %struct.spinlock*, %struct.dma_fence_ops*, %union.anon.63, i64, i64, i64, %struct.kref, i32 }
%union.anon.63 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.sync_file = type { %struct.file*, [32 x i8], %struct.wait_queue_head, i64, %struct.dma_fence*, %struct.dma_fence_cb }
%struct.dma_fence_cb = type { %struct.list_head, void (%struct.dma_fence*, %struct.dma_fence_cb*)* }
%struct.sync_merge_data = type { [32 x i8], i32, i32, i32, i32 }
%struct.sync_file_info = type { [32 x i8], i32, i32, i32, i32, i64 }
%struct.sync_fence_info = type { [32 x i8], [32 x i8], i32, i32, i64 }
%struct.dma_fence_array = type { %struct.dma_fence, %struct.spinlock, i32, %struct.atomic_t, %struct.dma_fence**, %struct.irq_work }
%struct.irq_work = type { %union.anon.64, void (%struct.irq_work*)* }
%union.anon.64 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.65, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.65 = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s-%s%llu-%lld\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sync_file\00", align 1
@sync_file_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @sync_file_poll, i64 (%struct.file*, i32, i64)* @sync_file_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @sync_file_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !0
@sync_file_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2903
@.str.2 = private unnamed_addr constant [15 x i8] c"&sync_file->wq\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@dma_fence_array_ops = external dso_local constant %struct.dma_fence_ops, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.sync_file* @sync_file_create(%struct.dma_fence* %fence) #0 !dbg !2913 {
entry:
  %retval = alloca %struct.sync_file*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %sync_file = alloca %struct.sync_file*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2916, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !2918, metadata !DIExpression()), !dbg !2919
  %call = call %struct.sync_file* @sync_file_alloc() #6, !dbg !2920
  store %struct.sync_file* %call, %struct.sync_file** %sync_file, align 8, !dbg !2921
  %0 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2922
  %tobool = icmp ne %struct.sync_file* %0, null, !dbg !2922
  br i1 %tobool, label %if.end, label %if.then, !dbg !2924

if.then:                                          ; preds = %entry
  store %struct.sync_file* null, %struct.sync_file** %retval, align 8, !dbg !2925
  br label %return, !dbg !2925

if.end:                                           ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2926
  %call1 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %1) #6, !dbg !2927
  %2 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2928
  %fence2 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %2, i32 0, i32 4, !dbg !2929
  store %struct.dma_fence* %call1, %struct.dma_fence** %fence2, align 8, !dbg !2930
  %3 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2931
  store %struct.sync_file* %3, %struct.sync_file** %retval, align 8, !dbg !2932
  br label %return, !dbg !2932

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.sync_file*, %struct.sync_file** %retval, align 8, !dbg !2933
  ret %struct.sync_file* %4, !dbg !2933
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sync_file* @sync_file_alloc() #0 !dbg !2905 {
entry:
  %retval = alloca %struct.sync_file*, align 8
  %sync_file = alloca %struct.sync_file*, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !2934, metadata !DIExpression()), !dbg !2935
  %call = call i8* @kzalloc(i64 96, i32 3264) #6, !dbg !2936
  %0 = bitcast i8* %call to %struct.sync_file*, !dbg !2936
  store %struct.sync_file* %0, %struct.sync_file** %sync_file, align 8, !dbg !2937
  %1 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2938
  %tobool = icmp ne %struct.sync_file* %1, null, !dbg !2938
  br i1 %tobool, label %if.end, label %if.then, !dbg !2940

if.then:                                          ; preds = %entry
  store %struct.sync_file* null, %struct.sync_file** %retval, align 8, !dbg !2941
  br label %return, !dbg !2941

if.end:                                           ; preds = %entry
  %2 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2942
  %3 = bitcast %struct.sync_file* %2 to i8*, !dbg !2942
  %call1 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.file_operations* @sync_file_fops, i8* %3, i32 0) #6, !dbg !2943
  %4 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2944
  %file = getelementptr inbounds %struct.sync_file, %struct.sync_file* %4, i32 0, i32 0, !dbg !2945
  store %struct.file* %call1, %struct.file** %file, align 8, !dbg !2946
  %5 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2947
  %file2 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %5, i32 0, i32 0, !dbg !2949
  %6 = load %struct.file*, %struct.file** %file2, align 8, !dbg !2949
  %7 = bitcast %struct.file* %6 to i8*, !dbg !2947
  %call3 = call zeroext i1 @IS_ERR(i8* %7) #6, !dbg !2950
  br i1 %call3, label %if.then4, label %if.end5, !dbg !2951

if.then4:                                         ; preds = %if.end
  br label %err, !dbg !2952

if.end5:                                          ; preds = %if.end
  br label %do.body, !dbg !2953

do.body:                                          ; preds = %if.end5
  %8 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2954
  %wq = getelementptr inbounds %struct.sync_file, %struct.sync_file* %8, i32 0, i32 2, !dbg !2954
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wq, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @sync_file_alloc.__key) #6, !dbg !2954
  br label %do.end, !dbg !2954

do.end:                                           ; preds = %do.body
  %9 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2956
  %cb = getelementptr inbounds %struct.sync_file, %struct.sync_file* %9, i32 0, i32 5, !dbg !2957
  %node = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %cb, i32 0, i32 0, !dbg !2958
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #6, !dbg !2959
  %10 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2960
  store %struct.sync_file* %10, %struct.sync_file** %retval, align 8, !dbg !2961
  br label %return, !dbg !2961

err:                                              ; preds = %if.then4
  call void @llvm.dbg.label(metadata !2962), !dbg !2963
  %11 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2964
  %12 = bitcast %struct.sync_file* %11 to i8*, !dbg !2964
  call void @kfree(i8* %12) #6, !dbg !2965
  store %struct.sync_file* null, %struct.sync_file** %retval, align 8, !dbg !2966
  br label %return, !dbg !2966

return:                                           ; preds = %err, %do.end, %if.then
  %13 = load %struct.sync_file*, %struct.sync_file** %retval, align 8, !dbg !2967
  ret %struct.sync_file* %13, !dbg !2967
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %fence) #0 !dbg !2968 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !2971, metadata !DIExpression()), !dbg !2972
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2973
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !2973
  br i1 %tobool, label %if.then, label %if.end, !dbg !2975

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2976
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !2977
  call void @kref_get(%struct.kref* %refcount) #6, !dbg !2978
  br label %if.end, !dbg !2978

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !2979
  ret %struct.dma_fence* %2, !dbg !2980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dma_fence* @sync_file_get_fence(i32 %fd) #0 !dbg !2981 {
entry:
  %retval = alloca %struct.dma_fence*, align 8
  %fd.addr = alloca i32, align 4
  %sync_file = alloca %struct.sync_file*, align 8
  %fence = alloca %struct.dma_fence*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !2988, metadata !DIExpression()), !dbg !2989
  %0 = load i32, i32* %fd.addr, align 4, !dbg !2990
  %call = call %struct.sync_file* @sync_file_fdget(i32 %0) #6, !dbg !2991
  store %struct.sync_file* %call, %struct.sync_file** %sync_file, align 8, !dbg !2992
  %1 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2993
  %tobool = icmp ne %struct.sync_file* %1, null, !dbg !2993
  br i1 %tobool, label %if.end, label %if.then, !dbg !2995

if.then:                                          ; preds = %entry
  store %struct.dma_fence* null, %struct.dma_fence** %retval, align 8, !dbg !2996
  br label %return, !dbg !2996

if.end:                                           ; preds = %entry
  %2 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !2997
  %fence1 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %2, i32 0, i32 4, !dbg !2998
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence1, align 8, !dbg !2998
  %call2 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %3) #6, !dbg !2999
  store %struct.dma_fence* %call2, %struct.dma_fence** %fence, align 8, !dbg !3000
  %4 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3001
  %file = getelementptr inbounds %struct.sync_file, %struct.sync_file* %4, i32 0, i32 0, !dbg !3002
  %5 = load %struct.file*, %struct.file** %file, align 8, !dbg !3002
  call void @fput(%struct.file* %5) #6, !dbg !3003
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3004
  store %struct.dma_fence* %6, %struct.dma_fence** %retval, align 8, !dbg !3005
  br label %return, !dbg !3005

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.dma_fence*, %struct.dma_fence** %retval, align 8, !dbg !3006
  ret %struct.dma_fence* %7, !dbg !3006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sync_file* @sync_file_fdget(i32 %fd) #0 !dbg !3007 {
entry:
  %retval = alloca %struct.sync_file*, align 8
  %fd.addr = alloca i32, align 4
  %file = alloca %struct.file*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.declare(metadata %struct.file** %file, metadata !3012, metadata !DIExpression()), !dbg !3013
  %0 = load i32, i32* %fd.addr, align 4, !dbg !3014
  %call = call %struct.file* @fget(i32 %0) #6, !dbg !3015
  store %struct.file* %call, %struct.file** %file, align 8, !dbg !3013
  %1 = load %struct.file*, %struct.file** %file, align 8, !dbg !3016
  %tobool = icmp ne %struct.file* %1, null, !dbg !3016
  br i1 %tobool, label %if.end, label %if.then, !dbg !3018

if.then:                                          ; preds = %entry
  store %struct.sync_file* null, %struct.sync_file** %retval, align 8, !dbg !3019
  br label %return, !dbg !3019

if.end:                                           ; preds = %entry
  %2 = load %struct.file*, %struct.file** %file, align 8, !dbg !3020
  %f_op = getelementptr inbounds %struct.file, %struct.file* %2, i32 0, i32 3, !dbg !3022
  %3 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8, !dbg !3022
  %cmp = icmp ne %struct.file_operations* %3, @sync_file_fops, !dbg !3023
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3024

if.then1:                                         ; preds = %if.end
  br label %err, !dbg !3025

if.end2:                                          ; preds = %if.end
  %4 = load %struct.file*, %struct.file** %file, align 8, !dbg !3026
  %private_data = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 15, !dbg !3027
  %5 = load i8*, i8** %private_data, align 8, !dbg !3027
  %6 = bitcast i8* %5 to %struct.sync_file*, !dbg !3026
  store %struct.sync_file* %6, %struct.sync_file** %retval, align 8, !dbg !3028
  br label %return, !dbg !3028

err:                                              ; preds = %if.then1
  call void @llvm.dbg.label(metadata !3029), !dbg !3030
  %7 = load %struct.file*, %struct.file** %file, align 8, !dbg !3031
  call void @fput(%struct.file* %7) #6, !dbg !3032
  store %struct.sync_file* null, %struct.sync_file** %retval, align 8, !dbg !3033
  br label %return, !dbg !3033

return:                                           ; preds = %err, %if.end2, %if.then
  %8 = load %struct.sync_file*, %struct.sync_file** %retval, align 8, !dbg !3034
  ret %struct.sync_file* %8, !dbg !3034
}

; Function Attrs: noredzone
declare dso_local void @fput(%struct.file*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @sync_file_get_name(%struct.sync_file* %sync_file, i8* %buf, i32 %len) #0 !dbg !3035 {
entry:
  %sync_file.addr = alloca %struct.sync_file*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %fence = alloca %struct.dma_fence*, align 8
  store %struct.sync_file* %sync_file, %struct.sync_file** %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file.addr, metadata !3038, metadata !DIExpression()), !dbg !3039
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3040, metadata !DIExpression()), !dbg !3041
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  %0 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !3044
  %user_name = getelementptr inbounds %struct.sync_file, %struct.sync_file* %0, i32 0, i32 1, !dbg !3046
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %user_name, i64 0, i64 0, !dbg !3044
  %1 = load i8, i8* %arrayidx, align 8, !dbg !3044
  %tobool = icmp ne i8 %1, 0, !dbg !3044
  br i1 %tobool, label %if.then, label %if.else, !dbg !3047

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3048
  %3 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !3050
  %user_name1 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %3, i32 0, i32 1, !dbg !3051
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %user_name1, i64 0, i64 0, !dbg !3050
  %4 = load i32, i32* %len.addr, align 4, !dbg !3052
  %conv = sext i32 %4 to i64, !dbg !3052
  %call = call i64 @strlcpy(i8* %2, i8* %arraydecay, i64 %conv) #6, !dbg !3053
  br label %if.end, !dbg !3054

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence, metadata !3055, metadata !DIExpression()), !dbg !3057
  %5 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !3058
  %fence2 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %5, i32 0, i32 4, !dbg !3059
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence2, align 8, !dbg !3059
  store %struct.dma_fence* %6, %struct.dma_fence** %fence, align 8, !dbg !3057
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3060
  %8 = load i32, i32* %len.addr, align 4, !dbg !3061
  %conv3 = sext i32 %8 to i64, !dbg !3061
  %9 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3062
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %9, i32 0, i32 1, !dbg !3063
  %10 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !3063
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %10, i32 0, i32 1, !dbg !3064
  %11 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_driver_name, align 8, !dbg !3064
  %12 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3065
  %call4 = call i8* %11(%struct.dma_fence* %12) #6, !dbg !3062
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3066
  %ops5 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %13, i32 0, i32 1, !dbg !3067
  %14 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops5, align 8, !dbg !3067
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %14, i32 0, i32 2, !dbg !3068
  %15 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_timeline_name, align 8, !dbg !3068
  %16 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3069
  %call6 = call i8* %15(%struct.dma_fence* %16) #6, !dbg !3066
  %17 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3070
  %context = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %17, i32 0, i32 3, !dbg !3071
  %18 = load i64, i64* %context, align 8, !dbg !3071
  %19 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3072
  %seqno = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %19, i32 0, i32 4, !dbg !3073
  %20 = load i64, i64* %seqno, align 8, !dbg !3073
  %call7 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %7, i64 %conv3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %call4, i8* %call6, i64 %18, i64 %20) #6, !dbg !3074
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !3075
  ret i8* %21, !dbg !3076
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3077 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3080, metadata !DIExpression()), !dbg !3084
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3090, metadata !DIExpression()), !dbg !3091
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3092, metadata !DIExpression()), !dbg !3093
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3094, metadata !DIExpression()), !dbg !3095
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3096, metadata !DIExpression()), !dbg !3100
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3102, metadata !DIExpression()), !dbg !3106
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3108, metadata !DIExpression()), !dbg !3112
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3117, metadata !DIExpression()), !dbg !3118
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3119, metadata !DIExpression()), !dbg !3120
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3121, metadata !DIExpression()), !dbg !3122
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3123, metadata !DIExpression()), !dbg !3124
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3125, metadata !DIExpression()), !dbg !3126
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3127, metadata !DIExpression()), !dbg !3128
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3129, metadata !DIExpression()), !dbg !3130
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3131, metadata !DIExpression()), !dbg !3132
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3135, metadata !DIExpression()), !dbg !3136
  %0 = load i64, i64* %size.addr, align 8, !dbg !3137
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3138
  %or = or i32 %1, 256, !dbg !3139
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3140
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !3141
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3142

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3143
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3144
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3145

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3146
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3147
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3148
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !3149
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3126
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3150
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3151
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3152
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3153
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3154
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3155
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !3156
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3156
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3156
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3156
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !3156
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3157
  br label %kmalloc.exit, !dbg !3157

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3158
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3159
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3159
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3161

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3162
  br label %kmalloc_index.exit.i, !dbg !3162

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3163
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3165
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3166

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3167
  br label %kmalloc_index.exit.i, !dbg !3167

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3168
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3170
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3171

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3172
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3173
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3174

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3175
  br label %kmalloc_index.exit.i, !dbg !3175

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3176
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3178
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3179

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3180
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3181
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3182

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3183
  br label %kmalloc_index.exit.i, !dbg !3183

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3184
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3186
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3187

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3188
  br label %kmalloc_index.exit.i, !dbg !3188

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3189
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3191
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3192

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3193
  br label %kmalloc_index.exit.i, !dbg !3193

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3194
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3196
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3197

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3198
  br label %kmalloc_index.exit.i, !dbg !3198

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3199
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3201
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3202

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3203
  br label %kmalloc_index.exit.i, !dbg !3203

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3204
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3206
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3207

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3208
  br label %kmalloc_index.exit.i, !dbg !3208

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3209
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3211
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3212

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3213
  br label %kmalloc_index.exit.i, !dbg !3213

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3214
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3216
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3217

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3218
  br label %kmalloc_index.exit.i, !dbg !3218

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3219
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3221
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3222

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3223
  br label %kmalloc_index.exit.i, !dbg !3223

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3224
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3226
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3227

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3228
  br label %kmalloc_index.exit.i, !dbg !3228

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3229
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3231
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3232

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3233
  br label %kmalloc_index.exit.i, !dbg !3233

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3234
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3236
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3237

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3238
  br label %kmalloc_index.exit.i, !dbg !3238

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3239
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3241
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3242

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3243
  br label %kmalloc_index.exit.i, !dbg !3243

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3244
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3246
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3247

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3248
  br label %kmalloc_index.exit.i, !dbg !3248

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3249
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3251
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3252

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3253
  br label %kmalloc_index.exit.i, !dbg !3253

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3254
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3256
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3257

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3258
  br label %kmalloc_index.exit.i, !dbg !3258

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3259
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3261
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3262

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3263
  br label %kmalloc_index.exit.i, !dbg !3263

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3264
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3266
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3267

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3268
  br label %kmalloc_index.exit.i, !dbg !3268

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3269
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3271
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3272

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3273
  br label %kmalloc_index.exit.i, !dbg !3273

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3274
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3276
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3277

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3278
  br label %kmalloc_index.exit.i, !dbg !3278

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3279
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3281
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3282

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3283
  br label %kmalloc_index.exit.i, !dbg !3283

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3284
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3286
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3287

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3288
  br label %kmalloc_index.exit.i, !dbg !3288

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3289
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3291
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3292

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3293
  br label %kmalloc_index.exit.i, !dbg !3293

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3294
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3296
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3297

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3298
  br label %kmalloc_index.exit.i, !dbg !3298

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3299
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3301
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3302

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3303
  br label %kmalloc_index.exit.i, !dbg !3303

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !3304, !srcloc !3307
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 190) #7, !dbg !3308, !srcloc !3311
  unreachable, !dbg !3312

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3313
  store i32 %45, i32* %index.i, align 4, !dbg !3314
  %46 = load i32, i32* %index.i, align 4, !dbg !3315
  %tobool.i = icmp ne i32 %46, 0, !dbg !3315
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3317

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3318
  br label %kmalloc.exit, !dbg !3318

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3319
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3320
  %and.i.i = and i32 %48, 17, !dbg !3320
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3320
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3320
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3320
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3320
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3322

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3323
  br label %kmalloc_type.exit.i, !dbg !3323

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3324
  %and2.i.i = and i32 %49, 1, !dbg !3325
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3324
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3324
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3324
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3326
  br label %kmalloc_type.exit.i, !dbg !3326

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3327
  %idxprom.i = zext i32 %51 to i64, !dbg !3328
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3328
  %52 = load i32, i32* %index.i, align 4, !dbg !3329
  %idxprom6.i = zext i32 %52 to i64, !dbg !3328
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3328
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3328
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3330
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3331
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3332
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3333
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !3334
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3334
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3334
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3334
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !3334
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3095
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3335
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3336
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3337
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3338
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !3339
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3340
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3341
  store i8* %62, i8** %retval.i, align 8, !dbg !3342
  br label %kmalloc.exit, !dbg !3342

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3343
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3344
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !3345
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3345
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3345
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3345
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !3345
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3346
  br label %kmalloc.exit, !dbg !3346

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3347
  ret i8* %65, !dbg !3348
}

; Function Attrs: noredzone
declare dso_local %struct.file* @anon_inode_getfile(i8*, %struct.file_operations*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3349 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3355, metadata !DIExpression()), !dbg !3356
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3357
  %1 = ptrtoint i8* %0 to i64, !dbg !3357
  %2 = inttoptr i64 %1 to i8*, !dbg !3357
  %3 = ptrtoint i8* %2 to i64, !dbg !3357
  %cmp = icmp uge i64 %3, -4095, !dbg !3357
  %lnot = xor i1 %cmp, true, !dbg !3357
  %lnot1 = xor i1 %lnot, true, !dbg !3357
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3357
  %conv = sext i32 %lnot.ext to i64, !dbg !3357
  %tobool = icmp ne i64 %conv, 0, !dbg !3357
  ret i1 %tobool, !dbg !3358
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3359 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3363, metadata !DIExpression()), !dbg !3364
  br label %do.body, !dbg !3365

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3366

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3368

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3366

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3370
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3370
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3370
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3370
  br label %do.end3, !dbg !3370

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3366

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3372
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3373
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3374
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3375
  ret void, !dbg !3376
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3377 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3381, metadata !DIExpression()), !dbg !3386
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3388, metadata !DIExpression()), !dbg !3389
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  %0 = load i64, i64* %size.addr, align 8, !dbg !3392
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3394
  br i1 %1, label %if.then, label %if.end447, !dbg !3395

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3396
  %tobool = icmp ne i64 %2, 0, !dbg !3396
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3399

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3400
  br label %return, !dbg !3400

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3401
  %cmp = icmp ult i64 %3, 4096, !dbg !3403
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3404

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3405
  br label %return, !dbg !3405

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub = sub i64 %4, 1, !dbg !3406
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3406
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3406

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub4 = sub i64 %6, 1, !dbg !3406
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3406
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3406

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub6 = sub i64 %8, 1, !dbg !3406
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3406
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3406

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3406

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub9 = sub i64 %9, 1, !dbg !3406
  %and = and i64 %sub9, -9223372036854775808, !dbg !3406
  %tobool10 = icmp ne i64 %and, 0, !dbg !3406
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3406

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3406

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub13 = sub i64 %10, 1, !dbg !3406
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3406
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3406
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3406

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3406

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub18 = sub i64 %11, 1, !dbg !3406
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3406
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3406
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3406

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3406

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub23 = sub i64 %12, 1, !dbg !3406
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3406
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3406
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3406

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3406

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub28 = sub i64 %13, 1, !dbg !3406
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3406
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3406
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3406

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3406

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub33 = sub i64 %14, 1, !dbg !3406
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3406
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3406
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3406

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3406

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub38 = sub i64 %15, 1, !dbg !3406
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3406
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3406
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3406

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3406

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub43 = sub i64 %16, 1, !dbg !3406
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3406
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3406
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3406

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3406

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub48 = sub i64 %17, 1, !dbg !3406
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3406
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3406
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3406

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3406

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub53 = sub i64 %18, 1, !dbg !3406
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3406
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3406
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3406

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3406

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub58 = sub i64 %19, 1, !dbg !3406
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3406
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3406
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3406

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3406

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub63 = sub i64 %20, 1, !dbg !3406
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3406
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3406
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3406

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3406

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub68 = sub i64 %21, 1, !dbg !3406
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3406
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3406
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3406

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3406

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub73 = sub i64 %22, 1, !dbg !3406
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3406
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3406
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3406

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3406

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub78 = sub i64 %23, 1, !dbg !3406
  %and79 = and i64 %sub78, 562949953421312, !dbg !3406
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3406
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3406

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3406

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub83 = sub i64 %24, 1, !dbg !3406
  %and84 = and i64 %sub83, 281474976710656, !dbg !3406
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3406
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3406

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3406

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub88 = sub i64 %25, 1, !dbg !3406
  %and89 = and i64 %sub88, 140737488355328, !dbg !3406
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3406
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3406

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3406

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub93 = sub i64 %26, 1, !dbg !3406
  %and94 = and i64 %sub93, 70368744177664, !dbg !3406
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3406
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3406

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3406

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub98 = sub i64 %27, 1, !dbg !3406
  %and99 = and i64 %sub98, 35184372088832, !dbg !3406
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3406
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3406

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3406

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub103 = sub i64 %28, 1, !dbg !3406
  %and104 = and i64 %sub103, 17592186044416, !dbg !3406
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3406
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3406

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3406

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub108 = sub i64 %29, 1, !dbg !3406
  %and109 = and i64 %sub108, 8796093022208, !dbg !3406
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3406
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3406

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3406

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub113 = sub i64 %30, 1, !dbg !3406
  %and114 = and i64 %sub113, 4398046511104, !dbg !3406
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3406
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3406

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3406

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub118 = sub i64 %31, 1, !dbg !3406
  %and119 = and i64 %sub118, 2199023255552, !dbg !3406
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3406
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3406

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3406

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub123 = sub i64 %32, 1, !dbg !3406
  %and124 = and i64 %sub123, 1099511627776, !dbg !3406
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3406
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3406

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3406

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub128 = sub i64 %33, 1, !dbg !3406
  %and129 = and i64 %sub128, 549755813888, !dbg !3406
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3406
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3406

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3406

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub133 = sub i64 %34, 1, !dbg !3406
  %and134 = and i64 %sub133, 274877906944, !dbg !3406
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3406
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3406

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3406

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub138 = sub i64 %35, 1, !dbg !3406
  %and139 = and i64 %sub138, 137438953472, !dbg !3406
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3406
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3406

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3406

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub143 = sub i64 %36, 1, !dbg !3406
  %and144 = and i64 %sub143, 68719476736, !dbg !3406
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3406
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3406

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3406

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub148 = sub i64 %37, 1, !dbg !3406
  %and149 = and i64 %sub148, 34359738368, !dbg !3406
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3406
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3406

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3406

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub153 = sub i64 %38, 1, !dbg !3406
  %and154 = and i64 %sub153, 17179869184, !dbg !3406
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3406
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3406

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3406

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub158 = sub i64 %39, 1, !dbg !3406
  %and159 = and i64 %sub158, 8589934592, !dbg !3406
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3406
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3406

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3406

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub163 = sub i64 %40, 1, !dbg !3406
  %and164 = and i64 %sub163, 4294967296, !dbg !3406
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3406
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3406

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3406

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub168 = sub i64 %41, 1, !dbg !3406
  %and169 = and i64 %sub168, 2147483648, !dbg !3406
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3406
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3406

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3406

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub173 = sub i64 %42, 1, !dbg !3406
  %and174 = and i64 %sub173, 1073741824, !dbg !3406
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3406
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3406

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3406

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub178 = sub i64 %43, 1, !dbg !3406
  %and179 = and i64 %sub178, 536870912, !dbg !3406
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3406
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3406

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3406

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub183 = sub i64 %44, 1, !dbg !3406
  %and184 = and i64 %sub183, 268435456, !dbg !3406
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3406
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3406

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3406

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub188 = sub i64 %45, 1, !dbg !3406
  %and189 = and i64 %sub188, 134217728, !dbg !3406
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3406
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3406

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3406

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub193 = sub i64 %46, 1, !dbg !3406
  %and194 = and i64 %sub193, 67108864, !dbg !3406
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3406
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3406

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3406

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub198 = sub i64 %47, 1, !dbg !3406
  %and199 = and i64 %sub198, 33554432, !dbg !3406
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3406
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3406

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3406

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub203 = sub i64 %48, 1, !dbg !3406
  %and204 = and i64 %sub203, 16777216, !dbg !3406
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3406
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3406

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3406

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub208 = sub i64 %49, 1, !dbg !3406
  %and209 = and i64 %sub208, 8388608, !dbg !3406
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3406
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3406

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3406

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub213 = sub i64 %50, 1, !dbg !3406
  %and214 = and i64 %sub213, 4194304, !dbg !3406
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3406
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3406

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3406

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub218 = sub i64 %51, 1, !dbg !3406
  %and219 = and i64 %sub218, 2097152, !dbg !3406
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3406
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3406

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3406

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub223 = sub i64 %52, 1, !dbg !3406
  %and224 = and i64 %sub223, 1048576, !dbg !3406
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3406
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3406

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3406

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub228 = sub i64 %53, 1, !dbg !3406
  %and229 = and i64 %sub228, 524288, !dbg !3406
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3406
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3406

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3406

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub233 = sub i64 %54, 1, !dbg !3406
  %and234 = and i64 %sub233, 262144, !dbg !3406
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3406
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3406

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3406

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub238 = sub i64 %55, 1, !dbg !3406
  %and239 = and i64 %sub238, 131072, !dbg !3406
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3406
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3406

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3406

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub243 = sub i64 %56, 1, !dbg !3406
  %and244 = and i64 %sub243, 65536, !dbg !3406
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3406
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3406

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3406

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub248 = sub i64 %57, 1, !dbg !3406
  %and249 = and i64 %sub248, 32768, !dbg !3406
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3406
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3406

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3406

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub253 = sub i64 %58, 1, !dbg !3406
  %and254 = and i64 %sub253, 16384, !dbg !3406
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3406
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3406

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3406

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub258 = sub i64 %59, 1, !dbg !3406
  %and259 = and i64 %sub258, 8192, !dbg !3406
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3406
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3406

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3406

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub263 = sub i64 %60, 1, !dbg !3406
  %and264 = and i64 %sub263, 4096, !dbg !3406
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3406
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3406

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3406

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub268 = sub i64 %61, 1, !dbg !3406
  %and269 = and i64 %sub268, 2048, !dbg !3406
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3406
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3406

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3406

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub273 = sub i64 %62, 1, !dbg !3406
  %and274 = and i64 %sub273, 1024, !dbg !3406
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3406
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3406

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3406

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub278 = sub i64 %63, 1, !dbg !3406
  %and279 = and i64 %sub278, 512, !dbg !3406
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3406
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3406

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3406

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub283 = sub i64 %64, 1, !dbg !3406
  %and284 = and i64 %sub283, 256, !dbg !3406
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3406
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3406

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3406

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub288 = sub i64 %65, 1, !dbg !3406
  %and289 = and i64 %sub288, 128, !dbg !3406
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3406
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3406

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3406

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub293 = sub i64 %66, 1, !dbg !3406
  %and294 = and i64 %sub293, 64, !dbg !3406
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3406
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3406

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3406

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub298 = sub i64 %67, 1, !dbg !3406
  %and299 = and i64 %sub298, 32, !dbg !3406
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3406
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3406

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3406

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub303 = sub i64 %68, 1, !dbg !3406
  %and304 = and i64 %sub303, 16, !dbg !3406
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3406
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3406

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3406

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub308 = sub i64 %69, 1, !dbg !3406
  %and309 = and i64 %sub308, 8, !dbg !3406
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3406
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3406

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3406

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub313 = sub i64 %70, 1, !dbg !3406
  %and314 = and i64 %sub313, 4, !dbg !3406
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3406
  %71 = zext i1 %tobool315 to i64, !dbg !3406
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3406
  br label %cond.end, !dbg !3406

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3406
  br label %cond.end317, !dbg !3406

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3406
  br label %cond.end319, !dbg !3406

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3406
  br label %cond.end321, !dbg !3406

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3406
  br label %cond.end323, !dbg !3406

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3406
  br label %cond.end325, !dbg !3406

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3406
  br label %cond.end327, !dbg !3406

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3406
  br label %cond.end329, !dbg !3406

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3406
  br label %cond.end331, !dbg !3406

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3406
  br label %cond.end333, !dbg !3406

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3406
  br label %cond.end335, !dbg !3406

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3406
  br label %cond.end337, !dbg !3406

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3406
  br label %cond.end339, !dbg !3406

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3406
  br label %cond.end341, !dbg !3406

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3406
  br label %cond.end343, !dbg !3406

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3406
  br label %cond.end345, !dbg !3406

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3406
  br label %cond.end347, !dbg !3406

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3406
  br label %cond.end349, !dbg !3406

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3406
  br label %cond.end351, !dbg !3406

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3406
  br label %cond.end353, !dbg !3406

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3406
  br label %cond.end355, !dbg !3406

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3406
  br label %cond.end357, !dbg !3406

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3406
  br label %cond.end359, !dbg !3406

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3406
  br label %cond.end361, !dbg !3406

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3406
  br label %cond.end363, !dbg !3406

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3406
  br label %cond.end365, !dbg !3406

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3406
  br label %cond.end367, !dbg !3406

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3406
  br label %cond.end369, !dbg !3406

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3406
  br label %cond.end371, !dbg !3406

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3406
  br label %cond.end373, !dbg !3406

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3406
  br label %cond.end375, !dbg !3406

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3406
  br label %cond.end377, !dbg !3406

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3406
  br label %cond.end379, !dbg !3406

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3406
  br label %cond.end381, !dbg !3406

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3406
  br label %cond.end383, !dbg !3406

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3406
  br label %cond.end385, !dbg !3406

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3406
  br label %cond.end387, !dbg !3406

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3406
  br label %cond.end389, !dbg !3406

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3406
  br label %cond.end391, !dbg !3406

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3406
  br label %cond.end393, !dbg !3406

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3406
  br label %cond.end395, !dbg !3406

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3406
  br label %cond.end397, !dbg !3406

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3406
  br label %cond.end399, !dbg !3406

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3406
  br label %cond.end401, !dbg !3406

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3406
  br label %cond.end403, !dbg !3406

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3406
  br label %cond.end405, !dbg !3406

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3406
  br label %cond.end407, !dbg !3406

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3406
  br label %cond.end409, !dbg !3406

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3406
  br label %cond.end411, !dbg !3406

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3406
  br label %cond.end413, !dbg !3406

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3406
  br label %cond.end415, !dbg !3406

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3406
  br label %cond.end417, !dbg !3406

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3406
  br label %cond.end419, !dbg !3406

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3406
  br label %cond.end421, !dbg !3406

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3406
  br label %cond.end423, !dbg !3406

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3406
  br label %cond.end425, !dbg !3406

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3406
  br label %cond.end427, !dbg !3406

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3406
  br label %cond.end429, !dbg !3406

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3406
  br label %cond.end431, !dbg !3406

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3406
  br label %cond.end433, !dbg !3406

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3406
  br label %cond.end435, !dbg !3406

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3406
  br label %cond.end437, !dbg !3406

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3406
  br label %cond.end440, !dbg !3406

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3406

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3406
  br label %cond.end444, !dbg !3406

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3406
  %sub443 = sub i64 %72, 1, !dbg !3406
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !3406
  br label %cond.end444, !dbg !3406

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3406
  %sub446 = sub i32 %cond445, 12, !dbg !3407
  %add = add i32 %sub446, 1, !dbg !3408
  store i32 %add, i32* %retval, align 4, !dbg !3409
  br label %return, !dbg !3409

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3410
  %dec = add i64 %73, -1, !dbg !3410
  store i64 %dec, i64* %size.addr, align 8, !dbg !3410
  %74 = load i64, i64* %size.addr, align 8, !dbg !3411
  %shr = lshr i64 %74, 12, !dbg !3411
  store i64 %shr, i64* %size.addr, align 8, !dbg !3411
  %75 = load i64, i64* %size.addr, align 8, !dbg !3412
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3389
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3413
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3414
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3413, !srcloc !3415
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3413
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3416
  %add.i = add i32 %79, 1, !dbg !3417
  store i32 %add.i, i32* %retval, align 4, !dbg !3418
  br label %return, !dbg !3418

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3419
  ret i32 %80, !dbg !3419
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3420 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3381, metadata !DIExpression()), !dbg !3424
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3388, metadata !DIExpression()), !dbg !3426
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  %0 = load i64, i64* %n.addr, align 8, !dbg !3429
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3426
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3430
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3431
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3430, !srcloc !3415
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3430
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3432
  %add.i = add i32 %4, 1, !dbg !3433
  %sub = sub i32 %add.i, 1, !dbg !3434
  ret i32 %sub, !dbg !3435
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3436 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3440, metadata !DIExpression()), !dbg !3441
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3442, metadata !DIExpression()), !dbg !3443
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3444, metadata !DIExpression()), !dbg !3445
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3446, metadata !DIExpression()), !dbg !3447
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3448
  ret i8* %0, !dbg !3449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sync_file_poll(%struct.file* %file, %struct.poll_table_struct* %wait) #0 !dbg !3450 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %wait.addr = alloca %struct.poll_table_struct*, align 8
  %sync_file = alloca %struct.sync_file*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !3455, metadata !DIExpression()), !dbg !3456
  store %struct.poll_table_struct* %wait, %struct.poll_table_struct** %wait.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %wait.addr, metadata !3457, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !3459, metadata !DIExpression()), !dbg !3460
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !3461
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !3462
  %1 = load i8*, i8** %private_data, align 8, !dbg !3462
  %2 = bitcast i8* %1 to %struct.sync_file*, !dbg !3461
  store %struct.sync_file* %2, %struct.sync_file** %sync_file, align 8, !dbg !3460
  %3 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !3463
  %4 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3464
  %wq = getelementptr inbounds %struct.sync_file, %struct.sync_file* %4, i32 0, i32 2, !dbg !3465
  %5 = load %struct.poll_table_struct*, %struct.poll_table_struct** %wait.addr, align 8, !dbg !3466
  call void @poll_wait(%struct.file* %3, %struct.wait_queue_head* %wq, %struct.poll_table_struct* %5) #6, !dbg !3467
  %6 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3468
  %cb = getelementptr inbounds %struct.sync_file, %struct.sync_file* %6, i32 0, i32 5, !dbg !3470
  %node = getelementptr inbounds %struct.dma_fence_cb, %struct.dma_fence_cb* %cb, i32 0, i32 0, !dbg !3471
  %call = call i32 @list_empty(%struct.list_head* %node) #6, !dbg !3472
  %tobool = icmp ne i32 %call, 0, !dbg !3472
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !3473

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3474
  %flags = getelementptr inbounds %struct.sync_file, %struct.sync_file* %7, i32 0, i32 3, !dbg !3475
  %call1 = call zeroext i1 @test_and_set_bit(i64 0, i64* %flags) #6, !dbg !3476
  br i1 %call1, label %if.end6, label %if.then, !dbg !3477

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3478
  %fence = getelementptr inbounds %struct.sync_file, %struct.sync_file* %8, i32 0, i32 4, !dbg !3481
  %9 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3481
  %10 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3482
  %cb2 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %10, i32 0, i32 5, !dbg !3483
  %call3 = call i32 @dma_fence_add_callback(%struct.dma_fence* %9, %struct.dma_fence_cb* %cb2, void (%struct.dma_fence*, %struct.dma_fence_cb*)* @fence_check_cb_func) #6, !dbg !3484
  %cmp = icmp slt i32 %call3, 0, !dbg !3485
  br i1 %cmp, label %if.then4, label %if.end, !dbg !3486

if.then4:                                         ; preds = %if.then
  %11 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3487
  %wq5 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %11, i32 0, i32 2, !dbg !3487
  call void @__wake_up(%struct.wait_queue_head* %wq5, i32 3, i32 0, i8* null) #6, !dbg !3487
  br label %if.end, !dbg !3487

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end6, !dbg !3488

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %12 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3489
  %fence7 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %12, i32 0, i32 4, !dbg !3490
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence7, align 8, !dbg !3490
  %call8 = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %13) #6, !dbg !3491
  %14 = zext i1 %call8 to i64, !dbg !3491
  %cond = select i1 %call8, i32 1, i32 0, !dbg !3491
  ret i32 %cond, !dbg !3492
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sync_file_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #0 !dbg !3493 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %sync_file = alloca %struct.sync_file*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !3494, metadata !DIExpression()), !dbg !3495
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !3496, metadata !DIExpression()), !dbg !3497
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !3500, metadata !DIExpression()), !dbg !3501
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !3502
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !3503
  %1 = load i8*, i8** %private_data, align 8, !dbg !3503
  %2 = bitcast i8* %1 to %struct.sync_file*, !dbg !3502
  store %struct.sync_file* %2, %struct.sync_file** %sync_file, align 8, !dbg !3501
  %3 = load i32, i32* %cmd.addr, align 4, !dbg !3504
  switch i32 %3, label %sw.default [
    i32 -1070580221, label %sw.bb
    i32 -1070055932, label %sw.bb1
  ], !dbg !3505

sw.bb:                                            ; preds = %entry
  %4 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3506
  %5 = load i64, i64* %arg.addr, align 8, !dbg !3508
  %call = call i64 @sync_file_ioctl_merge(%struct.sync_file* %4, i64 %5) #6, !dbg !3509
  store i64 %call, i64* %retval, align 8, !dbg !3510
  br label %return, !dbg !3510

sw.bb1:                                           ; preds = %entry
  %6 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3511
  %7 = load i64, i64* %arg.addr, align 8, !dbg !3512
  %call2 = call i64 @sync_file_ioctl_fence_info(%struct.sync_file* %6, i64 %7) #6, !dbg !3513
  store i64 %call2, i64* %retval, align 8, !dbg !3514
  br label %return, !dbg !3514

sw.default:                                       ; preds = %entry
  store i64 -25, i64* %retval, align 8, !dbg !3515
  br label %return, !dbg !3515

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %8 = load i64, i64* %retval, align 8, !dbg !3516
  ret i64 %8, !dbg !3516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sync_file_release(%struct.inode* %inode, %struct.file* %file) #0 !dbg !3517 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %sync_file = alloca %struct.sync_file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !3518, metadata !DIExpression()), !dbg !3519
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !3520, metadata !DIExpression()), !dbg !3521
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !3522, metadata !DIExpression()), !dbg !3523
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !3524
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !3525
  %1 = load i8*, i8** %private_data, align 8, !dbg !3525
  %2 = bitcast i8* %1 to %struct.sync_file*, !dbg !3524
  store %struct.sync_file* %2, %struct.sync_file** %sync_file, align 8, !dbg !3523
  %3 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3526
  %flags = getelementptr inbounds %struct.sync_file, %struct.sync_file* %3, i32 0, i32 3, !dbg !3528
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !3529
  br i1 %call, label %if.then, label %if.end, !dbg !3530

if.then:                                          ; preds = %entry
  %4 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3531
  %fence = getelementptr inbounds %struct.sync_file, %struct.sync_file* %4, i32 0, i32 4, !dbg !3532
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !3532
  %6 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3533
  %cb = getelementptr inbounds %struct.sync_file, %struct.sync_file* %6, i32 0, i32 5, !dbg !3534
  %call1 = call zeroext i1 @dma_fence_remove_callback(%struct.dma_fence* %5, %struct.dma_fence_cb* %cb) #6, !dbg !3535
  br label %if.end, !dbg !3535

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3536
  %fence2 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %7, i32 0, i32 4, !dbg !3537
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence2, align 8, !dbg !3537
  call void @dma_fence_put(%struct.dma_fence* %8) #6, !dbg !3538
  %9 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3539
  %10 = bitcast %struct.sync_file* %9 to i8*, !dbg !3539
  call void @kfree(i8* %10) #6, !dbg !3540
  ret i32 0, !dbg !3541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #0 !dbg !3542 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !3545, metadata !DIExpression()), !dbg !3546
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !3549, metadata !DIExpression()), !dbg !3550
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !3551
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !3551
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !3553

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !3554
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !3555
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !3555
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !3554
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !3556

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !3557
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !3557
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3558

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !3559
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !3560
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !3560
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !3561
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !3562
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !3563
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #6, !dbg !3559
  br label %if.end, !dbg !3559

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !3564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !3565 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3570, metadata !DIExpression()), !dbg !3571
  br label %do.body, !dbg !3572

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3574

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3572
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3572
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3572
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !3574
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !3572
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3576
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !3577
  %conv = zext i1 %cmp to i32, !dbg !3577
  ret i32 %conv, !dbg !3578
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !3579 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3585, metadata !DIExpression()), !dbg !3587
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3589, metadata !DIExpression()), !dbg !3590
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !3591, metadata !DIExpression()), !dbg !3593
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3594, metadata !DIExpression()), !dbg !3602
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3604, metadata !DIExpression()), !dbg !3605
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3606, metadata !DIExpression()), !dbg !3607
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3608, metadata !DIExpression()), !dbg !3609
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3610
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3611
  %div = sdiv i64 %1, 64, !dbg !3611
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3612
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3610
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3613
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3614
  %conv.i = trunc i64 %4 to i32, !dbg !3614
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !3615
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3616
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3616
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #9, !dbg !3616
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3617
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3618
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !3593
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !3593
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #7, !dbg !3593, !srcloc !3619
  store i8 %11, i8* %c.i, align 1, !dbg !3593
  %12 = load i8, i8* %c.i, align 1, !dbg !3593
  %tobool.i = trunc i8 %12 to i1, !dbg !3593
  %frombool.i = zext i1 %tobool.i to i8, !dbg !3593
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !3593
  %13 = load i8, i8* %tmp.i, align 1, !dbg !3593
  %tobool1.i = trunc i8 %13 to i1, !dbg !3593
  ret i1 %tobool1.i, !dbg !3620
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, %struct.dma_fence_cb*, void (%struct.dma_fence*, %struct.dma_fence_cb*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fence_check_cb_func(%struct.dma_fence* %f, %struct.dma_fence_cb* %cb) #0 !dbg !3621 {
entry:
  %f.addr = alloca %struct.dma_fence*, align 8
  %cb.addr = alloca %struct.dma_fence_cb*, align 8
  %sync_file = alloca %struct.sync_file*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sync_file*, align 8
  store %struct.dma_fence* %f, %struct.dma_fence** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %f.addr, metadata !3622, metadata !DIExpression()), !dbg !3623
  store %struct.dma_fence_cb* %cb, %struct.dma_fence_cb** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_cb** %cb.addr, metadata !3624, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !3626, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3628, metadata !DIExpression()), !dbg !3630
  %0 = load %struct.dma_fence_cb*, %struct.dma_fence_cb** %cb.addr, align 8, !dbg !3630
  %1 = bitcast %struct.dma_fence_cb* %0 to i8*, !dbg !3630
  store i8* %1, i8** %__mptr, align 8, !dbg !3630
  br label %do.body, !dbg !3630

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3631

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3630
  %add.ptr = getelementptr i8, i8* %2, i64 -72, !dbg !3630
  %3 = bitcast i8* %add.ptr to %struct.sync_file*, !dbg !3630
  store %struct.sync_file* %3, %struct.sync_file** %tmp, align 8, !dbg !3631
  %4 = load %struct.sync_file*, %struct.sync_file** %tmp, align 8, !dbg !3630
  store %struct.sync_file* %4, %struct.sync_file** %sync_file, align 8, !dbg !3633
  %5 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !3634
  %wq = getelementptr inbounds %struct.sync_file, %struct.sync_file* %5, i32 0, i32 2, !dbg !3634
  call void @__wake_up(%struct.wait_queue_head* %wq, i32 3, i32 0, i8* null) #6, !dbg !3634
  ret void, !dbg !3635
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %fence) #0 !dbg !3636 {
entry:
  %retval = alloca i1, align 1
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3639
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 5, !dbg !3641
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !3642
  br i1 %call, label %if.then, label %if.end, !dbg !3643

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !3644
  br label %return, !dbg !3644

if.end:                                           ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3645
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 1, !dbg !3647
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !3647
  %signaled = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %2, i32 0, i32 4, !dbg !3648
  %3 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled, align 8, !dbg !3648
  %tobool = icmp ne i1 (%struct.dma_fence*)* %3, null, !dbg !3645
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !3649

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3650
  %ops1 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %4, i32 0, i32 1, !dbg !3651
  %5 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops1, align 8, !dbg !3651
  %signaled2 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %5, i32 0, i32 4, !dbg !3652
  %6 = load i1 (%struct.dma_fence*)*, i1 (%struct.dma_fence*)** %signaled2, align 8, !dbg !3652
  %7 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3653
  %call3 = call zeroext i1 %6(%struct.dma_fence* %7) #6, !dbg !3650
  br i1 %call3, label %if.then4, label %if.end6, !dbg !3654

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !3655
  %call5 = call i32 @dma_fence_signal(%struct.dma_fence* %8) #6, !dbg !3657
  store i1 true, i1* %retval, align 1, !dbg !3658
  br label %return, !dbg !3658

if.end6:                                          ; preds = %land.lhs.true, %if.end
  store i1 false, i1* %retval, align 1, !dbg !3659
  br label %return, !dbg !3659

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3660
  ret i1 %9, !dbg !3660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3661 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3665, metadata !DIExpression()), !dbg !3666
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3667, metadata !DIExpression()), !dbg !3668
  ret i1 true, !dbg !3669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3670 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3674, metadata !DIExpression()), !dbg !3675
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3676, metadata !DIExpression()), !dbg !3677
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3678, metadata !DIExpression()), !dbg !3679
  ret void, !dbg !3680
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3681 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3687, metadata !DIExpression()), !dbg !3689
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3691, metadata !DIExpression()), !dbg !3692
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3693, metadata !DIExpression()), !dbg !3694
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3695, metadata !DIExpression()), !dbg !3697
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3699, metadata !DIExpression()), !dbg !3700
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3701, metadata !DIExpression()), !dbg !3703
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3705, metadata !DIExpression()), !dbg !3706
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3711
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3712
  %div = sdiv i64 %1, 64, !dbg !3712
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3713
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3711
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3714
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3715
  %conv.i = trunc i64 %4 to i32, !dbg !3715
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #9, !dbg !3716
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3717
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3717
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #9, !dbg !3717
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3718
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3718
  br i1 %8, label %cond.true, label %cond.false, !dbg !3718

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3718
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3718
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3719
  %and.i = and i64 %11, 63, !dbg !3720
  %shl.i = shl i64 1, %and.i, !dbg !3721
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3722
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3723
  %shr.i = ashr i64 %13, 6, !dbg !3724
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3722
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3722
  %and1.i = and i64 %shl.i, %14, !dbg !3725
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3726
  %conv = zext i1 %cmp.i to i32, !dbg !3718
  br label %cond.end, !dbg !3718

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3718
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3718
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3727
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3728
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !3729, !srcloc !3730
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3729
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3731
  %tobool.i = trunc i8 %20 to i1, !dbg !3731
  %conv2 = zext i1 %tobool.i to i32, !dbg !3718
  br label %cond.end, !dbg !3718

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3718
  %tobool = icmp ne i32 %cond, 0, !dbg !3718
  ret i1 %tobool, !dbg !3732
}

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3733 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3734, metadata !DIExpression()), !dbg !3735
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3736, metadata !DIExpression()), !dbg !3737
  ret i1 true, !dbg !3738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sync_file_ioctl_merge(%struct.sync_file* %sync_file, i64 %arg) #0 !dbg !3739 {
entry:
  %retval.i.i25 = alloca i1, align 1
  %addr.addr.i.i26 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i26, metadata !3742, metadata !DIExpression()), !dbg !3747
  %bytes.addr.i.i27 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i27, metadata !3756, metadata !DIExpression()), !dbg !3757
  %is_source.addr.i.i28 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i28, metadata !3758, metadata !DIExpression()), !dbg !3759
  %sz.i.i29 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i29, metadata !3760, metadata !DIExpression()), !dbg !3761
  %__ret_warn_on.i.i30 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i30, metadata !3762, metadata !DIExpression()), !dbg !3765
  %tmp.i.i31 = alloca i64, align 8
  %to.addr.i32 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i32, metadata !3766, metadata !DIExpression()), !dbg !3767
  %from.addr.i33 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i33, metadata !3768, metadata !DIExpression()), !dbg !3769
  %n.addr.i34 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i34, metadata !3770, metadata !DIExpression()), !dbg !3771
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !3742, metadata !DIExpression()), !dbg !3772
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !3756, metadata !DIExpression()), !dbg !3778
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !3758, metadata !DIExpression()), !dbg !3779
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !3760, metadata !DIExpression()), !dbg !3780
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !3762, metadata !DIExpression()), !dbg !3781
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !3782, metadata !DIExpression()), !dbg !3783
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !3784, metadata !DIExpression()), !dbg !3785
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !3786, metadata !DIExpression()), !dbg !3787
  %retval = alloca i64, align 8
  %sync_file.addr = alloca %struct.sync_file*, align 8
  %arg.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  %err = alloca i32, align 4
  %fence2 = alloca %struct.sync_file*, align 8
  %fence3 = alloca %struct.sync_file*, align 8
  %data = alloca %struct.sync_merge_data, align 4
  store %struct.sync_file* %sync_file, %struct.sync_file** %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file.addr, metadata !3788, metadata !DIExpression()), !dbg !3789
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !3790, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !3792, metadata !DIExpression()), !dbg !3793
  %call = call i32 @get_unused_fd_flags(i32 524288) #6, !dbg !3794
  store i32 %call, i32* %fd, align 4, !dbg !3793
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3795, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.declare(metadata %struct.sync_file** %fence2, metadata !3797, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.declare(metadata %struct.sync_file** %fence3, metadata !3799, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.declare(metadata %struct.sync_merge_data* %data, metadata !3801, metadata !DIExpression()), !dbg !3810
  %0 = load i32, i32* %fd, align 4, !dbg !3811
  %cmp = icmp slt i32 %0, 0, !dbg !3813
  br i1 %cmp, label %if.then, label %if.end, !dbg !3814

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd, align 4, !dbg !3815
  %conv = sext i32 %1 to i64, !dbg !3815
  store i64 %conv, i64* %retval, align 8, !dbg !3816
  br label %return, !dbg !3816

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.sync_merge_data* %data to i8*, !dbg !3817
  %3 = load i64, i64* %arg.addr, align 8, !dbg !3818
  %4 = inttoptr i64 %3 to i8*, !dbg !3819
  store i8* %2, i8** %to.addr.i, align 8
  store i8* %4, i8** %from.addr.i, align 8
  store i64 48, i64* %n.addr.i, align 8
  %5 = load i8*, i8** %to.addr.i, align 8, !dbg !3820
  %6 = load i64, i64* %n.addr.i, align 8, !dbg !3820
  store i8* %5, i8** %addr.addr.i.i, align 8
  store i64 %6, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !3780
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !3821
  %cmp.i.i = icmp sge i32 %7, 0, !dbg !3821
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !3821

land.rhs.i.i:                                     ; preds = %if.end
  %8 = load i32, i32* %sz.i.i, align 4, !dbg !3821
  %conv.i.i = sext i32 %8 to i64, !dbg !3821
  %9 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !3821
  %cmp1.i.i = icmp ult i64 %conv.i.i, %9, !dbg !3821
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end
  %10 = phi i1 [ false, %if.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !3823
  %lnot.i.i = xor i1 %10, true, !dbg !3821
  %lnot.ext.i.i = zext i1 %10 to i32, !dbg !3821
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3821
  br i1 %10, label %if.then.i.i, label %if.end10.i.i, !dbg !3824

if.then.i.i:                                      ; preds = %land.end.i.i
  %11 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !3825
  %12 = call i1 @llvm.is.constant.i64(i64 %11) #7, !dbg !3828
  br i1 %12, label %if.else.i.i, label %if.then5.i.i, !dbg !3829

if.then5.i.i:                                     ; preds = %if.then.i.i
  %13 = load i32, i32* %sz.i.i, align 4, !dbg !3830
  %14 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !3831
  call void @copy_overflow(i32 %13, i64 %14) #9, !dbg !3832
  br label %if.end9.i.i, !dbg !3832

if.else.i.i:                                      ; preds = %if.then.i.i
  %15 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !3833
  %tobool6.i.i = trunc i8 %15 to i1, !dbg !3833
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !3835

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #9, !dbg !3836
  br label %if.end.i.i, !dbg !3836

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #9, !dbg !3837
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !3838
  br label %check_copy_size.exit.i, !dbg !3838

if.end10.i.i:                                     ; preds = %land.end.i.i
  %16 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !3781
  %cmp11.i.i = icmp ugt i64 %16, 2147483647, !dbg !3781
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !3781
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !3781
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !3781
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !3839
  %tobool17.i.i = icmp ne i32 %17, 0, !dbg !3839
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !3839
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !3839
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !3839
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !3781

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 150, i32 2307, i64 12) #7, !dbg !3841, !srcloc !3844
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #7, !dbg !3845, !srcloc !3847
  br label %if.end31.i.i, !dbg !3848

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %18 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !3781
  %tobool32.i.i = icmp ne i32 %18, 0, !dbg !3781
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !3781
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !3781
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !3781
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !3839
  %19 = load i64, i64* %tmp.i.i, align 8, !dbg !3781
  %tobool38.i.i = icmp ne i64 %19, 0, !dbg !3849
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !3850

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !3851
  br label %check_copy_size.exit.i, !dbg !3851

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %20 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !3852
  %21 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !3853
  %22 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !3854
  %tobool41.i.i = trunc i8 %22 to i1, !dbg !3854
  call void @check_object_size(i8* %20, i64 %21, i1 zeroext %tobool41.i.i) #9, !dbg !3855
  store i1 true, i1* %retval.i.i, align 1, !dbg !3856
  br label %check_copy_size.exit.i, !dbg !3856

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %23 = load i1, i1* %retval.i.i, align 1, !dbg !3857
  %lnot.i = xor i1 %23, true, !dbg !3820
  %lnot.ext.i = zext i1 %23 to i32, !dbg !3820
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !3820
  br i1 %23, label %if.then.i, label %copy_from_user.exit, !dbg !3858

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %24 = load i8*, i8** %to.addr.i, align 8, !dbg !3859
  %25 = load i8*, i8** %from.addr.i, align 8, !dbg !3860
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !3861
  %call2.i = call i64 @_copy_from_user(i8* %24, i8* %25, i64 %26) #9, !dbg !3862
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !3863
  br label %copy_from_user.exit, !dbg !3864

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %27 = load i64, i64* %n.addr.i, align 8, !dbg !3865
  %tobool = icmp ne i64 %27, 0, !dbg !3866
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !3867

if.then2:                                         ; preds = %copy_from_user.exit
  store i32 -14, i32* %err, align 4, !dbg !3868
  br label %err_put_fd, !dbg !3870

if.end3:                                          ; preds = %copy_from_user.exit
  %flags = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %data, i32 0, i32 3, !dbg !3871
  %28 = load i32, i32* %flags, align 4, !dbg !3871
  %tobool4 = icmp ne i32 %28, 0, !dbg !3873
  br i1 %tobool4, label %if.then6, label %lor.lhs.false, !dbg !3874

lor.lhs.false:                                    ; preds = %if.end3
  %pad = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %data, i32 0, i32 4, !dbg !3875
  %29 = load i32, i32* %pad, align 4, !dbg !3875
  %tobool5 = icmp ne i32 %29, 0, !dbg !3876
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3877

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 -22, i32* %err, align 4, !dbg !3878
  br label %err_put_fd, !dbg !3880

if.end7:                                          ; preds = %lor.lhs.false
  %fd2 = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %data, i32 0, i32 1, !dbg !3881
  %30 = load i32, i32* %fd2, align 4, !dbg !3881
  %call8 = call %struct.sync_file* @sync_file_fdget(i32 %30) #6, !dbg !3882
  store %struct.sync_file* %call8, %struct.sync_file** %fence2, align 8, !dbg !3883
  %31 = load %struct.sync_file*, %struct.sync_file** %fence2, align 8, !dbg !3884
  %tobool9 = icmp ne %struct.sync_file* %31, null, !dbg !3884
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3886

if.then10:                                        ; preds = %if.end7
  store i32 -2, i32* %err, align 4, !dbg !3887
  br label %err_put_fd, !dbg !3889

if.end11:                                         ; preds = %if.end7
  %name = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %data, i32 0, i32 0, !dbg !3890
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %name, i64 0, i64 31, !dbg !3891
  store i8 0, i8* %arrayidx, align 1, !dbg !3892
  %name12 = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %data, i32 0, i32 0, !dbg !3893
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name12, i64 0, i64 0, !dbg !3894
  %32 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !3895
  %33 = load %struct.sync_file*, %struct.sync_file** %fence2, align 8, !dbg !3896
  %call13 = call %struct.sync_file* @sync_file_merge(i8* %arraydecay, %struct.sync_file* %32, %struct.sync_file* %33) #6, !dbg !3897
  store %struct.sync_file* %call13, %struct.sync_file** %fence3, align 8, !dbg !3898
  %34 = load %struct.sync_file*, %struct.sync_file** %fence3, align 8, !dbg !3899
  %tobool14 = icmp ne %struct.sync_file* %34, null, !dbg !3899
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3901

if.then15:                                        ; preds = %if.end11
  store i32 -12, i32* %err, align 4, !dbg !3902
  br label %err_put_fence2, !dbg !3904

if.end16:                                         ; preds = %if.end11
  %35 = load i32, i32* %fd, align 4, !dbg !3905
  %fence = getelementptr inbounds %struct.sync_merge_data, %struct.sync_merge_data* %data, i32 0, i32 2, !dbg !3906
  store i32 %35, i32* %fence, align 4, !dbg !3907
  %36 = load i64, i64* %arg.addr, align 8, !dbg !3908
  %37 = inttoptr i64 %36 to i8*, !dbg !3909
  %38 = bitcast %struct.sync_merge_data* %data to i8*, !dbg !3910
  store i8* %37, i8** %to.addr.i32, align 8
  store i8* %38, i8** %from.addr.i33, align 8
  store i64 48, i64* %n.addr.i34, align 8
  %39 = load i8*, i8** %from.addr.i33, align 8, !dbg !3911
  %40 = load i64, i64* %n.addr.i34, align 8, !dbg !3911
  store i8* %39, i8** %addr.addr.i.i26, align 8
  store i64 %40, i64* %bytes.addr.i.i27, align 8
  store i8 1, i8* %is_source.addr.i.i28, align 1
  store i32 -1, i32* %sz.i.i29, align 4, !dbg !3761
  %41 = load i32, i32* %sz.i.i29, align 4, !dbg !3912
  %cmp.i.i35 = icmp sge i32 %41, 0, !dbg !3912
  br i1 %cmp.i.i35, label %land.rhs.i.i38, label %land.end.i.i42, !dbg !3912

land.rhs.i.i38:                                   ; preds = %if.end16
  %42 = load i32, i32* %sz.i.i29, align 4, !dbg !3912
  %conv.i.i36 = sext i32 %42 to i64, !dbg !3912
  %43 = load i64, i64* %bytes.addr.i.i27, align 8, !dbg !3912
  %cmp1.i.i37 = icmp ult i64 %conv.i.i36, %43, !dbg !3912
  br label %land.end.i.i42

land.end.i.i42:                                   ; preds = %land.rhs.i.i38, %if.end16
  %44 = phi i1 [ false, %if.end16 ], [ %cmp1.i.i37, %land.rhs.i.i38 ], !dbg !3913
  %lnot.i.i39 = xor i1 %44, true, !dbg !3912
  %lnot.ext.i.i40 = zext i1 %44 to i32, !dbg !3912
  %conv4.i.i41 = sext i32 %lnot.ext.i.i40 to i64, !dbg !3912
  br i1 %44, label %if.then.i.i43, label %if.end10.i.i58, !dbg !3914

if.then.i.i43:                                    ; preds = %land.end.i.i42
  %45 = load i64, i64* %bytes.addr.i.i27, align 8, !dbg !3915
  %46 = call i1 @llvm.is.constant.i64(i64 %45) #7, !dbg !3916
  br i1 %46, label %if.else.i.i46, label %if.then5.i.i44, !dbg !3917

if.then5.i.i44:                                   ; preds = %if.then.i.i43
  %47 = load i32, i32* %sz.i.i29, align 4, !dbg !3918
  %48 = load i64, i64* %bytes.addr.i.i27, align 8, !dbg !3919
  call void @copy_overflow(i32 %47, i64 %48) #9, !dbg !3920
  br label %if.end9.i.i50, !dbg !3920

if.else.i.i46:                                    ; preds = %if.then.i.i43
  %49 = load i8, i8* %is_source.addr.i.i28, align 1, !dbg !3921
  %tobool6.i.i45 = trunc i8 %49 to i1, !dbg !3921
  br i1 %tobool6.i.i45, label %if.then7.i.i47, label %if.else8.i.i48, !dbg !3922

if.then7.i.i47:                                   ; preds = %if.else.i.i46
  call void @__bad_copy_from() #9, !dbg !3923
  br label %if.end.i.i49, !dbg !3923

if.else8.i.i48:                                   ; preds = %if.else.i.i46
  call void @__bad_copy_to() #9, !dbg !3924
  br label %if.end.i.i49

if.end.i.i49:                                     ; preds = %if.else8.i.i48, %if.then7.i.i47
  br label %if.end9.i.i50

if.end9.i.i50:                                    ; preds = %if.end.i.i49, %if.then5.i.i44
  store i1 false, i1* %retval.i.i25, align 1, !dbg !3925
  br label %check_copy_size.exit.i72, !dbg !3925

if.end10.i.i58:                                   ; preds = %land.end.i.i42
  %50 = load i64, i64* %bytes.addr.i.i27, align 8, !dbg !3765
  %cmp11.i.i51 = icmp ugt i64 %50, 2147483647, !dbg !3765
  %lnot13.i.i52 = xor i1 %cmp11.i.i51, true, !dbg !3765
  %lnot.ext16.i.i53 = zext i1 %cmp11.i.i51 to i32, !dbg !3765
  store i32 %lnot.ext16.i.i53, i32* %__ret_warn_on.i.i30, align 4, !dbg !3765
  %51 = load i32, i32* %__ret_warn_on.i.i30, align 4, !dbg !3926
  %tobool17.i.i54 = icmp ne i32 %51, 0, !dbg !3926
  %lnot18.i.i55 = xor i1 %tobool17.i.i54, true, !dbg !3926
  %lnot.ext21.i.i56 = zext i1 %tobool17.i.i54 to i32, !dbg !3926
  %conv22.i.i57 = sext i32 %lnot.ext21.i.i56 to i64, !dbg !3926
  br i1 %tobool17.i.i54, label %if.then24.i.i59, label %if.end31.i.i65, !dbg !3765

if.then24.i.i59:                                  ; preds = %if.end10.i.i58
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 150, i32 2307, i64 12) #7, !dbg !3927, !srcloc !3844
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #7, !dbg !3928, !srcloc !3847
  br label %if.end31.i.i65, !dbg !3929

if.end31.i.i65:                                   ; preds = %if.then24.i.i59, %if.end10.i.i58
  %52 = load i32, i32* %__ret_warn_on.i.i30, align 4, !dbg !3765
  %tobool32.i.i60 = icmp ne i32 %52, 0, !dbg !3765
  %lnot33.i.i61 = xor i1 %tobool32.i.i60, true, !dbg !3765
  %lnot.ext36.i.i62 = zext i1 %tobool32.i.i60 to i32, !dbg !3765
  %conv37.i.i63 = sext i32 %lnot.ext36.i.i62 to i64, !dbg !3765
  store i64 %conv37.i.i63, i64* %tmp.i.i31, align 8, !dbg !3926
  %53 = load i64, i64* %tmp.i.i31, align 8, !dbg !3765
  %tobool38.i.i64 = icmp ne i64 %53, 0, !dbg !3930
  br i1 %tobool38.i.i64, label %if.then39.i.i66, label %if.end40.i.i68, !dbg !3931

if.then39.i.i66:                                  ; preds = %if.end31.i.i65
  store i1 false, i1* %retval.i.i25, align 1, !dbg !3932
  br label %check_copy_size.exit.i72, !dbg !3932

if.end40.i.i68:                                   ; preds = %if.end31.i.i65
  %54 = load i8*, i8** %addr.addr.i.i26, align 8, !dbg !3933
  %55 = load i64, i64* %bytes.addr.i.i27, align 8, !dbg !3934
  %56 = load i8, i8* %is_source.addr.i.i28, align 1, !dbg !3935
  %tobool41.i.i67 = trunc i8 %56 to i1, !dbg !3935
  call void @check_object_size(i8* %54, i64 %55, i1 zeroext %tobool41.i.i67) #9, !dbg !3936
  store i1 true, i1* %retval.i.i25, align 1, !dbg !3937
  br label %check_copy_size.exit.i72, !dbg !3937

check_copy_size.exit.i72:                         ; preds = %if.end40.i.i68, %if.then39.i.i66, %if.end9.i.i50
  %57 = load i1, i1* %retval.i.i25, align 1, !dbg !3938
  %lnot.i69 = xor i1 %57, true, !dbg !3911
  %lnot.ext.i70 = zext i1 %57 to i32, !dbg !3911
  %conv.i71 = sext i32 %lnot.ext.i70 to i64, !dbg !3911
  br i1 %57, label %if.then.i74, label %copy_to_user.exit, !dbg !3939

if.then.i74:                                      ; preds = %check_copy_size.exit.i72
  %58 = load i8*, i8** %to.addr.i32, align 8, !dbg !3940
  %59 = load i8*, i8** %from.addr.i33, align 8, !dbg !3941
  %60 = load i64, i64* %n.addr.i34, align 8, !dbg !3942
  %call2.i73 = call i64 @_copy_to_user(i8* %58, i8* %59, i64 %60) #9, !dbg !3943
  store i64 %call2.i73, i64* %n.addr.i34, align 8, !dbg !3944
  br label %copy_to_user.exit, !dbg !3945

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i72, %if.then.i74
  %61 = load i64, i64* %n.addr.i34, align 8, !dbg !3946
  %tobool18 = icmp ne i64 %61, 0, !dbg !3947
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3948

if.then19:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %err, align 4, !dbg !3949
  br label %err_put_fence3, !dbg !3951

if.end20:                                         ; preds = %copy_to_user.exit
  %62 = load i32, i32* %fd, align 4, !dbg !3952
  %63 = load %struct.sync_file*, %struct.sync_file** %fence3, align 8, !dbg !3953
  %file = getelementptr inbounds %struct.sync_file, %struct.sync_file* %63, i32 0, i32 0, !dbg !3954
  %64 = load %struct.file*, %struct.file** %file, align 8, !dbg !3954
  call void @fd_install(i32 %62, %struct.file* %64) #6, !dbg !3955
  %65 = load %struct.sync_file*, %struct.sync_file** %fence2, align 8, !dbg !3956
  %file21 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %65, i32 0, i32 0, !dbg !3957
  %66 = load %struct.file*, %struct.file** %file21, align 8, !dbg !3957
  call void @fput(%struct.file* %66) #6, !dbg !3958
  store i64 0, i64* %retval, align 8, !dbg !3959
  br label %return, !dbg !3959

err_put_fence3:                                   ; preds = %if.then19
  call void @llvm.dbg.label(metadata !3960), !dbg !3961
  %67 = load %struct.sync_file*, %struct.sync_file** %fence3, align 8, !dbg !3962
  %file22 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %67, i32 0, i32 0, !dbg !3963
  %68 = load %struct.file*, %struct.file** %file22, align 8, !dbg !3963
  call void @fput(%struct.file* %68) #6, !dbg !3964
  br label %err_put_fence2, !dbg !3964

err_put_fence2:                                   ; preds = %err_put_fence3, %if.then15
  call void @llvm.dbg.label(metadata !3965), !dbg !3966
  %69 = load %struct.sync_file*, %struct.sync_file** %fence2, align 8, !dbg !3967
  %file23 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %69, i32 0, i32 0, !dbg !3968
  %70 = load %struct.file*, %struct.file** %file23, align 8, !dbg !3968
  call void @fput(%struct.file* %70) #6, !dbg !3969
  br label %err_put_fd, !dbg !3969

err_put_fd:                                       ; preds = %err_put_fence2, %if.then10, %if.then6, %if.then2
  call void @llvm.dbg.label(metadata !3970), !dbg !3971
  %71 = load i32, i32* %fd, align 4, !dbg !3972
  call void @put_unused_fd(i32 %71) #6, !dbg !3973
  %72 = load i32, i32* %err, align 4, !dbg !3974
  %conv24 = sext i32 %72 to i64, !dbg !3974
  store i64 %conv24, i64* %retval, align 8, !dbg !3975
  br label %return, !dbg !3975

return:                                           ; preds = %err_put_fd, %if.end20, %if.then
  %73 = load i64, i64* %retval, align 8, !dbg !3976
  ret i64 %73, !dbg !3976
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sync_file_ioctl_fence_info(%struct.sync_file* %sync_file, i64 %arg) #0 !dbg !3977 {
entry:
  %retval.i.i98 = alloca i1, align 1
  %addr.addr.i.i99 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i99, metadata !3742, metadata !DIExpression()), !dbg !3978
  %bytes.addr.i.i100 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i100, metadata !3756, metadata !DIExpression()), !dbg !3982
  %is_source.addr.i.i101 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i101, metadata !3758, metadata !DIExpression()), !dbg !3983
  %sz.i.i102 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i102, metadata !3760, metadata !DIExpression()), !dbg !3984
  %__ret_warn_on.i.i103 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i103, metadata !3762, metadata !DIExpression()), !dbg !3985
  %tmp.i.i104 = alloca i64, align 8
  %to.addr.i105 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i105, metadata !3766, metadata !DIExpression()), !dbg !3986
  %from.addr.i106 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i106, metadata !3768, metadata !DIExpression()), !dbg !3987
  %n.addr.i107 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i107, metadata !3770, metadata !DIExpression()), !dbg !3988
  %retval.i.i48 = alloca i1, align 1
  %addr.addr.i.i49 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i49, metadata !3742, metadata !DIExpression()), !dbg !3989
  %bytes.addr.i.i50 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i50, metadata !3756, metadata !DIExpression()), !dbg !3993
  %is_source.addr.i.i51 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i51, metadata !3758, metadata !DIExpression()), !dbg !3994
  %sz.i.i52 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i52, metadata !3760, metadata !DIExpression()), !dbg !3995
  %__ret_warn_on.i.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i53, metadata !3762, metadata !DIExpression()), !dbg !3996
  %tmp.i.i54 = alloca i64, align 8
  %to.addr.i55 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i55, metadata !3766, metadata !DIExpression()), !dbg !3997
  %from.addr.i56 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i56, metadata !3768, metadata !DIExpression()), !dbg !3998
  %n.addr.i57 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i57, metadata !3770, metadata !DIExpression()), !dbg !3999
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !3742, metadata !DIExpression()), !dbg !4000
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !3756, metadata !DIExpression()), !dbg !4004
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !3758, metadata !DIExpression()), !dbg !4005
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !3760, metadata !DIExpression()), !dbg !4006
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !3762, metadata !DIExpression()), !dbg !4007
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !3782, metadata !DIExpression()), !dbg !4008
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !3784, metadata !DIExpression()), !dbg !4009
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !3786, metadata !DIExpression()), !dbg !4010
  %retval = alloca i64, align 8
  %sync_file.addr = alloca %struct.sync_file*, align 8
  %arg.addr = alloca i64, align 8
  %info = alloca %struct.sync_file_info, align 8
  %fence_info = alloca %struct.sync_fence_info*, align 8
  %fences = alloca %struct.dma_fence**, align 8
  %size = alloca i32, align 4
  %num_fences = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %status23 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp34 = alloca i8*, align 8
  store %struct.sync_file* %sync_file, %struct.sync_file** %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file.addr, metadata !4011, metadata !DIExpression()), !dbg !4012
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4013, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.declare(metadata %struct.sync_file_info* %info, metadata !4015, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.declare(metadata %struct.sync_fence_info** %fence_info, metadata !4025, metadata !DIExpression()), !dbg !4034
  store %struct.sync_fence_info* null, %struct.sync_fence_info** %fence_info, align 8, !dbg !4034
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fences, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata i32* %num_fences, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4043, metadata !DIExpression()), !dbg !4044
  %0 = bitcast %struct.sync_file_info* %info to i8*, !dbg !4045
  %1 = load i64, i64* %arg.addr, align 8, !dbg !4046
  %2 = inttoptr i64 %1 to i8*, !dbg !4047
  store i8* %0, i8** %to.addr.i, align 8
  store i8* %2, i8** %from.addr.i, align 8
  store i64 56, i64* %n.addr.i, align 8
  %3 = load i8*, i8** %to.addr.i, align 8, !dbg !4048
  %4 = load i64, i64* %n.addr.i, align 8, !dbg !4048
  store i8* %3, i8** %addr.addr.i.i, align 8
  store i64 %4, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4006
  %5 = load i32, i32* %sz.i.i, align 4, !dbg !4049
  %cmp.i.i = icmp sge i32 %5, 0, !dbg !4049
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4049

land.rhs.i.i:                                     ; preds = %entry
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !4049
  %conv.i.i = sext i32 %6 to i64, !dbg !4049
  %7 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4049
  %cmp1.i.i = icmp ult i64 %conv.i.i, %7, !dbg !4049
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4050
  %lnot.i.i = xor i1 %8, true, !dbg !4049
  %lnot.ext.i.i = zext i1 %8 to i32, !dbg !4049
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4049
  br i1 %8, label %if.then.i.i, label %if.end10.i.i, !dbg !4051

if.then.i.i:                                      ; preds = %land.end.i.i
  %9 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4052
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !4053
  br i1 %10, label %if.else.i.i, label %if.then5.i.i, !dbg !4054

if.then5.i.i:                                     ; preds = %if.then.i.i
  %11 = load i32, i32* %sz.i.i, align 4, !dbg !4055
  %12 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4056
  call void @copy_overflow(i32 %11, i64 %12) #9, !dbg !4057
  br label %if.end9.i.i, !dbg !4057

if.else.i.i:                                      ; preds = %if.then.i.i
  %13 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4058
  %tobool6.i.i = trunc i8 %13 to i1, !dbg !4058
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4059

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #9, !dbg !4060
  br label %if.end.i.i, !dbg !4060

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #9, !dbg !4061
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4062
  br label %check_copy_size.exit.i, !dbg !4062

if.end10.i.i:                                     ; preds = %land.end.i.i
  %14 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4007
  %cmp11.i.i = icmp ugt i64 %14, 2147483647, !dbg !4007
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4007
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4007
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4007
  %15 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4063
  %tobool17.i.i = icmp ne i32 %15, 0, !dbg !4063
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4063
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4063
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4063
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4007

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 150, i32 2307, i64 12) #7, !dbg !4064, !srcloc !3844
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #7, !dbg !4065, !srcloc !3847
  br label %if.end31.i.i, !dbg !4066

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4007
  %tobool32.i.i = icmp ne i32 %16, 0, !dbg !4007
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4007
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4007
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4007
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4063
  %17 = load i64, i64* %tmp.i.i, align 8, !dbg !4007
  %tobool38.i.i = icmp ne i64 %17, 0, !dbg !4067
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4068

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4069
  br label %check_copy_size.exit.i, !dbg !4069

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %18 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4070
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4071
  %20 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4072
  %tobool41.i.i = trunc i8 %20 to i1, !dbg !4072
  call void @check_object_size(i8* %18, i64 %19, i1 zeroext %tobool41.i.i) #9, !dbg !4073
  store i1 true, i1* %retval.i.i, align 1, !dbg !4074
  br label %check_copy_size.exit.i, !dbg !4074

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %21 = load i1, i1* %retval.i.i, align 1, !dbg !4075
  %lnot.i = xor i1 %21, true, !dbg !4048
  %lnot.ext.i = zext i1 %21 to i32, !dbg !4048
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4048
  br i1 %21, label %if.then.i, label %copy_from_user.exit, !dbg !4076

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %22 = load i8*, i8** %to.addr.i, align 8, !dbg !4077
  %23 = load i8*, i8** %from.addr.i, align 8, !dbg !4078
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !4079
  %call2.i = call i64 @_copy_from_user(i8* %22, i8* %23, i64 %24) #9, !dbg !4080
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4081
  br label %copy_from_user.exit, !dbg !4082

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !4083
  %tobool = icmp ne i64 %25, 0, !dbg !4084
  br i1 %tobool, label %if.then, label %if.end, !dbg !4085

if.then:                                          ; preds = %copy_from_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !4086
  br label %return, !dbg !4086

if.end:                                           ; preds = %copy_from_user.exit
  %flags = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 2, !dbg !4087
  %26 = load i32, i32* %flags, align 4, !dbg !4087
  %tobool1 = icmp ne i32 %26, 0, !dbg !4089
  br i1 %tobool1, label %if.then3, label %lor.lhs.false, !dbg !4090

lor.lhs.false:                                    ; preds = %if.end
  %pad = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 4, !dbg !4091
  %27 = load i32, i32* %pad, align 4, !dbg !4091
  %tobool2 = icmp ne i32 %27, 0, !dbg !4092
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4093

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -22, i64* %retval, align 8, !dbg !4094
  br label %return, !dbg !4094

if.end4:                                          ; preds = %lor.lhs.false
  %28 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4095
  %call5 = call %struct.dma_fence** @get_fences(%struct.sync_file* %28, i32* %num_fences) #6, !dbg !4096
  store %struct.dma_fence** %call5, %struct.dma_fence*** %fences, align 8, !dbg !4097
  %num_fences6 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 3, !dbg !4098
  %29 = load i32, i32* %num_fences6, align 8, !dbg !4098
  %tobool7 = icmp ne i32 %29, 0, !dbg !4100
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !4101

if.then8:                                         ; preds = %if.end4
  %30 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4102
  %fence = getelementptr inbounds %struct.sync_file, %struct.sync_file* %30, i32 0, i32 4, !dbg !4104
  %31 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4104
  %call9 = call i32 @dma_fence_get_status(%struct.dma_fence* %31) #6, !dbg !4105
  %status = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 1, !dbg !4106
  store i32 %call9, i32* %status, align 8, !dbg !4107
  br label %no_fences, !dbg !4108

if.else:                                          ; preds = %if.end4
  %status10 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 1, !dbg !4109
  store i32 1, i32* %status10, align 8, !dbg !4111
  br label %if.end11

if.end11:                                         ; preds = %if.else
  %num_fences12 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 3, !dbg !4112
  %32 = load i32, i32* %num_fences12, align 8, !dbg !4112
  %33 = load i32, i32* %num_fences, align 4, !dbg !4114
  %cmp = icmp ult i32 %32, %33, !dbg !4115
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !4116

if.then13:                                        ; preds = %if.end11
  store i64 -22, i64* %retval, align 8, !dbg !4117
  br label %return, !dbg !4117

if.end14:                                         ; preds = %if.end11
  %34 = load i32, i32* %num_fences, align 4, !dbg !4118
  %conv = sext i32 %34 to i64, !dbg !4118
  %mul = mul i64 %conv, 80, !dbg !4119
  %conv15 = trunc i64 %mul to i32, !dbg !4118
  store i32 %conv15, i32* %size, align 4, !dbg !4120
  %35 = load i32, i32* %size, align 4, !dbg !4121
  %conv16 = zext i32 %35 to i64, !dbg !4121
  %call17 = call i8* @kzalloc(i64 %conv16, i32 3264) #6, !dbg !4122
  %36 = bitcast i8* %call17 to %struct.sync_fence_info*, !dbg !4122
  store %struct.sync_fence_info* %36, %struct.sync_fence_info** %fence_info, align 8, !dbg !4123
  %37 = load %struct.sync_fence_info*, %struct.sync_fence_info** %fence_info, align 8, !dbg !4124
  %tobool18 = icmp ne %struct.sync_fence_info* %37, null, !dbg !4124
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4126

if.then19:                                        ; preds = %if.end14
  store i64 -12, i64* %retval, align 8, !dbg !4127
  br label %return, !dbg !4127

if.end20:                                         ; preds = %if.end14
  store i32 0, i32* %i, align 4, !dbg !4128
  br label %for.cond, !dbg !4130

for.cond:                                         ; preds = %for.inc, %if.end20
  %38 = load i32, i32* %i, align 4, !dbg !4131
  %39 = load i32, i32* %num_fences, align 4, !dbg !4133
  %cmp21 = icmp slt i32 %38, %39, !dbg !4134
  br i1 %cmp21, label %for.body, label %for.end, !dbg !4135

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %status23, metadata !4136, metadata !DIExpression()), !dbg !4138
  %40 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4139
  %41 = load i32, i32* %i, align 4, !dbg !4140
  %idxprom = sext i32 %41 to i64, !dbg !4139
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %40, i64 %idxprom, !dbg !4139
  %42 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !4139
  %43 = load %struct.sync_fence_info*, %struct.sync_fence_info** %fence_info, align 8, !dbg !4141
  %44 = load i32, i32* %i, align 4, !dbg !4142
  %idxprom24 = sext i32 %44 to i64, !dbg !4141
  %arrayidx25 = getelementptr %struct.sync_fence_info, %struct.sync_fence_info* %43, i64 %idxprom24, !dbg !4141
  %call26 = call i32 @sync_fill_fence_info(%struct.dma_fence* %42, %struct.sync_fence_info* %arrayidx25) #6, !dbg !4143
  store i32 %call26, i32* %status23, align 4, !dbg !4138
  %status27 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 1, !dbg !4144
  %45 = load i32, i32* %status27, align 8, !dbg !4144
  %cmp28 = icmp sle i32 %45, 0, !dbg !4145
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !4146

cond.true:                                        ; preds = %for.body
  %status30 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 1, !dbg !4147
  %46 = load i32, i32* %status30, align 8, !dbg !4147
  br label %cond.end, !dbg !4146

cond.false:                                       ; preds = %for.body
  %47 = load i32, i32* %status23, align 4, !dbg !4148
  br label %cond.end, !dbg !4146

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %47, %cond.false ], !dbg !4146
  %status31 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 1, !dbg !4149
  store i32 %cond, i32* %status31, align 8, !dbg !4150
  br label %for.inc, !dbg !4151

for.inc:                                          ; preds = %cond.end
  %48 = load i32, i32* %i, align 4, !dbg !4152
  %inc = add i32 %48, 1, !dbg !4152
  store i32 %inc, i32* %i, align 4, !dbg !4152
  br label %for.cond, !dbg !4153, !llvm.loop !4154

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4156, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4160, metadata !DIExpression()), !dbg !4159
  %cmp32 = icmp eq i64* %__dummy, %__dummy2, !dbg !4159
  %conv33 = zext i1 %cmp32 to i32, !dbg !4159
  store i32 1, i32* %tmp, align 4, !dbg !4159
  %49 = load i32, i32* %tmp, align 4, !dbg !4159
  %sync_fence_info = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 5, !dbg !4161
  %50 = load i64, i64* %sync_fence_info, align 8, !dbg !4161
  %51 = inttoptr i64 %50 to i8*, !dbg !4161
  store i8* %51, i8** %tmp34, align 8, !dbg !4161
  %52 = load i8*, i8** %tmp34, align 8, !dbg !4161
  %53 = load %struct.sync_fence_info*, %struct.sync_fence_info** %fence_info, align 8, !dbg !4162
  %54 = bitcast %struct.sync_fence_info* %53 to i8*, !dbg !4162
  %55 = load i32, i32* %size, align 4, !dbg !4163
  %conv35 = zext i32 %55 to i64, !dbg !4163
  store i8* %52, i8** %to.addr.i55, align 8
  store i8* %54, i8** %from.addr.i56, align 8
  store i64 %conv35, i64* %n.addr.i57, align 8
  %56 = load i8*, i8** %from.addr.i56, align 8, !dbg !4164
  %57 = load i64, i64* %n.addr.i57, align 8, !dbg !4164
  store i8* %56, i8** %addr.addr.i.i49, align 8
  store i64 %57, i64* %bytes.addr.i.i50, align 8
  store i8 1, i8* %is_source.addr.i.i51, align 1
  store i32 -1, i32* %sz.i.i52, align 4, !dbg !3995
  %58 = load i32, i32* %sz.i.i52, align 4, !dbg !4165
  %cmp.i.i58 = icmp sge i32 %58, 0, !dbg !4165
  br i1 %cmp.i.i58, label %land.rhs.i.i61, label %land.end.i.i65, !dbg !4165

land.rhs.i.i61:                                   ; preds = %for.end
  %59 = load i32, i32* %sz.i.i52, align 4, !dbg !4165
  %conv.i.i59 = sext i32 %59 to i64, !dbg !4165
  %60 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4165
  %cmp1.i.i60 = icmp ult i64 %conv.i.i59, %60, !dbg !4165
  br label %land.end.i.i65

land.end.i.i65:                                   ; preds = %land.rhs.i.i61, %for.end
  %61 = phi i1 [ false, %for.end ], [ %cmp1.i.i60, %land.rhs.i.i61 ], !dbg !4166
  %lnot.i.i62 = xor i1 %61, true, !dbg !4165
  %lnot.ext.i.i63 = zext i1 %61 to i32, !dbg !4165
  %conv4.i.i64 = sext i32 %lnot.ext.i.i63 to i64, !dbg !4165
  br i1 %61, label %if.then.i.i66, label %if.end10.i.i81, !dbg !4167

if.then.i.i66:                                    ; preds = %land.end.i.i65
  %62 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4168
  %63 = call i1 @llvm.is.constant.i64(i64 %62) #7, !dbg !4169
  br i1 %63, label %if.else.i.i69, label %if.then5.i.i67, !dbg !4170

if.then5.i.i67:                                   ; preds = %if.then.i.i66
  %64 = load i32, i32* %sz.i.i52, align 4, !dbg !4171
  %65 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4172
  call void @copy_overflow(i32 %64, i64 %65) #9, !dbg !4173
  br label %if.end9.i.i73, !dbg !4173

if.else.i.i69:                                    ; preds = %if.then.i.i66
  %66 = load i8, i8* %is_source.addr.i.i51, align 1, !dbg !4174
  %tobool6.i.i68 = trunc i8 %66 to i1, !dbg !4174
  br i1 %tobool6.i.i68, label %if.then7.i.i70, label %if.else8.i.i71, !dbg !4175

if.then7.i.i70:                                   ; preds = %if.else.i.i69
  call void @__bad_copy_from() #9, !dbg !4176
  br label %if.end.i.i72, !dbg !4176

if.else8.i.i71:                                   ; preds = %if.else.i.i69
  call void @__bad_copy_to() #9, !dbg !4177
  br label %if.end.i.i72

if.end.i.i72:                                     ; preds = %if.else8.i.i71, %if.then7.i.i70
  br label %if.end9.i.i73

if.end9.i.i73:                                    ; preds = %if.end.i.i72, %if.then5.i.i67
  store i1 false, i1* %retval.i.i48, align 1, !dbg !4178
  br label %check_copy_size.exit.i95, !dbg !4178

if.end10.i.i81:                                   ; preds = %land.end.i.i65
  %67 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !3996
  %cmp11.i.i74 = icmp ugt i64 %67, 2147483647, !dbg !3996
  %lnot13.i.i75 = xor i1 %cmp11.i.i74, true, !dbg !3996
  %lnot.ext16.i.i76 = zext i1 %cmp11.i.i74 to i32, !dbg !3996
  store i32 %lnot.ext16.i.i76, i32* %__ret_warn_on.i.i53, align 4, !dbg !3996
  %68 = load i32, i32* %__ret_warn_on.i.i53, align 4, !dbg !4179
  %tobool17.i.i77 = icmp ne i32 %68, 0, !dbg !4179
  %lnot18.i.i78 = xor i1 %tobool17.i.i77, true, !dbg !4179
  %lnot.ext21.i.i79 = zext i1 %tobool17.i.i77 to i32, !dbg !4179
  %conv22.i.i80 = sext i32 %lnot.ext21.i.i79 to i64, !dbg !4179
  br i1 %tobool17.i.i77, label %if.then24.i.i82, label %if.end31.i.i88, !dbg !3996

if.then24.i.i82:                                  ; preds = %if.end10.i.i81
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 150, i32 2307, i64 12) #7, !dbg !4180, !srcloc !3844
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #7, !dbg !4181, !srcloc !3847
  br label %if.end31.i.i88, !dbg !4182

if.end31.i.i88:                                   ; preds = %if.then24.i.i82, %if.end10.i.i81
  %69 = load i32, i32* %__ret_warn_on.i.i53, align 4, !dbg !3996
  %tobool32.i.i83 = icmp ne i32 %69, 0, !dbg !3996
  %lnot33.i.i84 = xor i1 %tobool32.i.i83, true, !dbg !3996
  %lnot.ext36.i.i85 = zext i1 %tobool32.i.i83 to i32, !dbg !3996
  %conv37.i.i86 = sext i32 %lnot.ext36.i.i85 to i64, !dbg !3996
  store i64 %conv37.i.i86, i64* %tmp.i.i54, align 8, !dbg !4179
  %70 = load i64, i64* %tmp.i.i54, align 8, !dbg !3996
  %tobool38.i.i87 = icmp ne i64 %70, 0, !dbg !4183
  br i1 %tobool38.i.i87, label %if.then39.i.i89, label %if.end40.i.i91, !dbg !4184

if.then39.i.i89:                                  ; preds = %if.end31.i.i88
  store i1 false, i1* %retval.i.i48, align 1, !dbg !4185
  br label %check_copy_size.exit.i95, !dbg !4185

if.end40.i.i91:                                   ; preds = %if.end31.i.i88
  %71 = load i8*, i8** %addr.addr.i.i49, align 8, !dbg !4186
  %72 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4187
  %73 = load i8, i8* %is_source.addr.i.i51, align 1, !dbg !4188
  %tobool41.i.i90 = trunc i8 %73 to i1, !dbg !4188
  call void @check_object_size(i8* %71, i64 %72, i1 zeroext %tobool41.i.i90) #9, !dbg !4189
  store i1 true, i1* %retval.i.i48, align 1, !dbg !4190
  br label %check_copy_size.exit.i95, !dbg !4190

check_copy_size.exit.i95:                         ; preds = %if.end40.i.i91, %if.then39.i.i89, %if.end9.i.i73
  %74 = load i1, i1* %retval.i.i48, align 1, !dbg !4191
  %lnot.i92 = xor i1 %74, true, !dbg !4164
  %lnot.ext.i93 = zext i1 %74 to i32, !dbg !4164
  %conv.i94 = sext i32 %lnot.ext.i93 to i64, !dbg !4164
  br i1 %74, label %if.then.i97, label %copy_to_user.exit, !dbg !4192

if.then.i97:                                      ; preds = %check_copy_size.exit.i95
  %75 = load i8*, i8** %to.addr.i55, align 8, !dbg !4193
  %76 = load i8*, i8** %from.addr.i56, align 8, !dbg !4194
  %77 = load i64, i64* %n.addr.i57, align 8, !dbg !4195
  %call2.i96 = call i64 @_copy_to_user(i8* %75, i8* %76, i64 %77) #9, !dbg !4196
  store i64 %call2.i96, i64* %n.addr.i57, align 8, !dbg !4197
  br label %copy_to_user.exit, !dbg !4198

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i95, %if.then.i97
  %78 = load i64, i64* %n.addr.i57, align 8, !dbg !4199
  %tobool37 = icmp ne i64 %78, 0, !dbg !4200
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4201

if.then38:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %ret, align 4, !dbg !4202
  br label %out, !dbg !4204

if.end39:                                         ; preds = %copy_to_user.exit
  br label %no_fences, !dbg !4205

no_fences:                                        ; preds = %if.end39, %if.then8
  call void @llvm.dbg.label(metadata !4206), !dbg !4207
  %79 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4208
  %name = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 0, !dbg !4209
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !4210
  %call40 = call i8* @sync_file_get_name(%struct.sync_file* %79, i8* %arraydecay, i32 32) #6, !dbg !4211
  %80 = load i32, i32* %num_fences, align 4, !dbg !4212
  %num_fences41 = getelementptr inbounds %struct.sync_file_info, %struct.sync_file_info* %info, i32 0, i32 3, !dbg !4213
  store i32 %80, i32* %num_fences41, align 8, !dbg !4214
  %81 = load i64, i64* %arg.addr, align 8, !dbg !4215
  %82 = inttoptr i64 %81 to i8*, !dbg !4216
  %83 = bitcast %struct.sync_file_info* %info to i8*, !dbg !4217
  store i8* %82, i8** %to.addr.i105, align 8
  store i8* %83, i8** %from.addr.i106, align 8
  store i64 56, i64* %n.addr.i107, align 8
  %84 = load i8*, i8** %from.addr.i106, align 8, !dbg !4218
  %85 = load i64, i64* %n.addr.i107, align 8, !dbg !4218
  store i8* %84, i8** %addr.addr.i.i99, align 8
  store i64 %85, i64* %bytes.addr.i.i100, align 8
  store i8 1, i8* %is_source.addr.i.i101, align 1
  store i32 -1, i32* %sz.i.i102, align 4, !dbg !3984
  %86 = load i32, i32* %sz.i.i102, align 4, !dbg !4219
  %cmp.i.i108 = icmp sge i32 %86, 0, !dbg !4219
  br i1 %cmp.i.i108, label %land.rhs.i.i111, label %land.end.i.i115, !dbg !4219

land.rhs.i.i111:                                  ; preds = %no_fences
  %87 = load i32, i32* %sz.i.i102, align 4, !dbg !4219
  %conv.i.i109 = sext i32 %87 to i64, !dbg !4219
  %88 = load i64, i64* %bytes.addr.i.i100, align 8, !dbg !4219
  %cmp1.i.i110 = icmp ult i64 %conv.i.i109, %88, !dbg !4219
  br label %land.end.i.i115

land.end.i.i115:                                  ; preds = %land.rhs.i.i111, %no_fences
  %89 = phi i1 [ false, %no_fences ], [ %cmp1.i.i110, %land.rhs.i.i111 ], !dbg !4220
  %lnot.i.i112 = xor i1 %89, true, !dbg !4219
  %lnot.ext.i.i113 = zext i1 %89 to i32, !dbg !4219
  %conv4.i.i114 = sext i32 %lnot.ext.i.i113 to i64, !dbg !4219
  br i1 %89, label %if.then.i.i116, label %if.end10.i.i131, !dbg !4221

if.then.i.i116:                                   ; preds = %land.end.i.i115
  %90 = load i64, i64* %bytes.addr.i.i100, align 8, !dbg !4222
  %91 = call i1 @llvm.is.constant.i64(i64 %90) #7, !dbg !4223
  br i1 %91, label %if.else.i.i119, label %if.then5.i.i117, !dbg !4224

if.then5.i.i117:                                  ; preds = %if.then.i.i116
  %92 = load i32, i32* %sz.i.i102, align 4, !dbg !4225
  %93 = load i64, i64* %bytes.addr.i.i100, align 8, !dbg !4226
  call void @copy_overflow(i32 %92, i64 %93) #9, !dbg !4227
  br label %if.end9.i.i123, !dbg !4227

if.else.i.i119:                                   ; preds = %if.then.i.i116
  %94 = load i8, i8* %is_source.addr.i.i101, align 1, !dbg !4228
  %tobool6.i.i118 = trunc i8 %94 to i1, !dbg !4228
  br i1 %tobool6.i.i118, label %if.then7.i.i120, label %if.else8.i.i121, !dbg !4229

if.then7.i.i120:                                  ; preds = %if.else.i.i119
  call void @__bad_copy_from() #9, !dbg !4230
  br label %if.end.i.i122, !dbg !4230

if.else8.i.i121:                                  ; preds = %if.else.i.i119
  call void @__bad_copy_to() #9, !dbg !4231
  br label %if.end.i.i122

if.end.i.i122:                                    ; preds = %if.else8.i.i121, %if.then7.i.i120
  br label %if.end9.i.i123

if.end9.i.i123:                                   ; preds = %if.end.i.i122, %if.then5.i.i117
  store i1 false, i1* %retval.i.i98, align 1, !dbg !4232
  br label %check_copy_size.exit.i145, !dbg !4232

if.end10.i.i131:                                  ; preds = %land.end.i.i115
  %95 = load i64, i64* %bytes.addr.i.i100, align 8, !dbg !3985
  %cmp11.i.i124 = icmp ugt i64 %95, 2147483647, !dbg !3985
  %lnot13.i.i125 = xor i1 %cmp11.i.i124, true, !dbg !3985
  %lnot.ext16.i.i126 = zext i1 %cmp11.i.i124 to i32, !dbg !3985
  store i32 %lnot.ext16.i.i126, i32* %__ret_warn_on.i.i103, align 4, !dbg !3985
  %96 = load i32, i32* %__ret_warn_on.i.i103, align 4, !dbg !4233
  %tobool17.i.i127 = icmp ne i32 %96, 0, !dbg !4233
  %lnot18.i.i128 = xor i1 %tobool17.i.i127, true, !dbg !4233
  %lnot.ext21.i.i129 = zext i1 %tobool17.i.i127 to i32, !dbg !4233
  %conv22.i.i130 = sext i32 %lnot.ext21.i.i129 to i64, !dbg !4233
  br i1 %tobool17.i.i127, label %if.then24.i.i132, label %if.end31.i.i138, !dbg !3985

if.then24.i.i132:                                 ; preds = %if.end10.i.i131
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 150, i32 2307, i64 12) #7, !dbg !4234, !srcloc !3844
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #7, !dbg !4235, !srcloc !3847
  br label %if.end31.i.i138, !dbg !4236

if.end31.i.i138:                                  ; preds = %if.then24.i.i132, %if.end10.i.i131
  %97 = load i32, i32* %__ret_warn_on.i.i103, align 4, !dbg !3985
  %tobool32.i.i133 = icmp ne i32 %97, 0, !dbg !3985
  %lnot33.i.i134 = xor i1 %tobool32.i.i133, true, !dbg !3985
  %lnot.ext36.i.i135 = zext i1 %tobool32.i.i133 to i32, !dbg !3985
  %conv37.i.i136 = sext i32 %lnot.ext36.i.i135 to i64, !dbg !3985
  store i64 %conv37.i.i136, i64* %tmp.i.i104, align 8, !dbg !4233
  %98 = load i64, i64* %tmp.i.i104, align 8, !dbg !3985
  %tobool38.i.i137 = icmp ne i64 %98, 0, !dbg !4237
  br i1 %tobool38.i.i137, label %if.then39.i.i139, label %if.end40.i.i141, !dbg !4238

if.then39.i.i139:                                 ; preds = %if.end31.i.i138
  store i1 false, i1* %retval.i.i98, align 1, !dbg !4239
  br label %check_copy_size.exit.i145, !dbg !4239

if.end40.i.i141:                                  ; preds = %if.end31.i.i138
  %99 = load i8*, i8** %addr.addr.i.i99, align 8, !dbg !4240
  %100 = load i64, i64* %bytes.addr.i.i100, align 8, !dbg !4241
  %101 = load i8, i8* %is_source.addr.i.i101, align 1, !dbg !4242
  %tobool41.i.i140 = trunc i8 %101 to i1, !dbg !4242
  call void @check_object_size(i8* %99, i64 %100, i1 zeroext %tobool41.i.i140) #9, !dbg !4243
  store i1 true, i1* %retval.i.i98, align 1, !dbg !4244
  br label %check_copy_size.exit.i145, !dbg !4244

check_copy_size.exit.i145:                        ; preds = %if.end40.i.i141, %if.then39.i.i139, %if.end9.i.i123
  %102 = load i1, i1* %retval.i.i98, align 1, !dbg !4245
  %lnot.i142 = xor i1 %102, true, !dbg !4218
  %lnot.ext.i143 = zext i1 %102 to i32, !dbg !4218
  %conv.i144 = sext i32 %lnot.ext.i143 to i64, !dbg !4218
  br i1 %102, label %if.then.i147, label %copy_to_user.exit148, !dbg !4246

if.then.i147:                                     ; preds = %check_copy_size.exit.i145
  %103 = load i8*, i8** %to.addr.i105, align 8, !dbg !4247
  %104 = load i8*, i8** %from.addr.i106, align 8, !dbg !4248
  %105 = load i64, i64* %n.addr.i107, align 8, !dbg !4249
  %call2.i146 = call i64 @_copy_to_user(i8* %103, i8* %104, i64 %105) #9, !dbg !4250
  store i64 %call2.i146, i64* %n.addr.i107, align 8, !dbg !4251
  br label %copy_to_user.exit148, !dbg !4252

copy_to_user.exit148:                             ; preds = %check_copy_size.exit.i145, %if.then.i147
  %106 = load i64, i64* %n.addr.i107, align 8, !dbg !4253
  %tobool43 = icmp ne i64 %106, 0, !dbg !4254
  br i1 %tobool43, label %if.then44, label %if.else45, !dbg !4255

if.then44:                                        ; preds = %copy_to_user.exit148
  store i32 -14, i32* %ret, align 4, !dbg !4256
  br label %if.end46, !dbg !4257

if.else45:                                        ; preds = %copy_to_user.exit148
  store i32 0, i32* %ret, align 4, !dbg !4258
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  br label %out, !dbg !4259

out:                                              ; preds = %if.end46, %if.then38
  call void @llvm.dbg.label(metadata !4260), !dbg !4261
  %107 = load %struct.sync_fence_info*, %struct.sync_fence_info** %fence_info, align 8, !dbg !4262
  %108 = bitcast %struct.sync_fence_info* %107 to i8*, !dbg !4262
  call void @kfree(i8* %108) #6, !dbg !4263
  %109 = load i32, i32* %ret, align 4, !dbg !4264
  %conv47 = sext i32 %109 to i64, !dbg !4264
  store i64 %conv47, i64* %retval, align 8, !dbg !4265
  br label %return, !dbg !4265

return:                                           ; preds = %out, %if.then19, %if.then13, %if.then3, %if.then
  %110 = load i64, i64* %retval, align 8, !dbg !4266
  ret i64 %110, !dbg !4266
}

; Function Attrs: noredzone
declare dso_local i32 @get_unused_fd_flags(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sync_file* @sync_file_merge(i8* %name, %struct.sync_file* %a, %struct.sync_file* %b) #0 !dbg !4267 {
entry:
  %retval = alloca %struct.sync_file*, align 8
  %name.addr = alloca i8*, align 8
  %a.addr = alloca %struct.sync_file*, align 8
  %b.addr = alloca %struct.sync_file*, align 8
  %sync_file = alloca %struct.sync_file*, align 8
  %fences = alloca %struct.dma_fence**, align 8
  %nfences = alloca %struct.dma_fence**, align 8
  %a_fences = alloca %struct.dma_fence**, align 8
  %b_fences = alloca %struct.dma_fence**, align 8
  %i = alloca i32, align 4
  %i_a = alloca i32, align 4
  %i_b = alloca i32, align 4
  %num_fences = alloca i32, align 4
  %a_num_fences = alloca i32, align 4
  %b_num_fences = alloca i32, align 4
  %pt_a = alloca %struct.dma_fence*, align 8
  %pt_b = alloca %struct.dma_fence*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4270, metadata !DIExpression()), !dbg !4271
  store %struct.sync_file* %a, %struct.sync_file** %a.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %a.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  store %struct.sync_file* %b, %struct.sync_file** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %b.addr, metadata !4274, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file, metadata !4276, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fences, metadata !4278, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %nfences, metadata !4280, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %a_fences, metadata !4282, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %b_fences, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4286, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.declare(metadata i32* %i_a, metadata !4288, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.declare(metadata i32* %i_b, metadata !4290, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.declare(metadata i32* %num_fences, metadata !4292, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.declare(metadata i32* %a_num_fences, metadata !4294, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.declare(metadata i32* %b_num_fences, metadata !4296, metadata !DIExpression()), !dbg !4297
  %call = call %struct.sync_file* @sync_file_alloc() #6, !dbg !4298
  store %struct.sync_file* %call, %struct.sync_file** %sync_file, align 8, !dbg !4299
  %0 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !4300
  %tobool = icmp ne %struct.sync_file* %0, null, !dbg !4300
  br i1 %tobool, label %if.end, label %if.then, !dbg !4302

if.then:                                          ; preds = %entry
  store %struct.sync_file* null, %struct.sync_file** %retval, align 8, !dbg !4303
  br label %return, !dbg !4303

if.end:                                           ; preds = %entry
  %1 = load %struct.sync_file*, %struct.sync_file** %a.addr, align 8, !dbg !4304
  %call1 = call %struct.dma_fence** @get_fences(%struct.sync_file* %1, i32* %a_num_fences) #6, !dbg !4305
  store %struct.dma_fence** %call1, %struct.dma_fence*** %a_fences, align 8, !dbg !4306
  %2 = load %struct.sync_file*, %struct.sync_file** %b.addr, align 8, !dbg !4307
  %call2 = call %struct.dma_fence** @get_fences(%struct.sync_file* %2, i32* %b_num_fences) #6, !dbg !4308
  store %struct.dma_fence** %call2, %struct.dma_fence*** %b_fences, align 8, !dbg !4309
  %3 = load i32, i32* %a_num_fences, align 4, !dbg !4310
  %4 = load i32, i32* %b_num_fences, align 4, !dbg !4312
  %sub = sub i32 2147483647, %4, !dbg !4313
  %cmp = icmp sgt i32 %3, %sub, !dbg !4314
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4315

if.then3:                                         ; preds = %if.end
  br label %err, !dbg !4316

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %a_num_fences, align 4, !dbg !4317
  %6 = load i32, i32* %b_num_fences, align 4, !dbg !4318
  %add = add i32 %5, %6, !dbg !4319
  store i32 %add, i32* %num_fences, align 4, !dbg !4320
  %7 = load i32, i32* %num_fences, align 4, !dbg !4321
  %conv = sext i32 %7 to i64, !dbg !4321
  %call5 = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #6, !dbg !4322
  %8 = bitcast i8* %call5 to %struct.dma_fence**, !dbg !4322
  store %struct.dma_fence** %8, %struct.dma_fence*** %fences, align 8, !dbg !4323
  %9 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4324
  %tobool6 = icmp ne %struct.dma_fence** %9, null, !dbg !4324
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4326

if.then7:                                         ; preds = %if.end4
  br label %err, !dbg !4327

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %i_b, align 4, !dbg !4328
  store i32 0, i32* %i_a, align 4, !dbg !4330
  store i32 0, i32* %i, align 4, !dbg !4331
  br label %for.cond, !dbg !4332

for.cond:                                         ; preds = %if.end34, %if.end8
  %10 = load i32, i32* %i_a, align 4, !dbg !4333
  %11 = load i32, i32* %a_num_fences, align 4, !dbg !4335
  %cmp9 = icmp slt i32 %10, %11, !dbg !4336
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !4337

land.rhs:                                         ; preds = %for.cond
  %12 = load i32, i32* %i_b, align 4, !dbg !4338
  %13 = load i32, i32* %b_num_fences, align 4, !dbg !4339
  %cmp11 = icmp slt i32 %12, %13, !dbg !4340
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ], !dbg !4341
  br i1 %14, label %for.body, label %for.end, !dbg !4342

for.body:                                         ; preds = %land.end
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %pt_a, metadata !4343, metadata !DIExpression()), !dbg !4345
  %15 = load %struct.dma_fence**, %struct.dma_fence*** %a_fences, align 8, !dbg !4346
  %16 = load i32, i32* %i_a, align 4, !dbg !4347
  %idxprom = sext i32 %16 to i64, !dbg !4346
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %15, i64 %idxprom, !dbg !4346
  %17 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !4346
  store %struct.dma_fence* %17, %struct.dma_fence** %pt_a, align 8, !dbg !4345
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %pt_b, metadata !4348, metadata !DIExpression()), !dbg !4349
  %18 = load %struct.dma_fence**, %struct.dma_fence*** %b_fences, align 8, !dbg !4350
  %19 = load i32, i32* %i_b, align 4, !dbg !4351
  %idxprom13 = sext i32 %19 to i64, !dbg !4350
  %arrayidx14 = getelementptr %struct.dma_fence*, %struct.dma_fence** %18, i64 %idxprom13, !dbg !4350
  %20 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx14, align 8, !dbg !4350
  store %struct.dma_fence* %20, %struct.dma_fence** %pt_b, align 8, !dbg !4349
  %21 = load %struct.dma_fence*, %struct.dma_fence** %pt_a, align 8, !dbg !4352
  %context = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %21, i32 0, i32 3, !dbg !4354
  %22 = load i64, i64* %context, align 8, !dbg !4354
  %23 = load %struct.dma_fence*, %struct.dma_fence** %pt_b, align 8, !dbg !4355
  %context15 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %23, i32 0, i32 3, !dbg !4356
  %24 = load i64, i64* %context15, align 8, !dbg !4356
  %cmp16 = icmp ult i64 %22, %24, !dbg !4357
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !4358

if.then18:                                        ; preds = %for.body
  %25 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4359
  %26 = load %struct.dma_fence*, %struct.dma_fence** %pt_a, align 8, !dbg !4361
  call void @add_fence(%struct.dma_fence** %25, i32* %i, %struct.dma_fence* %26) #6, !dbg !4362
  %27 = load i32, i32* %i_a, align 4, !dbg !4363
  %inc = add i32 %27, 1, !dbg !4363
  store i32 %inc, i32* %i_a, align 4, !dbg !4363
  br label %if.end34, !dbg !4364

if.else:                                          ; preds = %for.body
  %28 = load %struct.dma_fence*, %struct.dma_fence** %pt_a, align 8, !dbg !4365
  %context19 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %28, i32 0, i32 3, !dbg !4367
  %29 = load i64, i64* %context19, align 8, !dbg !4367
  %30 = load %struct.dma_fence*, %struct.dma_fence** %pt_b, align 8, !dbg !4368
  %context20 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %30, i32 0, i32 3, !dbg !4369
  %31 = load i64, i64* %context20, align 8, !dbg !4369
  %cmp21 = icmp ugt i64 %29, %31, !dbg !4370
  br i1 %cmp21, label %if.then23, label %if.else25, !dbg !4371

if.then23:                                        ; preds = %if.else
  %32 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4372
  %33 = load %struct.dma_fence*, %struct.dma_fence** %pt_b, align 8, !dbg !4374
  call void @add_fence(%struct.dma_fence** %32, i32* %i, %struct.dma_fence* %33) #6, !dbg !4375
  %34 = load i32, i32* %i_b, align 4, !dbg !4376
  %inc24 = add i32 %34, 1, !dbg !4376
  store i32 %inc24, i32* %i_b, align 4, !dbg !4376
  br label %if.end33, !dbg !4377

if.else25:                                        ; preds = %if.else
  %35 = load %struct.dma_fence*, %struct.dma_fence** %pt_a, align 8, !dbg !4378
  %seqno = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %35, i32 0, i32 4, !dbg !4381
  %36 = load i64, i64* %seqno, align 8, !dbg !4381
  %37 = load %struct.dma_fence*, %struct.dma_fence** %pt_b, align 8, !dbg !4382
  %seqno26 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %37, i32 0, i32 4, !dbg !4383
  %38 = load i64, i64* %seqno26, align 8, !dbg !4383
  %39 = load %struct.dma_fence*, %struct.dma_fence** %pt_a, align 8, !dbg !4384
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %39, i32 0, i32 1, !dbg !4385
  %40 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !4385
  %call27 = call zeroext i1 @__dma_fence_is_later(i64 %36, i64 %38, %struct.dma_fence_ops* %40) #6, !dbg !4386
  br i1 %call27, label %if.then28, label %if.else29, !dbg !4387

if.then28:                                        ; preds = %if.else25
  %41 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4388
  %42 = load %struct.dma_fence*, %struct.dma_fence** %pt_a, align 8, !dbg !4389
  call void @add_fence(%struct.dma_fence** %41, i32* %i, %struct.dma_fence* %42) #6, !dbg !4390
  br label %if.end30, !dbg !4390

if.else29:                                        ; preds = %if.else25
  %43 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4391
  %44 = load %struct.dma_fence*, %struct.dma_fence** %pt_b, align 8, !dbg !4392
  call void @add_fence(%struct.dma_fence** %43, i32* %i, %struct.dma_fence* %44) #6, !dbg !4393
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  %45 = load i32, i32* %i_a, align 4, !dbg !4394
  %inc31 = add i32 %45, 1, !dbg !4394
  store i32 %inc31, i32* %i_a, align 4, !dbg !4394
  %46 = load i32, i32* %i_b, align 4, !dbg !4395
  %inc32 = add i32 %46, 1, !dbg !4395
  store i32 %inc32, i32* %i_b, align 4, !dbg !4395
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.then23
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then18
  br label %for.cond, !dbg !4396, !llvm.loop !4397

for.end:                                          ; preds = %land.end
  br label %for.cond35, !dbg !4399

for.cond35:                                       ; preds = %for.inc, %for.end
  %47 = load i32, i32* %i_a, align 4, !dbg !4400
  %48 = load i32, i32* %a_num_fences, align 4, !dbg !4403
  %cmp36 = icmp slt i32 %47, %48, !dbg !4404
  br i1 %cmp36, label %for.body38, label %for.end42, !dbg !4405

for.body38:                                       ; preds = %for.cond35
  %49 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4406
  %50 = load %struct.dma_fence**, %struct.dma_fence*** %a_fences, align 8, !dbg !4407
  %51 = load i32, i32* %i_a, align 4, !dbg !4408
  %idxprom39 = sext i32 %51 to i64, !dbg !4407
  %arrayidx40 = getelementptr %struct.dma_fence*, %struct.dma_fence** %50, i64 %idxprom39, !dbg !4407
  %52 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx40, align 8, !dbg !4407
  call void @add_fence(%struct.dma_fence** %49, i32* %i, %struct.dma_fence* %52) #6, !dbg !4409
  br label %for.inc, !dbg !4409

for.inc:                                          ; preds = %for.body38
  %53 = load i32, i32* %i_a, align 4, !dbg !4410
  %inc41 = add i32 %53, 1, !dbg !4410
  store i32 %inc41, i32* %i_a, align 4, !dbg !4410
  br label %for.cond35, !dbg !4411, !llvm.loop !4412

for.end42:                                        ; preds = %for.cond35
  br label %for.cond43, !dbg !4414

for.cond43:                                       ; preds = %for.inc49, %for.end42
  %54 = load i32, i32* %i_b, align 4, !dbg !4415
  %55 = load i32, i32* %b_num_fences, align 4, !dbg !4418
  %cmp44 = icmp slt i32 %54, %55, !dbg !4419
  br i1 %cmp44, label %for.body46, label %for.end51, !dbg !4420

for.body46:                                       ; preds = %for.cond43
  %56 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4421
  %57 = load %struct.dma_fence**, %struct.dma_fence*** %b_fences, align 8, !dbg !4422
  %58 = load i32, i32* %i_b, align 4, !dbg !4423
  %idxprom47 = sext i32 %58 to i64, !dbg !4422
  %arrayidx48 = getelementptr %struct.dma_fence*, %struct.dma_fence** %57, i64 %idxprom47, !dbg !4422
  %59 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx48, align 8, !dbg !4422
  call void @add_fence(%struct.dma_fence** %56, i32* %i, %struct.dma_fence* %59) #6, !dbg !4424
  br label %for.inc49, !dbg !4424

for.inc49:                                        ; preds = %for.body46
  %60 = load i32, i32* %i_b, align 4, !dbg !4425
  %inc50 = add i32 %60, 1, !dbg !4425
  store i32 %inc50, i32* %i_b, align 4, !dbg !4425
  br label %for.cond43, !dbg !4426, !llvm.loop !4427

for.end51:                                        ; preds = %for.cond43
  %61 = load i32, i32* %i, align 4, !dbg !4429
  %cmp52 = icmp eq i32 %61, 0, !dbg !4431
  br i1 %cmp52, label %if.then54, label %if.end60, !dbg !4432

if.then54:                                        ; preds = %for.end51
  %62 = load %struct.dma_fence**, %struct.dma_fence*** %a_fences, align 8, !dbg !4433
  %arrayidx55 = getelementptr %struct.dma_fence*, %struct.dma_fence** %62, i64 0, !dbg !4433
  %63 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx55, align 8, !dbg !4433
  %call56 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %63) #6, !dbg !4434
  %64 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4435
  %65 = load i32, i32* %i, align 4, !dbg !4436
  %inc57 = add i32 %65, 1, !dbg !4436
  store i32 %inc57, i32* %i, align 4, !dbg !4436
  %idxprom58 = sext i32 %65 to i64, !dbg !4435
  %arrayidx59 = getelementptr %struct.dma_fence*, %struct.dma_fence** %64, i64 %idxprom58, !dbg !4435
  store %struct.dma_fence* %call56, %struct.dma_fence** %arrayidx59, align 8, !dbg !4437
  br label %if.end60, !dbg !4435

if.end60:                                         ; preds = %if.then54, %for.end51
  %66 = load i32, i32* %num_fences, align 4, !dbg !4438
  %67 = load i32, i32* %i, align 4, !dbg !4440
  %cmp61 = icmp sgt i32 %66, %67, !dbg !4441
  br i1 %cmp61, label %if.then63, label %if.end69, !dbg !4442

if.then63:                                        ; preds = %if.end60
  %68 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4443
  %69 = bitcast %struct.dma_fence** %68 to i8*, !dbg !4443
  %70 = load i32, i32* %i, align 4, !dbg !4445
  %conv64 = sext i32 %70 to i64, !dbg !4445
  %mul = mul i64 %conv64, 8, !dbg !4446
  %call65 = call i8* @krealloc(i8* %69, i64 %mul, i32 3264) #6, !dbg !4447
  %71 = bitcast i8* %call65 to %struct.dma_fence**, !dbg !4447
  store %struct.dma_fence** %71, %struct.dma_fence*** %nfences, align 8, !dbg !4448
  %72 = load %struct.dma_fence**, %struct.dma_fence*** %nfences, align 8, !dbg !4449
  %tobool66 = icmp ne %struct.dma_fence** %72, null, !dbg !4449
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !4451

if.then67:                                        ; preds = %if.then63
  br label %err, !dbg !4452

if.end68:                                         ; preds = %if.then63
  %73 = load %struct.dma_fence**, %struct.dma_fence*** %nfences, align 8, !dbg !4453
  store %struct.dma_fence** %73, %struct.dma_fence*** %fences, align 8, !dbg !4454
  br label %if.end69, !dbg !4455

if.end69:                                         ; preds = %if.end68, %if.end60
  %74 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !4456
  %75 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4458
  %76 = load i32, i32* %i, align 4, !dbg !4459
  %call70 = call i32 @sync_file_set_fence(%struct.sync_file* %74, %struct.dma_fence** %75, i32 %76) #6, !dbg !4460
  %cmp71 = icmp slt i32 %call70, 0, !dbg !4461
  br i1 %cmp71, label %if.then73, label %if.end74, !dbg !4462

if.then73:                                        ; preds = %if.end69
  %77 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4463
  %78 = bitcast %struct.dma_fence** %77 to i8*, !dbg !4463
  call void @kfree(i8* %78) #6, !dbg !4465
  br label %err, !dbg !4466

if.end74:                                         ; preds = %if.end69
  %79 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !4467
  %user_name = getelementptr inbounds %struct.sync_file, %struct.sync_file* %79, i32 0, i32 1, !dbg !4468
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %user_name, i64 0, i64 0, !dbg !4467
  %80 = load i8*, i8** %name.addr, align 8, !dbg !4469
  %call75 = call i64 @strlcpy(i8* %arraydecay, i8* %80, i64 32) #6, !dbg !4470
  %81 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !4471
  store %struct.sync_file* %81, %struct.sync_file** %retval, align 8, !dbg !4472
  br label %return, !dbg !4472

err:                                              ; preds = %if.then73, %if.then67, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !4473), !dbg !4474
  %82 = load %struct.sync_file*, %struct.sync_file** %sync_file, align 8, !dbg !4475
  %file = getelementptr inbounds %struct.sync_file, %struct.sync_file* %82, i32 0, i32 0, !dbg !4476
  %83 = load %struct.file*, %struct.file** %file, align 8, !dbg !4476
  call void @fput(%struct.file* %83) #6, !dbg !4477
  store %struct.sync_file* null, %struct.sync_file** %retval, align 8, !dbg !4478
  br label %return, !dbg !4478

return:                                           ; preds = %err, %if.end74, %if.then
  %84 = load %struct.sync_file*, %struct.sync_file** %retval, align 8, !dbg !4479
  ret %struct.sync_file* %84, !dbg !4479
}

; Function Attrs: noredzone
declare dso_local void @fd_install(i32, %struct.file*) #2

; Function Attrs: noredzone
declare dso_local void @put_unused_fd(i32) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !4480 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4487, metadata !DIExpression()), !dbg !4489
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4489
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !4490
  %tobool = icmp ne i32 %0, 0, !dbg !4490
  %lnot = xor i1 %tobool, true, !dbg !4490
  %lnot1 = xor i1 %lnot, true, !dbg !4490
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4490
  %conv = sext i32 %lnot.ext to i64, !dbg !4490
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4490
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4489

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4490

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !4492

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !4494

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !4492
  %2 = load i64, i64* %count.addr, align 8, !dbg !4492
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %1, i64 %2) #6, !dbg !4492
  br label %do.body4, !dbg !4492

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !4496

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4498

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4496

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 134, i32 2313, i64 12) #7, !dbg !4500, !srcloc !4502
  br label %do.end8, !dbg !4500

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #7, !dbg !4503, !srcloc !4505
  br label %do.body9, !dbg !4496

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !4506

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !4496

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !4492

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4508

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4492

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4492

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4489
  %tobool15 = icmp ne i32 %3, 0, !dbg !4489
  %lnot16 = xor i1 %tobool15, true, !dbg !4489
  %lnot18 = xor i1 %lnot16, true, !dbg !4489
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4489
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4489
  store i64 %conv20, i64* %tmp, align 8, !dbg !4490
  %4 = load i64, i64* %tmp, align 8, !dbg !4489
  ret void, !dbg !4510
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !4511 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  ret void, !dbg !4520
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence** @get_fences(%struct.sync_file* %sync_file, i32* %num_fences) #0 !dbg !4521 {
entry:
  %retval = alloca %struct.dma_fence**, align 8
  %sync_file.addr = alloca %struct.sync_file*, align 8
  %num_fences.addr = alloca i32*, align 8
  %array = alloca %struct.dma_fence_array*, align 8
  store %struct.sync_file* %sync_file, %struct.sync_file** %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file.addr, metadata !4524, metadata !DIExpression()), !dbg !4525
  store i32* %num_fences, i32** %num_fences.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %num_fences.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  %0 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4528
  %fence = getelementptr inbounds %struct.sync_file, %struct.sync_file* %0, i32 0, i32 4, !dbg !4530
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence, align 8, !dbg !4530
  %call = call zeroext i1 @dma_fence_is_array(%struct.dma_fence* %1) #6, !dbg !4531
  br i1 %call, label %if.then, label %if.end, !dbg !4532

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !4533, metadata !DIExpression()), !dbg !4535
  %2 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4536
  %fence1 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %2, i32 0, i32 4, !dbg !4537
  %3 = load %struct.dma_fence*, %struct.dma_fence** %fence1, align 8, !dbg !4537
  %call2 = call %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %3) #6, !dbg !4538
  store %struct.dma_fence_array* %call2, %struct.dma_fence_array** %array, align 8, !dbg !4535
  %4 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !4539
  %num_fences3 = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %4, i32 0, i32 2, !dbg !4540
  %5 = load i32, i32* %num_fences3, align 8, !dbg !4540
  %6 = load i32*, i32** %num_fences.addr, align 8, !dbg !4541
  store i32 %5, i32* %6, align 4, !dbg !4542
  %7 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !4543
  %fences = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %7, i32 0, i32 4, !dbg !4544
  %8 = load %struct.dma_fence**, %struct.dma_fence*** %fences, align 8, !dbg !4544
  store %struct.dma_fence** %8, %struct.dma_fence*** %retval, align 8, !dbg !4545
  br label %return, !dbg !4545

if.end:                                           ; preds = %entry
  %9 = load i32*, i32** %num_fences.addr, align 8, !dbg !4546
  store i32 1, i32* %9, align 4, !dbg !4547
  %10 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4548
  %fence4 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %10, i32 0, i32 4, !dbg !4549
  store %struct.dma_fence** %fence4, %struct.dma_fence*** %retval, align 8, !dbg !4550
  br label %return, !dbg !4550

return:                                           ; preds = %if.end, %if.then
  %11 = load %struct.dma_fence**, %struct.dma_fence*** %retval, align 8, !dbg !4551
  ret %struct.dma_fence** %11, !dbg !4551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4552 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  %0 = load i64, i64* %n.addr, align 8, !dbg !4561
  %1 = load i64, i64* %size.addr, align 8, !dbg !4562
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4563
  %or = or i32 %2, 256, !dbg !4564
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #6, !dbg !4565
  ret i8* %call, !dbg !4566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @add_fence(%struct.dma_fence** %fences, i32* %i, %struct.dma_fence* %fence) #0 !dbg !4567 {
entry:
  %fences.addr = alloca %struct.dma_fence**, align 8
  %i.addr = alloca i32*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence** %fences, %struct.dma_fence*** %fences.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fences.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !4574, metadata !DIExpression()), !dbg !4575
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4576
  %1 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !4577
  %2 = load i32*, i32** %i.addr, align 8, !dbg !4578
  %3 = load i32, i32* %2, align 4, !dbg !4579
  %idxprom = sext i32 %3 to i64, !dbg !4577
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %1, i64 %idxprom, !dbg !4577
  store %struct.dma_fence* %0, %struct.dma_fence** %arrayidx, align 8, !dbg !4580
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4581
  %call = call zeroext i1 @dma_fence_is_signaled(%struct.dma_fence* %4) #6, !dbg !4583
  br i1 %call, label %if.end, label %if.then, !dbg !4584

if.then:                                          ; preds = %entry
  %5 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4585
  %call1 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %5) #6, !dbg !4587
  %6 = load i32*, i32** %i.addr, align 8, !dbg !4588
  %7 = load i32, i32* %6, align 4, !dbg !4589
  %inc = add i32 %7, 1, !dbg !4589
  store i32 %inc, i32* %6, align 4, !dbg !4589
  br label %if.end, !dbg !4590

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__dma_fence_is_later(i64 %f1, i64 %f2, %struct.dma_fence_ops* %ops) #0 !dbg !4592 {
entry:
  %retval = alloca i1, align 1
  %f1.addr = alloca i64, align 8
  %f2.addr = alloca i64, align 8
  %ops.addr = alloca %struct.dma_fence_ops*, align 8
  store i64 %f1, i64* %f1.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f1.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  store i64 %f2, i64* %f2.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f2.addr, metadata !4597, metadata !DIExpression()), !dbg !4598
  store %struct.dma_fence_ops* %ops, %struct.dma_fence_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence_ops** %ops.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops.addr, align 8, !dbg !4601
  %use_64bit_seqno = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %0, i32 0, i32 0, !dbg !4603
  %1 = load i8, i8* %use_64bit_seqno, align 8, !dbg !4603
  %tobool = trunc i8 %1 to i1, !dbg !4603
  br i1 %tobool, label %if.then, label %if.end, !dbg !4604

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %f1.addr, align 8, !dbg !4605
  %3 = load i64, i64* %f2.addr, align 8, !dbg !4606
  %cmp = icmp ugt i64 %2, %3, !dbg !4607
  store i1 %cmp, i1* %retval, align 1, !dbg !4608
  br label %return, !dbg !4608

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %f1.addr, align 8, !dbg !4609
  %and = and i64 %4, 4294967295, !dbg !4609
  %conv = trunc i64 %and to i32, !dbg !4609
  %5 = load i64, i64* %f2.addr, align 8, !dbg !4610
  %and1 = and i64 %5, 4294967295, !dbg !4610
  %conv2 = trunc i64 %and1 to i32, !dbg !4610
  %sub = sub i32 %conv, %conv2, !dbg !4611
  %cmp3 = icmp sgt i32 %sub, 0, !dbg !4612
  store i1 %cmp3, i1* %retval, align 1, !dbg !4613
  br label %return, !dbg !4613

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !4614
  ret i1 %6, !dbg !4614
}

; Function Attrs: noredzone
declare dso_local i8* @krealloc(i8*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sync_file_set_fence(%struct.sync_file* %sync_file, %struct.dma_fence** %fences, i32 %num_fences) #0 !dbg !4615 {
entry:
  %retval = alloca i32, align 4
  %sync_file.addr = alloca %struct.sync_file*, align 8
  %fences.addr = alloca %struct.dma_fence**, align 8
  %num_fences.addr = alloca i32, align 4
  %array = alloca %struct.dma_fence_array*, align 8
  store %struct.sync_file* %sync_file, %struct.sync_file** %sync_file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_file** %sync_file.addr, metadata !4618, metadata !DIExpression()), !dbg !4619
  store %struct.dma_fence** %fences, %struct.dma_fence*** %fences.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence*** %fences.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i32 %num_fences, i32* %num_fences.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num_fences.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.declare(metadata %struct.dma_fence_array** %array, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load i32, i32* %num_fences.addr, align 4, !dbg !4626
  %cmp = icmp eq i32 %0, 1, !dbg !4628
  br i1 %cmp, label %if.then, label %if.else, !dbg !4629

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !4630
  %arrayidx = getelementptr %struct.dma_fence*, %struct.dma_fence** %1, i64 0, !dbg !4630
  %2 = load %struct.dma_fence*, %struct.dma_fence** %arrayidx, align 8, !dbg !4630
  %3 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4632
  %fence = getelementptr inbounds %struct.sync_file, %struct.sync_file* %3, i32 0, i32 4, !dbg !4633
  store %struct.dma_fence* %2, %struct.dma_fence** %fence, align 8, !dbg !4634
  %4 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !4635
  %5 = bitcast %struct.dma_fence** %4 to i8*, !dbg !4635
  call void @kfree(i8* %5) #6, !dbg !4636
  br label %if.end4, !dbg !4637

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %num_fences.addr, align 4, !dbg !4638
  %7 = load %struct.dma_fence**, %struct.dma_fence*** %fences.addr, align 8, !dbg !4640
  %call = call i64 @dma_fence_context_alloc(i32 1) #6, !dbg !4641
  %call1 = call %struct.dma_fence_array* @dma_fence_array_create(i32 %6, %struct.dma_fence** %7, i64 %call, i32 1, i1 zeroext false) #6, !dbg !4642
  store %struct.dma_fence_array* %call1, %struct.dma_fence_array** %array, align 8, !dbg !4643
  %8 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !4644
  %tobool = icmp ne %struct.dma_fence_array* %8, null, !dbg !4644
  br i1 %tobool, label %if.end, label %if.then2, !dbg !4646

if.then2:                                         ; preds = %if.else
  store i32 -12, i32* %retval, align 4, !dbg !4647
  br label %return, !dbg !4647

if.end:                                           ; preds = %if.else
  %9 = load %struct.dma_fence_array*, %struct.dma_fence_array** %array, align 8, !dbg !4648
  %base = getelementptr inbounds %struct.dma_fence_array, %struct.dma_fence_array* %9, i32 0, i32 0, !dbg !4649
  %10 = load %struct.sync_file*, %struct.sync_file** %sync_file.addr, align 8, !dbg !4650
  %fence3 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %10, i32 0, i32 4, !dbg !4651
  store %struct.dma_fence* %base, %struct.dma_fence** %fence3, align 8, !dbg !4652
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  store i32 0, i32* %retval, align 4, !dbg !4653
  br label %return, !dbg !4653

return:                                           ; preds = %if.end4, %if.then2
  %11 = load i32, i32* %retval, align 4, !dbg !4654
  ret i32 %11, !dbg !4654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @dma_fence_is_array(%struct.dma_fence* %fence) #0 !dbg !4655 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4658
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 1, !dbg !4659
  %1 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !4659
  %cmp = icmp eq %struct.dma_fence_ops* %1, @dma_fence_array_ops, !dbg !4660
  ret i1 %cmp, !dbg !4661
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dma_fence_array* @to_dma_fence_array(%struct.dma_fence* %fence) #0 !dbg !4662 {
entry:
  %retval = alloca %struct.dma_fence_array*, align 8
  %fence.addr = alloca %struct.dma_fence*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dma_fence_array*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4667
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %0, i32 0, i32 1, !dbg !4669
  %1 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !4669
  %cmp = icmp ne %struct.dma_fence_ops* %1, @dma_fence_array_ops, !dbg !4670
  br i1 %cmp, label %if.then, label %if.end, !dbg !4671

if.then:                                          ; preds = %entry
  store %struct.dma_fence_array* null, %struct.dma_fence_array** %retval, align 8, !dbg !4672
  br label %return, !dbg !4672

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4673, metadata !DIExpression()), !dbg !4675
  %2 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4675
  %3 = bitcast %struct.dma_fence* %2 to i8*, !dbg !4675
  store i8* %3, i8** %__mptr, align 8, !dbg !4675
  br label %do.body, !dbg !4675

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4676

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4675
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4675
  %5 = bitcast i8* %add.ptr to %struct.dma_fence_array*, !dbg !4675
  store %struct.dma_fence_array* %5, %struct.dma_fence_array** %tmp, align 8, !dbg !4676
  %6 = load %struct.dma_fence_array*, %struct.dma_fence_array** %tmp, align 8, !dbg !4675
  store %struct.dma_fence_array* %6, %struct.dma_fence_array** %retval, align 8, !dbg !4678
  br label %return, !dbg !4678

return:                                           ; preds = %do.end, %if.then
  %7 = load %struct.dma_fence_array*, %struct.dma_fence_array** %retval, align 8, !dbg !4679
  ret %struct.dma_fence_array* %7, !dbg !4679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4680 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3080, metadata !DIExpression()), !dbg !4681
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3090, metadata !DIExpression()), !dbg !4685
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3092, metadata !DIExpression()), !dbg !4686
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3094, metadata !DIExpression()), !dbg !4687
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3096, metadata !DIExpression()), !dbg !4688
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3102, metadata !DIExpression()), !dbg !4690
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3108, metadata !DIExpression()), !dbg !4692
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3117, metadata !DIExpression()), !dbg !4695
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3119, metadata !DIExpression()), !dbg !4696
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3121, metadata !DIExpression()), !dbg !4697
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3123, metadata !DIExpression()), !dbg !4698
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3125, metadata !DIExpression()), !dbg !4699
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3127, metadata !DIExpression()), !dbg !4700
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3129, metadata !DIExpression()), !dbg !4701
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3131, metadata !DIExpression()), !dbg !4702
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4705, metadata !DIExpression()), !dbg !4706
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4709, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4711, metadata !DIExpression()), !dbg !4714
  %0 = load i64, i64* %n.addr, align 8, !dbg !4714
  store i64 %0, i64* %__a, align 8, !dbg !4714
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4715, metadata !DIExpression()), !dbg !4714
  %1 = load i64, i64* %size.addr, align 8, !dbg !4714
  store i64 %1, i64* %__b, align 8, !dbg !4714
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4716, metadata !DIExpression()), !dbg !4714
  store i64* %bytes, i64** %__d, align 8, !dbg !4714
  %cmp = icmp eq i64* %__a, %__b, !dbg !4714
  %conv = zext i1 %cmp to i32, !dbg !4714
  %2 = load i64*, i64** %__d, align 8, !dbg !4714
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4714
  %conv2 = zext i1 %cmp1 to i32, !dbg !4714
  %3 = load i64, i64* %__a, align 8, !dbg !4714
  %4 = load i64, i64* %__b, align 8, !dbg !4714
  %5 = load i64*, i64** %__d, align 8, !dbg !4714
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4714
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4714
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4714
  store i64 %8, i64* %5, align 8, !dbg !4714
  %frombool = zext i1 %7 to i8, !dbg !4714
  store i8 %frombool, i8* %tmp, align 1, !dbg !4714
  %9 = load i8, i8* %tmp, align 1, !dbg !4714
  %tobool = trunc i8 %9 to i1, !dbg !4714
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !4718
  %lnot = xor i1 %call, true, !dbg !4718
  %lnot3 = xor i1 %lnot, true, !dbg !4718
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4718
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4718
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4718
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4719

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4720
  br label %return, !dbg !4720

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4721
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4722
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4723

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4724
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4725
  br i1 %13, label %if.then6, label %if.end8, !dbg !4726

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4727
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4728
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4729
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !4730
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4731

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4732
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4733
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4734

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4735
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4736
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4737
  %call.i.i = call i32 @get_order(i64 %21) #8, !dbg !4738
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4699
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4739
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4740
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4741
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4742
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4743
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4744
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #9, !dbg !4745
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4745
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4745
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4745
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !4745
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4746
  br label %kmalloc.exit, !dbg !4746

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4747
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4748
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4749

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4750
  br label %kmalloc_index.exit.i, !dbg !4750

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4751
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4752
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4753

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4754
  br label %kmalloc_index.exit.i, !dbg !4754

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4755
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4756
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4757

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4759
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4760

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4763
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4764

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4765
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4766
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4767

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4768
  br label %kmalloc_index.exit.i, !dbg !4768

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4769
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4770
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4771

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4774
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4775

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4778
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4779

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4780
  br label %kmalloc_index.exit.i, !dbg !4780

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4782
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4783

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4784
  br label %kmalloc_index.exit.i, !dbg !4784

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4785
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4786
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4787

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4788
  br label %kmalloc_index.exit.i, !dbg !4788

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4789
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4790
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4791

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4794
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4795

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4796
  br label %kmalloc_index.exit.i, !dbg !4796

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4797
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4798
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4799

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4800
  br label %kmalloc_index.exit.i, !dbg !4800

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4801
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4802
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4803

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4804
  br label %kmalloc_index.exit.i, !dbg !4804

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4805
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4806
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4807

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4808
  br label %kmalloc_index.exit.i, !dbg !4808

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4809
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4810
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4811

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4814
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4815

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4816
  br label %kmalloc_index.exit.i, !dbg !4816

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4817
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4818
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4819

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4820
  br label %kmalloc_index.exit.i, !dbg !4820

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4821
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4822
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4823

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4824
  br label %kmalloc_index.exit.i, !dbg !4824

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4825
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4826
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4827

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4828
  br label %kmalloc_index.exit.i, !dbg !4828

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4829
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4830
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4831

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4834
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4835

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4836
  br label %kmalloc_index.exit.i, !dbg !4836

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4837
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4838
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4839

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4840
  br label %kmalloc_index.exit.i, !dbg !4840

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4841
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4842
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4843

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4844
  br label %kmalloc_index.exit.i, !dbg !4844

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4845
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4846
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4847

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4848
  br label %kmalloc_index.exit.i, !dbg !4848

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4849
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4850
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4851

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4854
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4855

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4856
  br label %kmalloc_index.exit.i, !dbg !4856

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4857
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4858
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4859

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4860
  br label %kmalloc_index.exit.i, !dbg !4860

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4861
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4862
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4863

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4864
  br label %kmalloc_index.exit.i, !dbg !4864

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !4865, !srcloc !3307
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 190) #7, !dbg !4866, !srcloc !3311
  unreachable, !dbg !4867

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4868
  store i32 %59, i32* %index.i, align 4, !dbg !4869
  %60 = load i32, i32* %index.i, align 4, !dbg !4870
  %tobool.i = icmp ne i32 %60, 0, !dbg !4870
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4871

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4872
  br label %kmalloc.exit, !dbg !4872

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4873
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4874
  %and.i.i = and i32 %62, 17, !dbg !4874
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4874
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4874
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4874
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4874
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4875

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4876
  br label %kmalloc_type.exit.i, !dbg !4876

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4877
  %and2.i.i = and i32 %63, 1, !dbg !4878
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4877
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4877
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4877
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4879
  br label %kmalloc_type.exit.i, !dbg !4879

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4880
  %idxprom.i = zext i32 %65 to i64, !dbg !4881
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4881
  %66 = load i32, i32* %index.i, align 4, !dbg !4882
  %idxprom6.i = zext i32 %66 to i64, !dbg !4881
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4881
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4881
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4883
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4884
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4885
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4886
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #9, !dbg !4887
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4887
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4887
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4887
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !4887
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4687
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4888
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4889
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4890
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4891
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #9, !dbg !4892
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4893
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4894
  store i8* %76, i8** %retval.i, align 8, !dbg !4895
  br label %kmalloc.exit, !dbg !4895

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4896
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4897
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #9, !dbg !4898
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4898
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4898
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4898
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !4898
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4899
  br label %kmalloc.exit, !dbg !4899

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4900
  store i8* %79, i8** %retval, align 8, !dbg !4901
  br label %return, !dbg !4901

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4902
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4903
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #6, !dbg !4904
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4904
  %maskedptr = and i64 %ptrint, 7, !dbg !4904
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4904
  call void @llvm.assume(i1 %maskcond), !dbg !4904
  store i8* %call9, i8** %retval, align 8, !dbg !4905
  br label %return, !dbg !4905

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4906
  ret i8* %82, !dbg !4906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4907 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4913
  %tobool = trunc i8 %0 to i1, !dbg !4913
  %lnot = xor i1 %tobool, true, !dbg !4913
  %lnot1 = xor i1 %lnot, true, !dbg !4913
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4913
  %conv = sext i32 %lnot.ext to i64, !dbg !4913
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4913
  ret i1 %tobool2, !dbg !4914
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noredzone
declare dso_local %struct.dma_fence_array* @dma_fence_array_create(i32, %struct.dma_fence**, i64, i32, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i64 @dma_fence_context_alloc(i32) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_fence_get_status(%struct.dma_fence*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sync_fill_fence_info(%struct.dma_fence* %fence, %struct.sync_fence_info* %info) #0 !dbg !4915 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  %info.addr = alloca %struct.sync_fence_info*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  store %struct.sync_fence_info* %info, %struct.sync_fence_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sync_fence_info** %info.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  %0 = load %struct.sync_fence_info*, %struct.sync_fence_info** %info.addr, align 8, !dbg !4922
  %obj_name = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %0, i32 0, i32 0, !dbg !4923
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %obj_name, i64 0, i64 0, !dbg !4922
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4924
  %ops = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 1, !dbg !4925
  %2 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops, align 8, !dbg !4925
  %get_timeline_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %2, i32 0, i32 2, !dbg !4926
  %3 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_timeline_name, align 8, !dbg !4926
  %4 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4927
  %call = call i8* %3(%struct.dma_fence* %4) #6, !dbg !4924
  %call1 = call i64 @strlcpy(i8* %arraydecay, i8* %call, i64 32) #6, !dbg !4928
  %5 = load %struct.sync_fence_info*, %struct.sync_fence_info** %info.addr, align 8, !dbg !4929
  %driver_name = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %5, i32 0, i32 1, !dbg !4930
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %driver_name, i64 0, i64 0, !dbg !4929
  %6 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4931
  %ops3 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %6, i32 0, i32 1, !dbg !4932
  %7 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %ops3, align 8, !dbg !4932
  %get_driver_name = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %7, i32 0, i32 1, !dbg !4933
  %8 = load i8* (%struct.dma_fence*)*, i8* (%struct.dma_fence*)** %get_driver_name, align 8, !dbg !4933
  %9 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4934
  %call4 = call i8* %8(%struct.dma_fence* %9) #6, !dbg !4931
  %call5 = call i64 @strlcpy(i8* %arraydecay2, i8* %call4, i64 32) #6, !dbg !4935
  %10 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4936
  %call6 = call i32 @dma_fence_get_status(%struct.dma_fence* %10) #6, !dbg !4937
  %11 = load %struct.sync_fence_info*, %struct.sync_fence_info** %info.addr, align 8, !dbg !4938
  %status = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %11, i32 0, i32 2, !dbg !4939
  store i32 %call6, i32* %status, align 8, !dbg !4940
  br label %while.cond, !dbg !4941

while.cond:                                       ; preds = %while.body, %entry
  %12 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4942
  %flags = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %12, i32 0, i32 5, !dbg !4943
  %call7 = call zeroext i1 @test_bit(i64 0, i64* %flags) #6, !dbg !4944
  br i1 %call7, label %land.rhs, label %land.end, !dbg !4945

land.rhs:                                         ; preds = %while.cond
  %13 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4946
  %flags8 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %13, i32 0, i32 5, !dbg !4947
  %call9 = call zeroext i1 @test_bit(i64 1, i64* %flags8) #6, !dbg !4948
  %lnot = xor i1 %call9, true, !dbg !4949
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !4950
  br i1 %14, label %while.body, label %while.end, !dbg !4941

while.body:                                       ; preds = %land.end
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4951, !srcloc !4957
  br label %while.cond, !dbg !4941, !llvm.loop !4958

while.end:                                        ; preds = %land.end
  %15 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4960
  %flags10 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %15, i32 0, i32 5, !dbg !4961
  %call11 = call zeroext i1 @test_bit(i64 1, i64* %flags10) #6, !dbg !4962
  br i1 %call11, label %cond.true, label %cond.false, !dbg !4962

cond.true:                                        ; preds = %while.end
  %16 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !4963
  %17 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %16, i32 0, i32 2, !dbg !4964
  %timestamp = bitcast %union.anon.63* %17 to i64*, !dbg !4964
  %18 = load i64, i64* %timestamp, align 8, !dbg !4964
  %call12 = call i64 @ktime_to_ns(i64 %18) #6, !dbg !4965
  br label %cond.end, !dbg !4962

cond.false:                                       ; preds = %while.end
  %call13 = call i64 @ktime_set(i64 0, i64 0) #6, !dbg !4966
  br label %cond.end, !dbg !4962

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call12, %cond.true ], [ %call13, %cond.false ], !dbg !4962
  %19 = load %struct.sync_fence_info*, %struct.sync_fence_info** %info.addr, align 8, !dbg !4967
  %timestamp_ns = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %19, i32 0, i32 4, !dbg !4968
  store i64 %cond, i64* %timestamp_ns, align 8, !dbg !4969
  %20 = load %struct.sync_fence_info*, %struct.sync_fence_info** %info.addr, align 8, !dbg !4970
  %status14 = getelementptr inbounds %struct.sync_fence_info, %struct.sync_fence_info* %20, i32 0, i32 2, !dbg !4971
  %21 = load i32, i32* %status14, align 8, !dbg !4971
  ret i32 %21, !dbg !4972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ns(i64 %kt) #0 !dbg !4973 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  %0 = load i64, i64* %kt.addr, align 8, !dbg !4979
  ret i64 %0, !dbg !4980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_set(i64 %secs, i64 %nsecs) #0 !dbg !4981 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, i64* %secs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %secs.addr, metadata !4986, metadata !DIExpression()), !dbg !4987
  store i64 %nsecs, i64* %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nsecs.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  %0 = load i64, i64* %secs.addr, align 8, !dbg !4990
  %cmp = icmp sge i64 %0, 9223372036, !dbg !4990
  %lnot = xor i1 %cmp, true, !dbg !4990
  %lnot1 = xor i1 %lnot, true, !dbg !4990
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4990
  %conv = sext i32 %lnot.ext to i64, !dbg !4990
  %tobool = icmp ne i64 %conv, 0, !dbg !4990
  br i1 %tobool, label %if.then, label %if.end, !dbg !4992

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8, !dbg !4993
  br label %return, !dbg !4993

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %secs.addr, align 8, !dbg !4994
  %mul = mul i64 %1, 1000000000, !dbg !4995
  %2 = load i64, i64* %nsecs.addr, align 8, !dbg !4996
  %add = add i64 %mul, %2, !dbg !4997
  store i64 %add, i64* %retval, align 8, !dbg !4998
  br label %return, !dbg !4998

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8, !dbg !4999
  ret i64 %3, !dbg !4999
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @dma_fence_remove_callback(%struct.dma_fence*, %struct.dma_fence_cb*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dma_fence_put(%struct.dma_fence* %fence) #0 !dbg !5000 {
entry:
  %fence.addr = alloca %struct.dma_fence*, align 8
  store %struct.dma_fence* %fence, %struct.dma_fence** %fence.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dma_fence** %fence.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  %0 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !5003
  %tobool = icmp ne %struct.dma_fence* %0, null, !dbg !5003
  br i1 %tobool, label %if.then, label %if.end, !dbg !5005

if.then:                                          ; preds = %entry
  %1 = load %struct.dma_fence*, %struct.dma_fence** %fence.addr, align 8, !dbg !5006
  %refcount = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %1, i32 0, i32 6, !dbg !5007
  %call = call i32 @kref_put(%struct.kref* %refcount, void (%struct.kref*)* @dma_fence_release) #6, !dbg !5008
  br label %if.end, !dbg !5008

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !5010 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5021
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5023
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #6, !dbg !5024
  br i1 %call, label %if.then, label %if.end, !dbg !5025

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !5026
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5028
  call void %1(%struct.kref* %2) #6, !dbg !5026
  store i32 1, i32* %retval, align 4, !dbg !5029
  br label %return, !dbg !5029

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5030
  br label %return, !dbg !5030

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5031
  ret i32 %3, !dbg !5031
}

; Function Attrs: noredzone
declare dso_local void @dma_fence_release(%struct.kref*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5032 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5038
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #6, !dbg !5039
  ret i1 %call, !dbg !5040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5041 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5046, metadata !DIExpression()), !dbg !5047
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5048
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5049
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #6, !dbg !5050
  ret i1 %call, !dbg !5051
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5052 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5055, metadata !DIExpression()), !dbg !5061
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5066, metadata !DIExpression()), !dbg !5067
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5068, metadata !DIExpression()), !dbg !5070
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3594, metadata !DIExpression()), !dbg !5071
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3604, metadata !DIExpression()), !dbg !5073
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5074, metadata !DIExpression()), !dbg !5075
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5077
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5082, metadata !DIExpression()), !dbg !5083
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5084, metadata !DIExpression()), !dbg !5085
  %0 = load i32, i32* %i.addr, align 4, !dbg !5086
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5087
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5088
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5089
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5089
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5090
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5091
  %conv.i.i = trunc i64 %5 to i32, !dbg !5091
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !5092
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5093
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5093
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #9, !dbg !5093
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5094
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5095
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5070
  %sub.i.i = sub i32 0, %10, !dbg !5070
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5070
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5070
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5070
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5070
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !5070, !srcloc !5096
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5070
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5070
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5070
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5070
  store i32 %15, i32* %old, align 4, !dbg !5085
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5097
  %tobool = icmp ne i32* %16, null, !dbg !5097
  br i1 %tobool, label %if.then, label %if.end, !dbg !5099

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5100
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5101
  store i32 %17, i32* %18, align 4, !dbg !5102
  br label %if.end, !dbg !5103

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5104
  %20 = load i32, i32* %i.addr, align 4, !dbg !5106
  %cmp = icmp eq i32 %19, %20, !dbg !5107
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5108

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !5109, !srcloc !5111
  store i1 true, i1* %retval, align 1, !dbg !5112
  br label %return, !dbg !5112

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5113
  %cmp3 = icmp slt i32 %21, 0, !dbg !5113
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5113

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5113
  %23 = load i32, i32* %i.addr, align 4, !dbg !5113
  %sub = sub i32 %22, %23, !dbg !5113
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5113
  br label %lor.end, !dbg !5113

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5113
  %lnot5 = xor i1 %lnot, true, !dbg !5113
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5113
  %conv = sext i32 %lnot.ext to i64, !dbg !5113
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5113
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5115

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5116
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #6, !dbg !5117
  br label %if.end8, !dbg !5117

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5118
  br label %return, !dbg !5118

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5119
  ret i1 %26, !dbg !5119
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5120 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5121, metadata !DIExpression()), !dbg !5122
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5123
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5124
  call void @refcount_inc(%struct.refcount_struct* %refcount) #6, !dbg !5125
  ret void, !dbg !5126
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5127 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5132
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #6, !dbg !5133
  ret void, !dbg !5134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5135 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5142
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5143
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #6, !dbg !5144
  ret void, !dbg !5145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5146 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5149, metadata !DIExpression()), !dbg !5151
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5155, metadata !DIExpression()), !dbg !5156
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5157, metadata !DIExpression()), !dbg !5159
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3594, metadata !DIExpression()), !dbg !5160
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3604, metadata !DIExpression()), !dbg !5162
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5163, metadata !DIExpression()), !dbg !5164
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5165, metadata !DIExpression()), !dbg !5166
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5173, metadata !DIExpression()), !dbg !5174
  %0 = load i32, i32* %i.addr, align 4, !dbg !5175
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5176
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5177
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5178
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5178
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5179
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5180
  %conv.i.i = trunc i64 %5 to i32, !dbg !5180
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #9, !dbg !5181
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5182
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5182
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #9, !dbg !5182
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5183
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5184
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5159
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5159
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5159
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5159
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5159
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #7, !dbg !5159, !srcloc !5185
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5159
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5159
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5159
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5159
  store i32 %15, i32* %old, align 4, !dbg !5174
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5186
  %tobool = icmp ne i32* %16, null, !dbg !5186
  br i1 %tobool, label %if.then, label %if.end, !dbg !5188

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5189
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5190
  store i32 %17, i32* %18, align 4, !dbg !5191
  br label %if.end, !dbg !5192

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5193
  %tobool1 = icmp ne i32 %19, 0, !dbg !5193
  %lnot = xor i1 %tobool1, true, !dbg !5193
  %lnot2 = xor i1 %lnot, true, !dbg !5193
  %lnot3 = xor i1 %lnot2, true, !dbg !5193
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5193
  %conv = sext i32 %lnot.ext to i64, !dbg !5193
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5193
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5195

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5196
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #6, !dbg !5197
  br label %if.end17, !dbg !5197

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5198
  %cmp = icmp slt i32 %21, 0, !dbg !5198
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5198

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5198
  %23 = load i32, i32* %i.addr, align 4, !dbg !5198
  %add = add i32 %22, %23, !dbg !5198
  %cmp7 = icmp slt i32 %add, 0, !dbg !5198
  br label %lor.end, !dbg !5198

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5198
  %lnot11 = xor i1 %lnot9, true, !dbg !5198
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5198
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5198
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5198
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5200

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5201
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #6, !dbg !5202
  br label %if.end16, !dbg !5202

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5203
}

; Function Attrs: noredzone
declare dso_local %struct.file* @fget(i32) #2

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
!llvm.module.flags = !{!2908, !2909, !2910, !2911}
!llvm.ident = !{!2912}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sync_file_fops", scope: !2, file: !3, line: 479, type: !2478, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !74, globals: !2902, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/dma-buf/sync_file.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !54, !59, !66}
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
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !48, line: 305, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 10, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_fence_flag_bits", file: !60, line: 98, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "DMA_FENCE_FLAG_SIGNALED_BIT", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "DMA_FENCE_FLAG_TIMESTAMP_BIT", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "DMA_FENCE_FLAG_USER_BITS", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !67, line: 119, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!74 = !{!75, !77, !78, !80, !88, !2860, !224, !2861, !157, !2900, !554, !163, !335, !2901}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !76, line: 148, baseType: !7)
!76 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !79, line: 52, baseType: !7)
!79 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !76, line: 178, size: 128, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !84, file: !76, line: 179, baseType: !83, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !84, file: !76, line: 179, baseType: !83, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_file", file: !90, line: 35, size: 768, elements: !91)
!90 = !DIFile(filename: "./include/linux/sync_file.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !2797, !2798, !2799, !2800, !2850}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !89, file: !90, line: 36, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !95)
!95 = !{!96, !114, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2780, !2781, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !94, file: !31, line: 920, baseType: !97, size: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !31, line: 917, size: 128, elements: !98)
!98 = !{!99, !105}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !97, file: !31, line: 918, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !101, line: 58, size: 64, elements: !102)
!101 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !100, file: !101, line: 59, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !97, file: !31, line: 919, baseType: !106, size: 128, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !76, line: 216, size: 128, align: 64, elements: !107)
!107 = !{!108, !110}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !106, file: !76, line: 217, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !106, file: !76, line: 218, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !109}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !94, file: !31, line: 921, baseType: !115, size: 128, offset: 128)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !116, line: 8, size: 128, elements: !117)
!116 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !115, file: !116, line: 9, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !121, line: 21, flags: DIFlagFwdDecl)
!121 = !DIFile(filename: "./include/linux/file.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !115, file: !116, line: 10, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !125, line: 89, size: 1536, elements: !126)
!125 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !128, !138, !146, !147, !170, !2731, !2733, !2745, !2746, !2747, !2748, !2749, !2754, !2755, !2756}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !124, file: !125, line: 91, baseType: !7, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !124, file: !125, line: 92, baseType: !129, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !130, line: 277, baseType: !131)
!130 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !130, line: 277, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !131, file: !130, line: 277, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !130, line: 70, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !130, line: 65, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !135, file: !130, line: 66, baseType: !7, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !124, file: !125, line: 93, baseType: !139, size: 128, offset: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !140, line: 38, size: 128, elements: !141)
!140 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 39, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !139, file: !140, line: 39, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !124, file: !125, line: 94, baseType: !123, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !124, file: !125, line: 95, baseType: !148, size: 128, offset: 256)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !125, line: 47, size: 128, elements: !149)
!149 = !{!150, !166}
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !148, file: !125, line: 48, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !125, line: 48, size: 64, elements: !152)
!152 = !{!153, !162}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !125, line: 49, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !125, line: 49, size: 64, elements: !155)
!155 = !{!156, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !154, file: !125, line: 50, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !158, line: 21, baseType: !159)
!158 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !160, line: 27, baseType: !7)
!160 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!161 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !154, file: !125, line: 50, baseType: !157, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !151, file: !125, line: 52, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !158, line: 23, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !160, line: 31, baseType: !165)
!165 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !125, line: 54, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !124, file: !125, line: 96, baseType: !171, size: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !173)
!173 = !{!174, !177, !178, !187, !194, !195, !356, !2435, !2436, !2437, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2707, !2715, !2716, !2717, !2727, !2728, !2729, !2730}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !172, file: !31, line: 611, baseType: !175, size: 16)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !76, line: 19, baseType: !176)
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !172, file: !31, line: 612, baseType: !176, size: 16, offset: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !172, file: !31, line: 613, baseType: !179, size: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !180, line: 23, baseType: !181)
!180 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 21, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !181, file: !180, line: 22, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !76, line: 32, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !186, line: 49, baseType: !7)
!186 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !172, file: !31, line: 614, baseType: !188, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !180, line: 28, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 26, size: 32, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !189, file: !180, line: 27, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !76, line: 33, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !186, line: 50, baseType: !7)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !172, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !172, file: !31, line: 622, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !199)
!199 = !{!200, !204, !220, !225, !231, !236, !242, !246, !250, !254, !258, !259, !265, !269, !296, !325, !336, !342, !347, !351, !352}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !198, file: !31, line: 1865, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!123, !171, !123, !7}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !198, file: !31, line: 1866, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !123, !171, !211}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !213, line: 10, size: 128, elements: !214)
!213 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!214 = !{!215, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !212, file: !213, line: 11, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !77}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !212, file: !213, line: 12, baseType: !77, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !198, file: !31, line: 1867, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !171, !224}
!224 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !198, file: !31, line: 1868, baseType: !226, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !171, !224}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !198, file: !31, line: 1870, baseType: !232, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!224, !123, !235, !224}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !198, file: !31, line: 1872, baseType: !237, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!224, !171, !123, !175, !240}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !76, line: 30, baseType: !241)
!241 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !198, file: !31, line: 1873, baseType: !243, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!224, !123, !171, !123}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !198, file: !31, line: 1874, baseType: !247, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!224, !171, !123}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !198, file: !31, line: 1875, baseType: !251, size: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!224, !171, !123, !208}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !198, file: !31, line: 1876, baseType: !255, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!224, !171, !123, !175}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !198, file: !31, line: 1877, baseType: !247, size: 64, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !198, file: !31, line: 1878, baseType: !260, size: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!224, !171, !123, !175, !263}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !76, line: 16, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !76, line: 13, baseType: !157)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !198, file: !31, line: 1879, baseType: !266, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!224, !171, !123, !171, !123, !7}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !198, file: !31, line: 1881, baseType: !270, size: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!224, !123, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !284, !293, !294, !295}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !274, file: !31, line: 220, baseType: !7, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !274, file: !31, line: 221, baseType: !175, size: 16, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !274, file: !31, line: 222, baseType: !179, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !274, file: !31, line: 223, baseType: !188, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !274, file: !31, line: 224, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !76, line: 46, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !186, line: 88, baseType: !283)
!283 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !274, file: !31, line: 225, baseType: !285, size: 128, offset: 192)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !286, line: 13, size: 128, elements: !287)
!286 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !291}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !285, file: !286, line: 14, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !286, line: 8, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !160, line: 30, baseType: !283)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !285, file: !286, line: 15, baseType: !292, size: 64, offset: 64)
!292 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !274, file: !31, line: 226, baseType: !285, size: 128, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !274, file: !31, line: 227, baseType: !285, size: 128, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !274, file: !31, line: 234, baseType: !93, size: 64, offset: 576)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !198, file: !31, line: 1882, baseType: !297, size: 64, offset: 896)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!224, !300, !302, !157, !7}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !304, line: 22, size: 1152, elements: !305)
!304 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !307, !308, !309, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !303, file: !304, line: 23, baseType: !157, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !304, line: 24, baseType: !175, size: 16, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !303, file: !304, line: 25, baseType: !7, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !303, file: !304, line: 26, baseType: !310, size: 32, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !76, line: 104, baseType: !157)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !303, file: !304, line: 27, baseType: !163, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !303, file: !304, line: 28, baseType: !163, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !303, file: !304, line: 37, baseType: !163, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !303, file: !304, line: 38, baseType: !263, size: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !303, file: !304, line: 39, baseType: !263, size: 32, offset: 352)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !303, file: !304, line: 40, baseType: !179, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !303, file: !304, line: 41, baseType: !188, size: 32, offset: 416)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !303, file: !304, line: 42, baseType: !281, size: 64, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !303, file: !304, line: 43, baseType: !285, size: 128, offset: 512)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !303, file: !304, line: 44, baseType: !285, size: 128, offset: 640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !303, file: !304, line: 45, baseType: !285, size: 128, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !303, file: !304, line: 46, baseType: !285, size: 128, offset: 896)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !303, file: !304, line: 47, baseType: !163, size: 64, offset: 1024)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !303, file: !304, line: 48, baseType: !163, size: 64, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !198, file: !31, line: 1883, baseType: !326, size: 64, offset: 960)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !123, !235, !332}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !76, line: 60, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !186, line: 73, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !186, line: 15, baseType: !292)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 55, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !186, line: 72, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !186, line: 16, baseType: !335)
!335 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !198, file: !31, line: 1884, baseType: !337, size: 64, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!224, !171, !340, !163, !163}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !198, file: !31, line: 1886, baseType: !343, size: 64, offset: 1088)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!224, !171, !346, !224}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !198, file: !31, line: 1887, baseType: !348, size: 64, offset: 1152)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!224, !171, !123, !93, !7, !175}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !198, file: !31, line: 1890, baseType: !255, size: 64, offset: 1216)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !198, file: !31, line: 1891, baseType: !353, size: 64, offset: 1280)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!224, !171, !229, !224}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !172, file: !31, line: 623, baseType: !357, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !417, !2042, !2124, !2207, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2223, !2227, !2228, !2231, !2232, !2235, !2236, !2237, !2278, !2305, !2306, !2307, !2308, !2309, !2310, !2313, !2315, !2322, !2323, !2325, !2326, !2327, !2386, !2387, !2402, !2403, !2404, !2405, !2406, !2409, !2410, !2411, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !358, file: !31, line: 1417, baseType: !84, size: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !358, file: !31, line: 1418, baseType: !263, size: 32, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !358, file: !31, line: 1419, baseType: !169, size: 8, offset: 160)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !358, file: !31, line: 1420, baseType: !335, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !358, file: !31, line: 1421, baseType: !281, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !358, file: !31, line: 1422, baseType: !366, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !368)
!368 = !{!369, !370, !371, !377, !381, !385, !389, !393, !394, !404, !408, !409, !410, !414, !415, !416}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !31, line: 2229, baseType: !208, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !367, file: !31, line: 2230, baseType: !224, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !367, file: !31, line: 2238, baseType: !372, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!224, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !31, line: 69, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !367, file: !31, line: 2239, baseType: !378, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !367, file: !31, line: 2240, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!123, !366, !224, !208, !77}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !367, file: !31, line: 2242, baseType: !386, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !357}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !367, file: !31, line: 2243, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !392, line: 76, flags: DIFlagFwdDecl)
!392 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !31, line: 2244, baseType: !366, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !367, file: !31, line: 2245, baseType: !395, size: 64, offset: 512)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !76, line: 182, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !395, file: !76, line: 183, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !76, line: 186, size: 128, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !76, line: 187, baseType: !398, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !399, file: !76, line: 187, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !367, file: !31, line: 2247, baseType: !405, offset: 576)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !406, line: 187, elements: !407)
!406 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !367, file: !31, line: 2248, baseType: !405, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !367, file: !31, line: 2249, baseType: !405, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !367, file: !31, line: 2250, baseType: !411, offset: 576)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 3)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !367, file: !31, line: 2252, baseType: !405, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !367, file: !31, line: 2253, baseType: !405, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !367, file: !31, line: 2254, baseType: !405, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !358, file: !31, line: 1423, baseType: !418, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !421)
!421 = !{!422, !426, !430, !431, !435, !441, !445, !446, !447, !451, !455, !456, !457, !458, !464, !469, !470, !477, !478, !479, !480, !2026, !2041}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !420, file: !31, line: 1936, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!171, !357}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !420, file: !31, line: 1937, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !171}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !420, file: !31, line: 1938, baseType: !427, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !420, file: !31, line: 1940, baseType: !432, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !171, !224}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !420, file: !31, line: 1941, baseType: !436, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!224, !171, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !420, file: !31, line: 1942, baseType: !442, size: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!224, !171}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !420, file: !31, line: 1943, baseType: !427, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !420, file: !31, line: 1944, baseType: !386, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !420, file: !31, line: 1945, baseType: !448, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!224, !357, !224}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !420, file: !31, line: 1946, baseType: !452, size: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!224, !357}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !420, file: !31, line: 1947, baseType: !452, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !420, file: !31, line: 1948, baseType: !452, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !420, file: !31, line: 1949, baseType: !452, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !420, file: !31, line: 1950, baseType: !459, size: 64, offset: 832)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!224, !123, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !420, file: !31, line: 1951, baseType: !465, size: 64, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!224, !357, !468, !235}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !420, file: !31, line: 1952, baseType: !386, size: 64, offset: 960)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !420, file: !31, line: 1954, baseType: !471, size: 64, offset: 1024)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!224, !474, !123}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !476, line: 539, flags: DIFlagFwdDecl)
!476 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!477 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !420, file: !31, line: 1955, baseType: !471, size: 64, offset: 1088)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !420, file: !31, line: 1956, baseType: !471, size: 64, offset: 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !420, file: !31, line: 1957, baseType: !471, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !420, file: !31, line: 1963, baseType: !481, size: 64, offset: 1280)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!224, !357, !484, !75}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !486, line: 68, size: 512, align: 128, elements: !487)
!486 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !489, !2018, !2025}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !486, line: 69, baseType: !335, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !486, line: 77, baseType: !490, size: 320, offset: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !486, line: 77, size: 320, elements: !491)
!491 = !{!492, !693, !698, !726, !734, !740, !2010, !2017}
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !486, line: 78, baseType: !493, size: 320)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !486, line: 78, size: 320, elements: !494)
!494 = !{!495, !496, !691, !692}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !493, file: !486, line: 84, baseType: !84, size: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !493, file: !486, line: 86, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !499)
!499 = !{!500, !501, !522, !523, !528, !543, !559, !560, !561, !562, !684, !685, !688, !689, !690}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !498, file: !31, line: 452, baseType: !171, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !498, file: !31, line: 453, baseType: !502, size: 128, offset: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !503, line: 292, size: 128, elements: !504)
!503 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!504 = !{!505, !520, !521}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !502, file: !503, line: 293, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !507, line: 83, baseType: !508)
!507 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !507, line: 71, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !507, line: 72, baseType: !511)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !508, file: !507, line: 72, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !511, file: !507, line: 73, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !507, line: 20, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !514, file: !507, line: 21, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !518, line: 25, baseType: !519)
!518 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 25, elements: !407)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !502, file: !503, line: 295, baseType: !75, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !502, file: !503, line: 296, baseType: !77, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !498, file: !31, line: 454, baseType: !75, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !498, file: !31, line: 455, baseType: !524, size: 32, offset: 224)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !76, line: 168, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 166, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !525, file: !76, line: 167, baseType: !224, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !498, file: !31, line: 460, baseType: !529, size: 128, offset: 256)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !530, line: 125, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!531 = !{!532, !542}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !529, file: !530, line: 126, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !530, line: 31, size: 64, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !533, file: !530, line: 32, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !530, line: 24, size: 192, align: 64, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !537, file: !530, line: 25, baseType: !335, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !537, file: !530, line: 26, baseType: !536, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !537, file: !530, line: 27, baseType: !536, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !529, file: !530, line: 127, baseType: !536, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !498, file: !31, line: 461, baseType: !544, size: 256, offset: 384)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !545, line: 35, size: 256, elements: !546)
!545 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !555, !556, !558}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !544, file: !545, line: 36, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !549, line: 13, baseType: !550)
!549 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !76, line: 175, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 173, size: 64, elements: !552)
!552 = !{!553}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !551, file: !76, line: 174, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !158, line: 22, baseType: !290)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !544, file: !545, line: 42, baseType: !548, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !544, file: !545, line: 46, baseType: !557, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !507, line: 29, baseType: !514)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !544, file: !545, line: 47, baseType: !84, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !498, file: !31, line: 462, baseType: !335, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !498, file: !31, line: 463, baseType: !335, size: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !498, file: !31, line: 464, baseType: !335, size: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !498, file: !31, line: 465, baseType: !563, size: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !566)
!566 = !{!567, !571, !575, !579, !583, !587, !593, !599, !603, !608, !612, !616, !620, !648, !652, !658, !659, !660, !664, !669, !673, !680}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !565, file: !31, line: 368, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!224, !484, !439}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !565, file: !31, line: 369, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!224, !93, !484}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !565, file: !31, line: 372, baseType: !576, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!224, !497, !439}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !565, file: !31, line: 375, baseType: !580, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!224, !484}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !565, file: !31, line: 381, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!224, !93, !497, !83, !7}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !565, file: !31, line: 383, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !565, file: !31, line: 385, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!224, !93, !497, !281, !7, !7, !597, !598}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !565, file: !31, line: 388, baseType: !600, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!224, !93, !497, !281, !7, !7, !484, !77}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !565, file: !31, line: 393, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!607, !497, !607}
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !76, line: 125, baseType: !163)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !565, file: !31, line: 394, baseType: !609, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !484, !7, !7}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !565, file: !31, line: 395, baseType: !613, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!224, !484, !75}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !565, file: !31, line: 396, baseType: !617, size: 64, offset: 704)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !484}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !565, file: !31, line: 397, baseType: !621, size: 64, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!329, !624, !646}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !626)
!626 = !{!627, !628, !629, !633, !634, !635, !638, !639}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !625, file: !31, line: 321, baseType: !93, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !625, file: !31, line: 326, baseType: !281, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !625, file: !31, line: 327, baseType: !630, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !624, !292, !292}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !625, file: !31, line: 328, baseType: !77, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !625, file: !31, line: 329, baseType: !224, size: 32, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !625, file: !31, line: 330, baseType: !636, size: 16, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !158, line: 19, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !160, line: 24, baseType: !176)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !625, file: !31, line: 331, baseType: !636, size: 16, offset: 304)
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !31, line: 332, baseType: !640, size: 64, offset: 320)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !625, file: !31, line: 332, size: 64, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !640, file: !31, line: 333, baseType: !7, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !640, file: !31, line: 334, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !565, file: !31, line: 402, baseType: !649, size: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!224, !497, !484, !484, !5}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !565, file: !31, line: 404, baseType: !653, size: 64, offset: 896)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!240, !484, !656}
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !657, line: 305, baseType: !7)
!657 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!658 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !565, file: !31, line: 405, baseType: !617, size: 64, offset: 960)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !565, file: !31, line: 406, baseType: !580, size: 64, offset: 1024)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !565, file: !31, line: 407, baseType: !661, size: 64, offset: 1088)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!224, !484, !335, !335}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !565, file: !31, line: 409, baseType: !665, size: 64, offset: 1152)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !484, !668, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !565, file: !31, line: 410, baseType: !670, size: 64, offset: 1216)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!224, !497, !484}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !565, file: !31, line: 413, baseType: !674, size: 64, offset: 1280)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!224, !677, !93, !679}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !565, file: !31, line: 415, baseType: !681, size: 64, offset: 1344)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !93}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !31, line: 466, baseType: !335, size: 64, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !498, file: !31, line: 467, baseType: !686, size: 32, offset: 960)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !687, line: 8, baseType: !157)
!687 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!688 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !498, file: !31, line: 468, baseType: !506, offset: 992)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !498, file: !31, line: 469, baseType: !84, size: 128, offset: 1024)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !498, file: !31, line: 470, baseType: !77, size: 64, offset: 1152)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !493, file: !486, line: 87, baseType: !335, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !493, file: !486, line: 94, baseType: !335, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !486, line: 96, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !486, line: 96, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !694, file: !486, line: 101, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !76, line: 143, baseType: !163)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !486, line: 103, baseType: !699, size: 320)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !486, line: 103, size: 320, elements: !700)
!700 = !{!701, !711, !714, !715}
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !486, line: 104, baseType: !702, size: 128)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !486, line: 104, size: 128, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !702, file: !486, line: 105, baseType: !84, size: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !702, file: !486, line: 106, baseType: !706, size: 128)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !702, file: !486, line: 106, size: 128, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !706, file: !486, line: 107, baseType: !484, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !706, file: !486, line: 109, baseType: !224, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !706, file: !486, line: 110, baseType: !224, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !699, file: !486, line: 117, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !486, line: 117, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !699, file: !486, line: 119, baseType: !77, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !699, file: !486, line: 120, baseType: !716, size: 64, offset: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !699, file: !486, line: 120, size: 64, elements: !717)
!717 = !{!718, !719, !720}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !716, file: !486, line: 121, baseType: !77, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !716, file: !486, line: 122, baseType: !335, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !486, line: 123, baseType: !721, size: 32)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !486, line: 123, size: 32, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !721, file: !486, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !721, file: !486, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !721, file: !486, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !486, line: 130, baseType: !727, size: 192)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !486, line: 130, size: 192, elements: !728)
!728 = !{!729, !730, !731, !732, !733}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !727, file: !486, line: 131, baseType: !335, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !727, file: !486, line: 134, baseType: !169, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !727, file: !486, line: 135, baseType: !169, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !727, file: !486, line: 136, baseType: !524, size: 32, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !727, file: !486, line: 137, baseType: !7, size: 32, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !486, line: 139, baseType: !735, size: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !486, line: 139, size: 256, elements: !736)
!736 = !{!737, !738, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !735, file: !486, line: 140, baseType: !335, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !735, file: !486, line: 141, baseType: !524, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !735, file: !486, line: 143, baseType: !84, size: 128, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !486, line: 145, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !486, line: 145, size: 256, elements: !742)
!742 = !{!743, !744, !746, !747, !2009}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !741, file: !486, line: 146, baseType: !335, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !741, file: !486, line: 147, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !476, line: 509, baseType: !484)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !741, file: !486, line: 148, baseType: !335, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !486, line: 149, baseType: !748, size: 64, offset: 192)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !486, line: 149, size: 64, elements: !749)
!749 = !{!750, !2008}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !748, file: !486, line: 150, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !486, line: 388, size: 7296, elements: !753)
!753 = !{!754, !2004}
!754 = !DIDerivedType(tag: DW_TAG_member, scope: !752, file: !486, line: 389, baseType: !755, size: 7296)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !752, file: !486, line: 389, size: 7296, elements: !756)
!756 = !{!757, !795, !796, !797, !801, !802, !803, !804, !805, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !846, !854, !857, !887, !888, !1988, !1989, !1992, !1993, !1994, !1997, !1998, !1999, !2002, !2003}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !755, file: !486, line: 390, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !486, line: 305, size: 1472, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !775, !776, !781, !782, !785, !789, !790, !791, !792, !793}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !759, file: !486, line: 308, baseType: !335, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !759, file: !486, line: 309, baseType: !335, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !759, file: !486, line: 313, baseType: !758, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !759, file: !486, line: 313, baseType: !758, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !759, file: !486, line: 315, baseType: !537, size: 192, align: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !759, file: !486, line: 323, baseType: !335, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !759, file: !486, line: 327, baseType: !751, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !759, file: !486, line: 333, baseType: !769, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !476, line: 284, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !476, line: 284, size: 64, elements: !771)
!771 = !{!772}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !770, file: !476, line: 284, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !774, line: 19, baseType: !335)
!774 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !759, file: !486, line: 334, baseType: !335, size: 64, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !759, file: !486, line: 343, baseType: !777, size: 256, offset: 704)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !486, line: 340, size: 256, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !777, file: !486, line: 341, baseType: !537, size: 192, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !777, file: !486, line: 342, baseType: !335, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !759, file: !486, line: 351, baseType: !84, size: 128, offset: 960)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !759, file: !486, line: 353, baseType: !783, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !486, line: 353, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !759, file: !486, line: 356, baseType: !786, size: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !486, line: 356, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !759, file: !486, line: 359, baseType: !335, size: 64, offset: 1216)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !759, file: !486, line: 361, baseType: !93, size: 64, offset: 1280)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !759, file: !486, line: 362, baseType: !77, size: 64, offset: 1344)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !759, file: !486, line: 365, baseType: !548, size: 64, offset: 1408)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !759, file: !486, line: 373, baseType: !794, offset: 1472)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !486, line: 296, elements: !407)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !755, file: !486, line: 391, baseType: !533, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !755, file: !486, line: 392, baseType: !163, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !755, file: !486, line: 394, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!335, !93, !335, !335, !335, !335}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !755, file: !486, line: 398, baseType: !335, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !755, file: !486, line: 399, baseType: !335, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !755, file: !486, line: 405, baseType: !335, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !755, file: !486, line: 406, baseType: !335, size: 64, offset: 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !755, file: !486, line: 407, baseType: !806, size: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !476, line: 286, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 286, size: 64, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !808, file: !476, line: 286, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !774, line: 18, baseType: !335)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !755, file: !486, line: 416, baseType: !524, size: 32, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !755, file: !486, line: 428, baseType: !524, size: 32, offset: 608)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !755, file: !486, line: 437, baseType: !524, size: 32, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !755, file: !486, line: 447, baseType: !524, size: 32, offset: 672)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !755, file: !486, line: 450, baseType: !548, size: 64, offset: 704)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !755, file: !486, line: 452, baseType: !224, size: 32, offset: 768)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !755, file: !486, line: 454, baseType: !506, offset: 800)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !755, file: !486, line: 457, baseType: !544, size: 256, offset: 832)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !755, file: !486, line: 459, baseType: !84, size: 128, offset: 1088)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !755, file: !486, line: 466, baseType: !335, size: 64, offset: 1216)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !755, file: !486, line: 467, baseType: !335, size: 64, offset: 1280)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !755, file: !486, line: 469, baseType: !335, size: 64, offset: 1344)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !755, file: !486, line: 470, baseType: !335, size: 64, offset: 1408)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !755, file: !486, line: 471, baseType: !550, size: 64, offset: 1472)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !755, file: !486, line: 472, baseType: !335, size: 64, offset: 1536)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !755, file: !486, line: 473, baseType: !335, size: 64, offset: 1600)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !755, file: !486, line: 474, baseType: !335, size: 64, offset: 1664)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !755, file: !486, line: 475, baseType: !335, size: 64, offset: 1728)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !755, file: !486, line: 477, baseType: !506, offset: 1792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !755, file: !486, line: 478, baseType: !335, size: 64, offset: 1792)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !755, file: !486, line: 478, baseType: !335, size: 64, offset: 1856)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !755, file: !486, line: 478, baseType: !335, size: 64, offset: 1920)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !755, file: !486, line: 478, baseType: !335, size: 64, offset: 1984)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !755, file: !486, line: 479, baseType: !335, size: 64, offset: 2048)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !755, file: !486, line: 479, baseType: !335, size: 64, offset: 2112)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !755, file: !486, line: 479, baseType: !335, size: 64, offset: 2176)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !755, file: !486, line: 480, baseType: !335, size: 64, offset: 2240)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !755, file: !486, line: 480, baseType: !335, size: 64, offset: 2304)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !755, file: !486, line: 480, baseType: !335, size: 64, offset: 2368)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !755, file: !486, line: 480, baseType: !335, size: 64, offset: 2432)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !755, file: !486, line: 482, baseType: !843, size: 2816, offset: 2496)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 2816, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 44)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !755, file: !486, line: 488, baseType: !847, size: 256, offset: 5312)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !848, line: 60, size: 256, elements: !849)
!848 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !847, file: !848, line: 61, baseType: !851, size: 256)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 256, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 4)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !755, file: !486, line: 490, baseType: !855, size: 64, offset: 5568)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !486, line: 490, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !755, file: !486, line: 493, baseType: !858, size: 896, offset: 5632)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !859, line: 53, baseType: !860)
!859 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !859, line: 13, size: 896, elements: !861)
!861 = !{!862, !863, !864, !865, !868, !869, !876, !877, !881, !882, !883}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !860, file: !859, line: 18, baseType: !163, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !860, file: !859, line: 28, baseType: !550, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !860, file: !859, line: 31, baseType: !544, size: 256, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !860, file: !859, line: 32, baseType: !866, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !859, line: 32, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !860, file: !859, line: 37, baseType: !176, size: 16, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !860, file: !859, line: 40, baseType: !870, size: 192, offset: 512)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !871, line: 53, size: 192, elements: !872)
!871 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !870, file: !871, line: 54, baseType: !548, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !870, file: !871, line: 55, baseType: !506, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !870, file: !871, line: 59, baseType: !84, size: 128, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !860, file: !859, line: 41, baseType: !77, size: 64, offset: 704)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !860, file: !859, line: 42, baseType: !878, size: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !859, line: 42, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !860, file: !859, line: 44, baseType: !524, size: 32, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !860, file: !859, line: 50, baseType: !636, size: 16, offset: 864)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !860, file: !859, line: 51, baseType: !884, size: 16, offset: 880)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !158, line: 18, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !160, line: 23, baseType: !886)
!886 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !486, line: 495, baseType: !335, size: 64, offset: 6528)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !755, file: !486, line: 497, baseType: !889, size: 64, offset: 6592)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !486, line: 381, size: 384, elements: !891)
!891 = !{!892, !893, !1987}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !890, file: !486, line: 382, baseType: !524, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !890, file: !486, line: 383, baseType: !894, size: 128, offset: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !486, line: 376, size: 128, elements: !895)
!895 = !{!896, !1985}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !894, file: !486, line: 377, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !899, line: 640, size: 48640, elements: !900)
!899 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!900 = !{!901, !907, !909, !910, !915, !916, !917, !918, !919, !920, !921, !922, !926, !944, !955, !1040, !1041, !1042, !1053, !1054, !1056, !1057, !1058, !1059, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1143, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1181, !1183, !1184, !1185, !1197, !1198, !1199, !1200, !1201, !1202, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1226, !1231, !1415, !1416, !1417, !1418, !1422, !1425, !1428, !1431, !1434, !1437, !1538, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1586, !1587, !1588, !1589, !1590, !1595, !1596, !1597, !1600, !1601, !1604, !1607, !1610, !1613, !1656, !1659, !1660, !1739, !1740, !1743, !1744, !1747, !1748, !1749, !1753, !1754, !1755, !1768, !1769, !1770, !1780, !1785, !1788, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !898, file: !899, line: 646, baseType: !902, size: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !903, line: 56, size: 128, elements: !904)
!903 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !903, line: 57, baseType: !335, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !902, file: !903, line: 58, baseType: !157, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !898, file: !899, line: 649, baseType: !908, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !292)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !898, file: !899, line: 657, baseType: !77, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !898, file: !899, line: 658, baseType: !911, size: 32, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !67, line: 113, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !67, line: 111, size: 32, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !912, file: !67, line: 112, baseType: !524, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !898, file: !899, line: 660, baseType: !7, size: 32, offset: 288)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !898, file: !899, line: 661, baseType: !7, size: 32, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !898, file: !899, line: 684, baseType: !224, size: 32, offset: 352)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !898, file: !899, line: 686, baseType: !224, size: 32, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !898, file: !899, line: 687, baseType: !224, size: 32, offset: 416)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !898, file: !899, line: 688, baseType: !224, size: 32, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !898, file: !899, line: 689, baseType: !7, size: 32, offset: 480)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !898, file: !899, line: 691, baseType: !923, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !899, line: 691, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !898, file: !899, line: 692, baseType: !927, size: 832, offset: 576)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !899, line: 451, size: 832, elements: !928)
!928 = !{!929, !934, !935, !936, !937, !938, !939, !940, !941, !942}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !927, file: !899, line: 453, baseType: !930, size: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !899, line: 325, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !930, file: !899, line: 326, baseType: !335, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !930, file: !899, line: 327, baseType: !157, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !927, file: !899, line: 454, baseType: !537, size: 192, align: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !927, file: !899, line: 455, baseType: !84, size: 128, offset: 320)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !927, file: !899, line: 456, baseType: !7, size: 32, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !927, file: !899, line: 458, baseType: !163, size: 64, offset: 512)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !927, file: !899, line: 459, baseType: !163, size: 64, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !927, file: !899, line: 460, baseType: !163, size: 64, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !927, file: !899, line: 461, baseType: !163, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !927, file: !899, line: 463, baseType: !163, size: 64, offset: 768)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !927, file: !899, line: 465, baseType: !943, offset: 832)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !899, line: 415, elements: !407)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !898, file: !899, line: 693, baseType: !945, size: 384, offset: 1408)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !899, line: 489, size: 384, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !953}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !945, file: !899, line: 490, baseType: !84, size: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !945, file: !899, line: 491, baseType: !335, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !945, file: !899, line: 492, baseType: !335, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !945, file: !899, line: 493, baseType: !7, size: 32, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !945, file: !899, line: 494, baseType: !176, size: 16, offset: 288)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !945, file: !899, line: 495, baseType: !176, size: 16, offset: 304)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !945, file: !899, line: 497, baseType: !954, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !898, file: !899, line: 697, baseType: !956, size: 1792, offset: 1792)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !899, line: 507, size: 1792, elements: !957)
!957 = !{!958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !1037, !1038}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !956, file: !899, line: 508, baseType: !537, size: 192, align: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !956, file: !899, line: 515, baseType: !163, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !956, file: !899, line: 516, baseType: !163, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !956, file: !899, line: 517, baseType: !163, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !956, file: !899, line: 518, baseType: !163, size: 64, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !956, file: !899, line: 519, baseType: !163, size: 64, offset: 448)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !956, file: !899, line: 526, baseType: !554, size: 64, offset: 512)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !956, file: !899, line: 527, baseType: !163, size: 64, offset: 576)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !956, file: !899, line: 528, baseType: !7, size: 32, offset: 640)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !956, file: !899, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !956, file: !899, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !956, file: !899, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !956, file: !899, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !956, file: !899, line: 563, baseType: !972, size: 512, offset: 704)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !973)
!973 = !{!974, !982, !983, !988, !1031, !1034, !1035, !1036}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !972, file: !14, line: 119, baseType: !975, size: 256)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !976, line: 9, size: 256, elements: !977)
!976 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !975, file: !976, line: 10, baseType: !537, size: 192, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !975, file: !976, line: 11, baseType: !980, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !981, line: 29, baseType: !554)
!981 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !972, file: !14, line: 120, baseType: !980, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !972, file: !14, line: 121, baseType: !984, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!13, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !972, file: !14, line: 122, baseType: !989, size: 64, offset: 384)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !991)
!991 = !{!992, !1012, !1013, !1016, !1021, !1022, !1026, !1030}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !990, file: !14, line: 160, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !994, file: !14, line: 215, baseType: !557)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !994, file: !14, line: 216, baseType: !7, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !994, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !994, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !994, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !994, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !994, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !994, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !994, file: !14, line: 233, baseType: !980, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !994, file: !14, line: 234, baseType: !987, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !994, file: !14, line: 235, baseType: !980, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !994, file: !14, line: 236, baseType: !987, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !994, file: !14, line: 237, baseType: !1009, size: 4096, offset: 512)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 4096, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 8)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !990, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !990, file: !14, line: 162, baseType: !1014, size: 32, offset: 96)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !76, line: 27, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !186, line: 96, baseType: !224)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !990, file: !14, line: 163, baseType: !1017, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !130, line: 276, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !130, line: 276, size: 32, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1018, file: !130, line: 276, baseType: !134, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !990, file: !14, line: 164, baseType: !987, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !990, file: !14, line: 165, baseType: !1023, size: 128, offset: 256)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !976, line: 14, size: 128, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1023, file: !976, line: 15, baseType: !529, size: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !990, file: !14, line: 166, baseType: !1027, size: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!980}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !990, file: !14, line: 167, baseType: !980, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !972, file: !14, line: 123, baseType: !1032, size: 8, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !158, line: 17, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !160, line: 21, baseType: !169)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !972, file: !14, line: 124, baseType: !1032, size: 8, offset: 456)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !972, file: !14, line: 125, baseType: !1032, size: 8, offset: 464)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !972, file: !14, line: 126, baseType: !1032, size: 8, offset: 472)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !956, file: !899, line: 572, baseType: !972, size: 512, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !956, file: !899, line: 580, baseType: !1039, size: 64, offset: 1728)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !898, file: !899, line: 721, baseType: !7, size: 32, offset: 3584)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !898, file: !899, line: 722, baseType: !224, size: 32, offset: 3616)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !898, file: !899, line: 723, baseType: !1043, size: 64, offset: 3648)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1046, line: 17, baseType: !1047)
!1046 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1046, line: 17, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1047, file: !1046, line: 17, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !1051)
!1051 = !{!1052}
!1052 = !DISubrange(count: 1)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !898, file: !899, line: 724, baseType: !1045, size: 64, offset: 3712)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !898, file: !899, line: 749, baseType: !1055, offset: 3776)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !899, line: 290, elements: !407)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !898, file: !899, line: 751, baseType: !84, size: 128, offset: 3776)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !898, file: !899, line: 757, baseType: !751, size: 64, offset: 3904)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !898, file: !899, line: 758, baseType: !751, size: 64, offset: 3968)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !898, file: !899, line: 761, baseType: !1060, size: 320, offset: 4032)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !848, line: 34, size: 320, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1060, file: !848, line: 35, baseType: !163, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1060, file: !848, line: 36, baseType: !1064, size: 256, offset: 64)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 256, elements: !852)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !898, file: !899, line: 766, baseType: !224, size: 32, offset: 4352)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !898, file: !899, line: 767, baseType: !224, size: 32, offset: 4384)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !898, file: !899, line: 768, baseType: !224, size: 32, offset: 4416)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !898, file: !899, line: 770, baseType: !224, size: 32, offset: 4448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !898, file: !899, line: 772, baseType: !335, size: 64, offset: 4480)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !898, file: !899, line: 775, baseType: !7, size: 32, offset: 4544)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !898, file: !899, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !898, file: !899, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !898, file: !899, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !898, file: !899, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !898, file: !899, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !898, file: !899, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !898, file: !899, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !898, file: !899, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !898, file: !899, line: 831, baseType: !335, size: 64, offset: 4672)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !898, file: !899, line: 833, baseType: !1081, size: 384, offset: 4736)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1082)
!1082 = !{!1083, !1088}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1081, file: !19, line: 26, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!292, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !19, line: 27, baseType: !1089, size: 320, offset: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !19, line: 27, size: 320, elements: !1090)
!1090 = !{!1091, !1101, !1128}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1089, file: !19, line: 36, baseType: !1092, size: 320)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !19, line: 29, size: 320, elements: !1093)
!1093 = !{!1094, !1096, !1097, !1098, !1099, !1100}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1092, file: !19, line: 30, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1092, file: !19, line: 31, baseType: !157, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1092, file: !19, line: 32, baseType: !157, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1092, file: !19, line: 33, baseType: !157, size: 32, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1092, file: !19, line: 34, baseType: !163, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1092, file: !19, line: 35, baseType: !1095, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1089, file: !19, line: 46, baseType: !1102, size: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !19, line: 38, size: 192, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1127}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1102, file: !19, line: 39, baseType: !1014, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1102, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !19, line: 41, baseType: !1107, size: 64, offset: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1102, file: !19, line: 41, size: 64, elements: !1108)
!1108 = !{!1109, !1117}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1107, file: !19, line: 42, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1112, line: 7, size: 128, elements: !1113)
!1112 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !{!1114, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1111, file: !1112, line: 8, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !186, line: 93, baseType: !283)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1111, file: !1112, line: 9, baseType: !283, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1107, file: !19, line: 43, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1120, line: 7, size: 64, elements: !1121)
!1120 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1121 = !{!1122, !1126}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1119, file: !1120, line: 8, baseType: !1123, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1120, line: 5, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !158, line: 20, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !160, line: 26, baseType: !224)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1119, file: !1120, line: 9, baseType: !1124, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1102, file: !19, line: 45, baseType: !163, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1089, file: !19, line: 54, baseType: !1129, size: 256)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !19, line: 48, size: 256, elements: !1130)
!1130 = !{!1131, !1139, !1140, !1141, !1142}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1129, file: !19, line: 49, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1134, line: 36, size: 64, elements: !1135)
!1134 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1137, !1138}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1133, file: !1134, line: 37, baseType: !224, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1133, file: !1134, line: 38, baseType: !886, size: 16, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1133, file: !1134, line: 39, baseType: !886, size: 16, offset: 48)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1129, file: !19, line: 50, baseType: !224, size: 32, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1129, file: !19, line: 51, baseType: !224, size: 32, offset: 96)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1129, file: !19, line: 52, baseType: !335, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1129, file: !19, line: 53, baseType: !335, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !898, file: !899, line: 835, baseType: !1144, size: 32, offset: 5120)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !76, line: 22, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !186, line: 28, baseType: !224)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !898, file: !899, line: 836, baseType: !1144, size: 32, offset: 5152)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !898, file: !899, line: 840, baseType: !335, size: 64, offset: 5184)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !898, file: !899, line: 849, baseType: !897, size: 64, offset: 5248)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !898, file: !899, line: 852, baseType: !897, size: 64, offset: 5312)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !898, file: !899, line: 857, baseType: !84, size: 128, offset: 5376)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !898, file: !899, line: 858, baseType: !84, size: 128, offset: 5504)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !898, file: !899, line: 859, baseType: !897, size: 64, offset: 5632)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !898, file: !899, line: 867, baseType: !84, size: 128, offset: 5696)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !898, file: !899, line: 868, baseType: !84, size: 128, offset: 5824)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !898, file: !899, line: 871, baseType: !1156, size: 64, offset: 5952)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1164, !1165, !1172, !1173}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1157, file: !40, line: 61, baseType: !911, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1157, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1157, file: !40, line: 63, baseType: !506, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1157, file: !40, line: 65, baseType: !1163, size: 256, offset: 64)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 256, elements: !852)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1157, file: !40, line: 66, baseType: !395, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1157, file: !40, line: 68, baseType: !1166, size: 128, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1167, line: 40, baseType: !1168)
!1167 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1167, line: 36, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1168, file: !1167, line: 37, baseType: !506)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1168, file: !1167, line: 38, baseType: !84, size: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1157, file: !40, line: 69, baseType: !106, size: 128, align: 64, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1157, file: !40, line: 70, baseType: !1174, size: 128, offset: 640)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 128, elements: !1051)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1175, file: !40, line: 55, baseType: !224, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1175, file: !40, line: 56, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !898, file: !899, line: 872, baseType: !1182, size: 512, offset: 6016)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 512, elements: !852)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !898, file: !899, line: 873, baseType: !84, size: 128, offset: 6528)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !898, file: !899, line: 874, baseType: !84, size: 128, offset: 6656)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !898, file: !899, line: 876, baseType: !1186, size: 64, offset: 6784)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1188, line: 26, size: 192, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1187, file: !1188, line: 27, baseType: !7, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1187, file: !1188, line: 28, baseType: !1192, size: 128, offset: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1193, line: 43, size: 128, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1192, file: !1193, line: 44, baseType: !557)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1192, file: !1193, line: 45, baseType: !84, size: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !898, file: !899, line: 879, baseType: !468, size: 64, offset: 6848)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !898, file: !899, line: 882, baseType: !468, size: 64, offset: 6912)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !898, file: !899, line: 884, baseType: !163, size: 64, offset: 6976)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !898, file: !899, line: 885, baseType: !163, size: 64, offset: 7040)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !898, file: !899, line: 890, baseType: !163, size: 64, offset: 7104)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !898, file: !899, line: 891, baseType: !1203, size: 128, offset: 7168)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !899, line: 242, size: 128, elements: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1203, file: !899, line: 244, baseType: !163, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1203, file: !899, line: 245, baseType: !163, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1203, file: !899, line: 246, baseType: !557, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !898, file: !899, line: 900, baseType: !335, size: 64, offset: 7296)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !898, file: !899, line: 901, baseType: !335, size: 64, offset: 7360)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !898, file: !899, line: 904, baseType: !163, size: 64, offset: 7424)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !898, file: !899, line: 907, baseType: !163, size: 64, offset: 7488)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !898, file: !899, line: 910, baseType: !335, size: 64, offset: 7552)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !898, file: !899, line: 911, baseType: !335, size: 64, offset: 7616)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !898, file: !899, line: 914, baseType: !1215, size: 640, offset: 7680)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1216, line: 123, size: 640, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1224, !1225}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1215, file: !1216, line: 124, baseType: !1219, size: 576)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 576, elements: !412)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1216, line: 108, size: 192, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1220, file: !1216, line: 109, baseType: !163, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1220, file: !1216, line: 110, baseType: !1023, size: 128, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1215, file: !1216, line: 125, baseType: !7, size: 32, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1215, file: !1216, line: 126, baseType: !7, size: 32, offset: 608)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !898, file: !899, line: 917, baseType: !1227, size: 192, offset: 8320)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1216, line: 134, size: 192, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1227, file: !1216, line: 135, baseType: !106, size: 128, align: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1227, file: !1216, line: 136, baseType: !7, size: 32, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !898, file: !899, line: 923, baseType: !1232, size: 64, offset: 8512)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1234)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1235, line: 111, size: 1280, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1256, !1257, !1258, !1259, !1260, !1261, !1368, !1369, !1370, !1371, !1397, !1400, !1410}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1234, file: !1235, line: 112, baseType: !524, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1234, file: !1235, line: 120, baseType: !179, size: 32, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1234, file: !1235, line: 121, baseType: !188, size: 32, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1234, file: !1235, line: 122, baseType: !179, size: 32, offset: 96)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1234, file: !1235, line: 123, baseType: !188, size: 32, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1234, file: !1235, line: 124, baseType: !179, size: 32, offset: 160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1234, file: !1235, line: 125, baseType: !188, size: 32, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1234, file: !1235, line: 126, baseType: !179, size: 32, offset: 224)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1234, file: !1235, line: 127, baseType: !188, size: 32, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1234, file: !1235, line: 128, baseType: !7, size: 32, offset: 288)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1234, file: !1235, line: 129, baseType: !1248, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1249, line: 26, baseType: !1250)
!1249 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1249, line: 24, size: 64, elements: !1251)
!1251 = !{!1252}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1250, file: !1249, line: 25, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 64, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 2)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1234, file: !1235, line: 130, baseType: !1248, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1234, file: !1235, line: 131, baseType: !1248, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1234, file: !1235, line: 132, baseType: !1248, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1234, file: !1235, line: 133, baseType: !1248, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1234, file: !1235, line: 135, baseType: !169, size: 8, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1234, file: !1235, line: 137, baseType: !1262, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1264, line: 189, size: 1664, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !{!1266, !1267, !1270, !1275, !1276, !1279, !1280, !1285, !1286, !1287, !1288, !1290, !1291, !1292, !1293, !1294, !1332, !1353}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1263, file: !1264, line: 190, baseType: !911, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1263, file: !1264, line: 191, baseType: !1268, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1264, line: 28, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !76, line: 98, baseType: !1124)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1264, line: 192, baseType: !1271, size: 192, offset: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !1264, line: 192, size: 192, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1271, file: !1264, line: 193, baseType: !84, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1271, file: !1264, line: 194, baseType: !537, size: 192, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1263, file: !1264, line: 199, baseType: !544, size: 256, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1263, file: !1264, line: 200, baseType: !1277, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1264, line: 200, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1263, file: !1264, line: 201, baseType: !77, size: 64, offset: 576)
!1280 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1264, line: 202, baseType: !1281, size: 64, offset: 640)
!1281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !1264, line: 202, size: 64, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1281, file: !1264, line: 203, baseType: !289, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1281, file: !1264, line: 204, baseType: !289, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1263, file: !1264, line: 206, baseType: !289, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1263, file: !1264, line: 207, baseType: !179, size: 32, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1263, file: !1264, line: 208, baseType: !188, size: 32, offset: 800)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1263, file: !1264, line: 209, baseType: !1289, size: 32, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1264, line: 31, baseType: !310)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1263, file: !1264, line: 210, baseType: !176, size: 16, offset: 864)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1263, file: !1264, line: 211, baseType: !176, size: 16, offset: 880)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1263, file: !1264, line: 215, baseType: !886, size: 16, offset: 896)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1263, file: !1264, line: 222, baseType: !335, size: 64, offset: 960)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1264, line: 239, baseType: !1295, size: 320, offset: 1024)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !1264, line: 239, size: 320, elements: !1296)
!1296 = !{!1297, !1324}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1295, file: !1264, line: 240, baseType: !1298, size: 320)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1264, line: 108, size: 320, elements: !1299)
!1299 = !{!1300, !1301, !1313, !1316, !1323}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1298, file: !1264, line: 110, baseType: !335, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !1264, line: 111, baseType: !1302, size: 64, offset: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !1264, line: 111, size: 64, elements: !1303)
!1303 = !{!1304, !1312}
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !1264, line: 112, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !1264, line: 112, size: 64, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1305, file: !1264, line: 114, baseType: !636, size: 16)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1305, file: !1264, line: 115, baseType: !1309, size: 48, offset: 16)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 48, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 6)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1302, file: !1264, line: 121, baseType: !335, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1298, file: !1264, line: 123, baseType: !1314, size: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1264, line: 96, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1298, file: !1264, line: 124, baseType: !1317, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1264, line: 102, size: 192, elements: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1318, file: !1264, line: 103, baseType: !106, size: 128, align: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1318, file: !1264, line: 104, baseType: !911, size: 32, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1318, file: !1264, line: 105, baseType: !240, size: 8, offset: 160)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1298, file: !1264, line: 125, baseType: !208, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !1264, line: 241, baseType: !1325, size: 320)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1295, file: !1264, line: 241, size: 320, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1331}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1325, file: !1264, line: 242, baseType: !335, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1325, file: !1264, line: 243, baseType: !335, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1325, file: !1264, line: 244, baseType: !1314, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1325, file: !1264, line: 245, baseType: !1317, size: 64, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1325, file: !1264, line: 246, baseType: !235, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1263, file: !1264, line: 254, baseType: !1333, size: 256, offset: 1344)
!1333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1263, file: !1264, line: 254, size: 256, elements: !1334)
!1334 = !{!1335, !1341}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1333, file: !1264, line: 255, baseType: !1336, size: 256)
!1336 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1264, line: 128, size: 256, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1336, file: !1264, line: 129, baseType: !77, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1336, file: !1264, line: 130, baseType: !1340, size: 256)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !852)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1264, line: 256, baseType: !1342, size: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1333, file: !1264, line: 256, size: 256, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1342, file: !1264, line: 258, baseType: !84, size: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1342, file: !1264, line: 259, baseType: !1346, size: 128, offset: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1347, line: 22, size: 128, elements: !1348)
!1347 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1352}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1346, file: !1347, line: 23, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1347, line: 23, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1346, file: !1347, line: 24, baseType: !335, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1263, file: !1264, line: 274, baseType: !1354, size: 64, offset: 1600)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1264, line: 170, size: 192, elements: !1356)
!1356 = !{!1357, !1366, !1367}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1355, file: !1264, line: 171, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1264, line: 165, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!224, !1262, !1362, !1364, !1262}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1355, file: !1264, line: 172, baseType: !1262, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1355, file: !1264, line: 173, baseType: !1314, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1234, file: !1235, line: 138, baseType: !1262, size: 64, offset: 768)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1234, file: !1235, line: 139, baseType: !1262, size: 64, offset: 832)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1234, file: !1235, line: 140, baseType: !1262, size: 64, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1234, file: !1235, line: 145, baseType: !1372, size: 64, offset: 960)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1374, line: 13, size: 896, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1373, file: !1374, line: 14, baseType: !911, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1373, file: !1374, line: 15, baseType: !524, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1373, file: !1374, line: 16, baseType: !524, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1373, file: !1374, line: 21, baseType: !548, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1373, file: !1374, line: 27, baseType: !335, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1373, file: !1374, line: 28, baseType: !335, size: 64, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1373, file: !1374, line: 29, baseType: !548, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1373, file: !1374, line: 32, baseType: !399, size: 128, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1373, file: !1374, line: 33, baseType: !179, size: 32, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1373, file: !1374, line: 37, baseType: !548, size: 64, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1373, file: !1374, line: 44, baseType: !1387, size: 256, offset: 640)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1388, line: 15, size: 256, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !1388, line: 16, baseType: !557)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1387, file: !1388, line: 18, baseType: !224, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1387, file: !1388, line: 19, baseType: !224, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1387, file: !1388, line: 20, baseType: !224, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1387, file: !1388, line: 21, baseType: !224, size: 32, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1387, file: !1388, line: 22, baseType: !335, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !1388, line: 23, baseType: !335, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1234, file: !1235, line: 146, baseType: !1398, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !180, line: 18, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1234, file: !1235, line: 147, baseType: !1401, size: 64, offset: 1088)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1235, line: 25, size: 64, elements: !1403)
!1403 = !{!1404, !1405, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1402, file: !1235, line: 26, baseType: !524, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1402, file: !1235, line: 27, baseType: !224, size: 32, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1402, file: !1235, line: 28, baseType: !1407, offset: 64)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, elements: !1408)
!1408 = !{!1409}
!1409 = !DISubrange(count: 0)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1235, line: 149, baseType: !1411, size: 128, offset: 1152)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1235, line: 149, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1411, file: !1235, line: 150, baseType: !224, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1411, file: !1235, line: 151, baseType: !106, size: 128, align: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !898, file: !899, line: 926, baseType: !1232, size: 64, offset: 8576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !898, file: !899, line: 929, baseType: !1232, size: 64, offset: 8640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !898, file: !899, line: 933, baseType: !1262, size: 64, offset: 8704)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !898, file: !899, line: 943, baseType: !1419, size: 128, offset: 8768)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 128, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 16)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !898, file: !899, line: 945, baseType: !1423, size: 64, offset: 8896)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !899, line: 49, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !898, file: !899, line: 956, baseType: !1426, size: 64, offset: 8960)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !899, line: 45, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !898, file: !899, line: 959, baseType: !1429, size: 64, offset: 9024)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !899, line: 959, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !898, file: !899, line: 962, baseType: !1432, size: 64, offset: 9088)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !899, line: 66, flags: DIFlagFwdDecl)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !898, file: !899, line: 966, baseType: !1435, size: 64, offset: 9152)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !899, line: 50, flags: DIFlagFwdDecl)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !898, file: !899, line: 969, baseType: !1438, size: 64, offset: 9216)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1440, line: 82, size: 7296, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447, !1448, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1477, !1486, !1487, !1489, !1490, !1491, !1494, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1524, !1525, !1532, !1533, !1534, !1535, !1536, !1537}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1439, file: !1440, line: 83, baseType: !911, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1439, file: !1440, line: 84, baseType: !524, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1439, file: !1440, line: 85, baseType: !224, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1439, file: !1440, line: 86, baseType: !84, size: 128, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1439, file: !1440, line: 88, baseType: !1166, size: 128, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1439, file: !1440, line: 91, baseType: !897, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1439, file: !1440, line: 94, baseType: !1449, size: 192, offset: 448)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1450, line: 30, size: 192, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1449, file: !1450, line: 31, baseType: !84, size: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1449, file: !1450, line: 32, baseType: !1454, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1455, line: 25, baseType: !1456)
!1455 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1455, line: 23, size: 64, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1456, file: !1455, line: 24, baseType: !1050, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1439, file: !1440, line: 97, baseType: !395, size: 64, offset: 640)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1439, file: !1440, line: 100, baseType: !224, size: 32, offset: 704)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1439, file: !1440, line: 106, baseType: !224, size: 32, offset: 736)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1439, file: !1440, line: 107, baseType: !897, size: 64, offset: 768)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1439, file: !1440, line: 110, baseType: !224, size: 32, offset: 832)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1439, file: !1440, line: 111, baseType: !7, size: 32, offset: 864)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1439, file: !1440, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1439, file: !1440, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1439, file: !1440, line: 128, baseType: !224, size: 32, offset: 928)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1439, file: !1440, line: 129, baseType: !84, size: 128, offset: 960)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1439, file: !1440, line: 132, baseType: !972, size: 512, offset: 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1439, file: !1440, line: 133, baseType: !980, size: 64, offset: 1600)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1439, file: !1440, line: 140, baseType: !1472, size: 256, offset: 1664)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1473, size: 256, elements: !1254)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1440, line: 38, size: 128, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1473, file: !1440, line: 39, baseType: !163, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1473, file: !1440, line: 40, baseType: !163, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1439, file: !1440, line: 146, baseType: !1478, size: 192, offset: 1920)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1440, line: 66, size: 192, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1478, file: !1440, line: 67, baseType: !1481, size: 192)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1440, line: 47, size: 192, elements: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1481, file: !1440, line: 48, baseType: !550, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1481, file: !1440, line: 49, baseType: !550, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1481, file: !1440, line: 50, baseType: !550, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1439, file: !1440, line: 150, baseType: !1215, size: 640, offset: 2112)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1439, file: !1440, line: 153, baseType: !1488, size: 256, offset: 2752)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1156, size: 256, elements: !852)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1439, file: !1440, line: 159, baseType: !1156, size: 64, offset: 3008)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1439, file: !1440, line: 162, baseType: !224, size: 32, offset: 3072)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1439, file: !1440, line: 164, baseType: !1492, size: 64, offset: 3136)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1440, line: 164, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1439, file: !1440, line: 175, baseType: !1495, size: 32, offset: 3200)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !130, line: 805, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 798, size: 32, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1496, file: !130, line: 803, baseType: !129, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1496, file: !130, line: 804, baseType: !506, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1439, file: !1440, line: 176, baseType: !163, size: 64, offset: 3264)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1439, file: !1440, line: 176, baseType: !163, size: 64, offset: 3328)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1439, file: !1440, line: 176, baseType: !163, size: 64, offset: 3392)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1439, file: !1440, line: 176, baseType: !163, size: 64, offset: 3456)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1439, file: !1440, line: 177, baseType: !163, size: 64, offset: 3520)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1439, file: !1440, line: 178, baseType: !163, size: 64, offset: 3584)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1439, file: !1440, line: 179, baseType: !1203, size: 128, offset: 3648)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1439, file: !1440, line: 180, baseType: !335, size: 64, offset: 3776)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1439, file: !1440, line: 180, baseType: !335, size: 64, offset: 3840)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1439, file: !1440, line: 180, baseType: !335, size: 64, offset: 3904)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1439, file: !1440, line: 180, baseType: !335, size: 64, offset: 3968)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1439, file: !1440, line: 181, baseType: !335, size: 64, offset: 4032)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1439, file: !1440, line: 181, baseType: !335, size: 64, offset: 4096)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1439, file: !1440, line: 181, baseType: !335, size: 64, offset: 4160)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1439, file: !1440, line: 181, baseType: !335, size: 64, offset: 4224)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1439, file: !1440, line: 182, baseType: !335, size: 64, offset: 4288)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1439, file: !1440, line: 182, baseType: !335, size: 64, offset: 4352)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1439, file: !1440, line: 182, baseType: !335, size: 64, offset: 4416)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1439, file: !1440, line: 182, baseType: !335, size: 64, offset: 4480)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1439, file: !1440, line: 183, baseType: !335, size: 64, offset: 4544)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1439, file: !1440, line: 183, baseType: !335, size: 64, offset: 4608)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1439, file: !1440, line: 184, baseType: !1522, offset: 4672)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1523, line: 12, elements: !407)
!1523 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1439, file: !1440, line: 192, baseType: !165, size: 64, offset: 4672)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1439, file: !1440, line: 203, baseType: !1526, size: 2048, offset: 4736)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1527, size: 2048, elements: !1420)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1528, line: 43, size: 128, elements: !1529)
!1528 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1527, file: !1528, line: 44, baseType: !334, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1527, file: !1528, line: 45, baseType: !334, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1439, file: !1440, line: 220, baseType: !240, size: 8, offset: 6784)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1439, file: !1440, line: 221, baseType: !886, size: 16, offset: 6800)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1439, file: !1440, line: 222, baseType: !886, size: 16, offset: 6816)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1439, file: !1440, line: 224, baseType: !751, size: 64, offset: 6848)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1439, file: !1440, line: 227, baseType: !870, size: 192, offset: 6912)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1439, file: !1440, line: 233, baseType: !870, size: 192, offset: 7104)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !898, file: !899, line: 970, baseType: !1539, size: 64, offset: 9280)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1440, line: 20, size: 16576, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1540, file: !1440, line: 21, baseType: !506)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1540, file: !1440, line: 22, baseType: !911, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1540, file: !1440, line: 23, baseType: !1166, size: 128, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1540, file: !1440, line: 24, baseType: !1546, size: 16384, offset: 192)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1547, size: 16384, elements: !1567)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1450, line: 49, size: 256, elements: !1548)
!1548 = !{!1549}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1547, file: !1450, line: 50, baseType: !1550, size: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1450, line: 35, size: 256, elements: !1551)
!1551 = !{!1552, !1559, !1560, !1566}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1550, file: !1450, line: 37, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1554, line: 19, baseType: !1555)
!1554 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1554, line: 18, baseType: !1557)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !224}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1550, file: !1450, line: 38, baseType: !335, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1550, file: !1450, line: 44, baseType: !1561, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1554, line: 22, baseType: !1562)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1554, line: 21, baseType: !1564)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1550, file: !1450, line: 46, baseType: !1454, size: 64, offset: 192)
!1567 = !{!1568}
!1568 = !DISubrange(count: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !898, file: !899, line: 971, baseType: !1454, size: 64, offset: 9344)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !898, file: !899, line: 972, baseType: !1454, size: 64, offset: 9408)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !898, file: !899, line: 974, baseType: !1454, size: 64, offset: 9472)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !898, file: !899, line: 975, baseType: !1449, size: 192, offset: 9536)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !898, file: !899, line: 976, baseType: !335, size: 64, offset: 9728)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !898, file: !899, line: 977, baseType: !332, size: 64, offset: 9792)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !898, file: !899, line: 978, baseType: !7, size: 32, offset: 9856)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !898, file: !899, line: 980, baseType: !109, size: 64, offset: 9920)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !898, file: !899, line: 989, baseType: !1578, size: 128, offset: 9984)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1579, line: 35, size: 128, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !{!1581, !1582, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1578, file: !1579, line: 36, baseType: !224, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1578, file: !1579, line: 37, baseType: !524, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1578, file: !1579, line: 38, baseType: !1584, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1579, line: 23, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !898, file: !899, line: 992, baseType: !163, size: 64, offset: 10112)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !898, file: !899, line: 993, baseType: !163, size: 64, offset: 10176)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !898, file: !899, line: 996, baseType: !506, offset: 10240)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !898, file: !899, line: 999, baseType: !557, offset: 10240)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !898, file: !899, line: 1001, baseType: !1591, size: 64, offset: 10240)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !899, line: 636, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1591, file: !899, line: 637, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !898, file: !899, line: 1005, baseType: !529, size: 128, offset: 10304)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !898, file: !899, line: 1007, baseType: !897, size: 64, offset: 10432)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !898, file: !899, line: 1009, baseType: !1598, size: 64, offset: 10496)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !899, line: 1009, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !898, file: !899, line: 1043, baseType: !77, size: 64, offset: 10560)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !898, file: !899, line: 1046, baseType: !1602, size: 64, offset: 10624)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !899, line: 41, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !898, file: !899, line: 1050, baseType: !1605, size: 64, offset: 10688)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !899, line: 42, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !898, file: !899, line: 1054, baseType: !1608, size: 64, offset: 10752)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !899, line: 55, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !898, file: !899, line: 1056, baseType: !1611, size: 64, offset: 10816)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !899, line: 40, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !898, file: !899, line: 1058, baseType: !1614, size: 64, offset: 10880)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1616, line: 99, size: 704, elements: !1617)
!1616 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1643, !1644}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1615, file: !1616, line: 100, baseType: !548, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1615, file: !1616, line: 101, baseType: !524, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1615, file: !1616, line: 102, baseType: !524, size: 32, offset: 96)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1615, file: !1616, line: 105, baseType: !506, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1615, file: !1616, line: 107, baseType: !176, size: 16, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1615, file: !1616, line: 109, baseType: !502, size: 128, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1615, file: !1616, line: 110, baseType: !1625, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1616, line: 73, size: 448, elements: !1627)
!1627 = !{!1628, !1631, !1632, !1637, !1642}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1626, file: !1616, line: 74, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1616, line: 74, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1626, file: !1616, line: 75, baseType: !1614, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1616, line: 83, baseType: !1633, size: 128, offset: 128)
!1633 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1616, line: 83, size: 128, elements: !1634)
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1633, file: !1616, line: 84, baseType: !84, size: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1633, file: !1616, line: 85, baseType: !712, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, scope: !1626, file: !1616, line: 87, baseType: !1638, size: 128, offset: 256)
!1638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1626, file: !1616, line: 87, size: 128, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1638, file: !1616, line: 88, baseType: !399, size: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1638, file: !1616, line: 89, baseType: !106, size: 128, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !1616, line: 92, baseType: !7, size: 32, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1615, file: !1616, line: 111, baseType: !395, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1615, file: !1616, line: 113, baseType: !1645, size: 256, offset: 448)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1646, line: 102, size: 256, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1645, file: !1646, line: 103, baseType: !548, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1645, file: !1646, line: 104, baseType: !84, size: 128, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1645, file: !1646, line: 105, baseType: !1651, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1646, line: 21, baseType: !1652)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !898, file: !899, line: 1061, baseType: !1657, size: 64, offset: 10944)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !899, line: 43, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !898, file: !899, line: 1064, baseType: !335, size: 64, offset: 11008)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !898, file: !899, line: 1065, baseType: !1661, size: 64, offset: 11072)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1450, line: 14, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1450, line: 12, size: 384, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !1450, line: 13, baseType: !1666, size: 384)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !1450, line: 13, size: 384, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1666, file: !1450, line: 13, baseType: !224, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1666, file: !1450, line: 13, baseType: !224, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1666, file: !1450, line: 13, baseType: !224, size: 32, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1666, file: !1450, line: 13, baseType: !1672, size: 256, offset: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1673, line: 32, size: 256, elements: !1674)
!1673 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1680, !1693, !1699, !1708, !1728, !1733}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1672, file: !1673, line: 37, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 34, size: 64, elements: !1677)
!1677 = !{!1678, !1679}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1676, file: !1673, line: 35, baseType: !1145, size: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1676, file: !1673, line: 36, baseType: !185, size: 32, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1672, file: !1673, line: 45, baseType: !1681, size: 192)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 40, size: 192, elements: !1682)
!1682 = !{!1683, !1685, !1686, !1692}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1681, file: !1673, line: 41, baseType: !1684, size: 32)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !186, line: 95, baseType: !224)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1681, file: !1673, line: 42, baseType: !224, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1681, file: !1673, line: 43, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1673, line: 11, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1673, line: 8, size: 64, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1688, file: !1673, line: 9, baseType: !224, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1688, file: !1673, line: 10, baseType: !77, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1681, file: !1673, line: 44, baseType: !224, size: 32, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1672, file: !1673, line: 52, baseType: !1694, size: 128)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 48, size: 128, elements: !1695)
!1695 = !{!1696, !1697, !1698}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1694, file: !1673, line: 49, baseType: !1145, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1694, file: !1673, line: 50, baseType: !185, size: 32, offset: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1694, file: !1673, line: 51, baseType: !1687, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1672, file: !1673, line: 61, baseType: !1700, size: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 55, size: 256, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1707}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1700, file: !1673, line: 56, baseType: !1145, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1700, file: !1673, line: 57, baseType: !185, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1700, file: !1673, line: 58, baseType: !224, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1700, file: !1673, line: 59, baseType: !1706, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !186, line: 94, baseType: !331)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1700, file: !1673, line: 60, baseType: !1706, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1672, file: !1673, line: 95, baseType: !1709, size: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 64, size: 256, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1709, file: !1673, line: 65, baseType: !77, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !1673, line: 77, baseType: !1713, size: 192, offset: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !1673, line: 77, size: 192, elements: !1714)
!1714 = !{!1715, !1716, !1723}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1713, file: !1673, line: 82, baseType: !886, size: 16)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1713, file: !1673, line: 88, baseType: !1717, size: 192)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !1673, line: 84, size: 192, elements: !1718)
!1718 = !{!1719, !1721, !1722}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1717, file: !1673, line: 85, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 64, elements: !1010)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1717, file: !1673, line: 86, baseType: !77, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1717, file: !1673, line: 87, baseType: !77, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1713, file: !1673, line: 93, baseType: !1724, size: 96)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1713, file: !1673, line: 90, size: 96, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1724, file: !1673, line: 91, baseType: !1720, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1724, file: !1673, line: 92, baseType: !159, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1672, file: !1673, line: 101, baseType: !1729, size: 128)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 98, size: 128, elements: !1730)
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1729, file: !1673, line: 99, baseType: !292, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1729, file: !1673, line: 100, baseType: !224, size: 32, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1672, file: !1673, line: 108, baseType: !1734, size: 128)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1672, file: !1673, line: 104, size: 128, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1734, file: !1673, line: 105, baseType: !77, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1734, file: !1673, line: 106, baseType: !224, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1734, file: !1673, line: 107, baseType: !7, size: 32, offset: 96)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !898, file: !899, line: 1067, baseType: !1522, offset: 11136)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !898, file: !899, line: 1099, baseType: !1741, size: 64, offset: 11136)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !899, line: 56, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !898, file: !899, line: 1103, baseType: !84, size: 128, offset: 11200)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !898, file: !899, line: 1104, baseType: !1745, size: 64, offset: 11328)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !899, line: 46, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !898, file: !899, line: 1105, baseType: !870, size: 192, offset: 11392)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !898, file: !899, line: 1106, baseType: !7, size: 32, offset: 11584)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !898, file: !899, line: 1109, baseType: !1750, size: 128, offset: 11648)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 128, elements: !1254)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !899, line: 51, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !898, file: !899, line: 1110, baseType: !870, size: 192, offset: 11776)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !898, file: !899, line: 1111, baseType: !84, size: 128, offset: 11968)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !898, file: !899, line: 1173, baseType: !1756, size: 64, offset: 12096)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1758, line: 62, size: 256, align: 256, elements: !1759)
!1758 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1761, !1762, !1767}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1757, file: !1758, line: 75, baseType: !159, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1757, file: !1758, line: 90, baseType: !159, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1757, file: !1758, line: 124, baseType: !1763, size: 64, offset: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1757, file: !1758, line: 109, size: 64, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1763, file: !1758, line: 110, baseType: !164, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1763, file: !1758, line: 112, baseType: !164, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !1758, line: 144, baseType: !159, size: 32, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !898, file: !899, line: 1174, baseType: !157, size: 32, offset: 12160)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !898, file: !899, line: 1179, baseType: !335, size: 64, offset: 12224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !898, file: !899, line: 1182, baseType: !1771, size: 128, offset: 12288)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !848, line: 76, size: 128, elements: !1772)
!1772 = !{!1773, !1778, !1779}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1771, file: !848, line: 85, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1775, line: 7, size: 64, elements: !1776)
!1775 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1774, file: !1775, line: 12, baseType: !1047, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1771, file: !848, line: 88, baseType: !240, size: 8, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1771, file: !848, line: 95, baseType: !240, size: 8, offset: 72)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !898, file: !899, line: 1184, baseType: !1781, size: 128, offset: 12416)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !898, file: !899, line: 1184, size: 128, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1781, file: !899, line: 1185, baseType: !911, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1781, file: !899, line: 1186, baseType: !106, size: 128, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !898, file: !899, line: 1190, baseType: !1786, size: 64, offset: 12544)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !899, line: 53, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !898, file: !899, line: 1192, baseType: !1789, size: 128, offset: 12608)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !848, line: 64, size: 128, elements: !1790)
!1790 = !{!1791, !1792, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1789, file: !848, line: 65, baseType: !484, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1789, file: !848, line: 67, baseType: !159, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1789, file: !848, line: 68, baseType: !159, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !898, file: !899, line: 1206, baseType: !224, size: 32, offset: 12736)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !898, file: !899, line: 1207, baseType: !224, size: 32, offset: 12768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !898, file: !899, line: 1209, baseType: !335, size: 64, offset: 12800)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !898, file: !899, line: 1219, baseType: !163, size: 64, offset: 12864)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !898, file: !899, line: 1220, baseType: !163, size: 64, offset: 12928)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !898, file: !899, line: 1317, baseType: !224, size: 32, offset: 12992)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !898, file: !899, line: 1319, baseType: !897, size: 64, offset: 13056)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !898, file: !899, line: 1322, baseType: !1802, size: 64, offset: 13120)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !899, line: 1322, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !898, file: !899, line: 1326, baseType: !911, size: 32, offset: 13184)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !898, file: !899, line: 1342, baseType: !77, size: 64, offset: 13248)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !898, file: !899, line: 1343, baseType: !164, size: 64, offset: 13312)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !898, file: !899, line: 1344, baseType: !163, size: 64, offset: 13376)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !898, file: !899, line: 1345, baseType: !164, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !898, file: !899, line: 1346, baseType: !164, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !898, file: !899, line: 1347, baseType: !164, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !898, file: !899, line: 1348, baseType: !106, size: 128, align: 64, offset: 13504)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !898, file: !899, line: 1358, baseType: !1813, size: 34816, offset: 13824)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1814, line: 485, size: 34816, elements: !1815)
!1814 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1845, !1846, !1847, !1848, !1849, !1850, !1853, !1854, !1855}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1813, file: !1814, line: 487, baseType: !1817, size: 192)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1818, size: 192, elements: !412)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1819, line: 16, size: 64, elements: !1820)
!1819 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1818, file: !1819, line: 17, baseType: !636, size: 16)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1818, file: !1819, line: 18, baseType: !636, size: 16, offset: 16)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1818, file: !1819, line: 19, baseType: !636, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1818, file: !1819, line: 19, baseType: !636, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1818, file: !1819, line: 19, baseType: !636, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1818, file: !1819, line: 19, baseType: !636, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1818, file: !1819, line: 19, baseType: !636, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1818, file: !1819, line: 20, baseType: !636, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1818, file: !1819, line: 20, baseType: !636, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1818, file: !1819, line: 20, baseType: !636, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1818, file: !1819, line: 20, baseType: !636, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1818, file: !1819, line: 20, baseType: !636, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1818, file: !1819, line: 20, baseType: !636, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1813, file: !1814, line: 491, baseType: !335, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1813, file: !1814, line: 495, baseType: !176, size: 16, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1813, file: !1814, line: 496, baseType: !176, size: 16, offset: 272)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1813, file: !1814, line: 497, baseType: !176, size: 16, offset: 288)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1813, file: !1814, line: 498, baseType: !176, size: 16, offset: 304)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1813, file: !1814, line: 502, baseType: !335, size: 64, offset: 320)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1813, file: !1814, line: 503, baseType: !335, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1813, file: !1814, line: 514, baseType: !1842, size: 256, offset: 448)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1843, size: 256, elements: !852)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1814, line: 483, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1813, file: !1814, line: 516, baseType: !335, size: 64, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1813, file: !1814, line: 518, baseType: !335, size: 64, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1813, file: !1814, line: 520, baseType: !335, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1813, file: !1814, line: 521, baseType: !335, size: 64, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1813, file: !1814, line: 522, baseType: !335, size: 64, offset: 960)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1813, file: !1814, line: 528, baseType: !1851, size: 64, offset: 1024)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1814, line: 10, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1813, file: !1814, line: 535, baseType: !335, size: 64, offset: 1088)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1813, file: !1814, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1813, file: !1814, line: 540, baseType: !1856, size: 33280, offset: 1536)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1857, line: 317, size: 33280, elements: !1858)
!1857 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1856, file: !1857, line: 330, baseType: !7, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1856, file: !1857, line: 337, baseType: !335, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1856, file: !1857, line: 348, baseType: !1862, size: 32768, offset: 512)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1857, line: 304, size: 32768, elements: !1863)
!1863 = !{!1864, !1879, !1918, !1968, !1981}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1862, file: !1857, line: 305, baseType: !1865, size: 896)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1857, line: 12, size: 896, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1878}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1865, file: !1857, line: 13, baseType: !157, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1865, file: !1857, line: 14, baseType: !157, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1865, file: !1857, line: 15, baseType: !157, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1865, file: !1857, line: 16, baseType: !157, size: 32, offset: 96)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1865, file: !1857, line: 17, baseType: !157, size: 32, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1865, file: !1857, line: 18, baseType: !157, size: 32, offset: 160)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1865, file: !1857, line: 19, baseType: !157, size: 32, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1865, file: !1857, line: 22, baseType: !1875, size: 640, offset: 224)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 640, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 20)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1865, file: !1857, line: 25, baseType: !157, size: 32, offset: 864)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1862, file: !1857, line: 306, baseType: !1880, size: 4096, align: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1857, line: 34, size: 4096, align: 128, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1901, !1902, !1903, !1907, !1909, !1913}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1880, file: !1857, line: 35, baseType: !636, size: 16)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1880, file: !1857, line: 36, baseType: !636, size: 16, offset: 16)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1880, file: !1857, line: 37, baseType: !636, size: 16, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1880, file: !1857, line: 38, baseType: !636, size: 16, offset: 48)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1857, line: 39, baseType: !1887, size: 128, offset: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1857, line: 39, size: 128, elements: !1888)
!1888 = !{!1889, !1894}
!1889 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1857, line: 40, baseType: !1890, size: 128)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !1857, line: 40, size: 128, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1890, file: !1857, line: 41, baseType: !163, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1890, file: !1857, line: 42, baseType: !163, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1857, line: 44, baseType: !1895, size: 128)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1887, file: !1857, line: 44, size: 128, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1895, file: !1857, line: 45, baseType: !157, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1895, file: !1857, line: 46, baseType: !157, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1895, file: !1857, line: 47, baseType: !157, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1895, file: !1857, line: 48, baseType: !157, size: 32, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1880, file: !1857, line: 51, baseType: !157, size: 32, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1880, file: !1857, line: 52, baseType: !157, size: 32, offset: 224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1880, file: !1857, line: 55, baseType: !1904, size: 1024, offset: 256)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1024, elements: !1905)
!1905 = !{!1906}
!1906 = !DISubrange(count: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1880, file: !1857, line: 58, baseType: !1908, size: 2048, offset: 1280)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 2048, elements: !1567)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1880, file: !1857, line: 60, baseType: !1910, size: 384, offset: 3328)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 384, elements: !1911)
!1911 = !{!1912}
!1912 = !DISubrange(count: 12)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1857, line: 62, baseType: !1914, size: 384, offset: 3712)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1857, line: 62, size: 384, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1914, file: !1857, line: 63, baseType: !1910, size: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1914, file: !1857, line: 64, baseType: !1910, size: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1862, file: !1857, line: 307, baseType: !1919, size: 1088)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1857, line: 79, size: 1088, elements: !1920)
!1920 = !{!1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1967}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1919, file: !1857, line: 80, baseType: !157, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1919, file: !1857, line: 81, baseType: !157, size: 32, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1919, file: !1857, line: 82, baseType: !157, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1919, file: !1857, line: 83, baseType: !157, size: 32, offset: 96)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1919, file: !1857, line: 84, baseType: !157, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1919, file: !1857, line: 85, baseType: !157, size: 32, offset: 160)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1919, file: !1857, line: 86, baseType: !157, size: 32, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1919, file: !1857, line: 88, baseType: !1875, size: 640, offset: 224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1919, file: !1857, line: 89, baseType: !1032, size: 8, offset: 864)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1919, file: !1857, line: 90, baseType: !1032, size: 8, offset: 872)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1919, file: !1857, line: 91, baseType: !1032, size: 8, offset: 880)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1919, file: !1857, line: 92, baseType: !1032, size: 8, offset: 888)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1919, file: !1857, line: 93, baseType: !1032, size: 8, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1919, file: !1857, line: 94, baseType: !1032, size: 8, offset: 904)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1919, file: !1857, line: 95, baseType: !1936, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1938, line: 11, size: 128, elements: !1939)
!1938 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1937, file: !1938, line: 12, baseType: !292, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1937, file: !1938, line: 13, baseType: !1942, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1944, line: 56, size: 1344, elements: !1945)
!1944 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1943, file: !1944, line: 61, baseType: !335, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1943, file: !1944, line: 62, baseType: !335, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1943, file: !1944, line: 63, baseType: !335, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1943, file: !1944, line: 64, baseType: !335, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1943, file: !1944, line: 65, baseType: !335, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1943, file: !1944, line: 66, baseType: !335, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1943, file: !1944, line: 68, baseType: !335, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1943, file: !1944, line: 69, baseType: !335, size: 64, offset: 448)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1943, file: !1944, line: 70, baseType: !335, size: 64, offset: 512)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1943, file: !1944, line: 71, baseType: !335, size: 64, offset: 576)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1943, file: !1944, line: 72, baseType: !335, size: 64, offset: 640)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1943, file: !1944, line: 73, baseType: !335, size: 64, offset: 704)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1943, file: !1944, line: 74, baseType: !335, size: 64, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1943, file: !1944, line: 75, baseType: !335, size: 64, offset: 832)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1943, file: !1944, line: 76, baseType: !335, size: 64, offset: 896)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1943, file: !1944, line: 81, baseType: !335, size: 64, offset: 960)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1943, file: !1944, line: 83, baseType: !335, size: 64, offset: 1024)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1943, file: !1944, line: 84, baseType: !335, size: 64, offset: 1088)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1943, file: !1944, line: 85, baseType: !335, size: 64, offset: 1152)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1943, file: !1944, line: 86, baseType: !335, size: 64, offset: 1216)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1943, file: !1944, line: 87, baseType: !335, size: 64, offset: 1280)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1919, file: !1857, line: 96, baseType: !157, size: 32, offset: 1024)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1862, file: !1857, line: 308, baseType: !1969, size: 4608, align: 512)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1857, line: 289, size: 4608, align: 512, elements: !1970)
!1970 = !{!1971, !1972, !1979}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1969, file: !1857, line: 290, baseType: !1880, size: 4096, align: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1969, file: !1857, line: 291, baseType: !1973, size: 512, offset: 4096)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1857, line: 268, size: 512, elements: !1974)
!1974 = !{!1975, !1976, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1973, file: !1857, line: 269, baseType: !163, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1973, file: !1857, line: 270, baseType: !163, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1973, file: !1857, line: 271, baseType: !1978, size: 384, offset: 128)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 384, elements: !1310)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1969, file: !1857, line: 292, baseType: !1980, offset: 4608)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, elements: !1408)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1862, file: !1857, line: 309, baseType: !1982, size: 32768)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 32768, elements: !1983)
!1983 = !{!1984}
!1984 = !DISubrange(count: 4096)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !894, file: !486, line: 378, baseType: !1986, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !890, file: !486, line: 384, baseType: !1187, size: 192, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !755, file: !486, line: 500, baseType: !506, offset: 6656)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !755, file: !486, line: 501, baseType: !1990, size: 64, offset: 6656)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !486, line: 387, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !755, file: !486, line: 516, baseType: !1398, size: 64, offset: 6720)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !755, file: !486, line: 519, baseType: !93, size: 64, offset: 6784)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !755, file: !486, line: 521, baseType: !1995, size: 64, offset: 6848)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !486, line: 521, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !755, file: !486, line: 545, baseType: !524, size: 32, offset: 6912)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !755, file: !486, line: 548, baseType: !240, size: 8, offset: 6944)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !755, file: !486, line: 550, baseType: !2000, offset: 6952)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2001, line: 142, elements: !407)
!2001 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !755, file: !486, line: 554, baseType: !1645, size: 256, offset: 6976)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !755, file: !486, line: 557, baseType: !157, size: 32, offset: 7232)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !752, file: !486, line: 565, baseType: !2005, offset: 7296)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !2006)
!2006 = !{!2007}
!2007 = !DISubrange(count: -1)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !748, file: !486, line: 151, baseType: !524, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !741, file: !486, line: 156, baseType: !506, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !490, file: !486, line: 159, baseType: !2011, size: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !490, file: !486, line: 159, size: 128, elements: !2012)
!2012 = !{!2013, !2016}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2011, file: !486, line: 161, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !486, line: 161, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2011, file: !486, line: 162, baseType: !77, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !490, file: !486, line: 176, baseType: !106, size: 128, align: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !486, line: 179, baseType: !2019, size: 32, offset: 384)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !486, line: 179, size: 32, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2019, file: !486, line: 184, baseType: !524, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2019, file: !486, line: 192, baseType: !7, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2019, file: !486, line: 194, baseType: !7, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2019, file: !486, line: 195, baseType: !224, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !485, file: !486, line: 199, baseType: !524, size: 32, offset: 416)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !420, file: !31, line: 1964, baseType: !2027, size: 64, offset: 1344)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!292, !357, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2032, line: 12, size: 256, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !{!2034, !2035, !2036, !2037, !2038}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2031, file: !2032, line: 13, baseType: !75, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2031, file: !2032, line: 16, baseType: !224, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2031, file: !2032, line: 23, baseType: !335, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2031, file: !2032, line: 30, baseType: !335, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2031, file: !2032, line: 33, baseType: !2039, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2032, line: 33, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !420, file: !31, line: 1966, baseType: !2027, size: 64, offset: 1408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !358, file: !31, line: 1424, baseType: !2043, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2046)
!2046 = !{!2047, !2093, !2097, !2101, !2102, !2103, !2104, !2105, !2110, !2115, !2119}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2045, file: !25, line: 323, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!224, !2051}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2078, !2079, !2080}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2052, file: !25, line: 295, baseType: !399, size: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2052, file: !25, line: 296, baseType: !84, size: 128, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2052, file: !25, line: 297, baseType: !84, size: 128, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2052, file: !25, line: 298, baseType: !84, size: 128, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2052, file: !25, line: 299, baseType: !870, size: 192, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2052, file: !25, line: 300, baseType: !506, offset: 704)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2052, file: !25, line: 301, baseType: !524, size: 32, offset: 704)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2052, file: !25, line: 302, baseType: !357, size: 64, offset: 768)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2052, file: !25, line: 303, baseType: !2063, size: 64, offset: 832)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2064)
!2064 = !{!2065, !2077}
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !25, line: 69, baseType: !2066, size: 32)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !25, line: 69, size: 32, elements: !2067)
!2067 = !{!2068, !2069, !2070}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2066, file: !25, line: 70, baseType: !179, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2066, file: !25, line: 71, baseType: !188, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2066, file: !25, line: 72, baseType: !2071, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2072, line: 24, baseType: !2073)
!2072 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2072, line: 22, size: 32, elements: !2074)
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2073, file: !2072, line: 23, baseType: !2076, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2072, line: 20, baseType: !185)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2063, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2052, file: !25, line: 304, baseType: !281, size: 64, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2052, file: !25, line: 305, baseType: !335, size: 64, offset: 960)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2052, file: !25, line: 306, baseType: !2081, size: 576, offset: 1024)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2082)
!2082 = !{!2083, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2081, file: !25, line: 206, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !283)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2081, file: !25, line: 207, baseType: !2084, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2081, file: !25, line: 208, baseType: !2084, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2081, file: !25, line: 209, baseType: !2084, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2081, file: !25, line: 210, baseType: !2084, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2081, file: !25, line: 211, baseType: !2084, size: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2081, file: !25, line: 212, baseType: !2084, size: 64, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2081, file: !25, line: 213, baseType: !289, size: 64, offset: 448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2081, file: !25, line: 214, baseType: !289, size: 64, offset: 512)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2045, file: !25, line: 324, baseType: !2094, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2051, !357, !224}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2045, file: !25, line: 325, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !2051}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2045, file: !25, line: 326, baseType: !2048, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2045, file: !25, line: 327, baseType: !2048, size: 64, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2045, file: !25, line: 328, baseType: !2048, size: 64, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2045, file: !25, line: 329, baseType: !448, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2045, file: !25, line: 332, baseType: !2106, size: 64, offset: 448)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!2109, !171}
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2045, file: !25, line: 333, baseType: !2111, size: 64, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!224, !171, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2045, file: !25, line: 335, baseType: !2116, size: 64, offset: 576)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!224, !171, !2109}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2045, file: !25, line: 337, baseType: !2120, size: 64, offset: 640)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!224, !357, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !358, file: !31, line: 1425, baseType: !2125, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2128)
!2128 = !{!2129, !2133, !2134, !2138, !2139, !2140, !2155, !2178, !2182, !2183, !2206}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2127, file: !25, line: 429, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!224, !357, !224, !224, !300}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2127, file: !25, line: 430, baseType: !448, size: 64, offset: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2127, file: !25, line: 431, baseType: !2135, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!224, !357, !7}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2127, file: !25, line: 432, baseType: !2135, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2127, file: !25, line: 433, baseType: !448, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2127, file: !25, line: 434, baseType: !2141, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!224, !357, !224, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2146)
!2146 = !{!2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2145, file: !25, line: 416, baseType: !224, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2145, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2145, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2145, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2145, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2145, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2145, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2145, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2127, file: !25, line: 435, baseType: !2156, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!224, !357, !2063, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2160, file: !25, line: 344, baseType: !224, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2160, file: !25, line: 345, baseType: !163, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2160, file: !25, line: 346, baseType: !163, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2160, file: !25, line: 347, baseType: !163, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2160, file: !25, line: 348, baseType: !163, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2160, file: !25, line: 349, baseType: !163, size: 64, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2160, file: !25, line: 350, baseType: !163, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2160, file: !25, line: 351, baseType: !554, size: 64, offset: 448)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2160, file: !25, line: 353, baseType: !554, size: 64, offset: 512)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2160, file: !25, line: 354, baseType: !224, size: 32, offset: 576)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2160, file: !25, line: 355, baseType: !224, size: 32, offset: 608)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2160, file: !25, line: 356, baseType: !163, size: 64, offset: 640)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2160, file: !25, line: 357, baseType: !163, size: 64, offset: 704)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2160, file: !25, line: 358, baseType: !163, size: 64, offset: 768)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2160, file: !25, line: 359, baseType: !554, size: 64, offset: 832)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2160, file: !25, line: 360, baseType: !224, size: 32, offset: 896)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2127, file: !25, line: 436, baseType: !2179, size: 64, offset: 448)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!224, !357, !2123, !2159}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2127, file: !25, line: 438, baseType: !2156, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2127, file: !25, line: 439, baseType: !2184, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!224, !357, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2188, file: !25, line: 410, baseType: !7, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2188, file: !25, line: 411, baseType: !2192, size: 1344, offset: 64)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2193, size: 1344, elements: !412)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2205}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2193, file: !25, line: 396, baseType: !7, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2193, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2193, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2193, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2193, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2193, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2193, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2193, file: !25, line: 404, baseType: !165, size: 64, offset: 256)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2193, file: !25, line: 405, baseType: !2204, size: 64, offset: 320)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !76, line: 126, baseType: !163)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2193, file: !25, line: 406, baseType: !2204, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2127, file: !25, line: 440, baseType: !2135, size: 64, offset: 640)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !358, file: !31, line: 1426, baseType: !2208, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !358, file: !31, line: 1427, baseType: !335, size: 64, offset: 640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !358, file: !31, line: 1428, baseType: !335, size: 64, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !358, file: !31, line: 1429, baseType: !335, size: 64, offset: 768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !358, file: !31, line: 1430, baseType: !123, size: 64, offset: 832)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !358, file: !31, line: 1431, baseType: !544, size: 256, offset: 896)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !358, file: !31, line: 1432, baseType: !224, size: 32, offset: 1152)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !358, file: !31, line: 1433, baseType: !524, size: 32, offset: 1184)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !358, file: !31, line: 1437, baseType: !2219, size: 64, offset: 1216)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2222)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !358, file: !31, line: 1449, baseType: !2224, size: 64, offset: 1280)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !140, line: 34, size: 64, elements: !2225)
!2225 = !{!2226}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2224, file: !140, line: 35, baseType: !143, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !358, file: !31, line: 1450, baseType: !84, size: 128, offset: 1344)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !358, file: !31, line: 1451, baseType: !2229, size: 64, offset: 1472)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !358, file: !31, line: 1452, baseType: !1611, size: 64, offset: 1536)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !358, file: !31, line: 1453, baseType: !2233, size: 64, offset: 1600)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !358, file: !31, line: 1454, baseType: !399, size: 128, offset: 1664)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !358, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !358, file: !31, line: 1456, baseType: !2238, size: 2432, offset: 1856)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2244, !2276}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !25, line: 519, baseType: !7, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2238, file: !25, line: 520, baseType: !544, size: 256, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2238, file: !25, line: 521, baseType: !2243, size: 192, offset: 320)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 192, elements: !412)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2238, file: !25, line: 522, baseType: !2245, size: 1728, offset: 512)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, size: 1728, elements: !412)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2247)
!2247 = !{!2248, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2246, file: !25, line: 223, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2251)
!2251 = !{!2252, !2253, !2266, !2267}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2250, file: !25, line: 444, baseType: !224, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2250, file: !25, line: 445, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2256, file: !25, line: 311, baseType: !448, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2256, file: !25, line: 312, baseType: !448, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2256, file: !25, line: 313, baseType: !448, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2256, file: !25, line: 314, baseType: !448, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2256, file: !25, line: 315, baseType: !2048, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2256, file: !25, line: 316, baseType: !2048, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2256, file: !25, line: 317, baseType: !2048, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2256, file: !25, line: 318, baseType: !2120, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2250, file: !25, line: 446, baseType: !390, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2250, file: !25, line: 447, baseType: !2249, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2246, file: !25, line: 224, baseType: !224, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2246, file: !25, line: 226, baseType: !84, size: 128, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2246, file: !25, line: 227, baseType: !335, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2246, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2246, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2246, file: !25, line: 230, baseType: !2084, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2246, file: !25, line: 231, baseType: !2084, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2246, file: !25, line: 232, baseType: !77, size: 64, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2238, file: !25, line: 523, baseType: !2277, size: 192, offset: 2240)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2254, size: 192, elements: !412)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !358, file: !31, line: 1458, baseType: !2279, size: 2112, offset: 4288)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2279, file: !31, line: 1411, baseType: !224, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2279, file: !31, line: 1412, baseType: !1166, size: 128, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2279, file: !31, line: 1413, baseType: !2284, size: 1920, offset: 192)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 1920, elements: !412)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2286, line: 12, size: 640, elements: !2287)
!2286 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2287 = !{!2288, !2296, !2298, !2303, !2304}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2285, file: !2286, line: 13, baseType: !2289, size: 320)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2290, line: 17, size: 320, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2291 = !{!2292, !2293, !2294, !2295}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2289, file: !2290, line: 18, baseType: !224, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2289, file: !2290, line: 19, baseType: !224, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2289, file: !2290, line: 20, baseType: !1166, size: 128, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2289, file: !2290, line: 22, baseType: !106, size: 128, align: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2285, file: !2286, line: 14, baseType: !2297, size: 64, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2285, file: !2286, line: 15, baseType: !2299, size: 64, offset: 384)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2300, line: 16, size: 64, elements: !2301)
!2300 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2301 = !{!2302}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2299, file: !2300, line: 17, baseType: !897, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2285, file: !2286, line: 16, baseType: !1166, size: 128, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2285, file: !2286, line: 17, baseType: !524, size: 32, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !358, file: !31, line: 1465, baseType: !77, size: 64, offset: 6400)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !358, file: !31, line: 1468, baseType: !157, size: 32, offset: 6464)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !358, file: !31, line: 1470, baseType: !289, size: 64, offset: 6528)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !358, file: !31, line: 1471, baseType: !289, size: 64, offset: 6592)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !358, file: !31, line: 1473, baseType: !159, size: 32, offset: 6656)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !358, file: !31, line: 1474, baseType: !2311, size: 64, offset: 6720)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !358, file: !31, line: 1477, baseType: !2314, size: 256, offset: 6784)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 256, elements: !1905)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !358, file: !31, line: 1478, baseType: !2316, size: 128, offset: 7040)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2317, line: 18, baseType: !2318)
!2317 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2317, line: 16, size: 128, elements: !2319)
!2319 = !{!2320}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2318, file: !2317, line: 17, baseType: !2321, size: 128)
!2321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 128, elements: !1420)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !358, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !358, file: !31, line: 1481, baseType: !2324, size: 32, offset: 7200)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !76, line: 150, baseType: !7)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !358, file: !31, line: 1487, baseType: !870, size: 192, offset: 7232)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !358, file: !31, line: 1493, baseType: !208, size: 64, offset: 7424)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !358, file: !31, line: 1495, baseType: !2328, size: 64, offset: 7488)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2330)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !125, line: 135, size: 1024, align: 512, elements: !2331)
!2331 = !{!2332, !2336, !2337, !2344, !2350, !2354, !2358, !2362, !2363, !2367, !2371, !2376, !2380}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2330, file: !125, line: 136, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!224, !123, !7}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2330, file: !125, line: 137, baseType: !2333, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2330, file: !125, line: 138, baseType: !2338, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!224, !2341, !2343}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2330, file: !125, line: 139, baseType: !2345, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!224, !2341, !7, !208, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2330, file: !125, line: 141, baseType: !2351, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!224, !2341}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2330, file: !125, line: 142, baseType: !2355, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!224, !123}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2330, file: !125, line: 143, baseType: !2359, size: 64, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !123}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2330, file: !125, line: 144, baseType: !2359, size: 64, offset: 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2330, file: !125, line: 145, baseType: !2364, size: 64, offset: 512)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !123, !171}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2330, file: !125, line: 146, baseType: !2368, size: 64, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!235, !123, !235, !224}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2330, file: !125, line: 147, baseType: !2372, size: 64, offset: 640)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!119, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2330, file: !125, line: 148, baseType: !2377, size: 64, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!224, !300, !240}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2330, file: !125, line: 149, baseType: !2381, size: 64, offset: 768)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!123, !123, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !358, file: !31, line: 1500, baseType: !224, size: 32, offset: 7552)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !358, file: !31, line: 1502, baseType: !2388, size: 448, offset: 7616)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2032, line: 60, size: 448, elements: !2389)
!2389 = !{!2390, !2395, !2396, !2397, !2398, !2399, !2400}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2388, file: !2032, line: 61, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!335, !2394, !2030}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2388, file: !2032, line: 63, baseType: !2391, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2388, file: !2032, line: 66, baseType: !292, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2388, file: !2032, line: 67, baseType: !224, size: 32, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2388, file: !2032, line: 68, baseType: !7, size: 32, offset: 224)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2388, file: !2032, line: 71, baseType: !84, size: 128, offset: 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2388, file: !2032, line: 77, baseType: !2401, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !358, file: !31, line: 1505, baseType: !548, size: 64, offset: 8064)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !358, file: !31, line: 1508, baseType: !548, size: 64, offset: 8128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !358, file: !31, line: 1511, baseType: !224, size: 32, offset: 8192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !358, file: !31, line: 1514, baseType: !686, size: 32, offset: 8224)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !358, file: !31, line: 1517, baseType: !2407, size: 64, offset: 8256)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1646, line: 18, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !358, file: !31, line: 1518, baseType: !395, size: 64, offset: 8320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !358, file: !31, line: 1525, baseType: !1398, size: 64, offset: 8384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !358, file: !31, line: 1532, baseType: !2412, size: 64, offset: 8448)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2413, line: 52, size: 64, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2412, file: !2413, line: 53, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2413, line: 40, size: 256, elements: !2418)
!2418 = !{!2419, !2420, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2417, file: !2413, line: 42, baseType: !506)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2417, file: !2413, line: 44, baseType: !2421, size: 192)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2413, line: 28, size: 192, elements: !2422)
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2421, file: !2413, line: 29, baseType: !84, size: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2421, file: !2413, line: 31, baseType: !292, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2417, file: !2413, line: 49, baseType: !292, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !358, file: !31, line: 1533, baseType: !2412, size: 64, offset: 8512)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !358, file: !31, line: 1534, baseType: !106, size: 128, align: 64, offset: 8576)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !358, file: !31, line: 1535, baseType: !1645, size: 256, offset: 8704)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !358, file: !31, line: 1537, baseType: !870, size: 192, offset: 8960)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !358, file: !31, line: 1542, baseType: !224, size: 32, offset: 9152)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !358, file: !31, line: 1545, baseType: !506, offset: 9184)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !358, file: !31, line: 1546, baseType: !84, size: 128, offset: 9216)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !358, file: !31, line: 1548, baseType: !506, offset: 9344)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !358, file: !31, line: 1549, baseType: !84, size: 128, offset: 9344)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !172, file: !31, line: 624, baseType: !497, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !172, file: !31, line: 631, baseType: !335, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !31, line: 639, baseType: !2438, size: 32, offset: 384)
!2438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !31, line: 639, size: 32, elements: !2439)
!2439 = !{!2440, !2442}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2438, file: !31, line: 640, baseType: !2441, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2438, file: !31, line: 641, baseType: !7, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !172, file: !31, line: 643, baseType: !263, size: 32, offset: 416)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !172, file: !31, line: 644, baseType: !281, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !172, file: !31, line: 645, baseType: !285, size: 128, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !172, file: !31, line: 646, baseType: !285, size: 128, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !172, file: !31, line: 647, baseType: !285, size: 128, offset: 768)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !172, file: !31, line: 648, baseType: !506, offset: 896)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !172, file: !31, line: 649, baseType: !176, size: 16, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !172, file: !31, line: 650, baseType: !1032, size: 8, offset: 912)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !172, file: !31, line: 651, baseType: !1032, size: 8, offset: 920)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !172, file: !31, line: 652, baseType: !2204, size: 64, offset: 960)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !172, file: !31, line: 659, baseType: !335, size: 64, offset: 1024)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !172, file: !31, line: 660, baseType: !544, size: 256, offset: 1088)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !172, file: !31, line: 662, baseType: !335, size: 64, offset: 1344)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !172, file: !31, line: 663, baseType: !335, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !172, file: !31, line: 665, baseType: !399, size: 128, offset: 1472)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !172, file: !31, line: 666, baseType: !84, size: 128, offset: 1600)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !172, file: !31, line: 675, baseType: !84, size: 128, offset: 1728)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !172, file: !31, line: 676, baseType: !84, size: 128, offset: 1856)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !172, file: !31, line: 677, baseType: !84, size: 128, offset: 1984)
!2462 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !31, line: 678, baseType: !2463, size: 128, offset: 2112)
!2463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !31, line: 678, size: 128, elements: !2464)
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2463, file: !31, line: 679, baseType: !395, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2463, file: !31, line: 680, baseType: !106, size: 128, align: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !172, file: !31, line: 682, baseType: !550, size: 64, offset: 2240)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !172, file: !31, line: 683, baseType: !550, size: 64, offset: 2304)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !172, file: !31, line: 684, baseType: !524, size: 32, offset: 2368)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !172, file: !31, line: 685, baseType: !524, size: 32, offset: 2400)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !172, file: !31, line: 686, baseType: !524, size: 32, offset: 2432)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !172, file: !31, line: 688, baseType: !524, size: 32, offset: 2464)
!2473 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !31, line: 690, baseType: !2474, size: 64, offset: 2496)
!2474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !31, line: 690, size: 64, elements: !2475)
!2475 = !{!2476, !2706}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2474, file: !31, line: 691, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2479)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2480)
!2480 = !{!2481, !2482, !2486, !2491, !2495, !2496, !2497, !2501, !2514, !2515, !2530, !2534, !2535, !2539, !2540, !2544, !2549, !2550, !2554, !2558, !2666, !2670, !2671, !2675, !2676, !2680, !2684, !2689, !2693, !2697, !2701, !2705}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2479, file: !31, line: 1823, baseType: !390, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2479, file: !31, line: 1824, baseType: !2483, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!281, !93, !281, !224}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2479, file: !31, line: 1825, baseType: !2487, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!329, !93, !235, !332, !2490}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2479, file: !31, line: 1826, baseType: !2492, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!329, !93, !208, !332, !2490}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2479, file: !31, line: 1827, baseType: !621, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2479, file: !31, line: 1828, baseType: !621, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2479, file: !31, line: 1829, baseType: !2498, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!224, !624, !240}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2479, file: !31, line: 1830, baseType: !2502, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!224, !93, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2507)
!2507 = !{!2508, !2513}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2506, file: !31, line: 1777, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2510)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!224, !2505, !208, !224, !281, !163, !7}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2506, file: !31, line: 1778, baseType: !281, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2479, file: !31, line: 1831, baseType: !2502, size: 64, offset: 512)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2479, file: !31, line: 1832, baseType: !2516, size: 64, offset: 576)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!78, !93, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2521, line: 43, size: 128, elements: !2522)
!2521 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2529}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2520, file: !2521, line: 44, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2521, line: 37, baseType: !2525)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !93, !2528, !2519}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2520, file: !2521, line: 45, baseType: !78, size: 32, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2479, file: !31, line: 1833, baseType: !2531, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!292, !93, !7, !335}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2479, file: !31, line: 1834, baseType: !2531, size: 64, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2479, file: !31, line: 1835, baseType: !2536, size: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!224, !93, !758}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2479, file: !31, line: 1836, baseType: !335, size: 64, offset: 832)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2479, file: !31, line: 1837, baseType: !2541, size: 64, offset: 896)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!224, !171, !93}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2479, file: !31, line: 1838, baseType: !2545, size: 64, offset: 960)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!224, !93, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !77)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2479, file: !31, line: 1839, baseType: !2541, size: 64, offset: 1024)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2479, file: !31, line: 1840, baseType: !2551, size: 64, offset: 1088)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!224, !93, !281, !281, !224}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2479, file: !31, line: 1841, baseType: !2555, size: 64, offset: 1152)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!224, !224, !93, !224}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2479, file: !31, line: 1842, baseType: !2559, size: 64, offset: 1216)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!224, !93, !224, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2596, !2597, !2598, !2611, !2642}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2563, file: !31, line: 1063, baseType: !2562, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2563, file: !31, line: 1064, baseType: !84, size: 128, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2563, file: !31, line: 1065, baseType: !399, size: 128, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2563, file: !31, line: 1066, baseType: !84, size: 128, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2563, file: !31, line: 1069, baseType: !84, size: 128, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2563, file: !31, line: 1072, baseType: !2548, size: 64, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2563, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2563, file: !31, line: 1074, baseType: !169, size: 8, offset: 672)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2563, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2563, file: !31, line: 1076, baseType: !224, size: 32, offset: 736)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2563, file: !31, line: 1077, baseType: !1166, size: 128, offset: 768)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2563, file: !31, line: 1078, baseType: !93, size: 64, offset: 896)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2563, file: !31, line: 1079, baseType: !281, size: 64, offset: 960)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2563, file: !31, line: 1080, baseType: !281, size: 64, offset: 1024)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2563, file: !31, line: 1082, baseType: !2580, size: 64, offset: 1088)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2582)
!2582 = !{!2583, !2591, !2592, !2593, !2594, !2595}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2581, file: !31, line: 1315, baseType: !2584)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2585, line: 20, baseType: !2586)
!2585 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2585, line: 11, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2586, file: !2585, line: 12, baseType: !2589)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !518, line: 33, baseType: !2590)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 31, elements: !407)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2581, file: !31, line: 1316, baseType: !224, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2581, file: !31, line: 1317, baseType: !224, size: 32, offset: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2581, file: !31, line: 1318, baseType: !2580, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2581, file: !31, line: 1319, baseType: !93, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2581, file: !31, line: 1320, baseType: !106, size: 128, align: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2563, file: !31, line: 1084, baseType: !335, size: 64, offset: 1152)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2563, file: !31, line: 1085, baseType: !335, size: 64, offset: 1216)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2563, file: !31, line: 1087, baseType: !2599, size: 64, offset: 1280)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2602)
!2602 = !{!2603, !2607}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2601, file: !31, line: 1012, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{null, !2562, !2562}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2601, file: !31, line: 1013, baseType: !2608, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !2562}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2563, file: !31, line: 1088, baseType: !2612, size: 64, offset: 1344)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2615)
!2615 = !{!2616, !2620, !2624, !2625, !2629, !2633, !2637, !2641}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2614, file: !31, line: 1017, baseType: !2617, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!2548, !2548}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2614, file: !31, line: 1018, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2548}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2614, file: !31, line: 1019, baseType: !2608, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2614, file: !31, line: 1020, baseType: !2626, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!224, !2562, !224}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2614, file: !31, line: 1021, baseType: !2630, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!240, !2562}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2614, file: !31, line: 1022, baseType: !2634, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!224, !2562, !224, !83}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2614, file: !31, line: 1023, baseType: !2638, size: 64, offset: 384)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2562, !598}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2614, file: !31, line: 1024, baseType: !2630, size: 64, offset: 448)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2563, file: !31, line: 1097, baseType: !2643, size: 256, offset: 1408)
!2643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2563, file: !31, line: 1089, size: 256, elements: !2644)
!2644 = !{!2645, !2654, !2660}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2643, file: !31, line: 1090, baseType: !2646, size: 256)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2647, line: 10, size: 256, elements: !2648)
!2647 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2648 = !{!2649, !2650, !2653}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2646, file: !2647, line: 11, baseType: !157, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2646, file: !2647, line: 12, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2647, line: 5, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2646, file: !2647, line: 13, baseType: !84, size: 128, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2643, file: !31, line: 1091, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2647, line: 17, size: 64, elements: !2656)
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2655, file: !2647, line: 18, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2647, line: 16, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2643, file: !31, line: 1096, baseType: !2661, size: 192)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2643, file: !31, line: 1092, size: 192, elements: !2662)
!2662 = !{!2663, !2664, !2665}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2661, file: !31, line: 1093, baseType: !84, size: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2661, file: !31, line: 1094, baseType: !224, size: 32, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2661, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2479, file: !31, line: 1843, baseType: !2667, size: 64, offset: 1280)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!329, !93, !484, !224, !332, !2490, !224}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2479, file: !31, line: 1844, baseType: !798, size: 64, offset: 1344)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2479, file: !31, line: 1845, baseType: !2672, size: 64, offset: 1408)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!224, !224}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2479, file: !31, line: 1846, baseType: !2559, size: 64, offset: 1472)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2479, file: !31, line: 1847, baseType: !2677, size: 64, offset: 1536)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!329, !1786, !93, !2490, !332, !7}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2479, file: !31, line: 1848, baseType: !2681, size: 64, offset: 1600)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!329, !93, !2490, !1786, !332, !7}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2479, file: !31, line: 1849, baseType: !2685, size: 64, offset: 1664)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!224, !93, !292, !2688, !598}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2479, file: !31, line: 1850, baseType: !2690, size: 64, offset: 1728)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!292, !93, !224, !281, !281}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2479, file: !31, line: 1852, baseType: !2694, size: 64, offset: 1792)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{null, !474, !93}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2479, file: !31, line: 1856, baseType: !2698, size: 64, offset: 1856)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!329, !93, !281, !93, !281, !332, !7}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2479, file: !31, line: 1858, baseType: !2702, size: 64, offset: 1920)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!281, !93, !281, !93, !281, !281, !7}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2479, file: !31, line: 1861, baseType: !2551, size: 64, offset: 1984)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2474, file: !31, line: 692, baseType: !427, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !172, file: !31, line: 694, baseType: !2708, size: 64, offset: 2560)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2709, file: !31, line: 1101, baseType: !506)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2709, file: !31, line: 1102, baseType: !84, size: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2709, file: !31, line: 1103, baseType: !84, size: 128, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2709, file: !31, line: 1104, baseType: !84, size: 128, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !172, file: !31, line: 695, baseType: !498, size: 1216, align: 64, offset: 2624)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !172, file: !31, line: 696, baseType: !84, size: 128, offset: 3840)
!2717 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !31, line: 697, baseType: !2718, size: 64, offset: 3968)
!2718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !31, line: 697, size: 64, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2725, !2726}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2718, file: !31, line: 698, baseType: !1786, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2718, file: !31, line: 699, baseType: !2229, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2718, file: !31, line: 700, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2718, file: !31, line: 701, baseType: !235, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2718, file: !31, line: 702, baseType: !7, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !172, file: !31, line: 705, baseType: !159, size: 32, offset: 4032)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !172, file: !31, line: 708, baseType: !159, size: 32, offset: 4064)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !172, file: !31, line: 709, baseType: !2311, size: 64, offset: 4096)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !172, file: !31, line: 720, baseType: !77, size: 64, offset: 4160)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !124, file: !125, line: 98, baseType: !2732, size: 256, offset: 448)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !1905)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !124, file: !125, line: 101, baseType: !2734, size: 32, offset: 704)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2735, line: 25, size: 32, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !2734, file: !2735, line: 26, baseType: !2738, size: 32)
!2738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2734, file: !2735, line: 26, size: 32, elements: !2739)
!2739 = !{!2740}
!2740 = !DIDerivedType(tag: DW_TAG_member, scope: !2738, file: !2735, line: 30, baseType: !2741, size: 32)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !2735, line: 30, size: 32, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2741, file: !2735, line: 31, baseType: !506)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2741, file: !2735, line: 32, baseType: !224, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !124, file: !125, line: 102, baseType: !2328, size: 64, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !124, file: !125, line: 103, baseType: !357, size: 64, offset: 832)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !124, file: !125, line: 104, baseType: !335, size: 64, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !124, file: !125, line: 105, baseType: !77, size: 64, offset: 960)
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !125, line: 107, baseType: !2750, size: 128, offset: 1024)
!2750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !125, line: 107, size: 128, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2750, file: !125, line: 108, baseType: !84, size: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2750, file: !125, line: 109, baseType: !2528, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !124, file: !125, line: 111, baseType: !84, size: 128, offset: 1152)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !124, file: !125, line: 112, baseType: !84, size: 128, offset: 1280)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !124, file: !125, line: 120, baseType: !2757, size: 128, offset: 1408)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !125, line: 116, size: 128, elements: !2758)
!2758 = !{!2759, !2760, !2761}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2757, file: !125, line: 117, baseType: !399, size: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2757, file: !125, line: 118, baseType: !139, size: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2757, file: !125, line: 119, baseType: !106, size: 128, align: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !94, file: !31, line: 922, baseType: !171, size: 64, offset: 256)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !94, file: !31, line: 923, baseType: !2477, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !94, file: !31, line: 929, baseType: !506, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !94, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !94, file: !31, line: 931, baseType: !548, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !94, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !94, file: !31, line: 933, baseType: !2324, size: 32, offset: 544)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !94, file: !31, line: 934, baseType: !870, size: 192, offset: 576)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !94, file: !31, line: 935, baseType: !281, size: 64, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !94, file: !31, line: 936, baseType: !2772, size: 192, offset: 832)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2772, file: !31, line: 886, baseType: !2584)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2772, file: !31, line: 887, baseType: !1156, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2772, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2772, file: !31, line: 889, baseType: !179, size: 32, offset: 96)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2772, file: !31, line: 889, baseType: !179, size: 32, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2772, file: !31, line: 890, baseType: !224, size: 32, offset: 160)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !94, file: !31, line: 937, baseType: !1232, size: 64, offset: 1024)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !94, file: !31, line: 938, baseType: !2782, size: 256, offset: 1088)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2782, file: !31, line: 897, baseType: !335, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2782, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2782, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2782, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2782, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2782, file: !31, line: 904, baseType: !281, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !94, file: !31, line: 940, baseType: !163, size: 64, offset: 1344)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !94, file: !31, line: 945, baseType: !77, size: 64, offset: 1408)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !94, file: !31, line: 949, baseType: !84, size: 128, offset: 1472)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !94, file: !31, line: 950, baseType: !84, size: 128, offset: 1600)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !94, file: !31, line: 952, baseType: !497, size: 64, offset: 1728)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !94, file: !31, line: 953, baseType: !686, size: 32, offset: 1792)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !94, file: !31, line: 954, baseType: !686, size: 32, offset: 1824)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "user_name", scope: !89, file: !90, line: 44, baseType: !2314, size: 256, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !89, file: !90, line: 49, baseType: !1166, size: 128, offset: 320)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !90, line: 50, baseType: !335, size: 64, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !89, file: !90, line: 52, baseType: !2801, size: 64, offset: 512)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !60, line: 65, size: 512, elements: !2803)
!2803 = !{!2804, !2806, !2835, !2841, !2842, !2843, !2844, !2849}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2802, file: !60, line: 66, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2802, file: !60, line: 67, baseType: !2807, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2809)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !60, line: 125, size: 576, elements: !2810)
!2810 = !{!2811, !2812, !2816, !2817, !2821, !2822, !2826, !2830, !2834}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !2809, file: !60, line: 132, baseType: !240, size: 8)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !2809, file: !60, line: 143, baseType: !2813, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!208, !2801}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !2809, file: !60, line: 155, baseType: !2813, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !2809, file: !60, line: 192, baseType: !2818, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!240, !2801}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !2809, file: !60, line: 209, baseType: !2818, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2809, file: !60, line: 231, baseType: !2823, size: 64, offset: 320)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!292, !2801, !240, !292}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2809, file: !60, line: 242, baseType: !2827, size: 64, offset: 384)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{null, !2801}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !2809, file: !60, line: 252, baseType: !2831, size: 64, offset: 448)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2801, !235, !224}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !2809, file: !60, line: 262, baseType: !2831, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !2802, file: !60, line: 84, baseType: !2836, size: 128, offset: 128)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2802, file: !60, line: 84, size: 128, elements: !2837)
!2837 = !{!2838, !2839, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !2836, file: !60, line: 85, baseType: !84, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2836, file: !60, line: 87, baseType: !980, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2836, file: !60, line: 89, baseType: !106, size: 128, align: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2802, file: !60, line: 91, baseType: !163, size: 64, offset: 256)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !2802, file: !60, line: 92, baseType: !163, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2802, file: !60, line: 93, baseType: !335, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2802, file: !60, line: 94, baseType: !2845, size: 32, offset: 448)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2846, line: 19, size: 32, elements: !2847)
!2846 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2847 = !{!2848}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2845, file: !2846, line: 20, baseType: !911, size: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !2802, file: !60, line: 95, baseType: !224, size: 32, offset: 480)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !89, file: !90, line: 53, baseType: !2851, size: 192, offset: 576)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_cb", file: !60, line: 116, size: 192, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2851, file: !60, line: 117, baseType: !84, size: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2851, file: !60, line: 118, baseType: !2855, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_fence_func_t", file: !60, line: 105, baseType: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !2801, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_array", file: !2863, line: 37, size: 832, elements: !2864)
!2863 = !DIFile(filename: "./include/linux/dma-fence-array.h", directory: "/home/lizy2001/genbc/linux")
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2871}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2862, file: !2863, line: 38, baseType: !2802, size: 512)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2862, file: !2863, line: 40, baseType: !506, offset: 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !2862, file: !2863, line: 41, baseType: !7, size: 32, offset: 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "num_pending", scope: !2862, file: !2863, line: 42, baseType: !524, size: 32, offset: 544)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !2862, file: !2863, line: 43, baseType: !2870, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2862, file: !2863, line: 45, baseType: !2872, size: 192, offset: 640)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !2873, line: 16, size: 192, elements: !2874)
!2873 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/lizy2001/genbc/linux")
!2874 = !{!2875, !2895}
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !2872, file: !2873, line: 17, baseType: !2876, size: 128)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2872, file: !2873, line: 17, size: 128, elements: !2877)
!2877 = !{!2878, !2890}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2876, file: !2873, line: 18, baseType: !2879, size: 128)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2880, line: 58, size: 128, elements: !2881)
!2880 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!2881 = !{!2882, !2883, !2888, !2889}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2879, file: !2880, line: 59, baseType: !100, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2879, file: !2880, line: 60, baseType: !2884, size: 32, offset: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2879, file: !2880, line: 60, size: 32, elements: !2885)
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2884, file: !2880, line: 61, baseType: !7, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2884, file: !2880, line: 62, baseType: !524, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2879, file: !2880, line: 65, baseType: !636, size: 16, offset: 96)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2879, file: !2880, line: 65, baseType: !636, size: 16, offset: 112)
!2890 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !2873, line: 19, baseType: !2891, size: 128)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2876, file: !2873, line: 19, size: 128, elements: !2892)
!2892 = !{!2893, !2894}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "llnode", scope: !2891, file: !2873, line: 20, baseType: !100, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2891, file: !2873, line: 21, baseType: !524, size: 32, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2872, file: !2873, line: 24, baseType: !2896, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !76, line: 37, baseType: !335)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!2902 = !{!2903, !0}
!2903 = !DIGlobalVariableExpression(var: !2904, expr: !DIExpression())
!2904 = distinct !DIGlobalVariable(name: "__key", scope: !2905, file: !3, line: 35, type: !405, isLocal: true, isDefinition: true)
!2905 = distinct !DISubprogram(name: "sync_file_alloc", scope: !3, file: !3, line: 22, type: !2906, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!88}
!2908 = !{i32 7, !"Dwarf Version", i32 4}
!2909 = !{i32 2, !"Debug Info Version", i32 3}
!2910 = !{i32 1, !"wchar_size", i32 2}
!2911 = !{i32 1, !"Code Model", i32 2}
!2912 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2913 = distinct !DISubprogram(name: "sync_file_create", scope: !3, file: !3, line: 64, type: !2914, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !407)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!88, !2801}
!2916 = !DILocalVariable(name: "fence", arg: 1, scope: !2913, file: !3, line: 64, type: !2801)
!2917 = !DILocation(line: 64, column: 54, scope: !2913)
!2918 = !DILocalVariable(name: "sync_file", scope: !2913, file: !3, line: 66, type: !88)
!2919 = !DILocation(line: 66, column: 20, scope: !2913)
!2920 = !DILocation(line: 68, column: 14, scope: !2913)
!2921 = !DILocation(line: 68, column: 12, scope: !2913)
!2922 = !DILocation(line: 69, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 69, column: 6)
!2924 = !DILocation(line: 69, column: 6, scope: !2913)
!2925 = !DILocation(line: 70, column: 3, scope: !2923)
!2926 = !DILocation(line: 72, column: 35, scope: !2913)
!2927 = !DILocation(line: 72, column: 21, scope: !2913)
!2928 = !DILocation(line: 72, column: 2, scope: !2913)
!2929 = !DILocation(line: 72, column: 13, scope: !2913)
!2930 = !DILocation(line: 72, column: 19, scope: !2913)
!2931 = !DILocation(line: 74, column: 9, scope: !2913)
!2932 = !DILocation(line: 74, column: 2, scope: !2913)
!2933 = !DILocation(line: 75, column: 1, scope: !2913)
!2934 = !DILocalVariable(name: "sync_file", scope: !2905, file: !3, line: 24, type: !88)
!2935 = !DILocation(line: 24, column: 20, scope: !2905)
!2936 = !DILocation(line: 26, column: 14, scope: !2905)
!2937 = !DILocation(line: 26, column: 12, scope: !2905)
!2938 = !DILocation(line: 27, column: 7, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 27, column: 6)
!2940 = !DILocation(line: 27, column: 6, scope: !2905)
!2941 = !DILocation(line: 28, column: 3, scope: !2939)
!2942 = !DILocation(line: 31, column: 11, scope: !2905)
!2943 = !DILocation(line: 30, column: 20, scope: !2905)
!2944 = !DILocation(line: 30, column: 2, scope: !2905)
!2945 = !DILocation(line: 30, column: 13, scope: !2905)
!2946 = !DILocation(line: 30, column: 18, scope: !2905)
!2947 = !DILocation(line: 32, column: 13, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 32, column: 6)
!2949 = !DILocation(line: 32, column: 24, scope: !2948)
!2950 = !DILocation(line: 32, column: 6, scope: !2948)
!2951 = !DILocation(line: 32, column: 6, scope: !2905)
!2952 = !DILocation(line: 33, column: 3, scope: !2948)
!2953 = !DILocation(line: 35, column: 2, scope: !2905)
!2954 = !DILocation(line: 35, column: 2, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 35, column: 2)
!2956 = !DILocation(line: 37, column: 18, scope: !2905)
!2957 = !DILocation(line: 37, column: 29, scope: !2905)
!2958 = !DILocation(line: 37, column: 32, scope: !2905)
!2959 = !DILocation(line: 37, column: 2, scope: !2905)
!2960 = !DILocation(line: 39, column: 9, scope: !2905)
!2961 = !DILocation(line: 39, column: 2, scope: !2905)
!2962 = !DILabel(scope: !2905, name: "err", file: !3, line: 41)
!2963 = !DILocation(line: 41, column: 1, scope: !2905)
!2964 = !DILocation(line: 42, column: 8, scope: !2905)
!2965 = !DILocation(line: 42, column: 2, scope: !2905)
!2966 = !DILocation(line: 43, column: 2, scope: !2905)
!2967 = !DILocation(line: 44, column: 1, scope: !2905)
!2968 = distinct !DISubprogram(name: "dma_fence_get", scope: !60, file: !60, line: 288, type: !2969, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!2801, !2801}
!2971 = !DILocalVariable(name: "fence", arg: 1, scope: !2968, file: !60, line: 288, type: !2801)
!2972 = !DILocation(line: 288, column: 65, scope: !2968)
!2973 = !DILocation(line: 290, column: 6, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2968, file: !60, line: 290, column: 6)
!2975 = !DILocation(line: 290, column: 6, scope: !2968)
!2976 = !DILocation(line: 291, column: 13, scope: !2974)
!2977 = !DILocation(line: 291, column: 20, scope: !2974)
!2978 = !DILocation(line: 291, column: 3, scope: !2974)
!2979 = !DILocation(line: 292, column: 9, scope: !2968)
!2980 = !DILocation(line: 292, column: 2, scope: !2968)
!2981 = distinct !DISubprogram(name: "sync_file_get_fence", scope: !3, file: !3, line: 102, type: !2982, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !407)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!2801, !224}
!2984 = !DILocalVariable(name: "fd", arg: 1, scope: !2981, file: !3, line: 102, type: !224)
!2985 = !DILocation(line: 102, column: 43, scope: !2981)
!2986 = !DILocalVariable(name: "sync_file", scope: !2981, file: !3, line: 104, type: !88)
!2987 = !DILocation(line: 104, column: 20, scope: !2981)
!2988 = !DILocalVariable(name: "fence", scope: !2981, file: !3, line: 105, type: !2801)
!2989 = !DILocation(line: 105, column: 20, scope: !2981)
!2990 = !DILocation(line: 107, column: 30, scope: !2981)
!2991 = !DILocation(line: 107, column: 14, scope: !2981)
!2992 = !DILocation(line: 107, column: 12, scope: !2981)
!2993 = !DILocation(line: 108, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 108, column: 6)
!2995 = !DILocation(line: 108, column: 6, scope: !2981)
!2996 = !DILocation(line: 109, column: 3, scope: !2994)
!2997 = !DILocation(line: 111, column: 24, scope: !2981)
!2998 = !DILocation(line: 111, column: 35, scope: !2981)
!2999 = !DILocation(line: 111, column: 10, scope: !2981)
!3000 = !DILocation(line: 111, column: 8, scope: !2981)
!3001 = !DILocation(line: 112, column: 7, scope: !2981)
!3002 = !DILocation(line: 112, column: 18, scope: !2981)
!3003 = !DILocation(line: 112, column: 2, scope: !2981)
!3004 = !DILocation(line: 114, column: 9, scope: !2981)
!3005 = !DILocation(line: 114, column: 2, scope: !2981)
!3006 = !DILocation(line: 115, column: 1, scope: !2981)
!3007 = distinct !DISubprogram(name: "sync_file_fdget", scope: !3, file: !3, line: 78, type: !3008, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!88, !224}
!3010 = !DILocalVariable(name: "fd", arg: 1, scope: !3007, file: !3, line: 78, type: !224)
!3011 = !DILocation(line: 78, column: 46, scope: !3007)
!3012 = !DILocalVariable(name: "file", scope: !3007, file: !3, line: 80, type: !93)
!3013 = !DILocation(line: 80, column: 15, scope: !3007)
!3014 = !DILocation(line: 80, column: 27, scope: !3007)
!3015 = !DILocation(line: 80, column: 22, scope: !3007)
!3016 = !DILocation(line: 82, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 82, column: 6)
!3018 = !DILocation(line: 82, column: 6, scope: !3007)
!3019 = !DILocation(line: 83, column: 3, scope: !3017)
!3020 = !DILocation(line: 85, column: 6, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 85, column: 6)
!3022 = !DILocation(line: 85, column: 12, scope: !3021)
!3023 = !DILocation(line: 85, column: 17, scope: !3021)
!3024 = !DILocation(line: 85, column: 6, scope: !3007)
!3025 = !DILocation(line: 86, column: 3, scope: !3021)
!3026 = !DILocation(line: 88, column: 9, scope: !3007)
!3027 = !DILocation(line: 88, column: 15, scope: !3007)
!3028 = !DILocation(line: 88, column: 2, scope: !3007)
!3029 = !DILabel(scope: !3007, name: "err", file: !3, line: 90)
!3030 = !DILocation(line: 90, column: 1, scope: !3007)
!3031 = !DILocation(line: 91, column: 7, scope: !3007)
!3032 = !DILocation(line: 91, column: 2, scope: !3007)
!3033 = !DILocation(line: 92, column: 2, scope: !3007)
!3034 = !DILocation(line: 93, column: 1, scope: !3007)
!3035 = distinct !DISubprogram(name: "sync_file_get_name", scope: !3, file: !3, line: 131, type: !3036, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!235, !88, !235, !224}
!3038 = !DILocalVariable(name: "sync_file", arg: 1, scope: !3035, file: !3, line: 131, type: !88)
!3039 = !DILocation(line: 131, column: 44, scope: !3035)
!3040 = !DILocalVariable(name: "buf", arg: 2, scope: !3035, file: !3, line: 131, type: !235)
!3041 = !DILocation(line: 131, column: 61, scope: !3035)
!3042 = !DILocalVariable(name: "len", arg: 3, scope: !3035, file: !3, line: 131, type: !224)
!3043 = !DILocation(line: 131, column: 70, scope: !3035)
!3044 = !DILocation(line: 133, column: 6, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 133, column: 6)
!3046 = !DILocation(line: 133, column: 17, scope: !3045)
!3047 = !DILocation(line: 133, column: 6, scope: !3035)
!3048 = !DILocation(line: 134, column: 11, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 133, column: 31)
!3050 = !DILocation(line: 134, column: 16, scope: !3049)
!3051 = !DILocation(line: 134, column: 27, scope: !3049)
!3052 = !DILocation(line: 134, column: 38, scope: !3049)
!3053 = !DILocation(line: 134, column: 3, scope: !3049)
!3054 = !DILocation(line: 135, column: 2, scope: !3049)
!3055 = !DILocalVariable(name: "fence", scope: !3056, file: !3, line: 136, type: !2801)
!3056 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 135, column: 9)
!3057 = !DILocation(line: 136, column: 21, scope: !3056)
!3058 = !DILocation(line: 136, column: 29, scope: !3056)
!3059 = !DILocation(line: 136, column: 40, scope: !3056)
!3060 = !DILocation(line: 138, column: 12, scope: !3056)
!3061 = !DILocation(line: 138, column: 17, scope: !3056)
!3062 = !DILocation(line: 139, column: 5, scope: !3056)
!3063 = !DILocation(line: 139, column: 12, scope: !3056)
!3064 = !DILocation(line: 139, column: 17, scope: !3056)
!3065 = !DILocation(line: 139, column: 33, scope: !3056)
!3066 = !DILocation(line: 140, column: 5, scope: !3056)
!3067 = !DILocation(line: 140, column: 12, scope: !3056)
!3068 = !DILocation(line: 140, column: 17, scope: !3056)
!3069 = !DILocation(line: 140, column: 35, scope: !3056)
!3070 = !DILocation(line: 141, column: 5, scope: !3056)
!3071 = !DILocation(line: 141, column: 12, scope: !3056)
!3072 = !DILocation(line: 142, column: 5, scope: !3056)
!3073 = !DILocation(line: 142, column: 12, scope: !3056)
!3074 = !DILocation(line: 138, column: 3, scope: !3056)
!3075 = !DILocation(line: 145, column: 9, scope: !3035)
!3076 = !DILocation(line: 145, column: 2, scope: !3035)
!3077 = distinct !DISubprogram(name: "kzalloc", scope: !48, file: !48, line: 662, type: !3078, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!77, !332, !75}
!3080 = !DILocalVariable(name: "s", arg: 1, scope: !3081, file: !48, line: 445, type: !712)
!3081 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !48, file: !48, line: 445, type: !3082, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!77, !712, !75, !332}
!3084 = !DILocation(line: 445, column: 72, scope: !3081, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 552, column: 10, scope: !3086, inlinedAt: !3089)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !48, line: 540, column: 34)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !48, line: 540, column: 6)
!3088 = distinct !DISubprogram(name: "kmalloc", scope: !48, file: !48, line: 538, type: !3078, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3089 = distinct !DILocation(line: 664, column: 9, scope: !3077)
!3090 = !DILocalVariable(name: "flags", arg: 2, scope: !3081, file: !48, line: 446, type: !75)
!3091 = !DILocation(line: 446, column: 9, scope: !3081, inlinedAt: !3085)
!3092 = !DILocalVariable(name: "size", arg: 3, scope: !3081, file: !48, line: 446, type: !332)
!3093 = !DILocation(line: 446, column: 23, scope: !3081, inlinedAt: !3085)
!3094 = !DILocalVariable(name: "ret", scope: !3081, file: !48, line: 448, type: !77)
!3095 = !DILocation(line: 448, column: 8, scope: !3081, inlinedAt: !3085)
!3096 = !DILocalVariable(name: "flags", arg: 1, scope: !3097, file: !48, line: 318, type: !75)
!3097 = distinct !DISubprogram(name: "kmalloc_type", scope: !48, file: !48, line: 318, type: !3098, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!47, !75}
!3100 = !DILocation(line: 318, column: 67, scope: !3097, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 553, column: 20, scope: !3086, inlinedAt: !3089)
!3102 = !DILocalVariable(name: "size", arg: 1, scope: !3103, file: !48, line: 346, type: !332)
!3103 = distinct !DISubprogram(name: "kmalloc_index", scope: !48, file: !48, line: 346, type: !3104, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!7, !332}
!3106 = !DILocation(line: 346, column: 58, scope: !3103, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 547, column: 11, scope: !3086, inlinedAt: !3089)
!3108 = !DILocalVariable(name: "size", arg: 1, scope: !3109, file: !48, line: 472, type: !332)
!3109 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !48, file: !48, line: 472, type: !3110, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!77, !332, !75, !7}
!3112 = !DILocation(line: 472, column: 28, scope: !3109, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 481, column: 9, scope: !3114, inlinedAt: !3115)
!3114 = distinct !DISubprogram(name: "kmalloc_large", scope: !48, file: !48, line: 478, type: !3078, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3115 = distinct !DILocation(line: 545, column: 11, scope: !3116, inlinedAt: !3089)
!3116 = distinct !DILexicalBlock(scope: !3086, file: !48, line: 544, column: 7)
!3117 = !DILocalVariable(name: "flags", arg: 2, scope: !3109, file: !48, line: 472, type: !75)
!3118 = !DILocation(line: 472, column: 40, scope: !3109, inlinedAt: !3113)
!3119 = !DILocalVariable(name: "order", arg: 3, scope: !3109, file: !48, line: 472, type: !7)
!3120 = !DILocation(line: 472, column: 60, scope: !3109, inlinedAt: !3113)
!3121 = !DILocalVariable(name: "size", arg: 1, scope: !3114, file: !48, line: 478, type: !332)
!3122 = !DILocation(line: 478, column: 51, scope: !3114, inlinedAt: !3115)
!3123 = !DILocalVariable(name: "flags", arg: 2, scope: !3114, file: !48, line: 478, type: !75)
!3124 = !DILocation(line: 478, column: 63, scope: !3114, inlinedAt: !3115)
!3125 = !DILocalVariable(name: "order", scope: !3114, file: !48, line: 480, type: !7)
!3126 = !DILocation(line: 480, column: 15, scope: !3114, inlinedAt: !3115)
!3127 = !DILocalVariable(name: "size", arg: 1, scope: !3088, file: !48, line: 538, type: !332)
!3128 = !DILocation(line: 538, column: 45, scope: !3088, inlinedAt: !3089)
!3129 = !DILocalVariable(name: "flags", arg: 2, scope: !3088, file: !48, line: 538, type: !75)
!3130 = !DILocation(line: 538, column: 57, scope: !3088, inlinedAt: !3089)
!3131 = !DILocalVariable(name: "index", scope: !3086, file: !48, line: 542, type: !7)
!3132 = !DILocation(line: 542, column: 16, scope: !3086, inlinedAt: !3089)
!3133 = !DILocalVariable(name: "size", arg: 1, scope: !3077, file: !48, line: 662, type: !332)
!3134 = !DILocation(line: 662, column: 36, scope: !3077)
!3135 = !DILocalVariable(name: "flags", arg: 2, scope: !3077, file: !48, line: 662, type: !75)
!3136 = !DILocation(line: 662, column: 48, scope: !3077)
!3137 = !DILocation(line: 664, column: 17, scope: !3077)
!3138 = !DILocation(line: 664, column: 23, scope: !3077)
!3139 = !DILocation(line: 664, column: 29, scope: !3077)
!3140 = !DILocation(line: 540, column: 27, scope: !3087, inlinedAt: !3089)
!3141 = !DILocation(line: 540, column: 6, scope: !3087, inlinedAt: !3089)
!3142 = !DILocation(line: 540, column: 6, scope: !3088, inlinedAt: !3089)
!3143 = !DILocation(line: 544, column: 7, scope: !3116, inlinedAt: !3089)
!3144 = !DILocation(line: 544, column: 12, scope: !3116, inlinedAt: !3089)
!3145 = !DILocation(line: 544, column: 7, scope: !3086, inlinedAt: !3089)
!3146 = !DILocation(line: 545, column: 25, scope: !3116, inlinedAt: !3089)
!3147 = !DILocation(line: 545, column: 31, scope: !3116, inlinedAt: !3089)
!3148 = !DILocation(line: 480, column: 33, scope: !3114, inlinedAt: !3115)
!3149 = !DILocation(line: 480, column: 23, scope: !3114, inlinedAt: !3115)
!3150 = !DILocation(line: 481, column: 29, scope: !3114, inlinedAt: !3115)
!3151 = !DILocation(line: 481, column: 35, scope: !3114, inlinedAt: !3115)
!3152 = !DILocation(line: 481, column: 42, scope: !3114, inlinedAt: !3115)
!3153 = !DILocation(line: 474, column: 23, scope: !3109, inlinedAt: !3113)
!3154 = !DILocation(line: 474, column: 29, scope: !3109, inlinedAt: !3113)
!3155 = !DILocation(line: 474, column: 36, scope: !3109, inlinedAt: !3113)
!3156 = !DILocation(line: 474, column: 9, scope: !3109, inlinedAt: !3113)
!3157 = !DILocation(line: 545, column: 4, scope: !3116, inlinedAt: !3089)
!3158 = !DILocation(line: 547, column: 25, scope: !3086, inlinedAt: !3089)
!3159 = !DILocation(line: 348, column: 7, scope: !3160, inlinedAt: !3107)
!3160 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 348, column: 6)
!3161 = !DILocation(line: 348, column: 6, scope: !3103, inlinedAt: !3107)
!3162 = !DILocation(line: 349, column: 3, scope: !3160, inlinedAt: !3107)
!3163 = !DILocation(line: 351, column: 6, scope: !3164, inlinedAt: !3107)
!3164 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 351, column: 6)
!3165 = !DILocation(line: 351, column: 11, scope: !3164, inlinedAt: !3107)
!3166 = !DILocation(line: 351, column: 6, scope: !3103, inlinedAt: !3107)
!3167 = !DILocation(line: 352, column: 3, scope: !3164, inlinedAt: !3107)
!3168 = !DILocation(line: 354, column: 32, scope: !3169, inlinedAt: !3107)
!3169 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 354, column: 6)
!3170 = !DILocation(line: 354, column: 37, scope: !3169, inlinedAt: !3107)
!3171 = !DILocation(line: 354, column: 42, scope: !3169, inlinedAt: !3107)
!3172 = !DILocation(line: 354, column: 45, scope: !3169, inlinedAt: !3107)
!3173 = !DILocation(line: 354, column: 50, scope: !3169, inlinedAt: !3107)
!3174 = !DILocation(line: 354, column: 6, scope: !3103, inlinedAt: !3107)
!3175 = !DILocation(line: 355, column: 3, scope: !3169, inlinedAt: !3107)
!3176 = !DILocation(line: 356, column: 32, scope: !3177, inlinedAt: !3107)
!3177 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 356, column: 6)
!3178 = !DILocation(line: 356, column: 37, scope: !3177, inlinedAt: !3107)
!3179 = !DILocation(line: 356, column: 43, scope: !3177, inlinedAt: !3107)
!3180 = !DILocation(line: 356, column: 46, scope: !3177, inlinedAt: !3107)
!3181 = !DILocation(line: 356, column: 51, scope: !3177, inlinedAt: !3107)
!3182 = !DILocation(line: 356, column: 6, scope: !3103, inlinedAt: !3107)
!3183 = !DILocation(line: 357, column: 3, scope: !3177, inlinedAt: !3107)
!3184 = !DILocation(line: 358, column: 6, scope: !3185, inlinedAt: !3107)
!3185 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 358, column: 6)
!3186 = !DILocation(line: 358, column: 11, scope: !3185, inlinedAt: !3107)
!3187 = !DILocation(line: 358, column: 6, scope: !3103, inlinedAt: !3107)
!3188 = !DILocation(line: 358, column: 26, scope: !3185, inlinedAt: !3107)
!3189 = !DILocation(line: 359, column: 6, scope: !3190, inlinedAt: !3107)
!3190 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 359, column: 6)
!3191 = !DILocation(line: 359, column: 11, scope: !3190, inlinedAt: !3107)
!3192 = !DILocation(line: 359, column: 6, scope: !3103, inlinedAt: !3107)
!3193 = !DILocation(line: 359, column: 26, scope: !3190, inlinedAt: !3107)
!3194 = !DILocation(line: 360, column: 6, scope: !3195, inlinedAt: !3107)
!3195 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 360, column: 6)
!3196 = !DILocation(line: 360, column: 11, scope: !3195, inlinedAt: !3107)
!3197 = !DILocation(line: 360, column: 6, scope: !3103, inlinedAt: !3107)
!3198 = !DILocation(line: 360, column: 26, scope: !3195, inlinedAt: !3107)
!3199 = !DILocation(line: 361, column: 6, scope: !3200, inlinedAt: !3107)
!3200 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 361, column: 6)
!3201 = !DILocation(line: 361, column: 11, scope: !3200, inlinedAt: !3107)
!3202 = !DILocation(line: 361, column: 6, scope: !3103, inlinedAt: !3107)
!3203 = !DILocation(line: 361, column: 26, scope: !3200, inlinedAt: !3107)
!3204 = !DILocation(line: 362, column: 6, scope: !3205, inlinedAt: !3107)
!3205 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 362, column: 6)
!3206 = !DILocation(line: 362, column: 11, scope: !3205, inlinedAt: !3107)
!3207 = !DILocation(line: 362, column: 6, scope: !3103, inlinedAt: !3107)
!3208 = !DILocation(line: 362, column: 26, scope: !3205, inlinedAt: !3107)
!3209 = !DILocation(line: 363, column: 6, scope: !3210, inlinedAt: !3107)
!3210 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 363, column: 6)
!3211 = !DILocation(line: 363, column: 11, scope: !3210, inlinedAt: !3107)
!3212 = !DILocation(line: 363, column: 6, scope: !3103, inlinedAt: !3107)
!3213 = !DILocation(line: 363, column: 26, scope: !3210, inlinedAt: !3107)
!3214 = !DILocation(line: 364, column: 6, scope: !3215, inlinedAt: !3107)
!3215 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 364, column: 6)
!3216 = !DILocation(line: 364, column: 11, scope: !3215, inlinedAt: !3107)
!3217 = !DILocation(line: 364, column: 6, scope: !3103, inlinedAt: !3107)
!3218 = !DILocation(line: 364, column: 26, scope: !3215, inlinedAt: !3107)
!3219 = !DILocation(line: 365, column: 6, scope: !3220, inlinedAt: !3107)
!3220 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 365, column: 6)
!3221 = !DILocation(line: 365, column: 11, scope: !3220, inlinedAt: !3107)
!3222 = !DILocation(line: 365, column: 6, scope: !3103, inlinedAt: !3107)
!3223 = !DILocation(line: 365, column: 26, scope: !3220, inlinedAt: !3107)
!3224 = !DILocation(line: 366, column: 6, scope: !3225, inlinedAt: !3107)
!3225 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 366, column: 6)
!3226 = !DILocation(line: 366, column: 11, scope: !3225, inlinedAt: !3107)
!3227 = !DILocation(line: 366, column: 6, scope: !3103, inlinedAt: !3107)
!3228 = !DILocation(line: 366, column: 26, scope: !3225, inlinedAt: !3107)
!3229 = !DILocation(line: 367, column: 6, scope: !3230, inlinedAt: !3107)
!3230 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 367, column: 6)
!3231 = !DILocation(line: 367, column: 11, scope: !3230, inlinedAt: !3107)
!3232 = !DILocation(line: 367, column: 6, scope: !3103, inlinedAt: !3107)
!3233 = !DILocation(line: 367, column: 26, scope: !3230, inlinedAt: !3107)
!3234 = !DILocation(line: 368, column: 6, scope: !3235, inlinedAt: !3107)
!3235 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 368, column: 6)
!3236 = !DILocation(line: 368, column: 11, scope: !3235, inlinedAt: !3107)
!3237 = !DILocation(line: 368, column: 6, scope: !3103, inlinedAt: !3107)
!3238 = !DILocation(line: 368, column: 26, scope: !3235, inlinedAt: !3107)
!3239 = !DILocation(line: 369, column: 6, scope: !3240, inlinedAt: !3107)
!3240 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 369, column: 6)
!3241 = !DILocation(line: 369, column: 11, scope: !3240, inlinedAt: !3107)
!3242 = !DILocation(line: 369, column: 6, scope: !3103, inlinedAt: !3107)
!3243 = !DILocation(line: 369, column: 26, scope: !3240, inlinedAt: !3107)
!3244 = !DILocation(line: 370, column: 6, scope: !3245, inlinedAt: !3107)
!3245 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 370, column: 6)
!3246 = !DILocation(line: 370, column: 11, scope: !3245, inlinedAt: !3107)
!3247 = !DILocation(line: 370, column: 6, scope: !3103, inlinedAt: !3107)
!3248 = !DILocation(line: 370, column: 26, scope: !3245, inlinedAt: !3107)
!3249 = !DILocation(line: 371, column: 6, scope: !3250, inlinedAt: !3107)
!3250 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 371, column: 6)
!3251 = !DILocation(line: 371, column: 11, scope: !3250, inlinedAt: !3107)
!3252 = !DILocation(line: 371, column: 6, scope: !3103, inlinedAt: !3107)
!3253 = !DILocation(line: 371, column: 26, scope: !3250, inlinedAt: !3107)
!3254 = !DILocation(line: 372, column: 6, scope: !3255, inlinedAt: !3107)
!3255 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 372, column: 6)
!3256 = !DILocation(line: 372, column: 11, scope: !3255, inlinedAt: !3107)
!3257 = !DILocation(line: 372, column: 6, scope: !3103, inlinedAt: !3107)
!3258 = !DILocation(line: 372, column: 26, scope: !3255, inlinedAt: !3107)
!3259 = !DILocation(line: 373, column: 6, scope: !3260, inlinedAt: !3107)
!3260 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 373, column: 6)
!3261 = !DILocation(line: 373, column: 11, scope: !3260, inlinedAt: !3107)
!3262 = !DILocation(line: 373, column: 6, scope: !3103, inlinedAt: !3107)
!3263 = !DILocation(line: 373, column: 26, scope: !3260, inlinedAt: !3107)
!3264 = !DILocation(line: 374, column: 6, scope: !3265, inlinedAt: !3107)
!3265 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 374, column: 6)
!3266 = !DILocation(line: 374, column: 11, scope: !3265, inlinedAt: !3107)
!3267 = !DILocation(line: 374, column: 6, scope: !3103, inlinedAt: !3107)
!3268 = !DILocation(line: 374, column: 26, scope: !3265, inlinedAt: !3107)
!3269 = !DILocation(line: 375, column: 6, scope: !3270, inlinedAt: !3107)
!3270 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 375, column: 6)
!3271 = !DILocation(line: 375, column: 11, scope: !3270, inlinedAt: !3107)
!3272 = !DILocation(line: 375, column: 6, scope: !3103, inlinedAt: !3107)
!3273 = !DILocation(line: 375, column: 27, scope: !3270, inlinedAt: !3107)
!3274 = !DILocation(line: 376, column: 6, scope: !3275, inlinedAt: !3107)
!3275 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 376, column: 6)
!3276 = !DILocation(line: 376, column: 11, scope: !3275, inlinedAt: !3107)
!3277 = !DILocation(line: 376, column: 6, scope: !3103, inlinedAt: !3107)
!3278 = !DILocation(line: 376, column: 32, scope: !3275, inlinedAt: !3107)
!3279 = !DILocation(line: 377, column: 6, scope: !3280, inlinedAt: !3107)
!3280 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 377, column: 6)
!3281 = !DILocation(line: 377, column: 11, scope: !3280, inlinedAt: !3107)
!3282 = !DILocation(line: 377, column: 6, scope: !3103, inlinedAt: !3107)
!3283 = !DILocation(line: 377, column: 32, scope: !3280, inlinedAt: !3107)
!3284 = !DILocation(line: 378, column: 6, scope: !3285, inlinedAt: !3107)
!3285 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 378, column: 6)
!3286 = !DILocation(line: 378, column: 11, scope: !3285, inlinedAt: !3107)
!3287 = !DILocation(line: 378, column: 6, scope: !3103, inlinedAt: !3107)
!3288 = !DILocation(line: 378, column: 32, scope: !3285, inlinedAt: !3107)
!3289 = !DILocation(line: 379, column: 6, scope: !3290, inlinedAt: !3107)
!3290 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 379, column: 6)
!3291 = !DILocation(line: 379, column: 11, scope: !3290, inlinedAt: !3107)
!3292 = !DILocation(line: 379, column: 6, scope: !3103, inlinedAt: !3107)
!3293 = !DILocation(line: 379, column: 33, scope: !3290, inlinedAt: !3107)
!3294 = !DILocation(line: 380, column: 6, scope: !3295, inlinedAt: !3107)
!3295 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 380, column: 6)
!3296 = !DILocation(line: 380, column: 11, scope: !3295, inlinedAt: !3107)
!3297 = !DILocation(line: 380, column: 6, scope: !3103, inlinedAt: !3107)
!3298 = !DILocation(line: 380, column: 33, scope: !3295, inlinedAt: !3107)
!3299 = !DILocation(line: 381, column: 6, scope: !3300, inlinedAt: !3107)
!3300 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 381, column: 6)
!3301 = !DILocation(line: 381, column: 11, scope: !3300, inlinedAt: !3107)
!3302 = !DILocation(line: 381, column: 6, scope: !3103, inlinedAt: !3107)
!3303 = !DILocation(line: 381, column: 33, scope: !3300, inlinedAt: !3107)
!3304 = !DILocation(line: 382, column: 2, scope: !3305, inlinedAt: !3107)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !48, line: 382, column: 2)
!3306 = distinct !DILexicalBlock(scope: !3103, file: !48, line: 382, column: 2)
!3307 = !{i32 -2143295517, i32 -2143295488, i32 -2143295442, i32 -2143295384, i32 -2143295330, i32 -2143295276, i32 -2143295221, i32 -2143295190}
!3308 = !DILocation(line: 382, column: 2, scope: !3309, inlinedAt: !3107)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !48, line: 382, column: 2)
!3310 = distinct !DILexicalBlock(scope: !3306, file: !48, line: 382, column: 2)
!3311 = !{i32 -2143294747, i32 -2143294740, i32 -2143294686, i32 -2143294655, i32 -2143294625}
!3312 = !DILocation(line: 382, column: 2, scope: !3310, inlinedAt: !3107)
!3313 = !DILocation(line: 386, column: 1, scope: !3103, inlinedAt: !3107)
!3314 = !DILocation(line: 547, column: 9, scope: !3086, inlinedAt: !3089)
!3315 = !DILocation(line: 549, column: 8, scope: !3316, inlinedAt: !3089)
!3316 = distinct !DILexicalBlock(scope: !3086, file: !48, line: 549, column: 7)
!3317 = !DILocation(line: 549, column: 7, scope: !3086, inlinedAt: !3089)
!3318 = !DILocation(line: 550, column: 4, scope: !3316, inlinedAt: !3089)
!3319 = !DILocation(line: 553, column: 33, scope: !3086, inlinedAt: !3089)
!3320 = !DILocation(line: 325, column: 6, scope: !3321, inlinedAt: !3101)
!3321 = distinct !DILexicalBlock(scope: !3097, file: !48, line: 325, column: 6)
!3322 = !DILocation(line: 325, column: 6, scope: !3097, inlinedAt: !3101)
!3323 = !DILocation(line: 326, column: 3, scope: !3321, inlinedAt: !3101)
!3324 = !DILocation(line: 332, column: 9, scope: !3097, inlinedAt: !3101)
!3325 = !DILocation(line: 332, column: 15, scope: !3097, inlinedAt: !3101)
!3326 = !DILocation(line: 332, column: 2, scope: !3097, inlinedAt: !3101)
!3327 = !DILocation(line: 336, column: 1, scope: !3097, inlinedAt: !3101)
!3328 = !DILocation(line: 553, column: 5, scope: !3086, inlinedAt: !3089)
!3329 = !DILocation(line: 553, column: 41, scope: !3086, inlinedAt: !3089)
!3330 = !DILocation(line: 554, column: 5, scope: !3086, inlinedAt: !3089)
!3331 = !DILocation(line: 554, column: 12, scope: !3086, inlinedAt: !3089)
!3332 = !DILocation(line: 448, column: 31, scope: !3081, inlinedAt: !3085)
!3333 = !DILocation(line: 448, column: 34, scope: !3081, inlinedAt: !3085)
!3334 = !DILocation(line: 448, column: 14, scope: !3081, inlinedAt: !3085)
!3335 = !DILocation(line: 450, column: 22, scope: !3081, inlinedAt: !3085)
!3336 = !DILocation(line: 450, column: 25, scope: !3081, inlinedAt: !3085)
!3337 = !DILocation(line: 450, column: 30, scope: !3081, inlinedAt: !3085)
!3338 = !DILocation(line: 450, column: 36, scope: !3081, inlinedAt: !3085)
!3339 = !DILocation(line: 450, column: 8, scope: !3081, inlinedAt: !3085)
!3340 = !DILocation(line: 450, column: 6, scope: !3081, inlinedAt: !3085)
!3341 = !DILocation(line: 451, column: 9, scope: !3081, inlinedAt: !3085)
!3342 = !DILocation(line: 552, column: 3, scope: !3086, inlinedAt: !3089)
!3343 = !DILocation(line: 557, column: 19, scope: !3088, inlinedAt: !3089)
!3344 = !DILocation(line: 557, column: 25, scope: !3088, inlinedAt: !3089)
!3345 = !DILocation(line: 557, column: 9, scope: !3088, inlinedAt: !3089)
!3346 = !DILocation(line: 557, column: 2, scope: !3088, inlinedAt: !3089)
!3347 = !DILocation(line: 558, column: 1, scope: !3088, inlinedAt: !3089)
!3348 = !DILocation(line: 664, column: 2, scope: !3077)
!3349 = distinct !DISubprogram(name: "IS_ERR", scope: !3350, file: !3350, line: 34, type: !3351, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3350 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!240, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3355 = !DILocalVariable(name: "ptr", arg: 1, scope: !3349, file: !3350, line: 34, type: !3353)
!3356 = !DILocation(line: 34, column: 60, scope: !3349)
!3357 = !DILocation(line: 36, column: 9, scope: !3349)
!3358 = !DILocation(line: 36, column: 2, scope: !3349)
!3359 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3360, file: !3360, line: 33, type: !3361, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3360 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !83}
!3363 = !DILocalVariable(name: "list", arg: 1, scope: !3359, file: !3360, line: 33, type: !83)
!3364 = !DILocation(line: 33, column: 53, scope: !3359)
!3365 = !DILocation(line: 35, column: 2, scope: !3359)
!3366 = !DILocation(line: 35, column: 2, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3359, file: !3360, line: 35, column: 2)
!3368 = !DILocation(line: 35, column: 2, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3367, file: !3360, line: 35, column: 2)
!3370 = !DILocation(line: 35, column: 2, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !3360, line: 35, column: 2)
!3372 = !DILocation(line: 36, column: 15, scope: !3359)
!3373 = !DILocation(line: 36, column: 2, scope: !3359)
!3374 = !DILocation(line: 36, column: 8, scope: !3359)
!3375 = !DILocation(line: 36, column: 13, scope: !3359)
!3376 = !DILocation(line: 37, column: 1, scope: !3359)
!3377 = distinct !DISubprogram(name: "get_order", scope: !3378, file: !3378, line: 29, type: !3379, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3378 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!224, !335}
!3381 = !DILocalVariable(name: "x", arg: 1, scope: !3382, file: !3383, line: 366, type: !164)
!3382 = distinct !DISubprogram(name: "fls64", scope: !3383, file: !3383, line: 366, type: !3384, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3383 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!224, !164}
!3386 = !DILocation(line: 366, column: 40, scope: !3382, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 46, column: 9, scope: !3377)
!3388 = !DILocalVariable(name: "bitpos", scope: !3382, file: !3383, line: 368, type: !224)
!3389 = !DILocation(line: 368, column: 6, scope: !3382, inlinedAt: !3387)
!3390 = !DILocalVariable(name: "size", arg: 1, scope: !3377, file: !3378, line: 29, type: !335)
!3391 = !DILocation(line: 29, column: 63, scope: !3377)
!3392 = !DILocation(line: 31, column: 27, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3377, file: !3378, line: 31, column: 6)
!3394 = !DILocation(line: 31, column: 6, scope: !3393)
!3395 = !DILocation(line: 31, column: 6, scope: !3377)
!3396 = !DILocation(line: 32, column: 8, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !3378, line: 32, column: 7)
!3398 = distinct !DILexicalBlock(scope: !3393, file: !3378, line: 31, column: 34)
!3399 = !DILocation(line: 32, column: 7, scope: !3398)
!3400 = !DILocation(line: 33, column: 4, scope: !3397)
!3401 = !DILocation(line: 35, column: 7, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !3378, line: 35, column: 7)
!3403 = !DILocation(line: 35, column: 12, scope: !3402)
!3404 = !DILocation(line: 35, column: 7, scope: !3398)
!3405 = !DILocation(line: 36, column: 4, scope: !3402)
!3406 = !DILocation(line: 38, column: 10, scope: !3398)
!3407 = !DILocation(line: 38, column: 28, scope: !3398)
!3408 = !DILocation(line: 38, column: 41, scope: !3398)
!3409 = !DILocation(line: 38, column: 3, scope: !3398)
!3410 = !DILocation(line: 41, column: 6, scope: !3377)
!3411 = !DILocation(line: 42, column: 7, scope: !3377)
!3412 = !DILocation(line: 46, column: 15, scope: !3377)
!3413 = !DILocation(line: 374, column: 2, scope: !3382, inlinedAt: !3387)
!3414 = !DILocation(line: 376, column: 14, scope: !3382, inlinedAt: !3387)
!3415 = !{i32 464214}
!3416 = !DILocation(line: 377, column: 9, scope: !3382, inlinedAt: !3387)
!3417 = !DILocation(line: 377, column: 16, scope: !3382, inlinedAt: !3387)
!3418 = !DILocation(line: 46, column: 2, scope: !3377)
!3419 = !DILocation(line: 48, column: 1, scope: !3377)
!3420 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3421, file: !3421, line: 30, type: !3422, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3421 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!224, !163}
!3424 = !DILocation(line: 366, column: 40, scope: !3382, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 32, column: 9, scope: !3420)
!3426 = !DILocation(line: 368, column: 6, scope: !3382, inlinedAt: !3425)
!3427 = !DILocalVariable(name: "n", arg: 1, scope: !3420, file: !3421, line: 30, type: !163)
!3428 = !DILocation(line: 30, column: 21, scope: !3420)
!3429 = !DILocation(line: 32, column: 15, scope: !3420)
!3430 = !DILocation(line: 374, column: 2, scope: !3382, inlinedAt: !3425)
!3431 = !DILocation(line: 376, column: 14, scope: !3382, inlinedAt: !3425)
!3432 = !DILocation(line: 377, column: 9, scope: !3382, inlinedAt: !3425)
!3433 = !DILocation(line: 377, column: 16, scope: !3382, inlinedAt: !3425)
!3434 = !DILocation(line: 32, column: 18, scope: !3420)
!3435 = !DILocation(line: 32, column: 2, scope: !3420)
!3436 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3437, file: !3437, line: 137, type: !3438, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3437 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!77, !712, !3353, !332, !75}
!3440 = !DILocalVariable(name: "s", arg: 1, scope: !3436, file: !3437, line: 137, type: !712)
!3441 = !DILocation(line: 137, column: 54, scope: !3436)
!3442 = !DILocalVariable(name: "object", arg: 2, scope: !3436, file: !3437, line: 137, type: !3353)
!3443 = !DILocation(line: 137, column: 69, scope: !3436)
!3444 = !DILocalVariable(name: "size", arg: 3, scope: !3436, file: !3437, line: 138, type: !332)
!3445 = !DILocation(line: 138, column: 12, scope: !3436)
!3446 = !DILocalVariable(name: "flags", arg: 4, scope: !3436, file: !3437, line: 138, type: !75)
!3447 = !DILocation(line: 138, column: 24, scope: !3436)
!3448 = !DILocation(line: 140, column: 17, scope: !3436)
!3449 = !DILocation(line: 140, column: 2, scope: !3436)
!3450 = distinct !DISubprogram(name: "sync_file_poll", scope: !3, file: !3, line: 307, type: !3451, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!78, !93, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2521, line: 46, baseType: !2520)
!3455 = !DILocalVariable(name: "file", arg: 1, scope: !3450, file: !3, line: 307, type: !93)
!3456 = !DILocation(line: 307, column: 45, scope: !3450)
!3457 = !DILocalVariable(name: "wait", arg: 2, scope: !3450, file: !3, line: 307, type: !3453)
!3458 = !DILocation(line: 307, column: 63, scope: !3450)
!3459 = !DILocalVariable(name: "sync_file", scope: !3450, file: !3, line: 309, type: !88)
!3460 = !DILocation(line: 309, column: 20, scope: !3450)
!3461 = !DILocation(line: 309, column: 32, scope: !3450)
!3462 = !DILocation(line: 309, column: 38, scope: !3450)
!3463 = !DILocation(line: 311, column: 12, scope: !3450)
!3464 = !DILocation(line: 311, column: 19, scope: !3450)
!3465 = !DILocation(line: 311, column: 30, scope: !3450)
!3466 = !DILocation(line: 311, column: 34, scope: !3450)
!3467 = !DILocation(line: 311, column: 2, scope: !3450)
!3468 = !DILocation(line: 313, column: 18, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 313, column: 6)
!3470 = !DILocation(line: 313, column: 29, scope: !3469)
!3471 = !DILocation(line: 313, column: 32, scope: !3469)
!3472 = !DILocation(line: 313, column: 6, scope: !3469)
!3473 = !DILocation(line: 313, column: 38, scope: !3469)
!3474 = !DILocation(line: 314, column: 39, scope: !3469)
!3475 = !DILocation(line: 314, column: 50, scope: !3469)
!3476 = !DILocation(line: 314, column: 7, scope: !3469)
!3477 = !DILocation(line: 313, column: 6, scope: !3450)
!3478 = !DILocation(line: 315, column: 30, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 315, column: 7)
!3480 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 314, column: 58)
!3481 = !DILocation(line: 315, column: 41, scope: !3479)
!3482 = !DILocation(line: 315, column: 49, scope: !3479)
!3483 = !DILocation(line: 315, column: 60, scope: !3479)
!3484 = !DILocation(line: 315, column: 7, scope: !3479)
!3485 = !DILocation(line: 316, column: 30, scope: !3479)
!3486 = !DILocation(line: 315, column: 7, scope: !3480)
!3487 = !DILocation(line: 317, column: 4, scope: !3479)
!3488 = !DILocation(line: 318, column: 2, scope: !3480)
!3489 = !DILocation(line: 320, column: 31, scope: !3450)
!3490 = !DILocation(line: 320, column: 42, scope: !3450)
!3491 = !DILocation(line: 320, column: 9, scope: !3450)
!3492 = !DILocation(line: 320, column: 2, scope: !3450)
!3493 = distinct !DISubprogram(name: "sync_file_ioctl", scope: !3, file: !3, line: 462, type: !2532, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3494 = !DILocalVariable(name: "file", arg: 1, scope: !3493, file: !3, line: 462, type: !93)
!3495 = !DILocation(line: 462, column: 42, scope: !3493)
!3496 = !DILocalVariable(name: "cmd", arg: 2, scope: !3493, file: !3, line: 462, type: !7)
!3497 = !DILocation(line: 462, column: 61, scope: !3493)
!3498 = !DILocalVariable(name: "arg", arg: 3, scope: !3493, file: !3, line: 463, type: !335)
!3499 = !DILocation(line: 463, column: 22, scope: !3493)
!3500 = !DILocalVariable(name: "sync_file", scope: !3493, file: !3, line: 465, type: !88)
!3501 = !DILocation(line: 465, column: 20, scope: !3493)
!3502 = !DILocation(line: 465, column: 32, scope: !3493)
!3503 = !DILocation(line: 465, column: 38, scope: !3493)
!3504 = !DILocation(line: 467, column: 10, scope: !3493)
!3505 = !DILocation(line: 467, column: 2, scope: !3493)
!3506 = !DILocation(line: 469, column: 32, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 467, column: 15)
!3508 = !DILocation(line: 469, column: 43, scope: !3507)
!3509 = !DILocation(line: 469, column: 10, scope: !3507)
!3510 = !DILocation(line: 469, column: 3, scope: !3507)
!3511 = !DILocation(line: 472, column: 37, scope: !3507)
!3512 = !DILocation(line: 472, column: 48, scope: !3507)
!3513 = !DILocation(line: 472, column: 10, scope: !3507)
!3514 = !DILocation(line: 472, column: 3, scope: !3507)
!3515 = !DILocation(line: 475, column: 3, scope: !3507)
!3516 = !DILocation(line: 477, column: 1, scope: !3493)
!3517 = distinct !DISubprogram(name: "sync_file_release", scope: !3, file: !3, line: 295, type: !2542, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3518 = !DILocalVariable(name: "inode", arg: 1, scope: !3517, file: !3, line: 295, type: !171)
!3519 = !DILocation(line: 295, column: 44, scope: !3517)
!3520 = !DILocalVariable(name: "file", arg: 2, scope: !3517, file: !3, line: 295, type: !93)
!3521 = !DILocation(line: 295, column: 64, scope: !3517)
!3522 = !DILocalVariable(name: "sync_file", scope: !3517, file: !3, line: 297, type: !88)
!3523 = !DILocation(line: 297, column: 20, scope: !3517)
!3524 = !DILocation(line: 297, column: 32, scope: !3517)
!3525 = !DILocation(line: 297, column: 38, scope: !3517)
!3526 = !DILocation(line: 299, column: 30, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 299, column: 6)
!3528 = !DILocation(line: 299, column: 41, scope: !3527)
!3529 = !DILocation(line: 299, column: 6, scope: !3527)
!3530 = !DILocation(line: 299, column: 6, scope: !3517)
!3531 = !DILocation(line: 300, column: 29, scope: !3527)
!3532 = !DILocation(line: 300, column: 40, scope: !3527)
!3533 = !DILocation(line: 300, column: 48, scope: !3527)
!3534 = !DILocation(line: 300, column: 59, scope: !3527)
!3535 = !DILocation(line: 300, column: 3, scope: !3527)
!3536 = !DILocation(line: 301, column: 16, scope: !3517)
!3537 = !DILocation(line: 301, column: 27, scope: !3517)
!3538 = !DILocation(line: 301, column: 2, scope: !3517)
!3539 = !DILocation(line: 302, column: 8, scope: !3517)
!3540 = !DILocation(line: 302, column: 2, scope: !3517)
!3541 = !DILocation(line: 304, column: 2, scope: !3517)
!3542 = distinct !DISubprogram(name: "poll_wait", scope: !2521, file: !2521, line: 48, type: !3543, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !93, !2528, !3453}
!3545 = !DILocalVariable(name: "filp", arg: 1, scope: !3542, file: !2521, line: 48, type: !93)
!3546 = !DILocation(line: 48, column: 44, scope: !3542)
!3547 = !DILocalVariable(name: "wait_address", arg: 2, scope: !3542, file: !2521, line: 48, type: !2528)
!3548 = !DILocation(line: 48, column: 70, scope: !3542)
!3549 = !DILocalVariable(name: "p", arg: 3, scope: !3542, file: !2521, line: 48, type: !3453)
!3550 = !DILocation(line: 48, column: 96, scope: !3542)
!3551 = !DILocation(line: 50, column: 6, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3542, file: !2521, line: 50, column: 6)
!3553 = !DILocation(line: 50, column: 8, scope: !3552)
!3554 = !DILocation(line: 50, column: 11, scope: !3552)
!3555 = !DILocation(line: 50, column: 14, scope: !3552)
!3556 = !DILocation(line: 50, column: 21, scope: !3552)
!3557 = !DILocation(line: 50, column: 24, scope: !3552)
!3558 = !DILocation(line: 50, column: 6, scope: !3542)
!3559 = !DILocation(line: 51, column: 3, scope: !3552)
!3560 = !DILocation(line: 51, column: 6, scope: !3552)
!3561 = !DILocation(line: 51, column: 13, scope: !3552)
!3562 = !DILocation(line: 51, column: 19, scope: !3552)
!3563 = !DILocation(line: 51, column: 33, scope: !3552)
!3564 = !DILocation(line: 52, column: 1, scope: !3542)
!3565 = distinct !DISubprogram(name: "list_empty", scope: !3360, file: !3360, line: 280, type: !3566, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!224, !3568}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!3570 = !DILocalVariable(name: "head", arg: 1, scope: !3565, file: !3360, line: 280, type: !3568)
!3571 = !DILocation(line: 280, column: 54, scope: !3565)
!3572 = !DILocation(line: 282, column: 9, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3565, file: !3360, line: 282, column: 9)
!3574 = !DILocation(line: 282, column: 9, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3573, file: !3360, line: 282, column: 9)
!3576 = !DILocation(line: 282, column: 34, scope: !3565)
!3577 = !DILocation(line: 282, column: 31, scope: !3565)
!3578 = !DILocation(line: 282, column: 2, scope: !3565)
!3579 = distinct !DISubprogram(name: "test_and_set_bit", scope: !3580, file: !3580, line: 68, type: !3581, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3580 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!240, !292, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !335)
!3585 = !DILocalVariable(name: "nr", arg: 1, scope: !3586, file: !3383, line: 136, type: !292)
!3586 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !3383, file: !3383, line: 136, type: !3581, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3587 = !DILocation(line: 136, column: 28, scope: !3586, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 71, column: 9, scope: !3579)
!3589 = !DILocalVariable(name: "addr", arg: 2, scope: !3586, file: !3383, line: 136, type: !3583)
!3590 = !DILocation(line: 136, column: 56, scope: !3586, inlinedAt: !3588)
!3591 = !DILocalVariable(name: "c", scope: !3592, file: !3383, line: 138, type: !240)
!3592 = distinct !DILexicalBlock(scope: !3586, file: !3383, line: 138, column: 9)
!3593 = !DILocation(line: 138, column: 9, scope: !3592, inlinedAt: !3588)
!3594 = !DILocalVariable(name: "v", arg: 1, scope: !3595, file: !3596, line: 99, type: !3599)
!3595 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3596, file: !3596, line: 99, type: !3597, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3596 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !3599, !332}
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3601)
!3601 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3602 = !DILocation(line: 99, column: 79, scope: !3595, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 70, column: 2, scope: !3579)
!3604 = !DILocalVariable(name: "size", arg: 2, scope: !3595, file: !3596, line: 99, type: !332)
!3605 = !DILocation(line: 99, column: 89, scope: !3595, inlinedAt: !3603)
!3606 = !DILocalVariable(name: "nr", arg: 1, scope: !3579, file: !3580, line: 68, type: !292)
!3607 = !DILocation(line: 68, column: 42, scope: !3579)
!3608 = !DILocalVariable(name: "addr", arg: 2, scope: !3579, file: !3580, line: 68, type: !3583)
!3609 = !DILocation(line: 68, column: 70, scope: !3579)
!3610 = !DILocation(line: 70, column: 31, scope: !3579)
!3611 = !DILocation(line: 70, column: 38, scope: !3579)
!3612 = !DILocation(line: 70, column: 36, scope: !3579)
!3613 = !DILocation(line: 101, column: 20, scope: !3595, inlinedAt: !3603)
!3614 = !DILocation(line: 101, column: 23, scope: !3595, inlinedAt: !3603)
!3615 = !DILocation(line: 101, column: 2, scope: !3595, inlinedAt: !3603)
!3616 = !DILocation(line: 102, column: 2, scope: !3595, inlinedAt: !3603)
!3617 = !DILocation(line: 71, column: 31, scope: !3579)
!3618 = !DILocation(line: 71, column: 35, scope: !3579)
!3619 = !{i32 -2146983521, i32 -2146983425}
!3620 = !DILocation(line: 71, column: 2, scope: !3579)
!3621 = distinct !DISubprogram(name: "fence_check_cb_func", scope: !3, file: !3, line: 46, type: !2857, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3622 = !DILocalVariable(name: "f", arg: 1, scope: !3621, file: !3, line: 46, type: !2801)
!3623 = !DILocation(line: 46, column: 51, scope: !3621)
!3624 = !DILocalVariable(name: "cb", arg: 2, scope: !3621, file: !3, line: 46, type: !2859)
!3625 = !DILocation(line: 46, column: 75, scope: !3621)
!3626 = !DILocalVariable(name: "sync_file", scope: !3621, file: !3, line: 48, type: !88)
!3627 = !DILocation(line: 48, column: 20, scope: !3621)
!3628 = !DILocalVariable(name: "__mptr", scope: !3629, file: !3, line: 50, type: !77)
!3629 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 50, column: 14)
!3630 = !DILocation(line: 50, column: 14, scope: !3629)
!3631 = !DILocation(line: 50, column: 14, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 50, column: 14)
!3633 = !DILocation(line: 50, column: 12, scope: !3621)
!3634 = !DILocation(line: 52, column: 2, scope: !3621)
!3635 = !DILocation(line: 53, column: 1, scope: !3621)
!3636 = distinct !DISubprogram(name: "dma_fence_is_signaled", scope: !60, file: !60, line: 429, type: !2819, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3637 = !DILocalVariable(name: "fence", arg: 1, scope: !3636, file: !60, line: 429, type: !2801)
!3638 = !DILocation(line: 429, column: 41, scope: !3636)
!3639 = !DILocation(line: 431, column: 45, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !60, line: 431, column: 6)
!3641 = !DILocation(line: 431, column: 52, scope: !3640)
!3642 = !DILocation(line: 431, column: 6, scope: !3640)
!3643 = !DILocation(line: 431, column: 6, scope: !3636)
!3644 = !DILocation(line: 432, column: 3, scope: !3640)
!3645 = !DILocation(line: 434, column: 6, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3636, file: !60, line: 434, column: 6)
!3647 = !DILocation(line: 434, column: 13, scope: !3646)
!3648 = !DILocation(line: 434, column: 18, scope: !3646)
!3649 = !DILocation(line: 434, column: 27, scope: !3646)
!3650 = !DILocation(line: 434, column: 30, scope: !3646)
!3651 = !DILocation(line: 434, column: 37, scope: !3646)
!3652 = !DILocation(line: 434, column: 42, scope: !3646)
!3653 = !DILocation(line: 434, column: 51, scope: !3646)
!3654 = !DILocation(line: 434, column: 6, scope: !3636)
!3655 = !DILocation(line: 435, column: 20, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3646, file: !60, line: 434, column: 59)
!3657 = !DILocation(line: 435, column: 3, scope: !3656)
!3658 = !DILocation(line: 436, column: 3, scope: !3656)
!3659 = !DILocation(line: 439, column: 2, scope: !3636)
!3660 = !DILocation(line: 440, column: 1, scope: !3636)
!3661 = distinct !DISubprogram(name: "kasan_check_write", scope: !3662, file: !3662, line: 38, type: !3663, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3662 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!240, !3599, !7}
!3665 = !DILocalVariable(name: "p", arg: 1, scope: !3661, file: !3662, line: 38, type: !3599)
!3666 = !DILocation(line: 38, column: 59, scope: !3661)
!3667 = !DILocalVariable(name: "size", arg: 2, scope: !3661, file: !3662, line: 38, type: !7)
!3668 = !DILocation(line: 38, column: 75, scope: !3661)
!3669 = !DILocation(line: 40, column: 2, scope: !3661)
!3670 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3671, file: !3671, line: 178, type: !3672, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3671 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3672 = !DISubroutineType(types: !3673)
!3673 = !{null, !3599, !332, !224}
!3674 = !DILocalVariable(name: "ptr", arg: 1, scope: !3670, file: !3671, line: 178, type: !3599)
!3675 = !DILocation(line: 178, column: 60, scope: !3670)
!3676 = !DILocalVariable(name: "size", arg: 2, scope: !3670, file: !3671, line: 178, type: !332)
!3677 = !DILocation(line: 178, column: 72, scope: !3670)
!3678 = !DILocalVariable(name: "type", arg: 3, scope: !3670, file: !3671, line: 179, type: !224)
!3679 = !DILocation(line: 179, column: 15, scope: !3670)
!3680 = !DILocation(line: 179, column: 23, scope: !3670)
!3681 = distinct !DISubprogram(name: "test_bit", scope: !3682, file: !3682, line: 132, type: !3683, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3682 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!240, !292, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3584)
!3687 = !DILocalVariable(name: "nr", arg: 1, scope: !3688, file: !3383, line: 210, type: !292)
!3688 = distinct !DISubprogram(name: "variable_test_bit", scope: !3383, file: !3383, line: 210, type: !3683, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3689 = !DILocation(line: 210, column: 52, scope: !3688, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 135, column: 9, scope: !3681)
!3691 = !DILocalVariable(name: "addr", arg: 2, scope: !3688, file: !3383, line: 210, type: !3685)
!3692 = !DILocation(line: 210, column: 86, scope: !3688, inlinedAt: !3690)
!3693 = !DILocalVariable(name: "oldbit", scope: !3688, file: !3383, line: 212, type: !240)
!3694 = !DILocation(line: 212, column: 7, scope: !3688, inlinedAt: !3690)
!3695 = !DILocalVariable(name: "nr", arg: 1, scope: !3696, file: !3383, line: 204, type: !292)
!3696 = distinct !DISubprogram(name: "constant_test_bit", scope: !3383, file: !3383, line: 204, type: !3683, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3697 = !DILocation(line: 204, column: 52, scope: !3696, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 135, column: 9, scope: !3681)
!3699 = !DILocalVariable(name: "addr", arg: 2, scope: !3696, file: !3383, line: 204, type: !3685)
!3700 = !DILocation(line: 204, column: 86, scope: !3696, inlinedAt: !3698)
!3701 = !DILocalVariable(name: "v", arg: 1, scope: !3702, file: !3596, line: 69, type: !3599)
!3702 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3596, file: !3596, line: 69, type: !3597, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3703 = !DILocation(line: 69, column: 73, scope: !3702, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 134, column: 2, scope: !3681)
!3705 = !DILocalVariable(name: "size", arg: 2, scope: !3702, file: !3596, line: 69, type: !332)
!3706 = !DILocation(line: 69, column: 83, scope: !3702, inlinedAt: !3704)
!3707 = !DILocalVariable(name: "nr", arg: 1, scope: !3681, file: !3682, line: 132, type: !292)
!3708 = !DILocation(line: 132, column: 34, scope: !3681)
!3709 = !DILocalVariable(name: "addr", arg: 2, scope: !3681, file: !3682, line: 132, type: !3685)
!3710 = !DILocation(line: 132, column: 68, scope: !3681)
!3711 = !DILocation(line: 134, column: 25, scope: !3681)
!3712 = !DILocation(line: 134, column: 32, scope: !3681)
!3713 = !DILocation(line: 134, column: 30, scope: !3681)
!3714 = !DILocation(line: 71, column: 19, scope: !3702, inlinedAt: !3704)
!3715 = !DILocation(line: 71, column: 22, scope: !3702, inlinedAt: !3704)
!3716 = !DILocation(line: 71, column: 2, scope: !3702, inlinedAt: !3704)
!3717 = !DILocation(line: 72, column: 2, scope: !3702, inlinedAt: !3704)
!3718 = !DILocation(line: 135, column: 9, scope: !3681)
!3719 = !DILocation(line: 206, column: 19, scope: !3696, inlinedAt: !3698)
!3720 = !DILocation(line: 206, column: 22, scope: !3696, inlinedAt: !3698)
!3721 = !DILocation(line: 206, column: 15, scope: !3696, inlinedAt: !3698)
!3722 = !DILocation(line: 207, column: 4, scope: !3696, inlinedAt: !3698)
!3723 = !DILocation(line: 207, column: 9, scope: !3696, inlinedAt: !3698)
!3724 = !DILocation(line: 207, column: 12, scope: !3696, inlinedAt: !3698)
!3725 = !DILocation(line: 206, column: 44, scope: !3696, inlinedAt: !3698)
!3726 = !DILocation(line: 207, column: 37, scope: !3696, inlinedAt: !3698)
!3727 = !DILocation(line: 217, column: 33, scope: !3688, inlinedAt: !3690)
!3728 = !DILocation(line: 217, column: 46, scope: !3688, inlinedAt: !3690)
!3729 = !DILocation(line: 214, column: 2, scope: !3688, inlinedAt: !3690)
!3730 = !{i32 -2146978759, i32 -2146978699}
!3731 = !DILocation(line: 219, column: 9, scope: !3688, inlinedAt: !3690)
!3732 = !DILocation(line: 135, column: 2, scope: !3681)
!3733 = distinct !DISubprogram(name: "kasan_check_read", scope: !3662, file: !3662, line: 34, type: !3663, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3734 = !DILocalVariable(name: "p", arg: 1, scope: !3733, file: !3662, line: 34, type: !3599)
!3735 = !DILocation(line: 34, column: 58, scope: !3733)
!3736 = !DILocalVariable(name: "size", arg: 2, scope: !3733, file: !3662, line: 34, type: !7)
!3737 = !DILocation(line: 34, column: 74, scope: !3733)
!3738 = !DILocation(line: 36, column: 2, scope: !3733)
!3739 = distinct !DISubprogram(name: "sync_file_ioctl_merge", scope: !3, file: !3, line: 323, type: !3740, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!292, !88, !335}
!3742 = !DILocalVariable(name: "addr", arg: 1, scope: !3743, file: !3744, line: 138, type: !3353)
!3743 = distinct !DISubprogram(name: "check_copy_size", scope: !3744, file: !3744, line: 138, type: !3745, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3744 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!240, !3353, !332, !240}
!3747 = !DILocation(line: 138, column: 29, scope: !3743, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 199, column: 6, scope: !3749, inlinedAt: !3754)
!3749 = distinct !DILexicalBlock(scope: !3751, file: !3750, line: 199, column: 6)
!3750 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!3751 = distinct !DISubprogram(name: "copy_to_user", scope: !3750, file: !3750, line: 197, type: !3752, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!335, !77, !3353, !335}
!3754 = distinct !DILocation(line: 358, column: 6, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 358, column: 6)
!3756 = !DILocalVariable(name: "bytes", arg: 2, scope: !3743, file: !3744, line: 138, type: !332)
!3757 = !DILocation(line: 138, column: 42, scope: !3743, inlinedAt: !3748)
!3758 = !DILocalVariable(name: "is_source", arg: 3, scope: !3743, file: !3744, line: 138, type: !240)
!3759 = !DILocation(line: 138, column: 54, scope: !3743, inlinedAt: !3748)
!3760 = !DILocalVariable(name: "sz", scope: !3743, file: !3744, line: 140, type: !224)
!3761 = !DILocation(line: 140, column: 6, scope: !3743, inlinedAt: !3748)
!3762 = !DILocalVariable(name: "__ret_warn_on", scope: !3763, file: !3744, line: 150, type: !224)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !3744, line: 150, column: 6)
!3764 = distinct !DILexicalBlock(scope: !3743, file: !3744, line: 150, column: 6)
!3765 = !DILocation(line: 150, column: 6, scope: !3763, inlinedAt: !3748)
!3766 = !DILocalVariable(name: "to", arg: 1, scope: !3751, file: !3750, line: 197, type: !77)
!3767 = !DILocation(line: 197, column: 27, scope: !3751, inlinedAt: !3754)
!3768 = !DILocalVariable(name: "from", arg: 2, scope: !3751, file: !3750, line: 197, type: !3353)
!3769 = !DILocation(line: 197, column: 43, scope: !3751, inlinedAt: !3754)
!3770 = !DILocalVariable(name: "n", arg: 3, scope: !3751, file: !3750, line: 197, type: !335)
!3771 = !DILocation(line: 197, column: 63, scope: !3751, inlinedAt: !3754)
!3772 = !DILocation(line: 138, column: 29, scope: !3743, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 191, column: 6, scope: !3774, inlinedAt: !3776)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !3750, line: 191, column: 6)
!3775 = distinct !DISubprogram(name: "copy_from_user", scope: !3750, file: !3750, line: 189, type: !3752, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3776 = distinct !DILocation(line: 334, column: 6, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 334, column: 6)
!3778 = !DILocation(line: 138, column: 42, scope: !3743, inlinedAt: !3773)
!3779 = !DILocation(line: 138, column: 54, scope: !3743, inlinedAt: !3773)
!3780 = !DILocation(line: 140, column: 6, scope: !3743, inlinedAt: !3773)
!3781 = !DILocation(line: 150, column: 6, scope: !3763, inlinedAt: !3773)
!3782 = !DILocalVariable(name: "to", arg: 1, scope: !3775, file: !3750, line: 189, type: !77)
!3783 = !DILocation(line: 189, column: 22, scope: !3775, inlinedAt: !3776)
!3784 = !DILocalVariable(name: "from", arg: 2, scope: !3775, file: !3750, line: 189, type: !3353)
!3785 = !DILocation(line: 189, column: 45, scope: !3775, inlinedAt: !3776)
!3786 = !DILocalVariable(name: "n", arg: 3, scope: !3775, file: !3750, line: 189, type: !335)
!3787 = !DILocation(line: 189, column: 65, scope: !3775, inlinedAt: !3776)
!3788 = !DILocalVariable(name: "sync_file", arg: 1, scope: !3739, file: !3, line: 323, type: !88)
!3789 = !DILocation(line: 323, column: 53, scope: !3739)
!3790 = !DILocalVariable(name: "arg", arg: 2, scope: !3739, file: !3, line: 324, type: !335)
!3791 = !DILocation(line: 324, column: 21, scope: !3739)
!3792 = !DILocalVariable(name: "fd", scope: !3739, file: !3, line: 326, type: !224)
!3793 = !DILocation(line: 326, column: 6, scope: !3739)
!3794 = !DILocation(line: 326, column: 11, scope: !3739)
!3795 = !DILocalVariable(name: "err", scope: !3739, file: !3, line: 327, type: !224)
!3796 = !DILocation(line: 327, column: 6, scope: !3739)
!3797 = !DILocalVariable(name: "fence2", scope: !3739, file: !3, line: 328, type: !88)
!3798 = !DILocation(line: 328, column: 20, scope: !3739)
!3799 = !DILocalVariable(name: "fence3", scope: !3739, file: !3, line: 328, type: !88)
!3800 = !DILocation(line: 328, column: 29, scope: !3739)
!3801 = !DILocalVariable(name: "data", scope: !3739, file: !3, line: 329, type: !3802)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_merge_data", file: !3803, line: 26, size: 384, elements: !3804)
!3803 = !DIFile(filename: "./include/uapi/linux/sync_file.h", directory: "/home/lizy2001/genbc/linux")
!3804 = !{!3805, !3806, !3807, !3808, !3809}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3802, file: !3803, line: 27, baseType: !2314, size: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "fd2", scope: !3802, file: !3803, line: 28, baseType: !1125, size: 32, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !3802, file: !3803, line: 29, baseType: !1125, size: 32, offset: 288)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3802, file: !3803, line: 30, baseType: !159, size: 32, offset: 320)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3802, file: !3803, line: 31, baseType: !159, size: 32, offset: 352)
!3810 = !DILocation(line: 329, column: 25, scope: !3739)
!3811 = !DILocation(line: 331, column: 6, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 331, column: 6)
!3813 = !DILocation(line: 331, column: 9, scope: !3812)
!3814 = !DILocation(line: 331, column: 6, scope: !3739)
!3815 = !DILocation(line: 332, column: 10, scope: !3812)
!3816 = !DILocation(line: 332, column: 3, scope: !3812)
!3817 = !DILocation(line: 334, column: 21, scope: !3777)
!3818 = !DILocation(line: 334, column: 43, scope: !3777)
!3819 = !DILocation(line: 334, column: 28, scope: !3777)
!3820 = !DILocation(line: 191, column: 6, scope: !3774, inlinedAt: !3776)
!3821 = !DILocation(line: 141, column: 6, scope: !3822, inlinedAt: !3773)
!3822 = distinct !DILexicalBlock(scope: !3743, file: !3744, line: 141, column: 6)
!3823 = !DILocation(line: 0, scope: !3822, inlinedAt: !3773)
!3824 = !DILocation(line: 141, column: 6, scope: !3743, inlinedAt: !3773)
!3825 = !DILocation(line: 142, column: 29, scope: !3826, inlinedAt: !3773)
!3826 = distinct !DILexicalBlock(scope: !3827, file: !3744, line: 142, column: 7)
!3827 = distinct !DILexicalBlock(scope: !3822, file: !3744, line: 141, column: 39)
!3828 = !DILocation(line: 142, column: 8, scope: !3826, inlinedAt: !3773)
!3829 = !DILocation(line: 142, column: 7, scope: !3827, inlinedAt: !3773)
!3830 = !DILocation(line: 143, column: 18, scope: !3826, inlinedAt: !3773)
!3831 = !DILocation(line: 143, column: 22, scope: !3826, inlinedAt: !3773)
!3832 = !DILocation(line: 143, column: 4, scope: !3826, inlinedAt: !3773)
!3833 = !DILocation(line: 144, column: 12, scope: !3834, inlinedAt: !3773)
!3834 = distinct !DILexicalBlock(scope: !3826, file: !3744, line: 144, column: 12)
!3835 = !DILocation(line: 144, column: 12, scope: !3826, inlinedAt: !3773)
!3836 = !DILocation(line: 145, column: 4, scope: !3834, inlinedAt: !3773)
!3837 = !DILocation(line: 147, column: 4, scope: !3834, inlinedAt: !3773)
!3838 = !DILocation(line: 148, column: 3, scope: !3827, inlinedAt: !3773)
!3839 = !DILocation(line: 150, column: 6, scope: !3840, inlinedAt: !3773)
!3840 = distinct !DILexicalBlock(scope: !3763, file: !3744, line: 150, column: 6)
!3841 = !DILocation(line: 150, column: 6, scope: !3842, inlinedAt: !3773)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3744, line: 150, column: 6)
!3843 = distinct !DILexicalBlock(scope: !3840, file: !3744, line: 150, column: 6)
!3844 = !{i32 -2145525245, i32 -2145525216, i32 -2145525170, i32 -2145525112, i32 -2145525058, i32 -2145525004, i32 -2145524949, i32 -2145524918}
!3845 = !DILocation(line: 150, column: 6, scope: !3846, inlinedAt: !3773)
!3846 = distinct !DILexicalBlock(scope: !3843, file: !3744, line: 150, column: 6)
!3847 = !{i32 -2145524498, i32 -2145524491, i32 -2145524439, i32 -2145524408, i32 -2145524378}
!3848 = !DILocation(line: 150, column: 6, scope: !3843, inlinedAt: !3773)
!3849 = !DILocation(line: 150, column: 6, scope: !3764, inlinedAt: !3773)
!3850 = !DILocation(line: 150, column: 6, scope: !3743, inlinedAt: !3773)
!3851 = !DILocation(line: 151, column: 3, scope: !3764, inlinedAt: !3773)
!3852 = !DILocation(line: 152, column: 20, scope: !3743, inlinedAt: !3773)
!3853 = !DILocation(line: 152, column: 26, scope: !3743, inlinedAt: !3773)
!3854 = !DILocation(line: 152, column: 33, scope: !3743, inlinedAt: !3773)
!3855 = !DILocation(line: 152, column: 2, scope: !3743, inlinedAt: !3773)
!3856 = !DILocation(line: 153, column: 2, scope: !3743, inlinedAt: !3773)
!3857 = !DILocation(line: 154, column: 1, scope: !3743, inlinedAt: !3773)
!3858 = !DILocation(line: 191, column: 6, scope: !3775, inlinedAt: !3776)
!3859 = !DILocation(line: 192, column: 23, scope: !3774, inlinedAt: !3776)
!3860 = !DILocation(line: 192, column: 27, scope: !3774, inlinedAt: !3776)
!3861 = !DILocation(line: 192, column: 33, scope: !3774, inlinedAt: !3776)
!3862 = !DILocation(line: 192, column: 7, scope: !3774, inlinedAt: !3776)
!3863 = !DILocation(line: 192, column: 5, scope: !3774, inlinedAt: !3776)
!3864 = !DILocation(line: 192, column: 3, scope: !3774, inlinedAt: !3776)
!3865 = !DILocation(line: 193, column: 9, scope: !3775, inlinedAt: !3776)
!3866 = !DILocation(line: 334, column: 6, scope: !3777)
!3867 = !DILocation(line: 334, column: 6, scope: !3739)
!3868 = !DILocation(line: 335, column: 7, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 334, column: 63)
!3870 = !DILocation(line: 336, column: 3, scope: !3869)
!3871 = !DILocation(line: 339, column: 11, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 339, column: 6)
!3873 = !DILocation(line: 339, column: 6, scope: !3872)
!3874 = !DILocation(line: 339, column: 17, scope: !3872)
!3875 = !DILocation(line: 339, column: 25, scope: !3872)
!3876 = !DILocation(line: 339, column: 20, scope: !3872)
!3877 = !DILocation(line: 339, column: 6, scope: !3739)
!3878 = !DILocation(line: 340, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 339, column: 30)
!3880 = !DILocation(line: 341, column: 3, scope: !3879)
!3881 = !DILocation(line: 344, column: 32, scope: !3739)
!3882 = !DILocation(line: 344, column: 11, scope: !3739)
!3883 = !DILocation(line: 344, column: 9, scope: !3739)
!3884 = !DILocation(line: 345, column: 7, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 345, column: 6)
!3886 = !DILocation(line: 345, column: 6, scope: !3739)
!3887 = !DILocation(line: 346, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 345, column: 15)
!3889 = !DILocation(line: 347, column: 3, scope: !3888)
!3890 = !DILocation(line: 350, column: 7, scope: !3739)
!3891 = !DILocation(line: 350, column: 2, scope: !3739)
!3892 = !DILocation(line: 350, column: 35, scope: !3739)
!3893 = !DILocation(line: 351, column: 32, scope: !3739)
!3894 = !DILocation(line: 351, column: 27, scope: !3739)
!3895 = !DILocation(line: 351, column: 38, scope: !3739)
!3896 = !DILocation(line: 351, column: 49, scope: !3739)
!3897 = !DILocation(line: 351, column: 11, scope: !3739)
!3898 = !DILocation(line: 351, column: 9, scope: !3739)
!3899 = !DILocation(line: 352, column: 7, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 352, column: 6)
!3901 = !DILocation(line: 352, column: 6, scope: !3739)
!3902 = !DILocation(line: 353, column: 7, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 352, column: 15)
!3904 = !DILocation(line: 354, column: 3, scope: !3903)
!3905 = !DILocation(line: 357, column: 15, scope: !3739)
!3906 = !DILocation(line: 357, column: 7, scope: !3739)
!3907 = !DILocation(line: 357, column: 13, scope: !3739)
!3908 = !DILocation(line: 358, column: 34, scope: !3755)
!3909 = !DILocation(line: 358, column: 19, scope: !3755)
!3910 = !DILocation(line: 358, column: 39, scope: !3755)
!3911 = !DILocation(line: 199, column: 6, scope: !3749, inlinedAt: !3754)
!3912 = !DILocation(line: 141, column: 6, scope: !3822, inlinedAt: !3748)
!3913 = !DILocation(line: 0, scope: !3822, inlinedAt: !3748)
!3914 = !DILocation(line: 141, column: 6, scope: !3743, inlinedAt: !3748)
!3915 = !DILocation(line: 142, column: 29, scope: !3826, inlinedAt: !3748)
!3916 = !DILocation(line: 142, column: 8, scope: !3826, inlinedAt: !3748)
!3917 = !DILocation(line: 142, column: 7, scope: !3827, inlinedAt: !3748)
!3918 = !DILocation(line: 143, column: 18, scope: !3826, inlinedAt: !3748)
!3919 = !DILocation(line: 143, column: 22, scope: !3826, inlinedAt: !3748)
!3920 = !DILocation(line: 143, column: 4, scope: !3826, inlinedAt: !3748)
!3921 = !DILocation(line: 144, column: 12, scope: !3834, inlinedAt: !3748)
!3922 = !DILocation(line: 144, column: 12, scope: !3826, inlinedAt: !3748)
!3923 = !DILocation(line: 145, column: 4, scope: !3834, inlinedAt: !3748)
!3924 = !DILocation(line: 147, column: 4, scope: !3834, inlinedAt: !3748)
!3925 = !DILocation(line: 148, column: 3, scope: !3827, inlinedAt: !3748)
!3926 = !DILocation(line: 150, column: 6, scope: !3840, inlinedAt: !3748)
!3927 = !DILocation(line: 150, column: 6, scope: !3842, inlinedAt: !3748)
!3928 = !DILocation(line: 150, column: 6, scope: !3846, inlinedAt: !3748)
!3929 = !DILocation(line: 150, column: 6, scope: !3843, inlinedAt: !3748)
!3930 = !DILocation(line: 150, column: 6, scope: !3764, inlinedAt: !3748)
!3931 = !DILocation(line: 150, column: 6, scope: !3743, inlinedAt: !3748)
!3932 = !DILocation(line: 151, column: 3, scope: !3764, inlinedAt: !3748)
!3933 = !DILocation(line: 152, column: 20, scope: !3743, inlinedAt: !3748)
!3934 = !DILocation(line: 152, column: 26, scope: !3743, inlinedAt: !3748)
!3935 = !DILocation(line: 152, column: 33, scope: !3743, inlinedAt: !3748)
!3936 = !DILocation(line: 152, column: 2, scope: !3743, inlinedAt: !3748)
!3937 = !DILocation(line: 153, column: 2, scope: !3743, inlinedAt: !3748)
!3938 = !DILocation(line: 154, column: 1, scope: !3743, inlinedAt: !3748)
!3939 = !DILocation(line: 199, column: 6, scope: !3751, inlinedAt: !3754)
!3940 = !DILocation(line: 200, column: 21, scope: !3749, inlinedAt: !3754)
!3941 = !DILocation(line: 200, column: 25, scope: !3749, inlinedAt: !3754)
!3942 = !DILocation(line: 200, column: 31, scope: !3749, inlinedAt: !3754)
!3943 = !DILocation(line: 200, column: 7, scope: !3749, inlinedAt: !3754)
!3944 = !DILocation(line: 200, column: 5, scope: !3749, inlinedAt: !3754)
!3945 = !DILocation(line: 200, column: 3, scope: !3749, inlinedAt: !3754)
!3946 = !DILocation(line: 201, column: 9, scope: !3751, inlinedAt: !3754)
!3947 = !DILocation(line: 358, column: 6, scope: !3755)
!3948 = !DILocation(line: 358, column: 6, scope: !3739)
!3949 = !DILocation(line: 359, column: 7, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 358, column: 61)
!3951 = !DILocation(line: 360, column: 3, scope: !3950)
!3952 = !DILocation(line: 363, column: 13, scope: !3739)
!3953 = !DILocation(line: 363, column: 17, scope: !3739)
!3954 = !DILocation(line: 363, column: 25, scope: !3739)
!3955 = !DILocation(line: 363, column: 2, scope: !3739)
!3956 = !DILocation(line: 364, column: 7, scope: !3739)
!3957 = !DILocation(line: 364, column: 15, scope: !3739)
!3958 = !DILocation(line: 364, column: 2, scope: !3739)
!3959 = !DILocation(line: 365, column: 2, scope: !3739)
!3960 = !DILabel(scope: !3739, name: "err_put_fence3", file: !3, line: 367)
!3961 = !DILocation(line: 367, column: 1, scope: !3739)
!3962 = !DILocation(line: 368, column: 7, scope: !3739)
!3963 = !DILocation(line: 368, column: 15, scope: !3739)
!3964 = !DILocation(line: 368, column: 2, scope: !3739)
!3965 = !DILabel(scope: !3739, name: "err_put_fence2", file: !3, line: 370)
!3966 = !DILocation(line: 370, column: 1, scope: !3739)
!3967 = !DILocation(line: 371, column: 7, scope: !3739)
!3968 = !DILocation(line: 371, column: 15, scope: !3739)
!3969 = !DILocation(line: 371, column: 2, scope: !3739)
!3970 = !DILabel(scope: !3739, name: "err_put_fd", file: !3, line: 373)
!3971 = !DILocation(line: 373, column: 1, scope: !3739)
!3972 = !DILocation(line: 374, column: 16, scope: !3739)
!3973 = !DILocation(line: 374, column: 2, scope: !3739)
!3974 = !DILocation(line: 375, column: 9, scope: !3739)
!3975 = !DILocation(line: 375, column: 2, scope: !3739)
!3976 = !DILocation(line: 376, column: 1, scope: !3739)
!3977 = distinct !DISubprogram(name: "sync_file_ioctl_fence_info", scope: !3, file: !3, line: 398, type: !3740, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3978 = !DILocation(line: 138, column: 29, scope: !3743, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 199, column: 6, scope: !3749, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 451, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 451, column: 6)
!3982 = !DILocation(line: 138, column: 42, scope: !3743, inlinedAt: !3979)
!3983 = !DILocation(line: 138, column: 54, scope: !3743, inlinedAt: !3979)
!3984 = !DILocation(line: 140, column: 6, scope: !3743, inlinedAt: !3979)
!3985 = !DILocation(line: 150, column: 6, scope: !3763, inlinedAt: !3979)
!3986 = !DILocation(line: 197, column: 27, scope: !3751, inlinedAt: !3980)
!3987 = !DILocation(line: 197, column: 43, scope: !3751, inlinedAt: !3980)
!3988 = !DILocation(line: 197, column: 63, scope: !3751, inlinedAt: !3980)
!3989 = !DILocation(line: 138, column: 29, scope: !3743, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 199, column: 6, scope: !3749, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 441, column: 6, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 441, column: 6)
!3993 = !DILocation(line: 138, column: 42, scope: !3743, inlinedAt: !3990)
!3994 = !DILocation(line: 138, column: 54, scope: !3743, inlinedAt: !3990)
!3995 = !DILocation(line: 140, column: 6, scope: !3743, inlinedAt: !3990)
!3996 = !DILocation(line: 150, column: 6, scope: !3763, inlinedAt: !3990)
!3997 = !DILocation(line: 197, column: 27, scope: !3751, inlinedAt: !3991)
!3998 = !DILocation(line: 197, column: 43, scope: !3751, inlinedAt: !3991)
!3999 = !DILocation(line: 197, column: 63, scope: !3751, inlinedAt: !3991)
!4000 = !DILocation(line: 138, column: 29, scope: !3743, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 191, column: 6, scope: !3774, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 407, column: 6, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 407, column: 6)
!4004 = !DILocation(line: 138, column: 42, scope: !3743, inlinedAt: !4001)
!4005 = !DILocation(line: 138, column: 54, scope: !3743, inlinedAt: !4001)
!4006 = !DILocation(line: 140, column: 6, scope: !3743, inlinedAt: !4001)
!4007 = !DILocation(line: 150, column: 6, scope: !3763, inlinedAt: !4001)
!4008 = !DILocation(line: 189, column: 22, scope: !3775, inlinedAt: !4002)
!4009 = !DILocation(line: 189, column: 45, scope: !3775, inlinedAt: !4002)
!4010 = !DILocation(line: 189, column: 65, scope: !3775, inlinedAt: !4002)
!4011 = !DILocalVariable(name: "sync_file", arg: 1, scope: !3977, file: !3, line: 398, type: !88)
!4012 = !DILocation(line: 398, column: 58, scope: !3977)
!4013 = !DILocalVariable(name: "arg", arg: 2, scope: !3977, file: !3, line: 399, type: !335)
!4014 = !DILocation(line: 399, column: 26, scope: !3977)
!4015 = !DILocalVariable(name: "info", scope: !3977, file: !3, line: 401, type: !4016)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_file_info", file: !3803, line: 60, size: 448, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4016, file: !3803, line: 61, baseType: !2314, size: 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4016, file: !3803, line: 62, baseType: !1125, size: 32, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4016, file: !3803, line: 63, baseType: !159, size: 32, offset: 288)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "num_fences", scope: !4016, file: !3803, line: 64, baseType: !159, size: 32, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4016, file: !3803, line: 65, baseType: !159, size: 32, offset: 352)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fence_info", scope: !4016, file: !3803, line: 67, baseType: !164, size: 64, offset: 384)
!4024 = !DILocation(line: 401, column: 24, scope: !3977)
!4025 = !DILocalVariable(name: "fence_info", scope: !3977, file: !3, line: 402, type: !4026)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sync_fence_info", file: !3803, line: 42, size: 640, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "obj_name", scope: !4027, file: !3803, line: 43, baseType: !2314, size: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !4027, file: !3803, line: 44, baseType: !2314, size: 256, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4027, file: !3803, line: 45, baseType: !1125, size: 32, offset: 512)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4027, file: !3803, line: 46, baseType: !159, size: 32, offset: 544)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp_ns", scope: !4027, file: !3803, line: 47, baseType: !164, size: 64, offset: 576)
!4034 = !DILocation(line: 402, column: 26, scope: !3977)
!4035 = !DILocalVariable(name: "fences", scope: !3977, file: !3, line: 403, type: !2870)
!4036 = !DILocation(line: 403, column: 21, scope: !3977)
!4037 = !DILocalVariable(name: "size", scope: !3977, file: !3, line: 404, type: !159)
!4038 = !DILocation(line: 404, column: 8, scope: !3977)
!4039 = !DILocalVariable(name: "num_fences", scope: !3977, file: !3, line: 405, type: !224)
!4040 = !DILocation(line: 405, column: 6, scope: !3977)
!4041 = !DILocalVariable(name: "ret", scope: !3977, file: !3, line: 405, type: !224)
!4042 = !DILocation(line: 405, column: 18, scope: !3977)
!4043 = !DILocalVariable(name: "i", scope: !3977, file: !3, line: 405, type: !224)
!4044 = !DILocation(line: 405, column: 23, scope: !3977)
!4045 = !DILocation(line: 407, column: 21, scope: !4003)
!4046 = !DILocation(line: 407, column: 43, scope: !4003)
!4047 = !DILocation(line: 407, column: 28, scope: !4003)
!4048 = !DILocation(line: 191, column: 6, scope: !3774, inlinedAt: !4002)
!4049 = !DILocation(line: 141, column: 6, scope: !3822, inlinedAt: !4001)
!4050 = !DILocation(line: 0, scope: !3822, inlinedAt: !4001)
!4051 = !DILocation(line: 141, column: 6, scope: !3743, inlinedAt: !4001)
!4052 = !DILocation(line: 142, column: 29, scope: !3826, inlinedAt: !4001)
!4053 = !DILocation(line: 142, column: 8, scope: !3826, inlinedAt: !4001)
!4054 = !DILocation(line: 142, column: 7, scope: !3827, inlinedAt: !4001)
!4055 = !DILocation(line: 143, column: 18, scope: !3826, inlinedAt: !4001)
!4056 = !DILocation(line: 143, column: 22, scope: !3826, inlinedAt: !4001)
!4057 = !DILocation(line: 143, column: 4, scope: !3826, inlinedAt: !4001)
!4058 = !DILocation(line: 144, column: 12, scope: !3834, inlinedAt: !4001)
!4059 = !DILocation(line: 144, column: 12, scope: !3826, inlinedAt: !4001)
!4060 = !DILocation(line: 145, column: 4, scope: !3834, inlinedAt: !4001)
!4061 = !DILocation(line: 147, column: 4, scope: !3834, inlinedAt: !4001)
!4062 = !DILocation(line: 148, column: 3, scope: !3827, inlinedAt: !4001)
!4063 = !DILocation(line: 150, column: 6, scope: !3840, inlinedAt: !4001)
!4064 = !DILocation(line: 150, column: 6, scope: !3842, inlinedAt: !4001)
!4065 = !DILocation(line: 150, column: 6, scope: !3846, inlinedAt: !4001)
!4066 = !DILocation(line: 150, column: 6, scope: !3843, inlinedAt: !4001)
!4067 = !DILocation(line: 150, column: 6, scope: !3764, inlinedAt: !4001)
!4068 = !DILocation(line: 150, column: 6, scope: !3743, inlinedAt: !4001)
!4069 = !DILocation(line: 151, column: 3, scope: !3764, inlinedAt: !4001)
!4070 = !DILocation(line: 152, column: 20, scope: !3743, inlinedAt: !4001)
!4071 = !DILocation(line: 152, column: 26, scope: !3743, inlinedAt: !4001)
!4072 = !DILocation(line: 152, column: 33, scope: !3743, inlinedAt: !4001)
!4073 = !DILocation(line: 152, column: 2, scope: !3743, inlinedAt: !4001)
!4074 = !DILocation(line: 153, column: 2, scope: !3743, inlinedAt: !4001)
!4075 = !DILocation(line: 154, column: 1, scope: !3743, inlinedAt: !4001)
!4076 = !DILocation(line: 191, column: 6, scope: !3775, inlinedAt: !4002)
!4077 = !DILocation(line: 192, column: 23, scope: !3774, inlinedAt: !4002)
!4078 = !DILocation(line: 192, column: 27, scope: !3774, inlinedAt: !4002)
!4079 = !DILocation(line: 192, column: 33, scope: !3774, inlinedAt: !4002)
!4080 = !DILocation(line: 192, column: 7, scope: !3774, inlinedAt: !4002)
!4081 = !DILocation(line: 192, column: 5, scope: !3774, inlinedAt: !4002)
!4082 = !DILocation(line: 192, column: 3, scope: !3774, inlinedAt: !4002)
!4083 = !DILocation(line: 193, column: 9, scope: !3775, inlinedAt: !4002)
!4084 = !DILocation(line: 407, column: 6, scope: !4003)
!4085 = !DILocation(line: 407, column: 6, scope: !3977)
!4086 = !DILocation(line: 408, column: 3, scope: !4003)
!4087 = !DILocation(line: 410, column: 11, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 410, column: 6)
!4089 = !DILocation(line: 410, column: 6, scope: !4088)
!4090 = !DILocation(line: 410, column: 17, scope: !4088)
!4091 = !DILocation(line: 410, column: 25, scope: !4088)
!4092 = !DILocation(line: 410, column: 20, scope: !4088)
!4093 = !DILocation(line: 410, column: 6, scope: !3977)
!4094 = !DILocation(line: 411, column: 3, scope: !4088)
!4095 = !DILocation(line: 413, column: 22, scope: !3977)
!4096 = !DILocation(line: 413, column: 11, scope: !3977)
!4097 = !DILocation(line: 413, column: 9, scope: !3977)
!4098 = !DILocation(line: 421, column: 12, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 421, column: 6)
!4100 = !DILocation(line: 421, column: 7, scope: !4099)
!4101 = !DILocation(line: 421, column: 6, scope: !3977)
!4102 = !DILocation(line: 422, column: 38, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 421, column: 24)
!4104 = !DILocation(line: 422, column: 49, scope: !4103)
!4105 = !DILocation(line: 422, column: 17, scope: !4103)
!4106 = !DILocation(line: 422, column: 8, scope: !4103)
!4107 = !DILocation(line: 422, column: 15, scope: !4103)
!4108 = !DILocation(line: 423, column: 3, scope: !4103)
!4109 = !DILocation(line: 425, column: 8, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 424, column: 9)
!4111 = !DILocation(line: 425, column: 15, scope: !4110)
!4112 = !DILocation(line: 428, column: 11, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 428, column: 6)
!4114 = !DILocation(line: 428, column: 24, scope: !4113)
!4115 = !DILocation(line: 428, column: 22, scope: !4113)
!4116 = !DILocation(line: 428, column: 6, scope: !3977)
!4117 = !DILocation(line: 429, column: 3, scope: !4113)
!4118 = !DILocation(line: 431, column: 9, scope: !3977)
!4119 = !DILocation(line: 431, column: 20, scope: !3977)
!4120 = !DILocation(line: 431, column: 7, scope: !3977)
!4121 = !DILocation(line: 432, column: 23, scope: !3977)
!4122 = !DILocation(line: 432, column: 15, scope: !3977)
!4123 = !DILocation(line: 432, column: 13, scope: !3977)
!4124 = !DILocation(line: 433, column: 7, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 433, column: 6)
!4126 = !DILocation(line: 433, column: 6, scope: !3977)
!4127 = !DILocation(line: 434, column: 3, scope: !4125)
!4128 = !DILocation(line: 436, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 436, column: 2)
!4130 = !DILocation(line: 436, column: 7, scope: !4129)
!4131 = !DILocation(line: 436, column: 14, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 436, column: 2)
!4133 = !DILocation(line: 436, column: 18, scope: !4132)
!4134 = !DILocation(line: 436, column: 16, scope: !4132)
!4135 = !DILocation(line: 436, column: 2, scope: !4129)
!4136 = !DILocalVariable(name: "status", scope: !4137, file: !3, line: 437, type: !224)
!4137 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 436, column: 35)
!4138 = !DILocation(line: 437, column: 7, scope: !4137)
!4139 = !DILocation(line: 437, column: 37, scope: !4137)
!4140 = !DILocation(line: 437, column: 44, scope: !4137)
!4141 = !DILocation(line: 437, column: 49, scope: !4137)
!4142 = !DILocation(line: 437, column: 60, scope: !4137)
!4143 = !DILocation(line: 437, column: 16, scope: !4137)
!4144 = !DILocation(line: 438, column: 22, scope: !4137)
!4145 = !DILocation(line: 438, column: 29, scope: !4137)
!4146 = !DILocation(line: 438, column: 17, scope: !4137)
!4147 = !DILocation(line: 438, column: 41, scope: !4137)
!4148 = !DILocation(line: 438, column: 50, scope: !4137)
!4149 = !DILocation(line: 438, column: 8, scope: !4137)
!4150 = !DILocation(line: 438, column: 15, scope: !4137)
!4151 = !DILocation(line: 439, column: 2, scope: !4137)
!4152 = !DILocation(line: 436, column: 31, scope: !4132)
!4153 = !DILocation(line: 436, column: 2, scope: !4132)
!4154 = distinct !{!4154, !4135, !4155}
!4155 = !DILocation(line: 439, column: 2, scope: !4129)
!4156 = !DILocalVariable(name: "__dummy", scope: !4157, file: !3, line: 441, type: !163)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 441, column: 19)
!4158 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 441, column: 19)
!4159 = !DILocation(line: 441, column: 19, scope: !4157)
!4160 = !DILocalVariable(name: "__dummy2", scope: !4157, file: !3, line: 441, type: !164)
!4161 = !DILocation(line: 441, column: 19, scope: !4158)
!4162 = !DILocation(line: 441, column: 58, scope: !3992)
!4163 = !DILocation(line: 442, column: 5, scope: !3992)
!4164 = !DILocation(line: 199, column: 6, scope: !3749, inlinedAt: !3991)
!4165 = !DILocation(line: 141, column: 6, scope: !3822, inlinedAt: !3990)
!4166 = !DILocation(line: 0, scope: !3822, inlinedAt: !3990)
!4167 = !DILocation(line: 141, column: 6, scope: !3743, inlinedAt: !3990)
!4168 = !DILocation(line: 142, column: 29, scope: !3826, inlinedAt: !3990)
!4169 = !DILocation(line: 142, column: 8, scope: !3826, inlinedAt: !3990)
!4170 = !DILocation(line: 142, column: 7, scope: !3827, inlinedAt: !3990)
!4171 = !DILocation(line: 143, column: 18, scope: !3826, inlinedAt: !3990)
!4172 = !DILocation(line: 143, column: 22, scope: !3826, inlinedAt: !3990)
!4173 = !DILocation(line: 143, column: 4, scope: !3826, inlinedAt: !3990)
!4174 = !DILocation(line: 144, column: 12, scope: !3834, inlinedAt: !3990)
!4175 = !DILocation(line: 144, column: 12, scope: !3826, inlinedAt: !3990)
!4176 = !DILocation(line: 145, column: 4, scope: !3834, inlinedAt: !3990)
!4177 = !DILocation(line: 147, column: 4, scope: !3834, inlinedAt: !3990)
!4178 = !DILocation(line: 148, column: 3, scope: !3827, inlinedAt: !3990)
!4179 = !DILocation(line: 150, column: 6, scope: !3840, inlinedAt: !3990)
!4180 = !DILocation(line: 150, column: 6, scope: !3842, inlinedAt: !3990)
!4181 = !DILocation(line: 150, column: 6, scope: !3846, inlinedAt: !3990)
!4182 = !DILocation(line: 150, column: 6, scope: !3843, inlinedAt: !3990)
!4183 = !DILocation(line: 150, column: 6, scope: !3764, inlinedAt: !3990)
!4184 = !DILocation(line: 150, column: 6, scope: !3743, inlinedAt: !3990)
!4185 = !DILocation(line: 151, column: 3, scope: !3764, inlinedAt: !3990)
!4186 = !DILocation(line: 152, column: 20, scope: !3743, inlinedAt: !3990)
!4187 = !DILocation(line: 152, column: 26, scope: !3743, inlinedAt: !3990)
!4188 = !DILocation(line: 152, column: 33, scope: !3743, inlinedAt: !3990)
!4189 = !DILocation(line: 152, column: 2, scope: !3743, inlinedAt: !3990)
!4190 = !DILocation(line: 153, column: 2, scope: !3743, inlinedAt: !3990)
!4191 = !DILocation(line: 154, column: 1, scope: !3743, inlinedAt: !3990)
!4192 = !DILocation(line: 199, column: 6, scope: !3751, inlinedAt: !3991)
!4193 = !DILocation(line: 200, column: 21, scope: !3749, inlinedAt: !3991)
!4194 = !DILocation(line: 200, column: 25, scope: !3749, inlinedAt: !3991)
!4195 = !DILocation(line: 200, column: 31, scope: !3749, inlinedAt: !3991)
!4196 = !DILocation(line: 200, column: 7, scope: !3749, inlinedAt: !3991)
!4197 = !DILocation(line: 200, column: 5, scope: !3749, inlinedAt: !3991)
!4198 = !DILocation(line: 200, column: 3, scope: !3749, inlinedAt: !3991)
!4199 = !DILocation(line: 201, column: 9, scope: !3751, inlinedAt: !3991)
!4200 = !DILocation(line: 441, column: 6, scope: !3992)
!4201 = !DILocation(line: 441, column: 6, scope: !3977)
!4202 = !DILocation(line: 443, column: 7, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 442, column: 12)
!4204 = !DILocation(line: 444, column: 3, scope: !4203)
!4205 = !DILocation(line: 442, column: 9, scope: !3992)
!4206 = !DILabel(scope: !3977, name: "no_fences", file: !3, line: 447)
!4207 = !DILocation(line: 447, column: 1, scope: !3977)
!4208 = !DILocation(line: 448, column: 21, scope: !3977)
!4209 = !DILocation(line: 448, column: 37, scope: !3977)
!4210 = !DILocation(line: 448, column: 32, scope: !3977)
!4211 = !DILocation(line: 448, column: 2, scope: !3977)
!4212 = !DILocation(line: 449, column: 20, scope: !3977)
!4213 = !DILocation(line: 449, column: 7, scope: !3977)
!4214 = !DILocation(line: 449, column: 18, scope: !3977)
!4215 = !DILocation(line: 451, column: 34, scope: !3981)
!4216 = !DILocation(line: 451, column: 19, scope: !3981)
!4217 = !DILocation(line: 451, column: 39, scope: !3981)
!4218 = !DILocation(line: 199, column: 6, scope: !3749, inlinedAt: !3980)
!4219 = !DILocation(line: 141, column: 6, scope: !3822, inlinedAt: !3979)
!4220 = !DILocation(line: 0, scope: !3822, inlinedAt: !3979)
!4221 = !DILocation(line: 141, column: 6, scope: !3743, inlinedAt: !3979)
!4222 = !DILocation(line: 142, column: 29, scope: !3826, inlinedAt: !3979)
!4223 = !DILocation(line: 142, column: 8, scope: !3826, inlinedAt: !3979)
!4224 = !DILocation(line: 142, column: 7, scope: !3827, inlinedAt: !3979)
!4225 = !DILocation(line: 143, column: 18, scope: !3826, inlinedAt: !3979)
!4226 = !DILocation(line: 143, column: 22, scope: !3826, inlinedAt: !3979)
!4227 = !DILocation(line: 143, column: 4, scope: !3826, inlinedAt: !3979)
!4228 = !DILocation(line: 144, column: 12, scope: !3834, inlinedAt: !3979)
!4229 = !DILocation(line: 144, column: 12, scope: !3826, inlinedAt: !3979)
!4230 = !DILocation(line: 145, column: 4, scope: !3834, inlinedAt: !3979)
!4231 = !DILocation(line: 147, column: 4, scope: !3834, inlinedAt: !3979)
!4232 = !DILocation(line: 148, column: 3, scope: !3827, inlinedAt: !3979)
!4233 = !DILocation(line: 150, column: 6, scope: !3840, inlinedAt: !3979)
!4234 = !DILocation(line: 150, column: 6, scope: !3842, inlinedAt: !3979)
!4235 = !DILocation(line: 150, column: 6, scope: !3846, inlinedAt: !3979)
!4236 = !DILocation(line: 150, column: 6, scope: !3843, inlinedAt: !3979)
!4237 = !DILocation(line: 150, column: 6, scope: !3764, inlinedAt: !3979)
!4238 = !DILocation(line: 150, column: 6, scope: !3743, inlinedAt: !3979)
!4239 = !DILocation(line: 151, column: 3, scope: !3764, inlinedAt: !3979)
!4240 = !DILocation(line: 152, column: 20, scope: !3743, inlinedAt: !3979)
!4241 = !DILocation(line: 152, column: 26, scope: !3743, inlinedAt: !3979)
!4242 = !DILocation(line: 152, column: 33, scope: !3743, inlinedAt: !3979)
!4243 = !DILocation(line: 152, column: 2, scope: !3743, inlinedAt: !3979)
!4244 = !DILocation(line: 153, column: 2, scope: !3743, inlinedAt: !3979)
!4245 = !DILocation(line: 154, column: 1, scope: !3743, inlinedAt: !3979)
!4246 = !DILocation(line: 199, column: 6, scope: !3751, inlinedAt: !3980)
!4247 = !DILocation(line: 200, column: 21, scope: !3749, inlinedAt: !3980)
!4248 = !DILocation(line: 200, column: 25, scope: !3749, inlinedAt: !3980)
!4249 = !DILocation(line: 200, column: 31, scope: !3749, inlinedAt: !3980)
!4250 = !DILocation(line: 200, column: 7, scope: !3749, inlinedAt: !3980)
!4251 = !DILocation(line: 200, column: 5, scope: !3749, inlinedAt: !3980)
!4252 = !DILocation(line: 200, column: 3, scope: !3749, inlinedAt: !3980)
!4253 = !DILocation(line: 201, column: 9, scope: !3751, inlinedAt: !3980)
!4254 = !DILocation(line: 451, column: 6, scope: !3981)
!4255 = !DILocation(line: 451, column: 6, scope: !3977)
!4256 = !DILocation(line: 452, column: 7, scope: !3981)
!4257 = !DILocation(line: 452, column: 3, scope: !3981)
!4258 = !DILocation(line: 454, column: 7, scope: !3981)
!4259 = !DILocation(line: 451, column: 58, scope: !3981)
!4260 = !DILabel(scope: !3977, name: "out", file: !3, line: 456)
!4261 = !DILocation(line: 456, column: 1, scope: !3977)
!4262 = !DILocation(line: 457, column: 8, scope: !3977)
!4263 = !DILocation(line: 457, column: 2, scope: !3977)
!4264 = !DILocation(line: 459, column: 9, scope: !3977)
!4265 = !DILocation(line: 459, column: 2, scope: !3977)
!4266 = !DILocation(line: 460, column: 1, scope: !3977)
!4267 = distinct !DISubprogram(name: "sync_file_merge", scope: !3, file: !3, line: 210, type: !4268, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!88, !208, !88, !88}
!4270 = !DILocalVariable(name: "name", arg: 1, scope: !4267, file: !3, line: 210, type: !208)
!4271 = !DILocation(line: 210, column: 54, scope: !4267)
!4272 = !DILocalVariable(name: "a", arg: 2, scope: !4267, file: !3, line: 210, type: !88)
!4273 = !DILocation(line: 210, column: 78, scope: !4267)
!4274 = !DILocalVariable(name: "b", arg: 3, scope: !4267, file: !3, line: 211, type: !88)
!4275 = !DILocation(line: 211, column: 25, scope: !4267)
!4276 = !DILocalVariable(name: "sync_file", scope: !4267, file: !3, line: 213, type: !88)
!4277 = !DILocation(line: 213, column: 20, scope: !4267)
!4278 = !DILocalVariable(name: "fences", scope: !4267, file: !3, line: 214, type: !2870)
!4279 = !DILocation(line: 214, column: 21, scope: !4267)
!4280 = !DILocalVariable(name: "nfences", scope: !4267, file: !3, line: 214, type: !2870)
!4281 = !DILocation(line: 214, column: 31, scope: !4267)
!4282 = !DILocalVariable(name: "a_fences", scope: !4267, file: !3, line: 214, type: !2870)
!4283 = !DILocation(line: 214, column: 42, scope: !4267)
!4284 = !DILocalVariable(name: "b_fences", scope: !4267, file: !3, line: 214, type: !2870)
!4285 = !DILocation(line: 214, column: 54, scope: !4267)
!4286 = !DILocalVariable(name: "i", scope: !4267, file: !3, line: 215, type: !224)
!4287 = !DILocation(line: 215, column: 6, scope: !4267)
!4288 = !DILocalVariable(name: "i_a", scope: !4267, file: !3, line: 215, type: !224)
!4289 = !DILocation(line: 215, column: 9, scope: !4267)
!4290 = !DILocalVariable(name: "i_b", scope: !4267, file: !3, line: 215, type: !224)
!4291 = !DILocation(line: 215, column: 14, scope: !4267)
!4292 = !DILocalVariable(name: "num_fences", scope: !4267, file: !3, line: 215, type: !224)
!4293 = !DILocation(line: 215, column: 19, scope: !4267)
!4294 = !DILocalVariable(name: "a_num_fences", scope: !4267, file: !3, line: 215, type: !224)
!4295 = !DILocation(line: 215, column: 31, scope: !4267)
!4296 = !DILocalVariable(name: "b_num_fences", scope: !4267, file: !3, line: 215, type: !224)
!4297 = !DILocation(line: 215, column: 45, scope: !4267)
!4298 = !DILocation(line: 217, column: 14, scope: !4267)
!4299 = !DILocation(line: 217, column: 12, scope: !4267)
!4300 = !DILocation(line: 218, column: 7, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 218, column: 6)
!4302 = !DILocation(line: 218, column: 6, scope: !4267)
!4303 = !DILocation(line: 219, column: 3, scope: !4301)
!4304 = !DILocation(line: 221, column: 24, scope: !4267)
!4305 = !DILocation(line: 221, column: 13, scope: !4267)
!4306 = !DILocation(line: 221, column: 11, scope: !4267)
!4307 = !DILocation(line: 222, column: 24, scope: !4267)
!4308 = !DILocation(line: 222, column: 13, scope: !4267)
!4309 = !DILocation(line: 222, column: 11, scope: !4267)
!4310 = !DILocation(line: 223, column: 6, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 223, column: 6)
!4312 = !DILocation(line: 223, column: 31, scope: !4311)
!4313 = !DILocation(line: 223, column: 29, scope: !4311)
!4314 = !DILocation(line: 223, column: 19, scope: !4311)
!4315 = !DILocation(line: 223, column: 6, scope: !4267)
!4316 = !DILocation(line: 224, column: 3, scope: !4311)
!4317 = !DILocation(line: 226, column: 15, scope: !4267)
!4318 = !DILocation(line: 226, column: 30, scope: !4267)
!4319 = !DILocation(line: 226, column: 28, scope: !4267)
!4320 = !DILocation(line: 226, column: 13, scope: !4267)
!4321 = !DILocation(line: 228, column: 19, scope: !4267)
!4322 = !DILocation(line: 228, column: 11, scope: !4267)
!4323 = !DILocation(line: 228, column: 9, scope: !4267)
!4324 = !DILocation(line: 229, column: 7, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 229, column: 6)
!4326 = !DILocation(line: 229, column: 6, scope: !4267)
!4327 = !DILocation(line: 230, column: 3, scope: !4325)
!4328 = !DILocation(line: 239, column: 21, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 239, column: 2)
!4330 = !DILocation(line: 239, column: 15, scope: !4329)
!4331 = !DILocation(line: 239, column: 9, scope: !4329)
!4332 = !DILocation(line: 239, column: 7, scope: !4329)
!4333 = !DILocation(line: 239, column: 26, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4329, file: !3, line: 239, column: 2)
!4335 = !DILocation(line: 239, column: 32, scope: !4334)
!4336 = !DILocation(line: 239, column: 30, scope: !4334)
!4337 = !DILocation(line: 239, column: 45, scope: !4334)
!4338 = !DILocation(line: 239, column: 48, scope: !4334)
!4339 = !DILocation(line: 239, column: 54, scope: !4334)
!4340 = !DILocation(line: 239, column: 52, scope: !4334)
!4341 = !DILocation(line: 0, scope: !4334)
!4342 = !DILocation(line: 239, column: 2, scope: !4329)
!4343 = !DILocalVariable(name: "pt_a", scope: !4344, file: !3, line: 240, type: !2801)
!4344 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 239, column: 70)
!4345 = !DILocation(line: 240, column: 21, scope: !4344)
!4346 = !DILocation(line: 240, column: 28, scope: !4344)
!4347 = !DILocation(line: 240, column: 37, scope: !4344)
!4348 = !DILocalVariable(name: "pt_b", scope: !4344, file: !3, line: 241, type: !2801)
!4349 = !DILocation(line: 241, column: 21, scope: !4344)
!4350 = !DILocation(line: 241, column: 28, scope: !4344)
!4351 = !DILocation(line: 241, column: 37, scope: !4344)
!4352 = !DILocation(line: 243, column: 7, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4344, file: !3, line: 243, column: 7)
!4354 = !DILocation(line: 243, column: 13, scope: !4353)
!4355 = !DILocation(line: 243, column: 23, scope: !4353)
!4356 = !DILocation(line: 243, column: 29, scope: !4353)
!4357 = !DILocation(line: 243, column: 21, scope: !4353)
!4358 = !DILocation(line: 243, column: 7, scope: !4344)
!4359 = !DILocation(line: 244, column: 14, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 243, column: 38)
!4361 = !DILocation(line: 244, column: 26, scope: !4360)
!4362 = !DILocation(line: 244, column: 4, scope: !4360)
!4363 = !DILocation(line: 246, column: 7, scope: !4360)
!4364 = !DILocation(line: 247, column: 3, scope: !4360)
!4365 = !DILocation(line: 247, column: 14, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 247, column: 14)
!4367 = !DILocation(line: 247, column: 20, scope: !4366)
!4368 = !DILocation(line: 247, column: 30, scope: !4366)
!4369 = !DILocation(line: 247, column: 36, scope: !4366)
!4370 = !DILocation(line: 247, column: 28, scope: !4366)
!4371 = !DILocation(line: 247, column: 14, scope: !4353)
!4372 = !DILocation(line: 248, column: 14, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 247, column: 45)
!4374 = !DILocation(line: 248, column: 26, scope: !4373)
!4375 = !DILocation(line: 248, column: 4, scope: !4373)
!4376 = !DILocation(line: 250, column: 7, scope: !4373)
!4377 = !DILocation(line: 251, column: 3, scope: !4373)
!4378 = !DILocation(line: 252, column: 29, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 252, column: 8)
!4380 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 251, column: 10)
!4381 = !DILocation(line: 252, column: 35, scope: !4379)
!4382 = !DILocation(line: 252, column: 42, scope: !4379)
!4383 = !DILocation(line: 252, column: 48, scope: !4379)
!4384 = !DILocation(line: 253, column: 8, scope: !4379)
!4385 = !DILocation(line: 253, column: 14, scope: !4379)
!4386 = !DILocation(line: 252, column: 8, scope: !4379)
!4387 = !DILocation(line: 252, column: 8, scope: !4380)
!4388 = !DILocation(line: 254, column: 15, scope: !4379)
!4389 = !DILocation(line: 254, column: 27, scope: !4379)
!4390 = !DILocation(line: 254, column: 5, scope: !4379)
!4391 = !DILocation(line: 256, column: 15, scope: !4379)
!4392 = !DILocation(line: 256, column: 27, scope: !4379)
!4393 = !DILocation(line: 256, column: 5, scope: !4379)
!4394 = !DILocation(line: 258, column: 7, scope: !4380)
!4395 = !DILocation(line: 259, column: 7, scope: !4380)
!4396 = !DILocation(line: 239, column: 2, scope: !4334)
!4397 = distinct !{!4397, !4342, !4398}
!4398 = !DILocation(line: 261, column: 2, scope: !4329)
!4399 = !DILocation(line: 263, column: 2, scope: !4267)
!4400 = !DILocation(line: 263, column: 9, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 263, column: 2)
!4402 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 263, column: 2)
!4403 = !DILocation(line: 263, column: 15, scope: !4401)
!4404 = !DILocation(line: 263, column: 13, scope: !4401)
!4405 = !DILocation(line: 263, column: 2, scope: !4402)
!4406 = !DILocation(line: 264, column: 13, scope: !4401)
!4407 = !DILocation(line: 264, column: 25, scope: !4401)
!4408 = !DILocation(line: 264, column: 34, scope: !4401)
!4409 = !DILocation(line: 264, column: 3, scope: !4401)
!4410 = !DILocation(line: 263, column: 32, scope: !4401)
!4411 = !DILocation(line: 263, column: 2, scope: !4401)
!4412 = distinct !{!4412, !4405, !4413}
!4413 = !DILocation(line: 264, column: 38, scope: !4402)
!4414 = !DILocation(line: 266, column: 2, scope: !4267)
!4415 = !DILocation(line: 266, column: 9, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 266, column: 2)
!4417 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 266, column: 2)
!4418 = !DILocation(line: 266, column: 15, scope: !4416)
!4419 = !DILocation(line: 266, column: 13, scope: !4416)
!4420 = !DILocation(line: 266, column: 2, scope: !4417)
!4421 = !DILocation(line: 267, column: 13, scope: !4416)
!4422 = !DILocation(line: 267, column: 25, scope: !4416)
!4423 = !DILocation(line: 267, column: 34, scope: !4416)
!4424 = !DILocation(line: 267, column: 3, scope: !4416)
!4425 = !DILocation(line: 266, column: 32, scope: !4416)
!4426 = !DILocation(line: 266, column: 2, scope: !4416)
!4427 = distinct !{!4427, !4420, !4428}
!4428 = !DILocation(line: 267, column: 38, scope: !4417)
!4429 = !DILocation(line: 269, column: 6, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 269, column: 6)
!4431 = !DILocation(line: 269, column: 8, scope: !4430)
!4432 = !DILocation(line: 269, column: 6, scope: !4267)
!4433 = !DILocation(line: 270, column: 31, scope: !4430)
!4434 = !DILocation(line: 270, column: 17, scope: !4430)
!4435 = !DILocation(line: 270, column: 3, scope: !4430)
!4436 = !DILocation(line: 270, column: 11, scope: !4430)
!4437 = !DILocation(line: 270, column: 15, scope: !4430)
!4438 = !DILocation(line: 272, column: 6, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 272, column: 6)
!4440 = !DILocation(line: 272, column: 19, scope: !4439)
!4441 = !DILocation(line: 272, column: 17, scope: !4439)
!4442 = !DILocation(line: 272, column: 6, scope: !4267)
!4443 = !DILocation(line: 273, column: 22, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 272, column: 22)
!4445 = !DILocation(line: 273, column: 30, scope: !4444)
!4446 = !DILocation(line: 273, column: 32, scope: !4444)
!4447 = !DILocation(line: 273, column: 13, scope: !4444)
!4448 = !DILocation(line: 273, column: 11, scope: !4444)
!4449 = !DILocation(line: 275, column: 8, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 275, column: 7)
!4451 = !DILocation(line: 275, column: 7, scope: !4444)
!4452 = !DILocation(line: 276, column: 4, scope: !4450)
!4453 = !DILocation(line: 278, column: 12, scope: !4444)
!4454 = !DILocation(line: 278, column: 10, scope: !4444)
!4455 = !DILocation(line: 279, column: 2, scope: !4444)
!4456 = !DILocation(line: 281, column: 26, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 281, column: 6)
!4458 = !DILocation(line: 281, column: 37, scope: !4457)
!4459 = !DILocation(line: 281, column: 45, scope: !4457)
!4460 = !DILocation(line: 281, column: 6, scope: !4457)
!4461 = !DILocation(line: 281, column: 48, scope: !4457)
!4462 = !DILocation(line: 281, column: 6, scope: !4267)
!4463 = !DILocation(line: 282, column: 9, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 281, column: 53)
!4465 = !DILocation(line: 282, column: 3, scope: !4464)
!4466 = !DILocation(line: 283, column: 3, scope: !4464)
!4467 = !DILocation(line: 286, column: 10, scope: !4267)
!4468 = !DILocation(line: 286, column: 21, scope: !4267)
!4469 = !DILocation(line: 286, column: 32, scope: !4267)
!4470 = !DILocation(line: 286, column: 2, scope: !4267)
!4471 = !DILocation(line: 287, column: 9, scope: !4267)
!4472 = !DILocation(line: 287, column: 2, scope: !4267)
!4473 = !DILabel(scope: !4267, name: "err", file: !3, line: 289)
!4474 = !DILocation(line: 289, column: 1, scope: !4267)
!4475 = !DILocation(line: 290, column: 7, scope: !4267)
!4476 = !DILocation(line: 290, column: 18, scope: !4267)
!4477 = !DILocation(line: 290, column: 2, scope: !4267)
!4478 = !DILocation(line: 291, column: 2, scope: !4267)
!4479 = !DILocation(line: 293, column: 1, scope: !4267)
!4480 = distinct !DISubprogram(name: "copy_overflow", scope: !3744, file: !3744, line: 132, type: !4481, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !224, !335}
!4483 = !DILocalVariable(name: "size", arg: 1, scope: !4480, file: !3744, line: 132, type: !224)
!4484 = !DILocation(line: 132, column: 38, scope: !4480)
!4485 = !DILocalVariable(name: "count", arg: 2, scope: !4480, file: !3744, line: 132, type: !335)
!4486 = !DILocation(line: 132, column: 58, scope: !4480)
!4487 = !DILocalVariable(name: "__ret_warn_on", scope: !4488, file: !3744, line: 134, type: !224)
!4488 = distinct !DILexicalBlock(scope: !4480, file: !3744, line: 134, column: 2)
!4489 = !DILocation(line: 134, column: 2, scope: !4488)
!4490 = !DILocation(line: 134, column: 2, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4488, file: !3744, line: 134, column: 2)
!4492 = !DILocation(line: 134, column: 2, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4491, file: !3744, line: 134, column: 2)
!4494 = !DILocation(line: 134, column: 2, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4493, file: !3744, line: 134, column: 2)
!4496 = !DILocation(line: 134, column: 2, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4493, file: !3744, line: 134, column: 2)
!4498 = !DILocation(line: 134, column: 2, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4497, file: !3744, line: 134, column: 2)
!4500 = !DILocation(line: 134, column: 2, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4497, file: !3744, line: 134, column: 2)
!4502 = !{i32 -2145527069, i32 -2145527040, i32 -2145526994, i32 -2145526936, i32 -2145526882, i32 -2145526828, i32 -2145526773, i32 -2145526742}
!4503 = !DILocation(line: 134, column: 2, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4497, file: !3744, line: 134, column: 2)
!4505 = !{i32 -2145526322, i32 -2145526315, i32 -2145526263, i32 -2145526232, i32 -2145526202}
!4506 = !DILocation(line: 134, column: 2, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4497, file: !3744, line: 134, column: 2)
!4508 = !DILocation(line: 134, column: 2, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4493, file: !3744, line: 134, column: 2)
!4510 = !DILocation(line: 135, column: 1, scope: !4480)
!4511 = distinct !DISubprogram(name: "check_object_size", scope: !3744, file: !3744, line: 122, type: !4512, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !3353, !335, !240}
!4514 = !DILocalVariable(name: "ptr", arg: 1, scope: !4511, file: !3744, line: 122, type: !3353)
!4515 = !DILocation(line: 122, column: 50, scope: !4511)
!4516 = !DILocalVariable(name: "n", arg: 2, scope: !4511, file: !3744, line: 122, type: !335)
!4517 = !DILocation(line: 122, column: 69, scope: !4511)
!4518 = !DILocalVariable(name: "to_user", arg: 3, scope: !4511, file: !3744, line: 123, type: !240)
!4519 = !DILocation(line: 123, column: 15, scope: !4511)
!4520 = !DILocation(line: 124, column: 3, scope: !4511)
!4521 = distinct !DISubprogram(name: "get_fences", scope: !3, file: !3, line: 175, type: !4522, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!2870, !88, !468}
!4524 = !DILocalVariable(name: "sync_file", arg: 1, scope: !4521, file: !3, line: 175, type: !88)
!4525 = !DILocation(line: 175, column: 56, scope: !4521)
!4526 = !DILocalVariable(name: "num_fences", arg: 2, scope: !4521, file: !3, line: 176, type: !468)
!4527 = !DILocation(line: 176, column: 15, scope: !4521)
!4528 = !DILocation(line: 178, column: 25, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 178, column: 6)
!4530 = !DILocation(line: 178, column: 36, scope: !4529)
!4531 = !DILocation(line: 178, column: 6, scope: !4529)
!4532 = !DILocation(line: 178, column: 6, scope: !4521)
!4533 = !DILocalVariable(name: "array", scope: !4534, file: !3, line: 179, type: !2861)
!4534 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 178, column: 44)
!4535 = !DILocation(line: 179, column: 27, scope: !4534)
!4536 = !DILocation(line: 179, column: 54, scope: !4534)
!4537 = !DILocation(line: 179, column: 65, scope: !4534)
!4538 = !DILocation(line: 179, column: 35, scope: !4534)
!4539 = !DILocation(line: 181, column: 17, scope: !4534)
!4540 = !DILocation(line: 181, column: 24, scope: !4534)
!4541 = !DILocation(line: 181, column: 4, scope: !4534)
!4542 = !DILocation(line: 181, column: 15, scope: !4534)
!4543 = !DILocation(line: 182, column: 10, scope: !4534)
!4544 = !DILocation(line: 182, column: 17, scope: !4534)
!4545 = !DILocation(line: 182, column: 3, scope: !4534)
!4546 = !DILocation(line: 185, column: 3, scope: !4521)
!4547 = !DILocation(line: 185, column: 14, scope: !4521)
!4548 = !DILocation(line: 186, column: 10, scope: !4521)
!4549 = !DILocation(line: 186, column: 21, scope: !4521)
!4550 = !DILocation(line: 186, column: 2, scope: !4521)
!4551 = !DILocation(line: 187, column: 1, scope: !4521)
!4552 = distinct !DISubprogram(name: "kcalloc", scope: !48, file: !48, line: 601, type: !4553, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!77, !332, !332, !75}
!4555 = !DILocalVariable(name: "n", arg: 1, scope: !4552, file: !48, line: 601, type: !332)
!4556 = !DILocation(line: 601, column: 36, scope: !4552)
!4557 = !DILocalVariable(name: "size", arg: 2, scope: !4552, file: !48, line: 601, type: !332)
!4558 = !DILocation(line: 601, column: 46, scope: !4552)
!4559 = !DILocalVariable(name: "flags", arg: 3, scope: !4552, file: !48, line: 601, type: !75)
!4560 = !DILocation(line: 601, column: 58, scope: !4552)
!4561 = !DILocation(line: 603, column: 23, scope: !4552)
!4562 = !DILocation(line: 603, column: 26, scope: !4552)
!4563 = !DILocation(line: 603, column: 32, scope: !4552)
!4564 = !DILocation(line: 603, column: 38, scope: !4552)
!4565 = !DILocation(line: 603, column: 9, scope: !4552)
!4566 = !DILocation(line: 603, column: 2, scope: !4552)
!4567 = distinct !DISubprogram(name: "add_fence", scope: !3, file: !3, line: 189, type: !4568, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !2870, !468, !2801}
!4570 = !DILocalVariable(name: "fences", arg: 1, scope: !4567, file: !3, line: 189, type: !2870)
!4571 = !DILocation(line: 189, column: 42, scope: !4567)
!4572 = !DILocalVariable(name: "i", arg: 2, scope: !4567, file: !3, line: 190, type: !468)
!4573 = !DILocation(line: 190, column: 14, scope: !4567)
!4574 = !DILocalVariable(name: "fence", arg: 3, scope: !4567, file: !3, line: 190, type: !2801)
!4575 = !DILocation(line: 190, column: 35, scope: !4567)
!4576 = !DILocation(line: 192, column: 15, scope: !4567)
!4577 = !DILocation(line: 192, column: 2, scope: !4567)
!4578 = !DILocation(line: 192, column: 10, scope: !4567)
!4579 = !DILocation(line: 192, column: 9, scope: !4567)
!4580 = !DILocation(line: 192, column: 13, scope: !4567)
!4581 = !DILocation(line: 194, column: 29, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 194, column: 6)
!4583 = !DILocation(line: 194, column: 7, scope: !4582)
!4584 = !DILocation(line: 194, column: 6, scope: !4567)
!4585 = !DILocation(line: 195, column: 17, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 194, column: 37)
!4587 = !DILocation(line: 195, column: 3, scope: !4586)
!4588 = !DILocation(line: 196, column: 5, scope: !4586)
!4589 = !DILocation(line: 196, column: 7, scope: !4586)
!4590 = !DILocation(line: 197, column: 2, scope: !4586)
!4591 = !DILocation(line: 198, column: 1, scope: !4567)
!4592 = distinct !DISubprogram(name: "__dma_fence_is_later", scope: !60, file: !60, line: 451, type: !4593, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!240, !163, !163, !2807}
!4595 = !DILocalVariable(name: "f1", arg: 1, scope: !4592, file: !60, line: 451, type: !163)
!4596 = !DILocation(line: 451, column: 45, scope: !4592)
!4597 = !DILocalVariable(name: "f2", arg: 2, scope: !4592, file: !60, line: 451, type: !163)
!4598 = !DILocation(line: 451, column: 53, scope: !4592)
!4599 = !DILocalVariable(name: "ops", arg: 3, scope: !4592, file: !60, line: 452, type: !2807)
!4600 = !DILocation(line: 452, column: 34, scope: !4592)
!4601 = !DILocation(line: 458, column: 6, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4592, file: !60, line: 458, column: 6)
!4603 = !DILocation(line: 458, column: 11, scope: !4602)
!4604 = !DILocation(line: 458, column: 6, scope: !4592)
!4605 = !DILocation(line: 459, column: 10, scope: !4602)
!4606 = !DILocation(line: 459, column: 15, scope: !4602)
!4607 = !DILocation(line: 459, column: 13, scope: !4602)
!4608 = !DILocation(line: 459, column: 3, scope: !4602)
!4609 = !DILocation(line: 461, column: 15, scope: !4592)
!4610 = !DILocation(line: 461, column: 35, scope: !4592)
!4611 = !DILocation(line: 461, column: 33, scope: !4592)
!4612 = !DILocation(line: 461, column: 54, scope: !4592)
!4613 = !DILocation(line: 461, column: 2, scope: !4592)
!4614 = !DILocation(line: 462, column: 1, scope: !4592)
!4615 = distinct !DISubprogram(name: "sync_file_set_fence", scope: !3, file: !3, line: 148, type: !4616, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!224, !88, !2870, !224}
!4618 = !DILocalVariable(name: "sync_file", arg: 1, scope: !4615, file: !3, line: 148, type: !88)
!4619 = !DILocation(line: 148, column: 50, scope: !4615)
!4620 = !DILocalVariable(name: "fences", arg: 2, scope: !4615, file: !3, line: 149, type: !2870)
!4621 = !DILocation(line: 149, column: 30, scope: !4615)
!4622 = !DILocalVariable(name: "num_fences", arg: 3, scope: !4615, file: !3, line: 149, type: !224)
!4623 = !DILocation(line: 149, column: 42, scope: !4615)
!4624 = !DILocalVariable(name: "array", scope: !4615, file: !3, line: 151, type: !2861)
!4625 = !DILocation(line: 151, column: 26, scope: !4615)
!4626 = !DILocation(line: 159, column: 6, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 159, column: 6)
!4628 = !DILocation(line: 159, column: 17, scope: !4627)
!4629 = !DILocation(line: 159, column: 6, scope: !4615)
!4630 = !DILocation(line: 160, column: 22, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 159, column: 23)
!4632 = !DILocation(line: 160, column: 3, scope: !4631)
!4633 = !DILocation(line: 160, column: 14, scope: !4631)
!4634 = !DILocation(line: 160, column: 20, scope: !4631)
!4635 = !DILocation(line: 161, column: 9, scope: !4631)
!4636 = !DILocation(line: 161, column: 3, scope: !4631)
!4637 = !DILocation(line: 162, column: 2, scope: !4631)
!4638 = !DILocation(line: 163, column: 34, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 162, column: 9)
!4640 = !DILocation(line: 163, column: 46, scope: !4639)
!4641 = !DILocation(line: 164, column: 13, scope: !4639)
!4642 = !DILocation(line: 163, column: 11, scope: !4639)
!4643 = !DILocation(line: 163, column: 9, scope: !4639)
!4644 = !DILocation(line: 166, column: 8, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 166, column: 7)
!4646 = !DILocation(line: 166, column: 7, scope: !4639)
!4647 = !DILocation(line: 167, column: 4, scope: !4645)
!4648 = !DILocation(line: 169, column: 23, scope: !4639)
!4649 = !DILocation(line: 169, column: 30, scope: !4639)
!4650 = !DILocation(line: 169, column: 3, scope: !4639)
!4651 = !DILocation(line: 169, column: 14, scope: !4639)
!4652 = !DILocation(line: 169, column: 20, scope: !4639)
!4653 = !DILocation(line: 172, column: 2, scope: !4615)
!4654 = !DILocation(line: 173, column: 1, scope: !4615)
!4655 = distinct !DISubprogram(name: "dma_fence_is_array", scope: !2863, file: !2863, line: 56, type: !2819, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4656 = !DILocalVariable(name: "fence", arg: 1, scope: !4655, file: !2863, line: 56, type: !2801)
!4657 = !DILocation(line: 56, column: 57, scope: !4655)
!4658 = !DILocation(line: 58, column: 9, scope: !4655)
!4659 = !DILocation(line: 58, column: 16, scope: !4655)
!4660 = !DILocation(line: 58, column: 20, scope: !4655)
!4661 = !DILocation(line: 58, column: 2, scope: !4655)
!4662 = distinct !DISubprogram(name: "to_dma_fence_array", scope: !2863, file: !2863, line: 69, type: !4663, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!2861, !2801}
!4665 = !DILocalVariable(name: "fence", arg: 1, scope: !4662, file: !2863, line: 69, type: !2801)
!4666 = !DILocation(line: 69, column: 38, scope: !4662)
!4667 = !DILocation(line: 71, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4662, file: !2863, line: 71, column: 6)
!4669 = !DILocation(line: 71, column: 13, scope: !4668)
!4670 = !DILocation(line: 71, column: 17, scope: !4668)
!4671 = !DILocation(line: 71, column: 6, scope: !4662)
!4672 = !DILocation(line: 72, column: 3, scope: !4668)
!4673 = !DILocalVariable(name: "__mptr", scope: !4674, file: !2863, line: 74, type: !77)
!4674 = distinct !DILexicalBlock(scope: !4662, file: !2863, line: 74, column: 9)
!4675 = !DILocation(line: 74, column: 9, scope: !4674)
!4676 = !DILocation(line: 74, column: 9, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4674, file: !2863, line: 74, column: 9)
!4678 = !DILocation(line: 74, column: 2, scope: !4662)
!4679 = !DILocation(line: 75, column: 1, scope: !4662)
!4680 = distinct !DISubprogram(name: "kmalloc_array", scope: !48, file: !48, line: 584, type: !4553, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4681 = !DILocation(line: 445, column: 72, scope: !3081, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 552, column: 10, scope: !3086, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 591, column: 10, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4680, file: !48, line: 590, column: 6)
!4685 = !DILocation(line: 446, column: 9, scope: !3081, inlinedAt: !4682)
!4686 = !DILocation(line: 446, column: 23, scope: !3081, inlinedAt: !4682)
!4687 = !DILocation(line: 448, column: 8, scope: !3081, inlinedAt: !4682)
!4688 = !DILocation(line: 318, column: 67, scope: !3097, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 553, column: 20, scope: !3086, inlinedAt: !4683)
!4690 = !DILocation(line: 346, column: 58, scope: !3103, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 547, column: 11, scope: !3086, inlinedAt: !4683)
!4692 = !DILocation(line: 472, column: 28, scope: !3109, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 481, column: 9, scope: !3114, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 545, column: 11, scope: !3116, inlinedAt: !4683)
!4695 = !DILocation(line: 472, column: 40, scope: !3109, inlinedAt: !4693)
!4696 = !DILocation(line: 472, column: 60, scope: !3109, inlinedAt: !4693)
!4697 = !DILocation(line: 478, column: 51, scope: !3114, inlinedAt: !4694)
!4698 = !DILocation(line: 478, column: 63, scope: !3114, inlinedAt: !4694)
!4699 = !DILocation(line: 480, column: 15, scope: !3114, inlinedAt: !4694)
!4700 = !DILocation(line: 538, column: 45, scope: !3088, inlinedAt: !4683)
!4701 = !DILocation(line: 538, column: 57, scope: !3088, inlinedAt: !4683)
!4702 = !DILocation(line: 542, column: 16, scope: !3086, inlinedAt: !4683)
!4703 = !DILocalVariable(name: "n", arg: 1, scope: !4680, file: !48, line: 584, type: !332)
!4704 = !DILocation(line: 584, column: 42, scope: !4680)
!4705 = !DILocalVariable(name: "size", arg: 2, scope: !4680, file: !48, line: 584, type: !332)
!4706 = !DILocation(line: 584, column: 52, scope: !4680)
!4707 = !DILocalVariable(name: "flags", arg: 3, scope: !4680, file: !48, line: 584, type: !75)
!4708 = !DILocation(line: 584, column: 64, scope: !4680)
!4709 = !DILocalVariable(name: "bytes", scope: !4680, file: !48, line: 586, type: !332)
!4710 = !DILocation(line: 586, column: 9, scope: !4680)
!4711 = !DILocalVariable(name: "__a", scope: !4712, file: !48, line: 588, type: !332)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !48, line: 588, column: 6)
!4713 = distinct !DILexicalBlock(scope: !4680, file: !48, line: 588, column: 6)
!4714 = !DILocation(line: 588, column: 6, scope: !4712)
!4715 = !DILocalVariable(name: "__b", scope: !4712, file: !48, line: 588, type: !332)
!4716 = !DILocalVariable(name: "__d", scope: !4712, file: !48, line: 588, type: !4717)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!4718 = !DILocation(line: 588, column: 6, scope: !4713)
!4719 = !DILocation(line: 588, column: 6, scope: !4680)
!4720 = !DILocation(line: 589, column: 3, scope: !4713)
!4721 = !DILocation(line: 590, column: 27, scope: !4684)
!4722 = !DILocation(line: 590, column: 6, scope: !4684)
!4723 = !DILocation(line: 590, column: 30, scope: !4684)
!4724 = !DILocation(line: 590, column: 54, scope: !4684)
!4725 = !DILocation(line: 590, column: 33, scope: !4684)
!4726 = !DILocation(line: 590, column: 6, scope: !4680)
!4727 = !DILocation(line: 591, column: 18, scope: !4684)
!4728 = !DILocation(line: 591, column: 25, scope: !4684)
!4729 = !DILocation(line: 540, column: 27, scope: !3087, inlinedAt: !4683)
!4730 = !DILocation(line: 540, column: 6, scope: !3087, inlinedAt: !4683)
!4731 = !DILocation(line: 540, column: 6, scope: !3088, inlinedAt: !4683)
!4732 = !DILocation(line: 544, column: 7, scope: !3116, inlinedAt: !4683)
!4733 = !DILocation(line: 544, column: 12, scope: !3116, inlinedAt: !4683)
!4734 = !DILocation(line: 544, column: 7, scope: !3086, inlinedAt: !4683)
!4735 = !DILocation(line: 545, column: 25, scope: !3116, inlinedAt: !4683)
!4736 = !DILocation(line: 545, column: 31, scope: !3116, inlinedAt: !4683)
!4737 = !DILocation(line: 480, column: 33, scope: !3114, inlinedAt: !4694)
!4738 = !DILocation(line: 480, column: 23, scope: !3114, inlinedAt: !4694)
!4739 = !DILocation(line: 481, column: 29, scope: !3114, inlinedAt: !4694)
!4740 = !DILocation(line: 481, column: 35, scope: !3114, inlinedAt: !4694)
!4741 = !DILocation(line: 481, column: 42, scope: !3114, inlinedAt: !4694)
!4742 = !DILocation(line: 474, column: 23, scope: !3109, inlinedAt: !4693)
!4743 = !DILocation(line: 474, column: 29, scope: !3109, inlinedAt: !4693)
!4744 = !DILocation(line: 474, column: 36, scope: !3109, inlinedAt: !4693)
!4745 = !DILocation(line: 474, column: 9, scope: !3109, inlinedAt: !4693)
!4746 = !DILocation(line: 545, column: 4, scope: !3116, inlinedAt: !4683)
!4747 = !DILocation(line: 547, column: 25, scope: !3086, inlinedAt: !4683)
!4748 = !DILocation(line: 348, column: 7, scope: !3160, inlinedAt: !4691)
!4749 = !DILocation(line: 348, column: 6, scope: !3103, inlinedAt: !4691)
!4750 = !DILocation(line: 349, column: 3, scope: !3160, inlinedAt: !4691)
!4751 = !DILocation(line: 351, column: 6, scope: !3164, inlinedAt: !4691)
!4752 = !DILocation(line: 351, column: 11, scope: !3164, inlinedAt: !4691)
!4753 = !DILocation(line: 351, column: 6, scope: !3103, inlinedAt: !4691)
!4754 = !DILocation(line: 352, column: 3, scope: !3164, inlinedAt: !4691)
!4755 = !DILocation(line: 354, column: 32, scope: !3169, inlinedAt: !4691)
!4756 = !DILocation(line: 354, column: 37, scope: !3169, inlinedAt: !4691)
!4757 = !DILocation(line: 354, column: 42, scope: !3169, inlinedAt: !4691)
!4758 = !DILocation(line: 354, column: 45, scope: !3169, inlinedAt: !4691)
!4759 = !DILocation(line: 354, column: 50, scope: !3169, inlinedAt: !4691)
!4760 = !DILocation(line: 354, column: 6, scope: !3103, inlinedAt: !4691)
!4761 = !DILocation(line: 355, column: 3, scope: !3169, inlinedAt: !4691)
!4762 = !DILocation(line: 356, column: 32, scope: !3177, inlinedAt: !4691)
!4763 = !DILocation(line: 356, column: 37, scope: !3177, inlinedAt: !4691)
!4764 = !DILocation(line: 356, column: 43, scope: !3177, inlinedAt: !4691)
!4765 = !DILocation(line: 356, column: 46, scope: !3177, inlinedAt: !4691)
!4766 = !DILocation(line: 356, column: 51, scope: !3177, inlinedAt: !4691)
!4767 = !DILocation(line: 356, column: 6, scope: !3103, inlinedAt: !4691)
!4768 = !DILocation(line: 357, column: 3, scope: !3177, inlinedAt: !4691)
!4769 = !DILocation(line: 358, column: 6, scope: !3185, inlinedAt: !4691)
!4770 = !DILocation(line: 358, column: 11, scope: !3185, inlinedAt: !4691)
!4771 = !DILocation(line: 358, column: 6, scope: !3103, inlinedAt: !4691)
!4772 = !DILocation(line: 358, column: 26, scope: !3185, inlinedAt: !4691)
!4773 = !DILocation(line: 359, column: 6, scope: !3190, inlinedAt: !4691)
!4774 = !DILocation(line: 359, column: 11, scope: !3190, inlinedAt: !4691)
!4775 = !DILocation(line: 359, column: 6, scope: !3103, inlinedAt: !4691)
!4776 = !DILocation(line: 359, column: 26, scope: !3190, inlinedAt: !4691)
!4777 = !DILocation(line: 360, column: 6, scope: !3195, inlinedAt: !4691)
!4778 = !DILocation(line: 360, column: 11, scope: !3195, inlinedAt: !4691)
!4779 = !DILocation(line: 360, column: 6, scope: !3103, inlinedAt: !4691)
!4780 = !DILocation(line: 360, column: 26, scope: !3195, inlinedAt: !4691)
!4781 = !DILocation(line: 361, column: 6, scope: !3200, inlinedAt: !4691)
!4782 = !DILocation(line: 361, column: 11, scope: !3200, inlinedAt: !4691)
!4783 = !DILocation(line: 361, column: 6, scope: !3103, inlinedAt: !4691)
!4784 = !DILocation(line: 361, column: 26, scope: !3200, inlinedAt: !4691)
!4785 = !DILocation(line: 362, column: 6, scope: !3205, inlinedAt: !4691)
!4786 = !DILocation(line: 362, column: 11, scope: !3205, inlinedAt: !4691)
!4787 = !DILocation(line: 362, column: 6, scope: !3103, inlinedAt: !4691)
!4788 = !DILocation(line: 362, column: 26, scope: !3205, inlinedAt: !4691)
!4789 = !DILocation(line: 363, column: 6, scope: !3210, inlinedAt: !4691)
!4790 = !DILocation(line: 363, column: 11, scope: !3210, inlinedAt: !4691)
!4791 = !DILocation(line: 363, column: 6, scope: !3103, inlinedAt: !4691)
!4792 = !DILocation(line: 363, column: 26, scope: !3210, inlinedAt: !4691)
!4793 = !DILocation(line: 364, column: 6, scope: !3215, inlinedAt: !4691)
!4794 = !DILocation(line: 364, column: 11, scope: !3215, inlinedAt: !4691)
!4795 = !DILocation(line: 364, column: 6, scope: !3103, inlinedAt: !4691)
!4796 = !DILocation(line: 364, column: 26, scope: !3215, inlinedAt: !4691)
!4797 = !DILocation(line: 365, column: 6, scope: !3220, inlinedAt: !4691)
!4798 = !DILocation(line: 365, column: 11, scope: !3220, inlinedAt: !4691)
!4799 = !DILocation(line: 365, column: 6, scope: !3103, inlinedAt: !4691)
!4800 = !DILocation(line: 365, column: 26, scope: !3220, inlinedAt: !4691)
!4801 = !DILocation(line: 366, column: 6, scope: !3225, inlinedAt: !4691)
!4802 = !DILocation(line: 366, column: 11, scope: !3225, inlinedAt: !4691)
!4803 = !DILocation(line: 366, column: 6, scope: !3103, inlinedAt: !4691)
!4804 = !DILocation(line: 366, column: 26, scope: !3225, inlinedAt: !4691)
!4805 = !DILocation(line: 367, column: 6, scope: !3230, inlinedAt: !4691)
!4806 = !DILocation(line: 367, column: 11, scope: !3230, inlinedAt: !4691)
!4807 = !DILocation(line: 367, column: 6, scope: !3103, inlinedAt: !4691)
!4808 = !DILocation(line: 367, column: 26, scope: !3230, inlinedAt: !4691)
!4809 = !DILocation(line: 368, column: 6, scope: !3235, inlinedAt: !4691)
!4810 = !DILocation(line: 368, column: 11, scope: !3235, inlinedAt: !4691)
!4811 = !DILocation(line: 368, column: 6, scope: !3103, inlinedAt: !4691)
!4812 = !DILocation(line: 368, column: 26, scope: !3235, inlinedAt: !4691)
!4813 = !DILocation(line: 369, column: 6, scope: !3240, inlinedAt: !4691)
!4814 = !DILocation(line: 369, column: 11, scope: !3240, inlinedAt: !4691)
!4815 = !DILocation(line: 369, column: 6, scope: !3103, inlinedAt: !4691)
!4816 = !DILocation(line: 369, column: 26, scope: !3240, inlinedAt: !4691)
!4817 = !DILocation(line: 370, column: 6, scope: !3245, inlinedAt: !4691)
!4818 = !DILocation(line: 370, column: 11, scope: !3245, inlinedAt: !4691)
!4819 = !DILocation(line: 370, column: 6, scope: !3103, inlinedAt: !4691)
!4820 = !DILocation(line: 370, column: 26, scope: !3245, inlinedAt: !4691)
!4821 = !DILocation(line: 371, column: 6, scope: !3250, inlinedAt: !4691)
!4822 = !DILocation(line: 371, column: 11, scope: !3250, inlinedAt: !4691)
!4823 = !DILocation(line: 371, column: 6, scope: !3103, inlinedAt: !4691)
!4824 = !DILocation(line: 371, column: 26, scope: !3250, inlinedAt: !4691)
!4825 = !DILocation(line: 372, column: 6, scope: !3255, inlinedAt: !4691)
!4826 = !DILocation(line: 372, column: 11, scope: !3255, inlinedAt: !4691)
!4827 = !DILocation(line: 372, column: 6, scope: !3103, inlinedAt: !4691)
!4828 = !DILocation(line: 372, column: 26, scope: !3255, inlinedAt: !4691)
!4829 = !DILocation(line: 373, column: 6, scope: !3260, inlinedAt: !4691)
!4830 = !DILocation(line: 373, column: 11, scope: !3260, inlinedAt: !4691)
!4831 = !DILocation(line: 373, column: 6, scope: !3103, inlinedAt: !4691)
!4832 = !DILocation(line: 373, column: 26, scope: !3260, inlinedAt: !4691)
!4833 = !DILocation(line: 374, column: 6, scope: !3265, inlinedAt: !4691)
!4834 = !DILocation(line: 374, column: 11, scope: !3265, inlinedAt: !4691)
!4835 = !DILocation(line: 374, column: 6, scope: !3103, inlinedAt: !4691)
!4836 = !DILocation(line: 374, column: 26, scope: !3265, inlinedAt: !4691)
!4837 = !DILocation(line: 375, column: 6, scope: !3270, inlinedAt: !4691)
!4838 = !DILocation(line: 375, column: 11, scope: !3270, inlinedAt: !4691)
!4839 = !DILocation(line: 375, column: 6, scope: !3103, inlinedAt: !4691)
!4840 = !DILocation(line: 375, column: 27, scope: !3270, inlinedAt: !4691)
!4841 = !DILocation(line: 376, column: 6, scope: !3275, inlinedAt: !4691)
!4842 = !DILocation(line: 376, column: 11, scope: !3275, inlinedAt: !4691)
!4843 = !DILocation(line: 376, column: 6, scope: !3103, inlinedAt: !4691)
!4844 = !DILocation(line: 376, column: 32, scope: !3275, inlinedAt: !4691)
!4845 = !DILocation(line: 377, column: 6, scope: !3280, inlinedAt: !4691)
!4846 = !DILocation(line: 377, column: 11, scope: !3280, inlinedAt: !4691)
!4847 = !DILocation(line: 377, column: 6, scope: !3103, inlinedAt: !4691)
!4848 = !DILocation(line: 377, column: 32, scope: !3280, inlinedAt: !4691)
!4849 = !DILocation(line: 378, column: 6, scope: !3285, inlinedAt: !4691)
!4850 = !DILocation(line: 378, column: 11, scope: !3285, inlinedAt: !4691)
!4851 = !DILocation(line: 378, column: 6, scope: !3103, inlinedAt: !4691)
!4852 = !DILocation(line: 378, column: 32, scope: !3285, inlinedAt: !4691)
!4853 = !DILocation(line: 379, column: 6, scope: !3290, inlinedAt: !4691)
!4854 = !DILocation(line: 379, column: 11, scope: !3290, inlinedAt: !4691)
!4855 = !DILocation(line: 379, column: 6, scope: !3103, inlinedAt: !4691)
!4856 = !DILocation(line: 379, column: 33, scope: !3290, inlinedAt: !4691)
!4857 = !DILocation(line: 380, column: 6, scope: !3295, inlinedAt: !4691)
!4858 = !DILocation(line: 380, column: 11, scope: !3295, inlinedAt: !4691)
!4859 = !DILocation(line: 380, column: 6, scope: !3103, inlinedAt: !4691)
!4860 = !DILocation(line: 380, column: 33, scope: !3295, inlinedAt: !4691)
!4861 = !DILocation(line: 381, column: 6, scope: !3300, inlinedAt: !4691)
!4862 = !DILocation(line: 381, column: 11, scope: !3300, inlinedAt: !4691)
!4863 = !DILocation(line: 381, column: 6, scope: !3103, inlinedAt: !4691)
!4864 = !DILocation(line: 381, column: 33, scope: !3300, inlinedAt: !4691)
!4865 = !DILocation(line: 382, column: 2, scope: !3305, inlinedAt: !4691)
!4866 = !DILocation(line: 382, column: 2, scope: !3309, inlinedAt: !4691)
!4867 = !DILocation(line: 382, column: 2, scope: !3310, inlinedAt: !4691)
!4868 = !DILocation(line: 386, column: 1, scope: !3103, inlinedAt: !4691)
!4869 = !DILocation(line: 547, column: 9, scope: !3086, inlinedAt: !4683)
!4870 = !DILocation(line: 549, column: 8, scope: !3316, inlinedAt: !4683)
!4871 = !DILocation(line: 549, column: 7, scope: !3086, inlinedAt: !4683)
!4872 = !DILocation(line: 550, column: 4, scope: !3316, inlinedAt: !4683)
!4873 = !DILocation(line: 553, column: 33, scope: !3086, inlinedAt: !4683)
!4874 = !DILocation(line: 325, column: 6, scope: !3321, inlinedAt: !4689)
!4875 = !DILocation(line: 325, column: 6, scope: !3097, inlinedAt: !4689)
!4876 = !DILocation(line: 326, column: 3, scope: !3321, inlinedAt: !4689)
!4877 = !DILocation(line: 332, column: 9, scope: !3097, inlinedAt: !4689)
!4878 = !DILocation(line: 332, column: 15, scope: !3097, inlinedAt: !4689)
!4879 = !DILocation(line: 332, column: 2, scope: !3097, inlinedAt: !4689)
!4880 = !DILocation(line: 336, column: 1, scope: !3097, inlinedAt: !4689)
!4881 = !DILocation(line: 553, column: 5, scope: !3086, inlinedAt: !4683)
!4882 = !DILocation(line: 553, column: 41, scope: !3086, inlinedAt: !4683)
!4883 = !DILocation(line: 554, column: 5, scope: !3086, inlinedAt: !4683)
!4884 = !DILocation(line: 554, column: 12, scope: !3086, inlinedAt: !4683)
!4885 = !DILocation(line: 448, column: 31, scope: !3081, inlinedAt: !4682)
!4886 = !DILocation(line: 448, column: 34, scope: !3081, inlinedAt: !4682)
!4887 = !DILocation(line: 448, column: 14, scope: !3081, inlinedAt: !4682)
!4888 = !DILocation(line: 450, column: 22, scope: !3081, inlinedAt: !4682)
!4889 = !DILocation(line: 450, column: 25, scope: !3081, inlinedAt: !4682)
!4890 = !DILocation(line: 450, column: 30, scope: !3081, inlinedAt: !4682)
!4891 = !DILocation(line: 450, column: 36, scope: !3081, inlinedAt: !4682)
!4892 = !DILocation(line: 450, column: 8, scope: !3081, inlinedAt: !4682)
!4893 = !DILocation(line: 450, column: 6, scope: !3081, inlinedAt: !4682)
!4894 = !DILocation(line: 451, column: 9, scope: !3081, inlinedAt: !4682)
!4895 = !DILocation(line: 552, column: 3, scope: !3086, inlinedAt: !4683)
!4896 = !DILocation(line: 557, column: 19, scope: !3088, inlinedAt: !4683)
!4897 = !DILocation(line: 557, column: 25, scope: !3088, inlinedAt: !4683)
!4898 = !DILocation(line: 557, column: 9, scope: !3088, inlinedAt: !4683)
!4899 = !DILocation(line: 557, column: 2, scope: !3088, inlinedAt: !4683)
!4900 = !DILocation(line: 558, column: 1, scope: !3088, inlinedAt: !4683)
!4901 = !DILocation(line: 591, column: 3, scope: !4684)
!4902 = !DILocation(line: 592, column: 19, scope: !4680)
!4903 = !DILocation(line: 592, column: 26, scope: !4680)
!4904 = !DILocation(line: 592, column: 9, scope: !4680)
!4905 = !DILocation(line: 592, column: 2, scope: !4680)
!4906 = !DILocation(line: 593, column: 1, scope: !4680)
!4907 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4908, file: !4908, line: 52, type: !4909, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4908 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!240, !240}
!4911 = !DILocalVariable(name: "overflow", arg: 1, scope: !4907, file: !4908, line: 52, type: !240)
!4912 = !DILocation(line: 52, column: 60, scope: !4907)
!4913 = !DILocation(line: 54, column: 9, scope: !4907)
!4914 = !DILocation(line: 54, column: 2, scope: !4907)
!4915 = distinct !DISubprogram(name: "sync_fill_fence_info", scope: !3, file: !3, line: 378, type: !4916, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!224, !2801, !4026}
!4918 = !DILocalVariable(name: "fence", arg: 1, scope: !4915, file: !3, line: 378, type: !2801)
!4919 = !DILocation(line: 378, column: 51, scope: !4915)
!4920 = !DILocalVariable(name: "info", arg: 2, scope: !4915, file: !3, line: 379, type: !4026)
!4921 = !DILocation(line: 379, column: 30, scope: !4915)
!4922 = !DILocation(line: 381, column: 10, scope: !4915)
!4923 = !DILocation(line: 381, column: 16, scope: !4915)
!4924 = !DILocation(line: 381, column: 26, scope: !4915)
!4925 = !DILocation(line: 381, column: 33, scope: !4915)
!4926 = !DILocation(line: 381, column: 38, scope: !4915)
!4927 = !DILocation(line: 381, column: 56, scope: !4915)
!4928 = !DILocation(line: 381, column: 2, scope: !4915)
!4929 = !DILocation(line: 383, column: 10, scope: !4915)
!4930 = !DILocation(line: 383, column: 16, scope: !4915)
!4931 = !DILocation(line: 383, column: 29, scope: !4915)
!4932 = !DILocation(line: 383, column: 36, scope: !4915)
!4933 = !DILocation(line: 383, column: 41, scope: !4915)
!4934 = !DILocation(line: 383, column: 57, scope: !4915)
!4935 = !DILocation(line: 383, column: 2, scope: !4915)
!4936 = !DILocation(line: 386, column: 38, scope: !4915)
!4937 = !DILocation(line: 386, column: 17, scope: !4915)
!4938 = !DILocation(line: 386, column: 2, scope: !4915)
!4939 = !DILocation(line: 386, column: 8, scope: !4915)
!4940 = !DILocation(line: 386, column: 15, scope: !4915)
!4941 = !DILocation(line: 387, column: 2, scope: !4915)
!4942 = !DILocation(line: 387, column: 48, scope: !4915)
!4943 = !DILocation(line: 387, column: 55, scope: !4915)
!4944 = !DILocation(line: 387, column: 9, scope: !4915)
!4945 = !DILocation(line: 387, column: 62, scope: !4915)
!4946 = !DILocation(line: 388, column: 50, scope: !4915)
!4947 = !DILocation(line: 388, column: 57, scope: !4915)
!4948 = !DILocation(line: 388, column: 10, scope: !4915)
!4949 = !DILocation(line: 388, column: 9, scope: !4915)
!4950 = !DILocation(line: 0, scope: !4915)
!4951 = !DILocation(line: 13, column: 2, scope: !4952, inlinedAt: !4954)
!4952 = distinct !DISubprogram(name: "rep_nop", scope: !4953, file: !4953, line: 11, type: !1564, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4953 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/lizy2001/genbc/linux")
!4954 = distinct !DILocation(line: 18, column: 2, scope: !4955, inlinedAt: !4956)
!4955 = distinct !DISubprogram(name: "cpu_relax", scope: !4953, file: !4953, line: 16, type: !1564, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4956 = distinct !DILocation(line: 389, column: 3, scope: !4915)
!4957 = !{i32 1926702}
!4958 = distinct !{!4958, !4941, !4959}
!4959 = !DILocation(line: 389, column: 13, scope: !4915)
!4960 = !DILocation(line: 391, column: 43, scope: !4915)
!4961 = !DILocation(line: 391, column: 50, scope: !4915)
!4962 = !DILocation(line: 391, column: 3, scope: !4915)
!4963 = !DILocation(line: 392, column: 15, scope: !4915)
!4964 = !DILocation(line: 392, column: 22, scope: !4915)
!4965 = !DILocation(line: 392, column: 3, scope: !4915)
!4966 = !DILocation(line: 393, column: 3, scope: !4915)
!4967 = !DILocation(line: 390, column: 2, scope: !4915)
!4968 = !DILocation(line: 390, column: 8, scope: !4915)
!4969 = !DILocation(line: 390, column: 21, scope: !4915)
!4970 = !DILocation(line: 395, column: 9, scope: !4915)
!4971 = !DILocation(line: 395, column: 15, scope: !4915)
!4972 = !DILocation(line: 395, column: 2, scope: !4915)
!4973 = distinct !DISubprogram(name: "ktime_to_ns", scope: !981, file: !981, line: 80, type: !4974, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!554, !4976}
!4976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!4977 = !DILocalVariable(name: "kt", arg: 1, scope: !4973, file: !981, line: 80, type: !4976)
!4978 = !DILocation(line: 80, column: 45, scope: !4973)
!4979 = !DILocation(line: 82, column: 9, scope: !4973)
!4980 = !DILocation(line: 82, column: 2, scope: !4973)
!4981 = distinct !DISubprogram(name: "ktime_set", scope: !981, file: !981, line: 38, type: !4982, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!980, !4984, !4985}
!4984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!4986 = !DILocalVariable(name: "secs", arg: 1, scope: !4981, file: !981, line: 38, type: !4984)
!4987 = !DILocation(line: 38, column: 43, scope: !4981)
!4988 = !DILocalVariable(name: "nsecs", arg: 2, scope: !4981, file: !981, line: 38, type: !4985)
!4989 = !DILocation(line: 38, column: 69, scope: !4981)
!4990 = !DILocation(line: 40, column: 6, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4981, file: !981, line: 40, column: 6)
!4992 = !DILocation(line: 40, column: 6, scope: !4981)
!4993 = !DILocation(line: 41, column: 3, scope: !4991)
!4994 = !DILocation(line: 43, column: 9, scope: !4981)
!4995 = !DILocation(line: 43, column: 14, scope: !4981)
!4996 = !DILocation(line: 43, column: 36, scope: !4981)
!4997 = !DILocation(line: 43, column: 29, scope: !4981)
!4998 = !DILocation(line: 43, column: 2, scope: !4981)
!4999 = !DILocation(line: 44, column: 1, scope: !4981)
!5000 = distinct !DISubprogram(name: "dma_fence_put", scope: !60, file: !60, line: 276, type: !2828, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5001 = !DILocalVariable(name: "fence", arg: 1, scope: !5000, file: !60, line: 276, type: !2801)
!5002 = !DILocation(line: 276, column: 52, scope: !5000)
!5003 = !DILocation(line: 278, column: 6, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5000, file: !60, line: 278, column: 6)
!5005 = !DILocation(line: 278, column: 6, scope: !5000)
!5006 = !DILocation(line: 279, column: 13, scope: !5004)
!5007 = !DILocation(line: 279, column: 20, scope: !5004)
!5008 = !DILocation(line: 279, column: 3, scope: !5004)
!5009 = !DILocation(line: 280, column: 1, scope: !5000)
!5010 = distinct !DISubprogram(name: "kref_put", scope: !2846, file: !2846, line: 62, type: !5011, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!224, !5013, !5014}
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{null, !5013}
!5017 = !DILocalVariable(name: "kref", arg: 1, scope: !5010, file: !2846, line: 62, type: !5013)
!5018 = !DILocation(line: 62, column: 41, scope: !5010)
!5019 = !DILocalVariable(name: "release", arg: 2, scope: !5010, file: !2846, line: 62, type: !5014)
!5020 = !DILocation(line: 62, column: 54, scope: !5010)
!5021 = !DILocation(line: 64, column: 29, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5010, file: !2846, line: 64, column: 6)
!5023 = !DILocation(line: 64, column: 35, scope: !5022)
!5024 = !DILocation(line: 64, column: 6, scope: !5022)
!5025 = !DILocation(line: 64, column: 6, scope: !5010)
!5026 = !DILocation(line: 65, column: 3, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5022, file: !2846, line: 64, column: 46)
!5028 = !DILocation(line: 65, column: 11, scope: !5027)
!5029 = !DILocation(line: 66, column: 3, scope: !5027)
!5030 = !DILocation(line: 68, column: 2, scope: !5010)
!5031 = !DILocation(line: 69, column: 1, scope: !5010)
!5032 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !67, file: !67, line: 331, type: !5033, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!240, !5035}
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!5036 = !DILocalVariable(name: "r", arg: 1, scope: !5032, file: !67, line: 331, type: !5035)
!5037 = !DILocation(line: 331, column: 67, scope: !5032)
!5038 = !DILocation(line: 333, column: 33, scope: !5032)
!5039 = !DILocation(line: 333, column: 9, scope: !5032)
!5040 = !DILocation(line: 333, column: 2, scope: !5032)
!5041 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !67, file: !67, line: 313, type: !5042, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!240, !5035, !468}
!5044 = !DILocalVariable(name: "r", arg: 1, scope: !5041, file: !67, line: 313, type: !5035)
!5045 = !DILocation(line: 313, column: 69, scope: !5041)
!5046 = !DILocalVariable(name: "oldp", arg: 2, scope: !5041, file: !67, line: 313, type: !468)
!5047 = !DILocation(line: 313, column: 77, scope: !5041)
!5048 = !DILocation(line: 315, column: 36, scope: !5041)
!5049 = !DILocation(line: 315, column: 39, scope: !5041)
!5050 = !DILocation(line: 315, column: 9, scope: !5041)
!5051 = !DILocation(line: 315, column: 2, scope: !5041)
!5052 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !67, file: !67, line: 270, type: !5053, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!240, !224, !5035, !468}
!5055 = !DILocalVariable(name: "i", arg: 1, scope: !5056, file: !5057, line: 188, type: !224)
!5056 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5057, file: !5057, line: 188, type: !5058, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5057 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!224, !224, !5060}
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!5061 = !DILocation(line: 188, column: 54, scope: !5056, inlinedAt: !5062)
!5062 = distinct !DILocation(line: 221, column: 9, scope: !5063, inlinedAt: !5065)
!5063 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5064, file: !5064, line: 218, type: !5058, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5064 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5065 = distinct !DILocation(line: 272, column: 12, scope: !5052)
!5066 = !DILocalVariable(name: "v", arg: 2, scope: !5056, file: !5057, line: 188, type: !5060)
!5067 = !DILocation(line: 188, column: 67, scope: !5056, inlinedAt: !5062)
!5068 = !DILocalVariable(name: "__ret", scope: !5069, file: !5057, line: 190, type: !224)
!5069 = distinct !DILexicalBlock(scope: !5056, file: !5057, line: 190, column: 9)
!5070 = !DILocation(line: 190, column: 9, scope: !5069, inlinedAt: !5062)
!5071 = !DILocation(line: 99, column: 79, scope: !3595, inlinedAt: !5072)
!5072 = distinct !DILocation(line: 220, column: 2, scope: !5063, inlinedAt: !5065)
!5073 = !DILocation(line: 99, column: 89, scope: !3595, inlinedAt: !5072)
!5074 = !DILocalVariable(name: "i", arg: 1, scope: !5063, file: !5064, line: 218, type: !224)
!5075 = !DILocation(line: 218, column: 30, scope: !5063, inlinedAt: !5065)
!5076 = !DILocalVariable(name: "v", arg: 2, scope: !5063, file: !5064, line: 218, type: !5060)
!5077 = !DILocation(line: 218, column: 43, scope: !5063, inlinedAt: !5065)
!5078 = !DILocalVariable(name: "i", arg: 1, scope: !5052, file: !67, line: 270, type: !224)
!5079 = !DILocation(line: 270, column: 61, scope: !5052)
!5080 = !DILocalVariable(name: "r", arg: 2, scope: !5052, file: !67, line: 270, type: !5035)
!5081 = !DILocation(line: 270, column: 76, scope: !5052)
!5082 = !DILocalVariable(name: "oldp", arg: 3, scope: !5052, file: !67, line: 270, type: !468)
!5083 = !DILocation(line: 270, column: 84, scope: !5052)
!5084 = !DILocalVariable(name: "old", scope: !5052, file: !67, line: 272, type: !224)
!5085 = !DILocation(line: 272, column: 6, scope: !5052)
!5086 = !DILocation(line: 272, column: 37, scope: !5052)
!5087 = !DILocation(line: 272, column: 41, scope: !5052)
!5088 = !DILocation(line: 272, column: 44, scope: !5052)
!5089 = !DILocation(line: 220, column: 31, scope: !5063, inlinedAt: !5065)
!5090 = !DILocation(line: 101, column: 20, scope: !3595, inlinedAt: !5072)
!5091 = !DILocation(line: 101, column: 23, scope: !3595, inlinedAt: !5072)
!5092 = !DILocation(line: 101, column: 2, scope: !3595, inlinedAt: !5072)
!5093 = !DILocation(line: 102, column: 2, scope: !3595, inlinedAt: !5072)
!5094 = !DILocation(line: 221, column: 39, scope: !5063, inlinedAt: !5065)
!5095 = !DILocation(line: 221, column: 42, scope: !5063, inlinedAt: !5065)
!5096 = !{i32 -2146357327}
!5097 = !DILocation(line: 274, column: 6, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5052, file: !67, line: 274, column: 6)
!5099 = !DILocation(line: 274, column: 6, scope: !5052)
!5100 = !DILocation(line: 275, column: 11, scope: !5098)
!5101 = !DILocation(line: 275, column: 4, scope: !5098)
!5102 = !DILocation(line: 275, column: 9, scope: !5098)
!5103 = !DILocation(line: 275, column: 3, scope: !5098)
!5104 = !DILocation(line: 277, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5052, file: !67, line: 277, column: 6)
!5106 = !DILocation(line: 277, column: 13, scope: !5105)
!5107 = !DILocation(line: 277, column: 10, scope: !5105)
!5108 = !DILocation(line: 277, column: 6, scope: !5052)
!5109 = !DILocation(line: 278, column: 3, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5105, file: !67, line: 277, column: 16)
!5111 = !{i32 -2144246437}
!5112 = !DILocation(line: 279, column: 3, scope: !5110)
!5113 = !DILocation(line: 282, column: 6, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5052, file: !67, line: 282, column: 6)
!5115 = !DILocation(line: 282, column: 6, scope: !5052)
!5116 = !DILocation(line: 283, column: 26, scope: !5114)
!5117 = !DILocation(line: 283, column: 3, scope: !5114)
!5118 = !DILocation(line: 285, column: 2, scope: !5052)
!5119 = !DILocation(line: 286, column: 1, scope: !5052)
!5120 = distinct !DISubprogram(name: "kref_get", scope: !2846, file: !2846, line: 43, type: !5015, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5121 = !DILocalVariable(name: "kref", arg: 1, scope: !5120, file: !2846, line: 43, type: !5013)
!5122 = !DILocation(line: 43, column: 42, scope: !5120)
!5123 = !DILocation(line: 45, column: 16, scope: !5120)
!5124 = !DILocation(line: 45, column: 22, scope: !5120)
!5125 = !DILocation(line: 45, column: 2, scope: !5120)
!5126 = !DILocation(line: 46, column: 1, scope: !5120)
!5127 = distinct !DISubprogram(name: "refcount_inc", scope: !67, file: !67, line: 265, type: !5128, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{null, !5035}
!5130 = !DILocalVariable(name: "r", arg: 1, scope: !5127, file: !67, line: 265, type: !5035)
!5131 = !DILocation(line: 265, column: 45, scope: !5127)
!5132 = !DILocation(line: 267, column: 17, scope: !5127)
!5133 = !DILocation(line: 267, column: 2, scope: !5127)
!5134 = !DILocation(line: 268, column: 1, scope: !5127)
!5135 = distinct !DISubprogram(name: "__refcount_inc", scope: !67, file: !67, line: 248, type: !5136, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5136 = !DISubroutineType(types: !5137)
!5137 = !{null, !5035, !468}
!5138 = !DILocalVariable(name: "r", arg: 1, scope: !5135, file: !67, line: 248, type: !5035)
!5139 = !DILocation(line: 248, column: 47, scope: !5135)
!5140 = !DILocalVariable(name: "oldp", arg: 2, scope: !5135, file: !67, line: 248, type: !468)
!5141 = !DILocation(line: 248, column: 55, scope: !5135)
!5142 = !DILocation(line: 250, column: 20, scope: !5135)
!5143 = !DILocation(line: 250, column: 23, scope: !5135)
!5144 = !DILocation(line: 250, column: 2, scope: !5135)
!5145 = !DILocation(line: 251, column: 1, scope: !5135)
!5146 = distinct !DISubprogram(name: "__refcount_add", scope: !67, file: !67, line: 191, type: !5147, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5147 = !DISubroutineType(types: !5148)
!5148 = !{null, !224, !5035, !468}
!5149 = !DILocalVariable(name: "i", arg: 1, scope: !5150, file: !5057, line: 182, type: !224)
!5150 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5057, file: !5057, line: 182, type: !5058, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5151 = !DILocation(line: 182, column: 54, scope: !5150, inlinedAt: !5152)
!5152 = distinct !DILocation(line: 143, column: 9, scope: !5153, inlinedAt: !5154)
!5153 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5064, file: !5064, line: 140, type: !5058, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!5154 = distinct !DILocation(line: 193, column: 12, scope: !5146)
!5155 = !DILocalVariable(name: "v", arg: 2, scope: !5150, file: !5057, line: 182, type: !5060)
!5156 = !DILocation(line: 182, column: 67, scope: !5150, inlinedAt: !5152)
!5157 = !DILocalVariable(name: "__ret", scope: !5158, file: !5057, line: 184, type: !224)
!5158 = distinct !DILexicalBlock(scope: !5150, file: !5057, line: 184, column: 9)
!5159 = !DILocation(line: 184, column: 9, scope: !5158, inlinedAt: !5152)
!5160 = !DILocation(line: 99, column: 79, scope: !3595, inlinedAt: !5161)
!5161 = distinct !DILocation(line: 142, column: 2, scope: !5153, inlinedAt: !5154)
!5162 = !DILocation(line: 99, column: 89, scope: !3595, inlinedAt: !5161)
!5163 = !DILocalVariable(name: "i", arg: 1, scope: !5153, file: !5064, line: 140, type: !224)
!5164 = !DILocation(line: 140, column: 30, scope: !5153, inlinedAt: !5154)
!5165 = !DILocalVariable(name: "v", arg: 2, scope: !5153, file: !5064, line: 140, type: !5060)
!5166 = !DILocation(line: 140, column: 43, scope: !5153, inlinedAt: !5154)
!5167 = !DILocalVariable(name: "i", arg: 1, scope: !5146, file: !67, line: 191, type: !224)
!5168 = !DILocation(line: 191, column: 39, scope: !5146)
!5169 = !DILocalVariable(name: "r", arg: 2, scope: !5146, file: !67, line: 191, type: !5035)
!5170 = !DILocation(line: 191, column: 54, scope: !5146)
!5171 = !DILocalVariable(name: "oldp", arg: 3, scope: !5146, file: !67, line: 191, type: !468)
!5172 = !DILocation(line: 191, column: 62, scope: !5146)
!5173 = !DILocalVariable(name: "old", scope: !5146, file: !67, line: 193, type: !224)
!5174 = !DILocation(line: 193, column: 6, scope: !5146)
!5175 = !DILocation(line: 193, column: 37, scope: !5146)
!5176 = !DILocation(line: 193, column: 41, scope: !5146)
!5177 = !DILocation(line: 193, column: 44, scope: !5146)
!5178 = !DILocation(line: 142, column: 31, scope: !5153, inlinedAt: !5154)
!5179 = !DILocation(line: 101, column: 20, scope: !3595, inlinedAt: !5161)
!5180 = !DILocation(line: 101, column: 23, scope: !3595, inlinedAt: !5161)
!5181 = !DILocation(line: 101, column: 2, scope: !3595, inlinedAt: !5161)
!5182 = !DILocation(line: 102, column: 2, scope: !3595, inlinedAt: !5161)
!5183 = !DILocation(line: 143, column: 39, scope: !5153, inlinedAt: !5154)
!5184 = !DILocation(line: 143, column: 42, scope: !5153, inlinedAt: !5154)
!5185 = !{i32 -2146358679}
!5186 = !DILocation(line: 195, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5146, file: !67, line: 195, column: 6)
!5188 = !DILocation(line: 195, column: 6, scope: !5146)
!5189 = !DILocation(line: 196, column: 11, scope: !5187)
!5190 = !DILocation(line: 196, column: 4, scope: !5187)
!5191 = !DILocation(line: 196, column: 9, scope: !5187)
!5192 = !DILocation(line: 196, column: 3, scope: !5187)
!5193 = !DILocation(line: 198, column: 6, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5146, file: !67, line: 198, column: 6)
!5195 = !DILocation(line: 198, column: 6, scope: !5146)
!5196 = !DILocation(line: 199, column: 26, scope: !5194)
!5197 = !DILocation(line: 199, column: 3, scope: !5194)
!5198 = !DILocation(line: 200, column: 11, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5194, file: !67, line: 200, column: 11)
!5200 = !DILocation(line: 200, column: 11, scope: !5194)
!5201 = !DILocation(line: 201, column: 26, scope: !5199)
!5202 = !DILocation(line: 201, column: 3, scope: !5199)
!5203 = !DILocation(line: 202, column: 1, scope: !5146)
