; ModuleID = '../bcout/drivers/usb/core/file.llvm.bc'
source_filename = "drivers/usb/core/file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.57 }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { %struct.spinlock, i32 }
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
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.56, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%union.anon.56 = type { %struct.pipe_inode_info* }
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
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.usb_class = type { %struct.kref, %struct.class* }
%struct.kref = type { %struct.refcount_struct }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.kmem_cache = type opaque
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_class_driver = type { i8*, i8* (%struct.device*, i16*)*, %struct.file_operations*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@usb_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @usb_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [42 x i8] c"\013Unable to get major %d for usb devices\0A\00", align 1
@init_usb_class_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @init_usb_class_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @init_usb_class_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !3714
@minor_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @minor_rwsem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @minor_rwsem to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !3721
@usb_minors = internal global [256 x %struct.file_operations*] zeroinitializer, align 16, !dbg !134
@usb_class = internal global %struct.usb_class* null, align 8, !dbg !2861
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"drivers/usb/core/file.c\00", align 1
@init_usb_class.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3716
@.str.4 = private unnamed_addr constant [8 x i8] c"usbmisc\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013class_create failed for usb devices\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_major_init() #0 !dbg !3728 {
entry:
  %error = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3729, metadata !DIExpression()), !dbg !3730
  %call = call i32 @register_chrdev(i32 180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.file_operations* @usb_fops) #7, !dbg !3731
  store i32 %call, i32* %error, align 4, !dbg !3732
  %0 = load i32, i32* %error, align 4, !dbg !3733
  %tobool = icmp ne i32 %0, 0, !dbg !3733
  br i1 %tobool, label %if.then, label %if.end, !dbg !3735

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 180) #8, !dbg !3736
  br label %if.end, !dbg !3736

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %error, align 4, !dbg !3737
  ret i32 %1, !dbg !3738
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @register_chrdev(i32 %major, i8* %name, %struct.file_operations* %fops) #0 !dbg !3739 {
entry:
  %major.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %fops.addr = alloca %struct.file_operations*, align 8
  store i32 %major, i32* %major.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %major.addr, metadata !3742, metadata !DIExpression()), !dbg !3743
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3744, metadata !DIExpression()), !dbg !3745
  store %struct.file_operations* %fops, %struct.file_operations** %fops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file_operations** %fops.addr, metadata !3746, metadata !DIExpression()), !dbg !3747
  %0 = load i32, i32* %major.addr, align 4, !dbg !3748
  %1 = load i8*, i8** %name.addr, align 8, !dbg !3749
  %2 = load %struct.file_operations*, %struct.file_operations** %fops.addr, align 8, !dbg !3750
  %call = call i32 @__register_chrdev(i32 %0, i32 0, i32 256, i8* %1, %struct.file_operations* %2) #7, !dbg !3751
  ret i32 %call, !dbg !3752
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_major_cleanup() #0 !dbg !3753 {
entry:
  call void @unregister_chrdev(i32 180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3754
  ret void, !dbg !3755
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @unregister_chrdev(i32 %major, i8* %name) #0 !dbg !3756 {
entry:
  %major.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %major, i32* %major.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %major.addr, metadata !3759, metadata !DIExpression()), !dbg !3760
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3761, metadata !DIExpression()), !dbg !3762
  %0 = load i32, i32* %major.addr, align 4, !dbg !3763
  %1 = load i8*, i8** %name.addr, align 8, !dbg !3764
  call void @__unregister_chrdev(i32 %0, i32 0, i32 256, i8* %1) #7, !dbg !3765
  ret void, !dbg !3766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_register_dev(%struct.usb_interface* %intf, %struct.usb_class_driver* %class_driver) #0 !dbg !3767 {
entry:
  %retval = alloca i32, align 4
  %intf.addr = alloca %struct.usb_interface*, align 8
  %class_driver.addr = alloca %struct.usb_class_driver*, align 8
  %retval1 = alloca i32, align 4
  %minor_base = alloca i32, align 4
  %minor = alloca i32, align 4
  %name = alloca [20 x i8], align 16
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !3869, metadata !DIExpression()), !dbg !3870
  store %struct.usb_class_driver* %class_driver, %struct.usb_class_driver** %class_driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_class_driver** %class_driver.addr, metadata !3871, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !3873, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.declare(metadata i32* %minor_base, metadata !3875, metadata !DIExpression()), !dbg !3876
  %0 = load %struct.usb_class_driver*, %struct.usb_class_driver** %class_driver.addr, align 8, !dbg !3877
  %minor_base2 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %0, i32 0, i32 3, !dbg !3878
  %1 = load i32, i32* %minor_base2, align 8, !dbg !3878
  store i32 %1, i32* %minor_base, align 4, !dbg !3876
  call void @llvm.dbg.declare(metadata i32* %minor, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.declare(metadata [20 x i8]* %name, metadata !3881, metadata !DIExpression()), !dbg !3883
  %2 = load %struct.usb_class_driver*, %struct.usb_class_driver** %class_driver.addr, align 8, !dbg !3884
  %fops = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %2, i32 0, i32 2, !dbg !3886
  %3 = load %struct.file_operations*, %struct.file_operations** %fops, align 8, !dbg !3886
  %cmp = icmp eq %struct.file_operations* %3, null, !dbg !3887
  br i1 %cmp, label %if.then, label %if.end, !dbg !3888

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3889
  br label %return, !dbg !3889

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3890
  %minor3 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 4, !dbg !3892
  %5 = load i32, i32* %minor3, align 8, !dbg !3892
  %cmp4 = icmp sge i32 %5, 0, !dbg !3893
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3894

if.then5:                                         ; preds = %if.end
  store i32 -98, i32* %retval, align 4, !dbg !3895
  br label %return, !dbg !3895

if.end6:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @init_usb_class_mutex) #7, !dbg !3896
  %call = call i32 @init_usb_class() #7, !dbg !3897
  store i32 %call, i32* %retval1, align 4, !dbg !3898
  call void @mutex_unlock(%struct.mutex* @init_usb_class_mutex) #7, !dbg !3899
  %6 = load i32, i32* %retval1, align 4, !dbg !3900
  %tobool = icmp ne i32 %6, 0, !dbg !3900
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !3902

if.then7:                                         ; preds = %if.end6
  %7 = load i32, i32* %retval1, align 4, !dbg !3903
  store i32 %7, i32* %retval, align 4, !dbg !3904
  br label %return, !dbg !3904

if.end8:                                          ; preds = %if.end6
  call void @down_write(%struct.rw_semaphore* @minor_rwsem) #7, !dbg !3905
  %8 = load i32, i32* %minor_base, align 4, !dbg !3906
  store i32 %8, i32* %minor, align 4, !dbg !3908
  br label %for.cond, !dbg !3909

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load i32, i32* %minor, align 4, !dbg !3910
  %cmp9 = icmp slt i32 %9, 256, !dbg !3912
  br i1 %cmp9, label %for.body, label %for.end, !dbg !3913

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %minor, align 4, !dbg !3914
  %idxprom = sext i32 %10 to i64, !dbg !3917
  %arrayidx = getelementptr [256 x %struct.file_operations*], [256 x %struct.file_operations*]* @usb_minors, i64 0, i64 %idxprom, !dbg !3917
  %11 = load %struct.file_operations*, %struct.file_operations** %arrayidx, align 8, !dbg !3917
  %tobool10 = icmp ne %struct.file_operations* %11, null, !dbg !3917
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3918

if.then11:                                        ; preds = %for.body
  br label %for.inc, !dbg !3919

if.end12:                                         ; preds = %for.body
  %12 = load %struct.usb_class_driver*, %struct.usb_class_driver** %class_driver.addr, align 8, !dbg !3920
  %fops13 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %12, i32 0, i32 2, !dbg !3921
  %13 = load %struct.file_operations*, %struct.file_operations** %fops13, align 8, !dbg !3921
  %14 = load i32, i32* %minor, align 4, !dbg !3922
  %idxprom14 = sext i32 %14 to i64, !dbg !3923
  %arrayidx15 = getelementptr [256 x %struct.file_operations*], [256 x %struct.file_operations*]* @usb_minors, i64 0, i64 %idxprom14, !dbg !3923
  store %struct.file_operations* %13, %struct.file_operations** %arrayidx15, align 8, !dbg !3924
  %15 = load i32, i32* %minor, align 4, !dbg !3925
  %16 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3926
  %minor16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 4, !dbg !3927
  store i32 %15, i32* %minor16, align 8, !dbg !3928
  br label %for.end, !dbg !3929

for.inc:                                          ; preds = %if.then11
  %17 = load i32, i32* %minor, align 4, !dbg !3930
  %inc = add i32 %17, 1, !dbg !3930
  store i32 %inc, i32* %minor, align 4, !dbg !3930
  br label %for.cond, !dbg !3931, !llvm.loop !3932

for.end:                                          ; preds = %if.end12, %for.cond
  %18 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3934
  %minor17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 4, !dbg !3936
  %19 = load i32, i32* %minor17, align 8, !dbg !3936
  %cmp18 = icmp slt i32 %19, 0, !dbg !3937
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3938

if.then19:                                        ; preds = %for.end
  call void @up_write(%struct.rw_semaphore* @minor_rwsem) #7, !dbg !3939
  store i32 -54, i32* %retval, align 4, !dbg !3941
  br label %return, !dbg !3941

if.end20:                                         ; preds = %for.end
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !3942
  %20 = load %struct.usb_class_driver*, %struct.usb_class_driver** %class_driver.addr, align 8, !dbg !3943
  %name21 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %20, i32 0, i32 0, !dbg !3944
  %21 = load i8*, i8** %name21, align 8, !dbg !3944
  %22 = load i32, i32* %minor, align 4, !dbg !3945
  %23 = load i32, i32* %minor_base, align 4, !dbg !3946
  %sub = sub i32 %22, %23, !dbg !3947
  %call22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* %21, i32 %sub) #7, !dbg !3948
  %24 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !3949
  %class = getelementptr inbounds %struct.usb_class, %struct.usb_class* %24, i32 0, i32 1, !dbg !3950
  %25 = load %struct.class*, %struct.class** %class, align 8, !dbg !3950
  %26 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3951
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 7, !dbg !3952
  %27 = load i32, i32* %minor, align 4, !dbg !3953
  %or = or i32 188743680, %27, !dbg !3953
  %28 = load %struct.usb_class_driver*, %struct.usb_class_driver** %class_driver.addr, align 8, !dbg !3954
  %29 = bitcast %struct.usb_class_driver* %28 to i8*, !dbg !3954
  %arraydecay23 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !3955
  %call24 = call i8* @kbasename(i8* %arraydecay23) #7, !dbg !3956
  %call25 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %25, %struct.device* %dev, i32 %or, i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %call24) #7, !dbg !3957
  %30 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3958
  %usb_dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 8, !dbg !3959
  store %struct.device* %call25, %struct.device** %usb_dev, align 8, !dbg !3960
  %31 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3961
  %usb_dev26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 8, !dbg !3963
  %32 = load %struct.device*, %struct.device** %usb_dev26, align 8, !dbg !3963
  %33 = bitcast %struct.device* %32 to i8*, !dbg !3961
  %call27 = call zeroext i1 @IS_ERR(i8* %33) #7, !dbg !3964
  br i1 %call27, label %if.then28, label %if.end34, !dbg !3965

if.then28:                                        ; preds = %if.end20
  %34 = load i32, i32* %minor, align 4, !dbg !3966
  %idxprom29 = sext i32 %34 to i64, !dbg !3968
  %arrayidx30 = getelementptr [256 x %struct.file_operations*], [256 x %struct.file_operations*]* @usb_minors, i64 0, i64 %idxprom29, !dbg !3968
  store %struct.file_operations* null, %struct.file_operations** %arrayidx30, align 8, !dbg !3969
  %35 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3970
  %minor31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %35, i32 0, i32 4, !dbg !3971
  store i32 -1, i32* %minor31, align 8, !dbg !3972
  %36 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !3973
  %usb_dev32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 8, !dbg !3974
  %37 = load %struct.device*, %struct.device** %usb_dev32, align 8, !dbg !3974
  %38 = bitcast %struct.device* %37 to i8*, !dbg !3973
  %call33 = call i64 @PTR_ERR(i8* %38) #7, !dbg !3975
  %conv = trunc i64 %call33 to i32, !dbg !3975
  store i32 %conv, i32* %retval1, align 4, !dbg !3976
  br label %if.end34, !dbg !3977

if.end34:                                         ; preds = %if.then28, %if.end20
  call void @up_write(%struct.rw_semaphore* @minor_rwsem) #7, !dbg !3978
  %39 = load i32, i32* %retval1, align 4, !dbg !3979
  store i32 %39, i32* %retval, align 4, !dbg !3980
  br label %return, !dbg !3980

return:                                           ; preds = %if.end34, %if.then19, %if.then7, %if.then5, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !3981
  ret i32 %40, !dbg !3981
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @init_usb_class() #0 !dbg !3718 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3982, metadata !DIExpression()), !dbg !3986
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3994, metadata !DIExpression()), !dbg !3995
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3996, metadata !DIExpression()), !dbg !3997
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3998, metadata !DIExpression()), !dbg !3999
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4000, metadata !DIExpression()), !dbg !4004
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4006, metadata !DIExpression()), !dbg !4010
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4012, metadata !DIExpression()), !dbg !4016
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4021, metadata !DIExpression()), !dbg !4022
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4023, metadata !DIExpression()), !dbg !4024
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4025, metadata !DIExpression()), !dbg !4026
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4027, metadata !DIExpression()), !dbg !4028
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4029, metadata !DIExpression()), !dbg !4030
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4031, metadata !DIExpression()), !dbg !4032
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4033, metadata !DIExpression()), !dbg !4034
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4035, metadata !DIExpression()), !dbg !4036
  %result = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4037, metadata !DIExpression()), !dbg !4038
  store i32 0, i32* %result, align 4, !dbg !4038
  %0 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4039
  %cmp = icmp ne %struct.usb_class* %0, null, !dbg !4041
  br i1 %cmp, label %if.then, label %if.end, !dbg !4042

if.then:                                          ; preds = %entry
  %1 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4043
  %kref = getelementptr inbounds %struct.usb_class, %struct.usb_class* %1, i32 0, i32 0, !dbg !4045
  call void @kref_get(%struct.kref* %kref) #7, !dbg !4046
  br label %exit, !dbg !4047

if.end:                                           ; preds = %entry
  store i64 16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4048
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !4049
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4050

if.then.i:                                        ; preds = %if.end
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4051
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4052
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4053

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4054
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4055
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4056
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !4057
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4030
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4058
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4059
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4060
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4061
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4062
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4063
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4064
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4064
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4064
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4064
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4064
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4065
  br label %kmalloc.exit, !dbg !4065

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4066
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4067
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4067
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4069

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4070
  br label %kmalloc_index.exit.i, !dbg !4070

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4071
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4073
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4074

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4075
  br label %kmalloc_index.exit.i, !dbg !4075

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4076
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4078
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4079

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4080
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4081
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4082

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4083
  br label %kmalloc_index.exit.i, !dbg !4083

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4084
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4086
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4087

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4088
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4089
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4090

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4091
  br label %kmalloc_index.exit.i, !dbg !4091

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4092
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4094
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4095

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4096
  br label %kmalloc_index.exit.i, !dbg !4096

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4097
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4099
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4100

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4101
  br label %kmalloc_index.exit.i, !dbg !4101

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4102
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4104
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4105

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4106
  br label %kmalloc_index.exit.i, !dbg !4106

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4107
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4109
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4110

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4111
  br label %kmalloc_index.exit.i, !dbg !4111

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4112
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4114
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4115

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4116
  br label %kmalloc_index.exit.i, !dbg !4116

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4117
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4119
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4120

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4121
  br label %kmalloc_index.exit.i, !dbg !4121

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4122
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4124
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4125

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4126
  br label %kmalloc_index.exit.i, !dbg !4126

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4127
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4129
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4130

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4131
  br label %kmalloc_index.exit.i, !dbg !4131

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4132
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4134
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4135

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4136
  br label %kmalloc_index.exit.i, !dbg !4136

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4137
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4139
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4140

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4141
  br label %kmalloc_index.exit.i, !dbg !4141

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4142
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4144
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4145

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4146
  br label %kmalloc_index.exit.i, !dbg !4146

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4147
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4149
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4150

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4151
  br label %kmalloc_index.exit.i, !dbg !4151

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4152
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4154
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4155

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4156
  br label %kmalloc_index.exit.i, !dbg !4156

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4157
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4159
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4160

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4161
  br label %kmalloc_index.exit.i, !dbg !4161

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4162
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4164
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4165

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4166
  br label %kmalloc_index.exit.i, !dbg !4166

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4167
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4169
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4170

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4171
  br label %kmalloc_index.exit.i, !dbg !4171

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4172
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4174
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4175

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4176
  br label %kmalloc_index.exit.i, !dbg !4176

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4177
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4179
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4180

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4181
  br label %kmalloc_index.exit.i, !dbg !4181

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4182
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4184
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4185

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4186
  br label %kmalloc_index.exit.i, !dbg !4186

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4187
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4189
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4190

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4191
  br label %kmalloc_index.exit.i, !dbg !4191

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4192
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4194
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4195

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4196
  br label %kmalloc_index.exit.i, !dbg !4196

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4197
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4199
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4200

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4201
  br label %kmalloc_index.exit.i, !dbg !4201

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4202
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4204
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4205

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4206
  br label %kmalloc_index.exit.i, !dbg !4206

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4207
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4209
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4210

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4211
  br label %kmalloc_index.exit.i, !dbg !4211

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4212, !srcloc !4215
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !4216, !srcloc !4219
  unreachable, !dbg !4220

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4221
  store i32 %45, i32* %index.i, align 4, !dbg !4222
  %46 = load i32, i32* %index.i, align 4, !dbg !4223
  %tobool.i = icmp ne i32 %46, 0, !dbg !4223
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4225

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4226
  br label %kmalloc.exit, !dbg !4226

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4227
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4228
  %and.i.i = and i32 %48, 17, !dbg !4228
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4228
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4228
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4228
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4228
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4230

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4231
  br label %kmalloc_type.exit.i, !dbg !4231

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4232
  %and2.i.i = and i32 %49, 1, !dbg !4233
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4232
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4232
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4232
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4234
  br label %kmalloc_type.exit.i, !dbg !4234

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4235
  %idxprom.i = zext i32 %51 to i64, !dbg !4236
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4236
  %52 = load i32, i32* %index.i, align 4, !dbg !4237
  %idxprom6.i = zext i32 %52 to i64, !dbg !4236
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4236
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4236
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4238
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4239
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4240
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4241
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4242
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4242
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4242
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4242
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4242
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3999
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4243
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4244
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4245
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4246
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4247
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4248
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4249
  store i8* %62, i8** %retval.i, align 8, !dbg !4250
  br label %kmalloc.exit, !dbg !4250

if.end9.i:                                        ; preds = %if.end
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4251
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4252
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4253
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4253
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4253
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4253
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4253
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4254
  br label %kmalloc.exit, !dbg !4254

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4255
  %66 = bitcast i8* %65 to %struct.usb_class*, !dbg !4256
  store %struct.usb_class* %66, %struct.usb_class** @usb_class, align 8, !dbg !4257
  %67 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4258
  %tobool = icmp ne %struct.usb_class* %67, null, !dbg !4258
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4260

if.then1:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %result, align 4, !dbg !4261
  br label %exit, !dbg !4263

if.end2:                                          ; preds = %kmalloc.exit
  %68 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4264
  %kref3 = getelementptr inbounds %struct.usb_class, %struct.usb_class* %68, i32 0, i32 0, !dbg !4265
  call void @kref_init(%struct.kref* %kref3) #7, !dbg !4266
  %call4 = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @init_usb_class.__key) #7, !dbg !4267
  store %struct.class* %call4, %struct.class** %tmp, align 8, !dbg !4267
  %69 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !4267
  %70 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4269
  %class = getelementptr inbounds %struct.usb_class, %struct.usb_class* %70, i32 0, i32 1, !dbg !4270
  store %struct.class* %69, %struct.class** %class, align 8, !dbg !4271
  %71 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4272
  %class5 = getelementptr inbounds %struct.usb_class, %struct.usb_class* %71, i32 0, i32 1, !dbg !4274
  %72 = load %struct.class*, %struct.class** %class5, align 8, !dbg !4274
  %73 = bitcast %struct.class* %72 to i8*, !dbg !4272
  %call6 = call zeroext i1 @IS_ERR(i8* %73) #7, !dbg !4275
  br i1 %call6, label %if.then7, label %if.end11, !dbg !4276

if.then7:                                         ; preds = %if.end2
  %74 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4277
  %class8 = getelementptr inbounds %struct.usb_class, %struct.usb_class* %74, i32 0, i32 1, !dbg !4279
  %75 = load %struct.class*, %struct.class** %class8, align 8, !dbg !4279
  %76 = bitcast %struct.class* %75 to i8*, !dbg !4277
  %call9 = call i64 @PTR_ERR(i8* %76) #7, !dbg !4280
  %conv = trunc i64 %call9 to i32, !dbg !4280
  store i32 %conv, i32* %result, align 4, !dbg !4281
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !4282
  %77 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4283
  %78 = bitcast %struct.usb_class* %77 to i8*, !dbg !4283
  call void @kfree(i8* %78) #7, !dbg !4284
  store %struct.usb_class* null, %struct.usb_class** @usb_class, align 8, !dbg !4285
  br label %exit, !dbg !4286

if.end11:                                         ; preds = %if.end2
  %79 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4287
  %class12 = getelementptr inbounds %struct.usb_class, %struct.usb_class* %79, i32 0, i32 1, !dbg !4288
  %80 = load %struct.class*, %struct.class** %class12, align 8, !dbg !4288
  %devnode = getelementptr inbounds %struct.class, %struct.class* %80, i32 0, i32 6, !dbg !4289
  store i8* (%struct.device*, i16*)* @usb_devnode, i8* (%struct.device*, i16*)** %devnode, align 8, !dbg !4290
  br label %exit, !dbg !4287

exit:                                             ; preds = %if.end11, %if.then7, %if.then1, %if.then
  call void @llvm.dbg.label(metadata !4291), !dbg !4292
  %81 = load i32, i32* %result, align 4, !dbg !4293
  ret i32 %81, !dbg !4294
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #3

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local %struct.device* @device_create(%struct.class*, %struct.device*, i32, i8*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kbasename(i8* %path) #0 !dbg !4295 {
entry:
  %path.addr = alloca i8*, align 8
  %tail = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4299, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !4301, metadata !DIExpression()), !dbg !4302
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4303
  %call = call i8* @strrchr(i8* %0, i32 47) #7, !dbg !4304
  store i8* %call, i8** %tail, align 8, !dbg !4302
  %1 = load i8*, i8** %tail, align 8, !dbg !4305
  %tobool = icmp ne i8* %1, null, !dbg !4305
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4305

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %tail, align 8, !dbg !4306
  %add.ptr = getelementptr i8, i8* %2, i64 1, !dbg !4307
  br label %cond.end, !dbg !4305

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 8, !dbg !4308
  br label %cond.end, !dbg !4305

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ], !dbg !4305
  ret i8* %cond, !dbg !4309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4310 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4316
  %1 = ptrtoint i8* %0 to i64, !dbg !4316
  %2 = inttoptr i64 %1 to i8*, !dbg !4316
  %3 = ptrtoint i8* %2 to i64, !dbg !4316
  %cmp = icmp uge i64 %3, -4095, !dbg !4316
  %lnot = xor i1 %cmp, true, !dbg !4316
  %lnot1 = xor i1 %lnot, true, !dbg !4316
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4316
  %conv = sext i32 %lnot.ext to i64, !dbg !4316
  %tobool = icmp ne i64 %conv, 0, !dbg !4316
  ret i1 %tobool, !dbg !4317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4318 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4321, metadata !DIExpression()), !dbg !4322
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4323
  %1 = ptrtoint i8* %0 to i64, !dbg !4324
  ret i64 %1, !dbg !4325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_deregister_dev(%struct.usb_interface* %intf, %struct.usb_class_driver* %class_driver) #0 !dbg !4326 {
entry:
  %intf.addr = alloca %struct.usb_interface*, align 8
  %class_driver.addr = alloca %struct.usb_class_driver*, align 8
  store %struct.usb_interface* %intf, %struct.usb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %intf.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  store %struct.usb_class_driver* %class_driver, %struct.usb_class_driver** %class_driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_class_driver** %class_driver.addr, metadata !4331, metadata !DIExpression()), !dbg !4332
  %0 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4333
  %minor = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %0, i32 0, i32 4, !dbg !4335
  %1 = load i32, i32* %minor, align 8, !dbg !4335
  %cmp = icmp eq i32 %1, -1, !dbg !4336
  br i1 %cmp, label %if.then, label %if.end, !dbg !4337

if.then:                                          ; preds = %entry
  br label %return, !dbg !4338

if.end:                                           ; preds = %entry
  %2 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4339
  %class = getelementptr inbounds %struct.usb_class, %struct.usb_class* %2, i32 0, i32 1, !dbg !4340
  %3 = load %struct.class*, %struct.class** %class, align 8, !dbg !4340
  %4 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4341
  %minor1 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %4, i32 0, i32 4, !dbg !4341
  %5 = load i32, i32* %minor1, align 8, !dbg !4341
  %or = or i32 188743680, %5, !dbg !4341
  call void @device_destroy(%struct.class* %3, i32 %or) #7, !dbg !4342
  call void @down_write(%struct.rw_semaphore* @minor_rwsem) #7, !dbg !4343
  %6 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4344
  %minor2 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 4, !dbg !4345
  %7 = load i32, i32* %minor2, align 8, !dbg !4345
  %idxprom = sext i32 %7 to i64, !dbg !4346
  %arrayidx = getelementptr [256 x %struct.file_operations*], [256 x %struct.file_operations*]* @usb_minors, i64 0, i64 %idxprom, !dbg !4346
  store %struct.file_operations* null, %struct.file_operations** %arrayidx, align 8, !dbg !4347
  call void @up_write(%struct.rw_semaphore* @minor_rwsem) #7, !dbg !4348
  %8 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4349
  %usb_dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 8, !dbg !4350
  store %struct.device* null, %struct.device** %usb_dev, align 8, !dbg !4351
  %9 = load %struct.usb_interface*, %struct.usb_interface** %intf.addr, align 8, !dbg !4352
  %minor3 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 4, !dbg !4353
  store i32 -1, i32* %minor3, align 8, !dbg !4354
  call void @destroy_usb_class() #7, !dbg !4355
  br label %return, !dbg !4356

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4356
}

; Function Attrs: noredzone
declare dso_local void @device_destroy(%struct.class*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @destroy_usb_class() #0 !dbg !4357 {
entry:
  call void @mutex_lock(%struct.mutex* @init_usb_class_mutex) #7, !dbg !4358
  %0 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4359
  %kref = getelementptr inbounds %struct.usb_class, %struct.usb_class* %0, i32 0, i32 0, !dbg !4360
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @release_usb_class) #7, !dbg !4361
  call void @mutex_unlock(%struct.mutex* @init_usb_class_mutex) #7, !dbg !4362
  ret void, !dbg !4363
}

; Function Attrs: noredzone
declare dso_local i32 @__register_chrdev(i32, i32, i32, i8*, %struct.file_operations*) #3

; Function Attrs: noredzone
declare dso_local i64 @noop_llseek(%struct.file*, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !4364 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %err = alloca i32, align 4
  %new_fops = alloca %struct.file_operations*, align 8
  %__file = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4369, metadata !DIExpression()), !dbg !4370
  store i32 -19, i32* %err, align 4, !dbg !4370
  call void @llvm.dbg.declare(metadata %struct.file_operations** %new_fops, metadata !4371, metadata !DIExpression()), !dbg !4372
  call void @down_read(%struct.rw_semaphore* @minor_rwsem) #7, !dbg !4373
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4374
  %call = call i32 @iminor(%struct.inode* %0) #7, !dbg !4374
  %idxprom = zext i32 %call to i64, !dbg !4374
  %arrayidx = getelementptr [256 x %struct.file_operations*], [256 x %struct.file_operations*]* @usb_minors, i64 0, i64 %idxprom, !dbg !4374
  %1 = load %struct.file_operations*, %struct.file_operations** %arrayidx, align 8, !dbg !4374
  %tobool = icmp ne %struct.file_operations* %1, null, !dbg !4374
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !4374

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4374
  %call1 = call i32 @iminor(%struct.inode* %2) #7, !dbg !4374
  %idxprom2 = zext i32 %call1 to i64, !dbg !4374
  %arrayidx3 = getelementptr [256 x %struct.file_operations*], [256 x %struct.file_operations*]* @usb_minors, i64 0, i64 %idxprom2, !dbg !4374
  %3 = load %struct.file_operations*, %struct.file_operations** %arrayidx3, align 8, !dbg !4374
  %owner = getelementptr inbounds %struct.file_operations, %struct.file_operations* %3, i32 0, i32 0, !dbg !4374
  %4 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4374
  %call4 = call zeroext i1 @try_module_get(%struct.module* %4) #7, !dbg !4374
  br i1 %call4, label %cond.true, label %cond.false, !dbg !4374

cond.true:                                        ; preds = %land.lhs.true
  %5 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4374
  %call5 = call i32 @iminor(%struct.inode* %5) #7, !dbg !4374
  %idxprom6 = zext i32 %call5 to i64, !dbg !4374
  %arrayidx7 = getelementptr [256 x %struct.file_operations*], [256 x %struct.file_operations*]* @usb_minors, i64 0, i64 %idxprom6, !dbg !4374
  %6 = load %struct.file_operations*, %struct.file_operations** %arrayidx7, align 8, !dbg !4374
  br label %cond.end, !dbg !4374

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !4374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.file_operations* [ %6, %cond.true ], [ null, %cond.false ], !dbg !4374
  store %struct.file_operations* %cond, %struct.file_operations** %new_fops, align 8, !dbg !4375
  %7 = load %struct.file_operations*, %struct.file_operations** %new_fops, align 8, !dbg !4376
  %tobool8 = icmp ne %struct.file_operations* %7, null, !dbg !4376
  br i1 %tobool8, label %if.end, label %if.then, !dbg !4378

if.then:                                          ; preds = %cond.end
  br label %done, !dbg !4379

if.end:                                           ; preds = %cond.end
  br label %do.body, !dbg !4380

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.file** %__file, metadata !4381, metadata !DIExpression()), !dbg !4383
  %8 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4383
  store %struct.file* %8, %struct.file** %__file, align 8, !dbg !4383
  br label %do.body9, !dbg !4383

do.body9:                                         ; preds = %do.body
  %9 = load %struct.file*, %struct.file** %__file, align 8, !dbg !4384
  %f_op = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 3, !dbg !4384
  %10 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8, !dbg !4384
  %tobool10 = icmp ne %struct.file_operations* %10, null, !dbg !4384
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !4387

if.then11:                                        ; preds = %do.body9
  %11 = load %struct.file*, %struct.file** %__file, align 8, !dbg !4384
  %f_op12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 3, !dbg !4384
  %12 = load %struct.file_operations*, %struct.file_operations** %f_op12, align 8, !dbg !4384
  %owner13 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %12, i32 0, i32 0, !dbg !4384
  %13 = load %struct.module*, %struct.module** %owner13, align 8, !dbg !4384
  call void @module_put(%struct.module* %13) #7, !dbg !4384
  br label %if.end14, !dbg !4384

if.end14:                                         ; preds = %if.then11, %do.body9
  br label %do.end, !dbg !4387

do.end:                                           ; preds = %if.end14
  br label %do.body15, !dbg !4383

do.body15:                                        ; preds = %do.end
  %14 = load %struct.file_operations*, %struct.file_operations** %new_fops, align 8, !dbg !4388
  %15 = load %struct.file*, %struct.file** %__file, align 8, !dbg !4388
  %f_op16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 3, !dbg !4388
  store %struct.file_operations* %14, %struct.file_operations** %f_op16, align 8, !dbg !4388
  %tobool17 = icmp ne %struct.file_operations* %14, null, !dbg !4388
  %lnot = xor i1 %tobool17, true, !dbg !4388
  %lnot18 = xor i1 %lnot, true, !dbg !4388
  %lnot19 = xor i1 %lnot18, true, !dbg !4388
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !4388
  %conv = sext i32 %lnot.ext to i64, !dbg !4388
  %tobool20 = icmp ne i64 %conv, 0, !dbg !4388
  br i1 %tobool20, label %if.then21, label %if.end30, !dbg !4391

if.then21:                                        ; preds = %do.body15
  br label %do.body22, !dbg !4388

do.body22:                                        ; preds = %if.then21
  br label %do.body23, !dbg !4392

do.body23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !4394

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !4392

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 45, i32 0, i64 12) #9, !dbg !4396, !srcloc !4398
  br label %do.end26, !dbg !4396

do.end26:                                         ; preds = %do.body25
  br label %do.body27, !dbg !4392

do.body27:                                        ; preds = %do.end26
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #9, !dbg !4399, !srcloc !4402
  unreachable, !dbg !4403

do.end28:                                         ; No predecessors!
  br label %do.end29, !dbg !4392

do.end29:                                         ; preds = %do.end28
  br label %if.end30, !dbg !4392

if.end30:                                         ; preds = %do.end29, %do.body15
  br label %do.end31, !dbg !4391

do.end31:                                         ; preds = %if.end30
  br label %do.end32, !dbg !4383

do.end32:                                         ; preds = %do.end31
  %16 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4404
  %f_op33 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 3, !dbg !4406
  %17 = load %struct.file_operations*, %struct.file_operations** %f_op33, align 8, !dbg !4406
  %open = getelementptr inbounds %struct.file_operations, %struct.file_operations* %17, i32 0, i32 14, !dbg !4407
  %18 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open, align 8, !dbg !4407
  %tobool34 = icmp ne i32 (%struct.inode*, %struct.file*)* %18, null, !dbg !4404
  br i1 %tobool34, label %if.then35, label %if.end39, !dbg !4408

if.then35:                                        ; preds = %do.end32
  %19 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4409
  %f_op36 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 3, !dbg !4410
  %20 = load %struct.file_operations*, %struct.file_operations** %f_op36, align 8, !dbg !4410
  %open37 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %20, i32 0, i32 14, !dbg !4411
  %21 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open37, align 8, !dbg !4411
  %22 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4412
  %23 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4413
  %call38 = call i32 %21(%struct.inode* %22, %struct.file* %23) #7, !dbg !4409
  store i32 %call38, i32* %err, align 4, !dbg !4414
  br label %if.end39, !dbg !4415

if.end39:                                         ; preds = %if.then35, %do.end32
  br label %done, !dbg !4407

done:                                             ; preds = %if.end39, %if.then
  call void @llvm.dbg.label(metadata !4416), !dbg !4417
  call void @up_read(%struct.rw_semaphore* @minor_rwsem) #7, !dbg !4418
  %24 = load i32, i32* %err, align 4, !dbg !4419
  ret i32 %24, !dbg !4420
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iminor(%struct.inode* %inode) #0 !dbg !4421 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4426
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !4426
  %1 = load i32, i32* %i_rdev, align 4, !dbg !4426
  %and = and i32 %1, 1048575, !dbg !4426
  ret i32 %and, !dbg !4427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !4428 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  ret i1 true, !dbg !4434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !4435 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4438, metadata !DIExpression()), !dbg !4439
  ret void, !dbg !4440
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #3

; Function Attrs: noredzone
declare dso_local void @__unregister_chrdev(i32, i32, i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !4441 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4445, metadata !DIExpression()), !dbg !4446
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4447
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4448
  call void @refcount_inc(%struct.refcount_struct* %refcount) #7, !dbg !4449
  ret void, !dbg !4450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !4451 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4454
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4455
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #7, !dbg !4456
  ret void, !dbg !4457
}

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_devnode(%struct.device* %dev, i16* %mode) #0 !dbg !4458 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %mode.addr = alloca i16*, align 8
  %drv = alloca %struct.usb_class_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  store i16* %mode, i16** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %mode.addr, metadata !4461, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.declare(metadata %struct.usb_class_driver** %drv, metadata !4463, metadata !DIExpression()), !dbg !4464
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4465
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !4466
  %1 = bitcast i8* %call to %struct.usb_class_driver*, !dbg !4466
  store %struct.usb_class_driver* %1, %struct.usb_class_driver** %drv, align 8, !dbg !4467
  %2 = load %struct.usb_class_driver*, %struct.usb_class_driver** %drv, align 8, !dbg !4468
  %tobool = icmp ne %struct.usb_class_driver* %2, null, !dbg !4468
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4470

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.usb_class_driver*, %struct.usb_class_driver** %drv, align 8, !dbg !4471
  %devnode = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %3, i32 0, i32 1, !dbg !4472
  %4 = load i8* (%struct.device*, i16*)*, i8* (%struct.device*, i16*)** %devnode, align 8, !dbg !4472
  %tobool1 = icmp ne i8* (%struct.device*, i16*)* %4, null, !dbg !4471
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4473

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8, !dbg !4474
  br label %return, !dbg !4474

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.usb_class_driver*, %struct.usb_class_driver** %drv, align 8, !dbg !4475
  %devnode2 = getelementptr inbounds %struct.usb_class_driver, %struct.usb_class_driver* %5, i32 0, i32 1, !dbg !4476
  %6 = load i8* (%struct.device*, i16*)*, i8* (%struct.device*, i16*)** %devnode2, align 8, !dbg !4476
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4477
  %8 = load i16*, i16** %mode.addr, align 8, !dbg !4478
  %call3 = call i8* %6(%struct.device* %7, i16* %8) #7, !dbg !4475
  store i8* %call3, i8** %retval, align 8, !dbg !4479
  br label %return, !dbg !4479

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !4480
  ret i8* %9, !dbg !4480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !4481 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4487
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #7, !dbg !4488
  ret void, !dbg !4489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4490 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4493, metadata !DIExpression()), !dbg !4494
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4497
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !4498
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !4499
  ret void, !dbg !4500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4501 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4504, metadata !DIExpression()), !dbg !4510
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4515, metadata !DIExpression()), !dbg !4516
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !4517, metadata !DIExpression()), !dbg !4519
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4520, metadata !DIExpression()), !dbg !4528
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4530, metadata !DIExpression()), !dbg !4531
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4532, metadata !DIExpression()), !dbg !4533
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4534, metadata !DIExpression()), !dbg !4535
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !4536, metadata !DIExpression()), !dbg !4537
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4542, metadata !DIExpression()), !dbg !4543
  %0 = load i32, i32* %i.addr, align 4, !dbg !4544
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4545
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !4546
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4547
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4547
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4548
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4549
  %conv.i.i = trunc i64 %5 to i32, !dbg !4549
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #11, !dbg !4550
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4551
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4551
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #11, !dbg !4551
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !4552
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4553
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4519
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !4519
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !4519
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4519
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !4519
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !4519, !srcloc !4554
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !4519
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !4519
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !4519
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !4519
  store i32 %15, i32* %old, align 4, !dbg !4543
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !4555
  %tobool = icmp ne i32* %16, null, !dbg !4555
  br i1 %tobool, label %if.then, label %if.end, !dbg !4557

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !4558
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !4559
  store i32 %17, i32* %18, align 4, !dbg !4560
  br label %if.end, !dbg !4561

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !4562
  %tobool1 = icmp ne i32 %19, 0, !dbg !4562
  %lnot = xor i1 %tobool1, true, !dbg !4562
  %lnot2 = xor i1 %lnot, true, !dbg !4562
  %lnot3 = xor i1 %lnot2, true, !dbg !4562
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4562
  %conv = sext i32 %lnot.ext to i64, !dbg !4562
  %tobool4 = icmp ne i64 %conv, 0, !dbg !4562
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4564

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4565
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #7, !dbg !4566
  br label %if.end17, !dbg !4566

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !4567
  %cmp = icmp slt i32 %21, 0, !dbg !4567
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4567

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !4567
  %23 = load i32, i32* %i.addr, align 4, !dbg !4567
  %add = add i32 %22, %23, !dbg !4567
  %cmp7 = icmp slt i32 %add, 0, !dbg !4567
  br label %lor.end, !dbg !4567

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !4567
  %lnot11 = xor i1 %lnot9, true, !dbg !4567
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4567
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4567
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !4567
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4569

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4570
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #7, !dbg !4571
  br label %if.end16, !dbg !4571

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !4572
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4573 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  ret i1 true, !dbg !4581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4582 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4586, metadata !DIExpression()), !dbg !4587
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  ret void, !dbg !4592
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4593 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4597, metadata !DIExpression()), !dbg !4602
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4604, metadata !DIExpression()), !dbg !4605
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4606, metadata !DIExpression()), !dbg !4607
  %0 = load i64, i64* %size.addr, align 8, !dbg !4608
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4610
  br i1 %1, label %if.then, label %if.end447, !dbg !4611

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4612
  %tobool = icmp ne i64 %2, 0, !dbg !4612
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4615

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4616
  br label %return, !dbg !4616

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4617
  %cmp = icmp ult i64 %3, 4096, !dbg !4619
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4620

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4621
  br label %return, !dbg !4621

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub = sub i64 %4, 1, !dbg !4622
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4622
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4622

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub4 = sub i64 %6, 1, !dbg !4622
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4622
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4622

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub6 = sub i64 %8, 1, !dbg !4622
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4622
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4622

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4622

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub9 = sub i64 %9, 1, !dbg !4622
  %and = and i64 %sub9, -9223372036854775808, !dbg !4622
  %tobool10 = icmp ne i64 %and, 0, !dbg !4622
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4622

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4622

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub13 = sub i64 %10, 1, !dbg !4622
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4622
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4622
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4622

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4622

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub18 = sub i64 %11, 1, !dbg !4622
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4622
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4622
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4622

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4622

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub23 = sub i64 %12, 1, !dbg !4622
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4622
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4622
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4622

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4622

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub28 = sub i64 %13, 1, !dbg !4622
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4622
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4622
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4622

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4622

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub33 = sub i64 %14, 1, !dbg !4622
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4622
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4622
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4622

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4622

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub38 = sub i64 %15, 1, !dbg !4622
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4622
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4622
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4622

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4622

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub43 = sub i64 %16, 1, !dbg !4622
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4622
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4622
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4622

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4622

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub48 = sub i64 %17, 1, !dbg !4622
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4622
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4622
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4622

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4622

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub53 = sub i64 %18, 1, !dbg !4622
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4622
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4622
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4622

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4622

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub58 = sub i64 %19, 1, !dbg !4622
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4622
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4622
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4622

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4622

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub63 = sub i64 %20, 1, !dbg !4622
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4622
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4622
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4622

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4622

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub68 = sub i64 %21, 1, !dbg !4622
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4622
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4622
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4622

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4622

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub73 = sub i64 %22, 1, !dbg !4622
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4622
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4622
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4622

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4622

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub78 = sub i64 %23, 1, !dbg !4622
  %and79 = and i64 %sub78, 562949953421312, !dbg !4622
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4622
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4622

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4622

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub83 = sub i64 %24, 1, !dbg !4622
  %and84 = and i64 %sub83, 281474976710656, !dbg !4622
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4622
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4622

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4622

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub88 = sub i64 %25, 1, !dbg !4622
  %and89 = and i64 %sub88, 140737488355328, !dbg !4622
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4622
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4622

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4622

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub93 = sub i64 %26, 1, !dbg !4622
  %and94 = and i64 %sub93, 70368744177664, !dbg !4622
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4622
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4622

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4622

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub98 = sub i64 %27, 1, !dbg !4622
  %and99 = and i64 %sub98, 35184372088832, !dbg !4622
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4622
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4622

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4622

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub103 = sub i64 %28, 1, !dbg !4622
  %and104 = and i64 %sub103, 17592186044416, !dbg !4622
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4622
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4622

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4622

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub108 = sub i64 %29, 1, !dbg !4622
  %and109 = and i64 %sub108, 8796093022208, !dbg !4622
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4622
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4622

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4622

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub113 = sub i64 %30, 1, !dbg !4622
  %and114 = and i64 %sub113, 4398046511104, !dbg !4622
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4622
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4622

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4622

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub118 = sub i64 %31, 1, !dbg !4622
  %and119 = and i64 %sub118, 2199023255552, !dbg !4622
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4622
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4622

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4622

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub123 = sub i64 %32, 1, !dbg !4622
  %and124 = and i64 %sub123, 1099511627776, !dbg !4622
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4622
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4622

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4622

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub128 = sub i64 %33, 1, !dbg !4622
  %and129 = and i64 %sub128, 549755813888, !dbg !4622
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4622
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4622

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4622

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub133 = sub i64 %34, 1, !dbg !4622
  %and134 = and i64 %sub133, 274877906944, !dbg !4622
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4622
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4622

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4622

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub138 = sub i64 %35, 1, !dbg !4622
  %and139 = and i64 %sub138, 137438953472, !dbg !4622
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4622
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4622

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4622

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub143 = sub i64 %36, 1, !dbg !4622
  %and144 = and i64 %sub143, 68719476736, !dbg !4622
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4622
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4622

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4622

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub148 = sub i64 %37, 1, !dbg !4622
  %and149 = and i64 %sub148, 34359738368, !dbg !4622
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4622
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4622

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4622

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub153 = sub i64 %38, 1, !dbg !4622
  %and154 = and i64 %sub153, 17179869184, !dbg !4622
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4622
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4622

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4622

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub158 = sub i64 %39, 1, !dbg !4622
  %and159 = and i64 %sub158, 8589934592, !dbg !4622
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4622
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4622

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4622

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub163 = sub i64 %40, 1, !dbg !4622
  %and164 = and i64 %sub163, 4294967296, !dbg !4622
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4622
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4622

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4622

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub168 = sub i64 %41, 1, !dbg !4622
  %and169 = and i64 %sub168, 2147483648, !dbg !4622
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4622
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4622

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4622

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub173 = sub i64 %42, 1, !dbg !4622
  %and174 = and i64 %sub173, 1073741824, !dbg !4622
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4622
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4622

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4622

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub178 = sub i64 %43, 1, !dbg !4622
  %and179 = and i64 %sub178, 536870912, !dbg !4622
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4622
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4622

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4622

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub183 = sub i64 %44, 1, !dbg !4622
  %and184 = and i64 %sub183, 268435456, !dbg !4622
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4622
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4622

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4622

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub188 = sub i64 %45, 1, !dbg !4622
  %and189 = and i64 %sub188, 134217728, !dbg !4622
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4622
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4622

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4622

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub193 = sub i64 %46, 1, !dbg !4622
  %and194 = and i64 %sub193, 67108864, !dbg !4622
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4622
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4622

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4622

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub198 = sub i64 %47, 1, !dbg !4622
  %and199 = and i64 %sub198, 33554432, !dbg !4622
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4622
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4622

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4622

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub203 = sub i64 %48, 1, !dbg !4622
  %and204 = and i64 %sub203, 16777216, !dbg !4622
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4622
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4622

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4622

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub208 = sub i64 %49, 1, !dbg !4622
  %and209 = and i64 %sub208, 8388608, !dbg !4622
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4622
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4622

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4622

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub213 = sub i64 %50, 1, !dbg !4622
  %and214 = and i64 %sub213, 4194304, !dbg !4622
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4622
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4622

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4622

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub218 = sub i64 %51, 1, !dbg !4622
  %and219 = and i64 %sub218, 2097152, !dbg !4622
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4622
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4622

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4622

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub223 = sub i64 %52, 1, !dbg !4622
  %and224 = and i64 %sub223, 1048576, !dbg !4622
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4622
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4622

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4622

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub228 = sub i64 %53, 1, !dbg !4622
  %and229 = and i64 %sub228, 524288, !dbg !4622
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4622
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4622

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4622

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub233 = sub i64 %54, 1, !dbg !4622
  %and234 = and i64 %sub233, 262144, !dbg !4622
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4622
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4622

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4622

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub238 = sub i64 %55, 1, !dbg !4622
  %and239 = and i64 %sub238, 131072, !dbg !4622
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4622
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4622

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4622

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub243 = sub i64 %56, 1, !dbg !4622
  %and244 = and i64 %sub243, 65536, !dbg !4622
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4622
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4622

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4622

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub248 = sub i64 %57, 1, !dbg !4622
  %and249 = and i64 %sub248, 32768, !dbg !4622
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4622
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4622

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4622

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub253 = sub i64 %58, 1, !dbg !4622
  %and254 = and i64 %sub253, 16384, !dbg !4622
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4622
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4622

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4622

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub258 = sub i64 %59, 1, !dbg !4622
  %and259 = and i64 %sub258, 8192, !dbg !4622
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4622
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4622

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4622

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub263 = sub i64 %60, 1, !dbg !4622
  %and264 = and i64 %sub263, 4096, !dbg !4622
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4622
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4622

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4622

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub268 = sub i64 %61, 1, !dbg !4622
  %and269 = and i64 %sub268, 2048, !dbg !4622
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4622
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4622

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4622

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub273 = sub i64 %62, 1, !dbg !4622
  %and274 = and i64 %sub273, 1024, !dbg !4622
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4622
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4622

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4622

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub278 = sub i64 %63, 1, !dbg !4622
  %and279 = and i64 %sub278, 512, !dbg !4622
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4622
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4622

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4622

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub283 = sub i64 %64, 1, !dbg !4622
  %and284 = and i64 %sub283, 256, !dbg !4622
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4622
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4622

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4622

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub288 = sub i64 %65, 1, !dbg !4622
  %and289 = and i64 %sub288, 128, !dbg !4622
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4622
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4622

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4622

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub293 = sub i64 %66, 1, !dbg !4622
  %and294 = and i64 %sub293, 64, !dbg !4622
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4622
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4622

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4622

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub298 = sub i64 %67, 1, !dbg !4622
  %and299 = and i64 %sub298, 32, !dbg !4622
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4622
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4622

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4622

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub303 = sub i64 %68, 1, !dbg !4622
  %and304 = and i64 %sub303, 16, !dbg !4622
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4622
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4622

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4622

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub308 = sub i64 %69, 1, !dbg !4622
  %and309 = and i64 %sub308, 8, !dbg !4622
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4622
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4622

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4622

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub313 = sub i64 %70, 1, !dbg !4622
  %and314 = and i64 %sub313, 4, !dbg !4622
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4622
  %71 = zext i1 %tobool315 to i64, !dbg !4622
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4622
  br label %cond.end, !dbg !4622

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4622
  br label %cond.end317, !dbg !4622

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4622
  br label %cond.end319, !dbg !4622

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4622
  br label %cond.end321, !dbg !4622

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4622
  br label %cond.end323, !dbg !4622

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4622
  br label %cond.end325, !dbg !4622

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4622
  br label %cond.end327, !dbg !4622

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4622
  br label %cond.end329, !dbg !4622

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4622
  br label %cond.end331, !dbg !4622

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4622
  br label %cond.end333, !dbg !4622

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4622
  br label %cond.end335, !dbg !4622

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4622
  br label %cond.end337, !dbg !4622

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4622
  br label %cond.end339, !dbg !4622

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4622
  br label %cond.end341, !dbg !4622

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4622
  br label %cond.end343, !dbg !4622

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4622
  br label %cond.end345, !dbg !4622

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4622
  br label %cond.end347, !dbg !4622

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4622
  br label %cond.end349, !dbg !4622

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4622
  br label %cond.end351, !dbg !4622

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4622
  br label %cond.end353, !dbg !4622

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4622
  br label %cond.end355, !dbg !4622

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4622
  br label %cond.end357, !dbg !4622

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4622
  br label %cond.end359, !dbg !4622

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4622
  br label %cond.end361, !dbg !4622

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4622
  br label %cond.end363, !dbg !4622

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4622
  br label %cond.end365, !dbg !4622

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4622
  br label %cond.end367, !dbg !4622

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4622
  br label %cond.end369, !dbg !4622

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4622
  br label %cond.end371, !dbg !4622

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4622
  br label %cond.end373, !dbg !4622

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4622
  br label %cond.end375, !dbg !4622

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4622
  br label %cond.end377, !dbg !4622

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4622
  br label %cond.end379, !dbg !4622

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4622
  br label %cond.end381, !dbg !4622

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4622
  br label %cond.end383, !dbg !4622

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4622
  br label %cond.end385, !dbg !4622

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4622
  br label %cond.end387, !dbg !4622

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4622
  br label %cond.end389, !dbg !4622

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4622
  br label %cond.end391, !dbg !4622

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4622
  br label %cond.end393, !dbg !4622

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4622
  br label %cond.end395, !dbg !4622

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4622
  br label %cond.end397, !dbg !4622

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4622
  br label %cond.end399, !dbg !4622

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4622
  br label %cond.end401, !dbg !4622

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4622
  br label %cond.end403, !dbg !4622

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4622
  br label %cond.end405, !dbg !4622

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4622
  br label %cond.end407, !dbg !4622

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4622
  br label %cond.end409, !dbg !4622

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4622
  br label %cond.end411, !dbg !4622

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4622
  br label %cond.end413, !dbg !4622

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4622
  br label %cond.end415, !dbg !4622

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4622
  br label %cond.end417, !dbg !4622

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4622
  br label %cond.end419, !dbg !4622

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4622
  br label %cond.end421, !dbg !4622

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4622
  br label %cond.end423, !dbg !4622

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4622
  br label %cond.end425, !dbg !4622

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4622
  br label %cond.end427, !dbg !4622

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4622
  br label %cond.end429, !dbg !4622

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4622
  br label %cond.end431, !dbg !4622

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4622
  br label %cond.end433, !dbg !4622

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4622
  br label %cond.end435, !dbg !4622

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4622
  br label %cond.end437, !dbg !4622

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4622
  br label %cond.end440, !dbg !4622

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4622

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4622
  br label %cond.end444, !dbg !4622

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4622
  %sub443 = sub i64 %72, 1, !dbg !4622
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4622
  br label %cond.end444, !dbg !4622

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4622
  %sub446 = sub i32 %cond445, 12, !dbg !4623
  %add = add i32 %sub446, 1, !dbg !4624
  store i32 %add, i32* %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4626
  %dec = add i64 %73, -1, !dbg !4626
  store i64 %dec, i64* %size.addr, align 8, !dbg !4626
  %74 = load i64, i64* %size.addr, align 8, !dbg !4627
  %shr = lshr i64 %74, 12, !dbg !4627
  store i64 %shr, i64* %size.addr, align 8, !dbg !4627
  %75 = load i64, i64* %size.addr, align 8, !dbg !4628
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4605
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4629
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4630
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4629, !srcloc !4631
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4629
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4632
  %add.i = add i32 %79, 1, !dbg !4633
  store i32 %add.i, i32* %retval, align 4, !dbg !4634
  br label %return, !dbg !4634

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4635
  ret i32 %80, !dbg !4635
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4636 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4597, metadata !DIExpression()), !dbg !4640
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4604, metadata !DIExpression()), !dbg !4642
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  %0 = load i64, i64* %n.addr, align 8, !dbg !4645
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4642
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4646
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4647
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4646, !srcloc !4631
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4646
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4648
  %add.i = add i32 %4, 1, !dbg !4649
  %sub = sub i32 %add.i, 1, !dbg !4650
  ret i32 %sub, !dbg !4651
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4652 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4658, metadata !DIExpression()), !dbg !4659
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4660, metadata !DIExpression()), !dbg !4661
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4662, metadata !DIExpression()), !dbg !4663
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4664
  ret i8* %0, !dbg !4665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !4666 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4669, metadata !DIExpression()), !dbg !4673
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4677, metadata !DIExpression()), !dbg !4678
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4679, metadata !DIExpression()), !dbg !4681
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4683, metadata !DIExpression()), !dbg !4684
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4685, metadata !DIExpression()), !dbg !4686
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4687, metadata !DIExpression()), !dbg !4688
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4693
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !4694
  %1 = load i32, i32* %n.addr, align 4, !dbg !4695
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4696
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4696
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4697
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4698
  %conv.i.i = trunc i64 %5 to i32, !dbg !4698
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #11, !dbg !4699
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4700
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4700
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #11, !dbg !4700
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4701
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !4702
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4703
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4703
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !4703
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !4703
  ret void, !dbg !4705
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !4706 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4711
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4712
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4712
  ret i8* %1, !dbg !4713
}

; Function Attrs: noredzone
declare dso_local i8* @strrchr(i8*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !4714 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !4720, metadata !DIExpression()), !dbg !4721
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4722
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4724
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #7, !dbg !4725
  br i1 %call, label %if.then, label %if.end, !dbg !4726

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !4727
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4729
  call void %1(%struct.kref* %2) #7, !dbg !4727
  store i32 1, i32* %retval, align 4, !dbg !4730
  br label %return, !dbg !4730

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4731
  br label %return, !dbg !4731

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4732
  ret i32 %3, !dbg !4732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @release_usb_class(%struct.kref* %kref) #0 !dbg !4733 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4736
  %class = getelementptr inbounds %struct.usb_class, %struct.usb_class* %0, i32 0, i32 1, !dbg !4737
  %1 = load %struct.class*, %struct.class** %class, align 8, !dbg !4737
  call void @class_destroy(%struct.class* %1) #7, !dbg !4738
  %2 = load %struct.usb_class*, %struct.usb_class** @usb_class, align 8, !dbg !4739
  %3 = bitcast %struct.usb_class* %2 to i8*, !dbg !4739
  call void @kfree(i8* %3) #7, !dbg !4740
  store %struct.usb_class* null, %struct.usb_class** @usb_class, align 8, !dbg !4741
  ret void, !dbg !4742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !4743 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4746, metadata !DIExpression()), !dbg !4747
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4748
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #7, !dbg !4749
  ret i1 %call, !dbg !4750
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4751 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4756, metadata !DIExpression()), !dbg !4757
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4758
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !4759
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !4760
  ret i1 %call, !dbg !4761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4762 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4765, metadata !DIExpression()), !dbg !4767
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4771, metadata !DIExpression()), !dbg !4772
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !4773, metadata !DIExpression()), !dbg !4775
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4520, metadata !DIExpression()), !dbg !4776
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4530, metadata !DIExpression()), !dbg !4778
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4779, metadata !DIExpression()), !dbg !4780
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4781, metadata !DIExpression()), !dbg !4782
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !4783, metadata !DIExpression()), !dbg !4784
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4785, metadata !DIExpression()), !dbg !4786
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4787, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4789, metadata !DIExpression()), !dbg !4790
  %0 = load i32, i32* %i.addr, align 4, !dbg !4791
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4792
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !4793
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4794
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4794
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4795
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4796
  %conv.i.i = trunc i64 %5 to i32, !dbg !4796
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #11, !dbg !4797
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4798
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4798
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #11, !dbg !4798
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !4799
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4800
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4775
  %sub.i.i = sub i32 0, %10, !dbg !4775
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !4775
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !4775
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4775
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !4775
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !4775, !srcloc !4801
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !4775
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !4775
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !4775
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !4775
  store i32 %15, i32* %old, align 4, !dbg !4790
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !4802
  %tobool = icmp ne i32* %16, null, !dbg !4802
  br i1 %tobool, label %if.then, label %if.end, !dbg !4804

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !4805
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !4806
  store i32 %17, i32* %18, align 4, !dbg !4807
  br label %if.end, !dbg !4808

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !4809
  %20 = load i32, i32* %i.addr, align 4, !dbg !4811
  %cmp = icmp eq i32 %19, %20, !dbg !4812
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4813

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4814, !srcloc !4816
  store i1 true, i1* %retval, align 1, !dbg !4817
  br label %return, !dbg !4817

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !4818
  %cmp3 = icmp slt i32 %21, 0, !dbg !4818
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !4818

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !4818
  %23 = load i32, i32* %i.addr, align 4, !dbg !4818
  %sub = sub i32 %22, %23, !dbg !4818
  %cmp4 = icmp slt i32 %sub, 0, !dbg !4818
  br label %lor.end, !dbg !4818

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !4818
  %lnot5 = xor i1 %lnot, true, !dbg !4818
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4818
  %conv = sext i32 %lnot.ext to i64, !dbg !4818
  %tobool6 = icmp ne i64 %conv, 0, !dbg !4818
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4820

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4821
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #7, !dbg !4822
  br label %if.end8, !dbg !4822

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !4823
  br label %return, !dbg !4823

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !4824
  ret i1 %26, !dbg !4824
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #3

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
!llvm.module.flags = !{!3723, !3724, !3725, !3726}
!llvm.ident = !{!3727}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "usb_fops", scope: !2, file: !3, line: 54, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !133, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/file.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !20, !25, !31, !37, !46, !54, !60, !66, !73, !81, !87, !101, !106, !114}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !6, line: 96, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !14, line: 15, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !21, line: 65, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !26, line: 16, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !32, line: 54, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !38, line: 296, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43, !44, !45}
!40 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !47, line: 9, baseType: !7, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!48 = !{!49, !50, !51, !52, !53}
!49 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !55, line: 26, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !61, line: 44, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !67, line: 343, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !74, line: 524, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!80 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !74, line: 502, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !88, line: 76, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!90 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!94 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!95 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!96 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 10, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !107, line: 119, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!113 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !115, line: 305, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!120 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!121 = !{!122, !7, !123, !125, !128, !131, !132}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 148, baseType: !7)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !127, line: 76, flags: DIFlagFwdDecl)
!127 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !130)
!130 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!131 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!133 = !{!134, !2861, !0, !3714, !3716, !3721}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "usb_minors", scope: !2, file: !3, line: 30, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16384, elements: !2859)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !38, line: 1822, size: 2048, elements: !140)
!140 = !{!141, !142, !2653, !2658, !2662, !2663, !2664, !2668, !2681, !2682, !2690, !2694, !2695, !2699, !2700, !2704, !2709, !2710, !2714, !2718, !2819, !2823, !2824, !2828, !2829, !2833, !2837, !2842, !2846, !2850, !2854, !2858}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !139, file: !38, line: 1823, baseType: !125, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !139, file: !38, line: 1824, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !150, !146, !130}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 46, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !148, line: 88, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !38, line: 916, size: 1856, align: 32, elements: !152)
!152 = !{!153, !171, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2636, !2637, !2646, !2647, !2648, !2649, !2650, !2651, !2652}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !151, file: !38, line: 920, baseType: !154, size: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !38, line: 917, size: 128, elements: !155)
!155 = !{!156, !162}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !154, file: !38, line: 918, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !158, line: 58, size: 64, elements: !159)
!158 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 59, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !154, file: !38, line: 919, baseType: !163, size: 128, align: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 216, size: 128, align: 64, elements: !164)
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !124, line: 217, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !163, file: !124, line: 218, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !166}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !151, file: !38, line: 921, baseType: !172, size: 128, offset: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !173, line: 8, size: 128, elements: !174)
!173 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !172, file: !173, line: 9, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !178, line: 18, flags: DIFlagFwdDecl)
!178 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !172, file: !173, line: 10, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !178, line: 89, size: 1536, elements: !182)
!182 = !{!183, !184, !194, !202, !203, !226, !2579, !2581, !2593, !2594, !2595, !2596, !2597, !2603, !2604, !2605}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !181, file: !178, line: 91, baseType: !7, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !181, file: !178, line: 92, baseType: !185, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !186, line: 277, baseType: !187)
!186 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !186, line: 277, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !187, file: !186, line: 277, baseType: !190, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !186, line: 70, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !186, line: 65, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !191, file: !186, line: 66, baseType: !7, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !181, file: !178, line: 93, baseType: !195, size: 128, offset: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !196, line: 38, size: 128, elements: !197)
!196 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !196, line: 39, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !195, file: !196, line: 39, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !181, file: !178, line: 94, baseType: !180, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !181, file: !178, line: 95, baseType: !204, size: 128, offset: 256)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !178, line: 47, size: 128, elements: !205)
!205 = !{!206, !222}
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !178, line: 48, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !178, line: 48, size: 64, elements: !208)
!208 = !{!209, !218}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !178, line: 49, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !207, file: !178, line: 49, size: 64, elements: !211)
!211 = !{!212, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !210, file: !178, line: 50, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !214, line: 21, baseType: !215)
!214 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !216, line: 27, baseType: !7)
!216 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !210, file: !178, line: 50, baseType: !213, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !207, file: !178, line: 52, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !214, line: 23, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !216, line: 31, baseType: !221)
!221 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !178, line: 54, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !181, file: !178, line: 96, baseType: !227, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !38, line: 610, size: 4224, elements: !229)
!229 = !{!230, !233, !234, !242, !249, !250, !405, !2512, !2513, !2514, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2555, !2563, !2564, !2565, !2575, !2576, !2577, !2578}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !228, file: !38, line: 611, baseType: !231, size: 16)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 19, baseType: !232)
!232 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !228, file: !38, line: 612, baseType: !232, size: 16, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !228, file: !38, line: 613, baseType: !235, size: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !236, line: 23, baseType: !237)
!236 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 21, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !236, line: 22, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 32, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !148, line: 49, baseType: !7)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !228, file: !38, line: 614, baseType: !243, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !236, line: 28, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 26, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !244, file: !236, line: 27, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 33, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !148, line: 50, baseType: !7)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !228, file: !38, line: 615, baseType: !7, size: 32, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !228, file: !38, line: 622, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !38, line: 1864, size: 1536, align: 512, elements: !254)
!254 = !{!255, !259, !275, !279, !285, !290, !296, !300, !304, !308, !312, !313, !319, !323, !346, !375, !385, !391, !396, !400, !401}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !253, file: !38, line: 1865, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!180, !227, !180, !7}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !253, file: !38, line: 1866, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !180, !227, !266}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !268, line: 10, size: 128, elements: !269)
!268 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!269 = !{!270, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !267, file: !268, line: 11, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !122}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !267, file: !268, line: 12, baseType: !122, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !253, file: !38, line: 1867, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!130, !227, !130}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !253, file: !38, line: 1868, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !227, !130}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !38, line: 581, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !253, file: !38, line: 1870, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!130, !180, !289, !130}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !253, file: !38, line: 1872, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!130, !227, !180, !231, !294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 30, baseType: !295)
!295 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !253, file: !38, line: 1873, baseType: !297, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!130, !180, !227, !180}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !253, file: !38, line: 1874, baseType: !301, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!130, !227, !180}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !253, file: !38, line: 1875, baseType: !305, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!130, !227, !180, !263}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !253, file: !38, line: 1876, baseType: !309, size: 64, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!130, !227, !180, !231}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !253, file: !38, line: 1877, baseType: !301, size: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !253, file: !38, line: 1878, baseType: !314, size: 64, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!130, !227, !180, !231, !317}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 16, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 13, baseType: !213)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !253, file: !38, line: 1879, baseType: !320, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!130, !227, !180, !227, !180, !7}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !253, file: !38, line: 1881, baseType: !324, size: 64, offset: 832)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!130, !180, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !38, line: 219, size: 640, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !343, !344, !345}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !328, file: !38, line: 220, baseType: !7, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !328, file: !38, line: 221, baseType: !231, size: 16, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !328, file: !38, line: 222, baseType: !235, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !328, file: !38, line: 223, baseType: !243, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !328, file: !38, line: 224, baseType: !146, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !328, file: !38, line: 225, baseType: !336, size: 128, offset: 192)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !337, line: 13, size: 128, elements: !338)
!337 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!338 = !{!339, !342}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !336, file: !337, line: 14, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !337, line: 8, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !216, line: 30, baseType: !149)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !336, file: !337, line: 15, baseType: !132, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !328, file: !38, line: 226, baseType: !336, size: 128, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !328, file: !38, line: 227, baseType: !336, size: 128, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !328, file: !38, line: 234, baseType: !150, size: 64, offset: 576)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !253, file: !38, line: 1882, baseType: !347, size: 64, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!130, !350, !352, !213, !7}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !354, line: 22, size: 1152, elements: !355)
!354 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356, !357, !358, !359, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !353, file: !354, line: 23, baseType: !213, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !353, file: !354, line: 24, baseType: !231, size: 16, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !353, file: !354, line: 25, baseType: !7, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !353, file: !354, line: 26, baseType: !360, size: 32, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 104, baseType: !213)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !353, file: !354, line: 27, baseType: !219, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !353, file: !354, line: 28, baseType: !219, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !353, file: !354, line: 37, baseType: !219, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !353, file: !354, line: 38, baseType: !317, size: 32, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !353, file: !354, line: 39, baseType: !317, size: 32, offset: 352)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !353, file: !354, line: 40, baseType: !235, size: 32, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !353, file: !354, line: 41, baseType: !243, size: 32, offset: 416)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !353, file: !354, line: 42, baseType: !146, size: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !353, file: !354, line: 43, baseType: !336, size: 128, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !353, file: !354, line: 44, baseType: !336, size: 128, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !353, file: !354, line: 45, baseType: !336, size: 128, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !353, file: !354, line: 46, baseType: !336, size: 128, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !353, file: !354, line: 47, baseType: !219, size: 64, offset: 1024)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !353, file: !354, line: 48, baseType: !219, size: 64, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !253, file: !38, line: 1883, baseType: !376, size: 64, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !180, !289, !382}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 60, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !148, line: 73, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !148, line: 15, baseType: !132)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 55, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !148, line: 72, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !148, line: 16, baseType: !131)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !253, file: !38, line: 1884, baseType: !386, size: 64, offset: 1024)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!130, !227, !389, !219, !219}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !38, line: 50, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !253, file: !38, line: 1886, baseType: !392, size: 64, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!130, !227, !395, !130}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !253, file: !38, line: 1887, baseType: !397, size: 64, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!130, !227, !180, !150, !7, !231}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !253, file: !38, line: 1890, baseType: !309, size: 64, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !253, file: !38, line: 1891, baseType: !402, size: 64, offset: 1280)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!130, !227, !283, !130}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !228, file: !38, line: 623, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !38, line: 1416, size: 9472, elements: !408)
!408 = !{!409, !415, !416, !417, !418, !419, !469, !2119, !2201, !2284, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2300, !2304, !2305, !2308, !2309, !2312, !2313, !2314, !2355, !2382, !2383, !2384, !2385, !2386, !2387, !2390, !2392, !2399, !2400, !2402, !2403, !2404, !2463, !2464, !2479, !2480, !2481, !2482, !2483, !2486, !2487, !2488, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !407, file: !38, line: 1417, baseType: !410, size: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 178, size: 128, elements: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !124, line: 179, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !410, file: !124, line: 179, baseType: !413, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !407, file: !38, line: 1418, baseType: !317, size: 32, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !407, file: !38, line: 1419, baseType: !225, size: 8, offset: 160)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !407, file: !38, line: 1420, baseType: !131, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !407, file: !38, line: 1421, baseType: !146, size: 64, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !407, file: !38, line: 1422, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !38, line: 2228, size: 576, elements: !422)
!422 = !{!423, !424, !425, !432, !436, !440, !444, !445, !446, !456, !460, !461, !462, !466, !467, !468}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !38, line: 2229, baseType: !263, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !421, file: !38, line: 2230, baseType: !130, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !421, file: !38, line: 2238, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!130, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !431, line: 28, flags: DIFlagFwdDecl)
!431 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!432 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !421, file: !38, line: 2239, baseType: !433, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !38, line: 70, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !421, file: !38, line: 2240, baseType: !437, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!180, !420, !130, !263, !122}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !421, file: !38, line: 2242, baseType: !441, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !406}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !421, file: !38, line: 2243, baseType: !125, size: 64, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !38, line: 2244, baseType: !420, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !421, file: !38, line: 2245, baseType: !447, size: 64, offset: 512)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 182, size: 64, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !447, file: !124, line: 183, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 186, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !124, line: 187, baseType: !450, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !451, file: !124, line: 187, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !421, file: !38, line: 2247, baseType: !457, offset: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !458, line: 187, elements: !459)
!458 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!459 = !{}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !421, file: !38, line: 2248, baseType: !457, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !421, file: !38, line: 2249, baseType: !457, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !421, file: !38, line: 2250, baseType: !463, offset: 576)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 3)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !421, file: !38, line: 2252, baseType: !457, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !421, file: !38, line: 2253, baseType: !457, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !421, file: !38, line: 2254, baseType: !457, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !407, file: !38, line: 1423, baseType: !470, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !38, line: 1935, size: 1472, elements: !473)
!473 = !{!474, !478, !482, !483, !487, !493, !497, !498, !499, !503, !507, !508, !509, !510, !516, !521, !522, !529, !530, !531, !532, !2103, !2118}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !472, file: !38, line: 1936, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!227, !406}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !472, file: !38, line: 1937, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !227}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !472, file: !38, line: 1938, baseType: !479, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !472, file: !38, line: 1940, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !227, !130}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !472, file: !38, line: 1941, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!130, !227, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !38, line: 289, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !472, file: !38, line: 1942, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!130, !227}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !472, file: !38, line: 1943, baseType: !479, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !472, file: !38, line: 1944, baseType: !441, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !472, file: !38, line: 1945, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!130, !406, !130}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !472, file: !38, line: 1946, baseType: !504, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!130, !406}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !472, file: !38, line: 1947, baseType: !504, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !472, file: !38, line: 1948, baseType: !504, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !472, file: !38, line: 1949, baseType: !504, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !472, file: !38, line: 1950, baseType: !511, size: 64, offset: 832)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!130, !180, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !38, line: 57, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !472, file: !38, line: 1951, baseType: !517, size: 64, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!130, !406, !520, !289}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !472, file: !38, line: 1952, baseType: !441, size: 64, offset: 960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !472, file: !38, line: 1954, baseType: !523, size: 64, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!130, !526, !180}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !528, line: 539, flags: DIFlagFwdDecl)
!528 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !472, file: !38, line: 1955, baseType: !523, size: 64, offset: 1088)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !472, file: !38, line: 1956, baseType: !523, size: 64, offset: 1152)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !472, file: !38, line: 1957, baseType: !523, size: 64, offset: 1216)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !472, file: !38, line: 1963, baseType: !533, size: 64, offset: 1280)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!130, !406, !536, !123}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !538, line: 68, size: 512, align: 128, elements: !539)
!538 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!539 = !{!540, !541, !2095, !2102}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !538, line: 69, baseType: !131, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !538, line: 77, baseType: !542, size: 320, offset: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !538, line: 77, size: 320, elements: !543)
!543 = !{!544, !745, !750, !778, !786, !792, !2087, !2094}
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 78, baseType: !545, size: 320)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 78, size: 320, elements: !546)
!546 = !{!547, !548, !743, !744}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !545, file: !538, line: 84, baseType: !410, size: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !545, file: !538, line: 86, baseType: !549, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !38, line: 451, size: 1216, align: 64, elements: !551)
!551 = !{!552, !553, !574, !575, !580, !595, !611, !612, !613, !614, !736, !737, !740, !741, !742}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !550, file: !38, line: 452, baseType: !227, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !550, file: !38, line: 453, baseType: !554, size: 128, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !555, line: 292, size: 128, elements: !556)
!555 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!556 = !{!557, !572, !573}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !554, file: !555, line: 293, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !559, line: 83, baseType: !560)
!559 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !559, line: 71, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !559, line: 72, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !559, line: 72, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !563, file: !559, line: 73, baseType: !566)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !559, line: 20, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !566, file: !559, line: 21, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !570, line: 25, baseType: !571)
!570 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 25, elements: !459)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !554, file: !555, line: 295, baseType: !123, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !554, file: !555, line: 296, baseType: !122, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !550, file: !38, line: 454, baseType: !123, size: 32, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !550, file: !38, line: 455, baseType: !576, size: 32, offset: 224)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 168, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 166, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !577, file: !124, line: 167, baseType: !130, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !550, file: !38, line: 460, baseType: !581, size: 128, offset: 256)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !582, line: 125, size: 128, elements: !583)
!582 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!583 = !{!584, !594}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !581, file: !582, line: 126, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !582, line: 31, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !585, file: !582, line: 32, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !582, line: 24, size: 192, align: 64, elements: !590)
!590 = !{!591, !592, !593}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !589, file: !582, line: 25, baseType: !131, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !589, file: !582, line: 26, baseType: !588, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !589, file: !582, line: 27, baseType: !588, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !581, file: !582, line: 127, baseType: !588, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !550, file: !38, line: 461, baseType: !596, size: 256, offset: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !597, line: 35, size: 256, elements: !598)
!597 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !607, !608, !610}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !596, file: !597, line: 36, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !601, line: 13, baseType: !602)
!601 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 175, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 173, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !603, file: !124, line: 174, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !214, line: 22, baseType: !341)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !596, file: !597, line: 42, baseType: !600, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !596, file: !597, line: 46, baseType: !609, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !559, line: 29, baseType: !566)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !596, file: !597, line: 47, baseType: !410, size: 128, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !550, file: !38, line: 462, baseType: !131, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !550, file: !38, line: 463, baseType: !131, size: 64, offset: 704)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !550, file: !38, line: 464, baseType: !131, size: 64, offset: 768)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !550, file: !38, line: 465, baseType: !615, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !38, line: 367, size: 1408, elements: !618)
!618 = !{!619, !623, !627, !631, !635, !639, !645, !651, !655, !660, !664, !668, !672, !700, !704, !710, !711, !712, !716, !721, !725, !732}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !617, file: !38, line: 368, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!130, !536, !491}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !617, file: !38, line: 369, baseType: !624, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!130, !150, !536}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !617, file: !38, line: 372, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!130, !549, !491}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !617, file: !38, line: 375, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!130, !536}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !617, file: !38, line: 381, baseType: !636, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!130, !150, !549, !413, !7}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !617, file: !38, line: 383, baseType: !640, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !38, line: 290, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !617, file: !38, line: 385, baseType: !646, size: 64, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!130, !150, !549, !146, !7, !7, !649, !650}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !617, file: !38, line: 388, baseType: !652, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!130, !150, !549, !146, !7, !7, !536, !122}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !617, file: !38, line: 393, baseType: !656, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !549, !659}
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !124, line: 125, baseType: !219)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !617, file: !38, line: 394, baseType: !661, size: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !536, !7, !7}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !617, file: !38, line: 395, baseType: !665, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!130, !536, !123}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !617, file: !38, line: 396, baseType: !669, size: 64, offset: 704)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !536}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !617, file: !38, line: 397, baseType: !673, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!379, !676, !698}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !38, line: 320, size: 384, elements: !678)
!678 = !{!679, !680, !681, !685, !686, !687, !690, !691}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !677, file: !38, line: 321, baseType: !150, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !677, file: !38, line: 326, baseType: !146, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !677, file: !38, line: 327, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !676, !132, !132}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !677, file: !38, line: 328, baseType: !122, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !677, file: !38, line: 329, baseType: !130, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !677, file: !38, line: 330, baseType: !688, size: 16, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !214, line: 19, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !216, line: 24, baseType: !232)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !677, file: !38, line: 331, baseType: !688, size: 16, offset: 304)
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !38, line: 332, baseType: !692, size: 64, offset: 320)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !38, line: 332, size: 64, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !692, file: !38, line: 333, baseType: !7, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !692, file: !38, line: 334, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !38, line: 334, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !38, line: 64, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !617, file: !38, line: 402, baseType: !701, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!130, !549, !536, !536, !13}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !617, file: !38, line: 404, baseType: !705, size: 64, offset: 896)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!294, !536, !708}
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !709, line: 305, baseType: !7)
!709 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !617, file: !38, line: 405, baseType: !669, size: 64, offset: 960)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !617, file: !38, line: 406, baseType: !632, size: 64, offset: 1024)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !617, file: !38, line: 407, baseType: !713, size: 64, offset: 1088)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!130, !536, !131, !131}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !617, file: !38, line: 409, baseType: !717, size: 64, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !536, !720, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !617, file: !38, line: 410, baseType: !722, size: 64, offset: 1216)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!130, !549, !536}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !617, file: !38, line: 413, baseType: !726, size: 64, offset: 1280)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!130, !729, !150, !731}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !38, line: 61, flags: DIFlagFwdDecl)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !617, file: !38, line: 415, baseType: !733, size: 64, offset: 1344)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !150}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !550, file: !38, line: 466, baseType: !131, size: 64, offset: 896)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !550, file: !38, line: 467, baseType: !738, size: 32, offset: 960)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !739, line: 8, baseType: !213)
!739 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!740 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !550, file: !38, line: 468, baseType: !558, offset: 992)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !550, file: !38, line: 469, baseType: !410, size: 128, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !550, file: !38, line: 470, baseType: !122, size: 64, offset: 1152)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !545, file: !538, line: 87, baseType: !131, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !545, file: !538, line: 94, baseType: !131, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 96, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 96, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !746, file: !538, line: 101, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !124, line: 143, baseType: !219)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 103, baseType: !751, size: 320)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 103, size: 320, elements: !752)
!752 = !{!753, !763, !766, !767}
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !538, line: 104, baseType: !754, size: 128)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !538, line: 104, size: 128, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !754, file: !538, line: 105, baseType: !410, size: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !538, line: 106, baseType: !758, size: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !754, file: !538, line: 106, size: 128, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !538, line: 107, baseType: !536, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !758, file: !538, line: 109, baseType: !130, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !758, file: !538, line: 110, baseType: !130, size: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !751, file: !538, line: 117, baseType: !764, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !538, line: 117, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !751, file: !538, line: 119, baseType: !122, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !538, line: 120, baseType: !768, size: 64, offset: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !538, line: 120, size: 64, elements: !769)
!769 = !{!770, !771, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !768, file: !538, line: 121, baseType: !122, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !768, file: !538, line: 122, baseType: !131, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !538, line: 123, baseType: !773, size: 32)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !768, file: !538, line: 123, size: 32, elements: !774)
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !773, file: !538, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !773, file: !538, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !773, file: !538, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 130, baseType: !779, size: 192)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 130, size: 192, elements: !780)
!780 = !{!781, !782, !783, !784, !785}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !779, file: !538, line: 131, baseType: !131, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !779, file: !538, line: 134, baseType: !225, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !779, file: !538, line: 135, baseType: !225, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !779, file: !538, line: 136, baseType: !576, size: 32, offset: 96)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !779, file: !538, line: 137, baseType: !7, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 139, baseType: !787, size: 256)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 139, size: 256, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !787, file: !538, line: 140, baseType: !131, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !787, file: !538, line: 141, baseType: !576, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !787, file: !538, line: 143, baseType: !410, size: 128, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 145, baseType: !793, size: 256)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 145, size: 256, elements: !794)
!794 = !{!795, !796, !798, !799, !2086}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !793, file: !538, line: 146, baseType: !131, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !793, file: !538, line: 147, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !528, line: 509, baseType: !536)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !793, file: !538, line: 148, baseType: !131, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !538, line: 149, baseType: !800, size: 64, offset: 192)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !538, line: 149, size: 64, elements: !801)
!801 = !{!802, !2085}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !800, file: !538, line: 150, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !538, line: 388, size: 7296, elements: !805)
!805 = !{!806, !2081}
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !804, file: !538, line: 389, baseType: !807, size: 7296)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !804, file: !538, line: 389, size: 7296, elements: !808)
!808 = !{!809, !847, !848, !849, !853, !854, !855, !856, !857, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !898, !906, !909, !955, !956, !2065, !2066, !2069, !2070, !2071, !2074, !2075, !2076, !2079, !2080}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !807, file: !538, line: 390, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !538, line: 305, size: 1472, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !827, !828, !833, !834, !837, !841, !842, !843, !844, !845}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !811, file: !538, line: 308, baseType: !131, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !811, file: !538, line: 309, baseType: !131, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !811, file: !538, line: 313, baseType: !810, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !811, file: !538, line: 313, baseType: !810, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !811, file: !538, line: 315, baseType: !589, size: 192, align: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !811, file: !538, line: 323, baseType: !131, size: 64, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !811, file: !538, line: 327, baseType: !803, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !811, file: !538, line: 333, baseType: !821, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !528, line: 284, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !528, line: 284, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !822, file: !528, line: 284, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !826, line: 19, baseType: !131)
!826 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !811, file: !538, line: 334, baseType: !131, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !811, file: !538, line: 343, baseType: !829, size: 256, offset: 704)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !811, file: !538, line: 340, size: 256, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !829, file: !538, line: 341, baseType: !589, size: 192, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !829, file: !538, line: 342, baseType: !131, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !811, file: !538, line: 351, baseType: !410, size: 128, offset: 960)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !811, file: !538, line: 353, baseType: !835, size: 64, offset: 1088)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !538, line: 353, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !811, file: !538, line: 356, baseType: !838, size: 64, offset: 1152)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !538, line: 356, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !811, file: !538, line: 359, baseType: !131, size: 64, offset: 1216)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !811, file: !538, line: 361, baseType: !150, size: 64, offset: 1280)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !811, file: !538, line: 362, baseType: !122, size: 64, offset: 1344)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !811, file: !538, line: 365, baseType: !600, size: 64, offset: 1408)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !811, file: !538, line: 373, baseType: !846, offset: 1472)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !538, line: 296, elements: !459)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !807, file: !538, line: 391, baseType: !585, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !807, file: !538, line: 392, baseType: !219, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !807, file: !538, line: 394, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!131, !150, !131, !131, !131, !131}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !807, file: !538, line: 398, baseType: !131, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !807, file: !538, line: 399, baseType: !131, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !807, file: !538, line: 405, baseType: !131, size: 64, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !807, file: !538, line: 406, baseType: !131, size: 64, offset: 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !807, file: !538, line: 407, baseType: !858, size: 64, offset: 512)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !528, line: 286, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !528, line: 286, size: 64, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !860, file: !528, line: 286, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !826, line: 18, baseType: !131)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !807, file: !538, line: 416, baseType: !576, size: 32, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !807, file: !538, line: 428, baseType: !576, size: 32, offset: 608)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !807, file: !538, line: 437, baseType: !576, size: 32, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !807, file: !538, line: 447, baseType: !576, size: 32, offset: 672)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !807, file: !538, line: 450, baseType: !600, size: 64, offset: 704)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !807, file: !538, line: 452, baseType: !130, size: 32, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !807, file: !538, line: 454, baseType: !558, offset: 800)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !807, file: !538, line: 457, baseType: !596, size: 256, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !807, file: !538, line: 459, baseType: !410, size: 128, offset: 1088)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !807, file: !538, line: 466, baseType: !131, size: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !807, file: !538, line: 467, baseType: !131, size: 64, offset: 1280)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !807, file: !538, line: 469, baseType: !131, size: 64, offset: 1344)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !807, file: !538, line: 470, baseType: !131, size: 64, offset: 1408)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !807, file: !538, line: 471, baseType: !602, size: 64, offset: 1472)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !807, file: !538, line: 472, baseType: !131, size: 64, offset: 1536)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !807, file: !538, line: 473, baseType: !131, size: 64, offset: 1600)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !807, file: !538, line: 474, baseType: !131, size: 64, offset: 1664)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !807, file: !538, line: 475, baseType: !131, size: 64, offset: 1728)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !807, file: !538, line: 477, baseType: !558, offset: 1792)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !807, file: !538, line: 478, baseType: !131, size: 64, offset: 1792)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !807, file: !538, line: 478, baseType: !131, size: 64, offset: 1856)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !807, file: !538, line: 478, baseType: !131, size: 64, offset: 1920)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !807, file: !538, line: 478, baseType: !131, size: 64, offset: 1984)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !807, file: !538, line: 479, baseType: !131, size: 64, offset: 2048)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !807, file: !538, line: 479, baseType: !131, size: 64, offset: 2112)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !807, file: !538, line: 479, baseType: !131, size: 64, offset: 2176)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !807, file: !538, line: 480, baseType: !131, size: 64, offset: 2240)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !807, file: !538, line: 480, baseType: !131, size: 64, offset: 2304)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !807, file: !538, line: 480, baseType: !131, size: 64, offset: 2368)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !807, file: !538, line: 480, baseType: !131, size: 64, offset: 2432)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !807, file: !538, line: 482, baseType: !895, size: 2816, offset: 2496)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 2816, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 44)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !807, file: !538, line: 488, baseType: !899, size: 256, offset: 5312)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !900, line: 60, size: 256, elements: !901)
!900 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !899, file: !900, line: 61, baseType: !903, size: 256)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 256, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 4)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !807, file: !538, line: 490, baseType: !907, size: 64, offset: 5568)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !538, line: 490, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !807, file: !538, line: 493, baseType: !910, size: 896, offset: 5632)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !911, line: 53, baseType: !912)
!911 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !911, line: 13, size: 896, elements: !913)
!913 = !{!914, !915, !916, !917, !920, !921, !928, !929, !949, !950, !951}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !912, file: !911, line: 18, baseType: !219, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !912, file: !911, line: 28, baseType: !602, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !912, file: !911, line: 31, baseType: !596, size: 256, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !912, file: !911, line: 32, baseType: !918, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !911, line: 32, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !912, file: !911, line: 37, baseType: !232, size: 16, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !911, line: 40, baseType: !922, size: 192, offset: 512)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !923, line: 53, size: 192, elements: !924)
!923 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !922, file: !923, line: 54, baseType: !600, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !922, file: !923, line: 55, baseType: !558, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !922, file: !923, line: 59, baseType: !410, size: 128, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !912, file: !911, line: 41, baseType: !122, size: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !912, file: !911, line: 42, baseType: !930, size: 64, offset: 768)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !933, line: 13, size: 896, elements: !934)
!933 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !932, file: !933, line: 14, baseType: !122, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !932, file: !933, line: 15, baseType: !131, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !932, file: !933, line: 17, baseType: !131, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !932, file: !933, line: 17, baseType: !131, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !932, file: !933, line: 19, baseType: !132, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !932, file: !933, line: 21, baseType: !132, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !932, file: !933, line: 22, baseType: !132, size: 64, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !932, file: !933, line: 23, baseType: !132, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !932, file: !933, line: 24, baseType: !132, size: 64, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !932, file: !933, line: 25, baseType: !132, size: 64, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !932, file: !933, line: 26, baseType: !132, size: 64, offset: 640)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !932, file: !933, line: 27, baseType: !132, size: 64, offset: 704)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !932, file: !933, line: 28, baseType: !132, size: 64, offset: 768)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !932, file: !933, line: 29, baseType: !132, size: 64, offset: 832)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !912, file: !911, line: 44, baseType: !576, size: 32, offset: 832)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !912, file: !911, line: 50, baseType: !688, size: 16, offset: 864)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !912, file: !911, line: 51, baseType: !952, size: 16, offset: 880)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !214, line: 18, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !216, line: 23, baseType: !954)
!954 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !538, line: 495, baseType: !131, size: 64, offset: 6528)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !807, file: !538, line: 497, baseType: !957, size: 64, offset: 6592)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !538, line: 381, size: 384, elements: !959)
!959 = !{!960, !961, !2064}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !958, file: !538, line: 382, baseType: !576, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !958, file: !538, line: 383, baseType: !962, size: 128, offset: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !538, line: 376, size: 128, elements: !963)
!963 = !{!964, !2062}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !962, file: !538, line: 377, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !967, line: 640, size: 48640, elements: !968)
!967 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !975, !977, !978, !983, !984, !985, !986, !987, !988, !989, !990, !994, !1012, !1023, !1108, !1109, !1110, !1121, !1122, !1124, !1125, !1126, !1127, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1206, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1244, !1246, !1247, !1248, !1260, !1261, !1262, !1263, !1264, !1265, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1289, !1294, !1478, !1479, !1480, !1481, !1485, !1488, !1491, !1494, !1497, !1501, !1602, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1650, !1651, !1652, !1653, !1654, !1659, !1660, !1661, !1664, !1665, !1668, !1671, !1674, !1677, !1720, !1723, !1724, !1803, !1804, !1807, !1808, !1811, !1812, !1813, !1817, !1818, !1819, !1832, !1833, !1834, !1844, !1849, !1852, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !966, file: !967, line: 646, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !971, line: 56, size: 128, elements: !972)
!971 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !971, line: 57, baseType: !131, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !970, file: !971, line: 58, baseType: !213, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !966, file: !967, line: 649, baseType: !976, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !966, file: !967, line: 657, baseType: !122, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !966, file: !967, line: 658, baseType: !979, size: 32, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !107, line: 113, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !107, line: 111, size: 32, elements: !981)
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !980, file: !107, line: 112, baseType: !576, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 660, baseType: !7, size: 32, offset: 288)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !966, file: !967, line: 661, baseType: !7, size: 32, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !966, file: !967, line: 684, baseType: !130, size: 32, offset: 352)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !966, file: !967, line: 686, baseType: !130, size: 32, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !966, file: !967, line: 687, baseType: !130, size: 32, offset: 416)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !966, file: !967, line: 688, baseType: !130, size: 32, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !966, file: !967, line: 689, baseType: !7, size: 32, offset: 480)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !966, file: !967, line: 691, baseType: !991, size: 64, offset: 512)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !967, line: 691, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !966, file: !967, line: 692, baseType: !995, size: 832, offset: 576)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !967, line: 451, size: 832, elements: !996)
!996 = !{!997, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !995, file: !967, line: 453, baseType: !998, size: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !967, line: 325, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !998, file: !967, line: 326, baseType: !131, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !998, file: !967, line: 327, baseType: !213, size: 32, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !995, file: !967, line: 454, baseType: !589, size: 192, align: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !995, file: !967, line: 455, baseType: !410, size: 128, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !995, file: !967, line: 456, baseType: !7, size: 32, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !995, file: !967, line: 458, baseType: !219, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !995, file: !967, line: 459, baseType: !219, size: 64, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !995, file: !967, line: 460, baseType: !219, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !995, file: !967, line: 461, baseType: !219, size: 64, offset: 704)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !995, file: !967, line: 463, baseType: !219, size: 64, offset: 768)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !995, file: !967, line: 465, baseType: !1011, offset: 832)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !967, line: 415, elements: !459)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !966, file: !967, line: 693, baseType: !1013, size: 384, offset: 1408)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !967, line: 489, size: 384, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1013, file: !967, line: 490, baseType: !410, size: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1013, file: !967, line: 491, baseType: !131, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1013, file: !967, line: 492, baseType: !131, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1013, file: !967, line: 493, baseType: !7, size: 32, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1013, file: !967, line: 494, baseType: !232, size: 16, offset: 288)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1013, file: !967, line: 495, baseType: !232, size: 16, offset: 304)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1013, file: !967, line: 497, baseType: !1022, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !966, file: !967, line: 697, baseType: !1024, size: 1792, offset: 1792)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !967, line: 507, size: 1792, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1105, !1106}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1024, file: !967, line: 508, baseType: !589, size: 192, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1024, file: !967, line: 515, baseType: !219, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1024, file: !967, line: 516, baseType: !219, size: 64, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1024, file: !967, line: 517, baseType: !219, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1024, file: !967, line: 518, baseType: !219, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1024, file: !967, line: 519, baseType: !219, size: 64, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1024, file: !967, line: 526, baseType: !606, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1024, file: !967, line: 527, baseType: !219, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1024, file: !967, line: 528, baseType: !7, size: 32, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1024, file: !967, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1024, file: !967, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1024, file: !967, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1024, file: !967, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1024, file: !967, line: 563, baseType: !1040, size: 512, offset: 704)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !1041)
!1041 = !{!1042, !1050, !1051, !1056, !1099, !1102, !1103, !1104}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1040, file: !21, line: 119, baseType: !1043, size: 256)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1044, line: 9, size: 256, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1043, file: !1044, line: 10, baseType: !589, size: 192, align: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1043, file: !1044, line: 11, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1049, line: 29, baseType: !606)
!1049 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1040, file: !21, line: 120, baseType: !1048, size: 64, offset: 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1040, file: !21, line: 121, baseType: !1052, size: 64, offset: 320)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!20, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1040, file: !21, line: 122, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !1059)
!1059 = !{!1060, !1080, !1081, !1084, !1089, !1090, !1094, !1098}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1058, file: !21, line: 160, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1062, file: !21, line: 215, baseType: !609)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1062, file: !21, line: 216, baseType: !7, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1062, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1062, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1062, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1062, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1062, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1062, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1062, file: !21, line: 233, baseType: !1048, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1062, file: !21, line: 234, baseType: !1055, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1062, file: !21, line: 235, baseType: !1048, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1062, file: !21, line: 236, baseType: !1055, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1062, file: !21, line: 237, baseType: !1077, size: 4096, offset: 512)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 4096, elements: !1078)
!1078 = !{!1079}
!1079 = !DISubrange(count: 8)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1058, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1058, file: !21, line: 162, baseType: !1082, size: 32, offset: 96)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 27, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !148, line: 96, baseType: !130)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1058, file: !21, line: 163, baseType: !1085, size: 32, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !186, line: 276, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !186, line: 276, size: 32, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1086, file: !186, line: 276, baseType: !190, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1058, file: !21, line: 164, baseType: !1055, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1058, file: !21, line: 165, baseType: !1091, size: 128, offset: 256)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1044, line: 14, size: 128, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1091, file: !1044, line: 15, baseType: !581, size: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1058, file: !21, line: 166, baseType: !1095, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1048}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1058, file: !21, line: 167, baseType: !1048, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1040, file: !21, line: 123, baseType: !1100, size: 8, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !214, line: 17, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !216, line: 21, baseType: !225)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1040, file: !21, line: 124, baseType: !1100, size: 8, offset: 456)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1040, file: !21, line: 125, baseType: !1100, size: 8, offset: 464)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1040, file: !21, line: 126, baseType: !1100, size: 8, offset: 472)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1024, file: !967, line: 572, baseType: !1040, size: 512, offset: 1216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1024, file: !967, line: 580, baseType: !1107, size: 64, offset: 1728)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !966, file: !967, line: 721, baseType: !7, size: 32, offset: 3584)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !966, file: !967, line: 722, baseType: !130, size: 32, offset: 3616)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !966, file: !967, line: 723, baseType: !1111, size: 64, offset: 3648)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1114, line: 17, baseType: !1115)
!1114 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1114, line: 17, size: 64, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1115, file: !1114, line: 17, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 64, elements: !1119)
!1119 = !{!1120}
!1120 = !DISubrange(count: 1)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !966, file: !967, line: 724, baseType: !1113, size: 64, offset: 3712)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !966, file: !967, line: 749, baseType: !1123, offset: 3776)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !967, line: 290, elements: !459)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !966, file: !967, line: 751, baseType: !410, size: 128, offset: 3776)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !966, file: !967, line: 757, baseType: !803, size: 64, offset: 3904)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !966, file: !967, line: 758, baseType: !803, size: 64, offset: 3968)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !966, file: !967, line: 761, baseType: !1128, size: 320, offset: 4032)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !900, line: 34, size: 320, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1128, file: !900, line: 35, baseType: !219, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1128, file: !900, line: 36, baseType: !1132, size: 256, offset: 64)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 256, elements: !904)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !966, file: !967, line: 766, baseType: !130, size: 32, offset: 4352)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !966, file: !967, line: 767, baseType: !130, size: 32, offset: 4384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !966, file: !967, line: 768, baseType: !130, size: 32, offset: 4416)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !966, file: !967, line: 770, baseType: !130, size: 32, offset: 4448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !966, file: !967, line: 772, baseType: !131, size: 64, offset: 4480)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !966, file: !967, line: 775, baseType: !7, size: 32, offset: 4544)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !966, file: !967, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !966, file: !967, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !966, file: !967, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !966, file: !967, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !966, file: !967, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !966, file: !967, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !966, file: !967, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !966, file: !967, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !966, file: !967, line: 831, baseType: !131, size: 64, offset: 4672)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !966, file: !967, line: 833, baseType: !1149, size: 384, offset: 4736)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !1150)
!1150 = !{!1151, !1156}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1149, file: !26, line: 26, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!132, !1155}
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !26, line: 27, baseType: !1157, size: 320, offset: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1149, file: !26, line: 27, size: 320, elements: !1158)
!1158 = !{!1159, !1169, !1196}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1157, file: !26, line: 36, baseType: !1160, size: 320)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !26, line: 29, size: 320, elements: !1161)
!1161 = !{!1162, !1164, !1165, !1166, !1167, !1168}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1160, file: !26, line: 30, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1160, file: !26, line: 31, baseType: !213, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1160, file: !26, line: 32, baseType: !213, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1160, file: !26, line: 33, baseType: !213, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1160, file: !26, line: 34, baseType: !219, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1160, file: !26, line: 35, baseType: !1163, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1157, file: !26, line: 46, baseType: !1170, size: 192)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !26, line: 38, size: 192, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1195}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1170, file: !26, line: 39, baseType: !1082, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1170, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !26, line: 41, baseType: !1175, size: 64, offset: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !26, line: 41, size: 64, elements: !1176)
!1176 = !{!1177, !1185}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1175, file: !26, line: 42, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1180, line: 7, size: 128, elements: !1181)
!1180 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1181 = !{!1182, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1179, file: !1180, line: 8, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !148, line: 93, baseType: !149)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1179, file: !1180, line: 9, baseType: !149, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1175, file: !26, line: 43, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1188, line: 7, size: 64, elements: !1189)
!1188 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1194}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1187, file: !1188, line: 8, baseType: !1191, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1188, line: 5, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !214, line: 20, baseType: !1193)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !216, line: 26, baseType: !130)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1187, file: !1188, line: 9, baseType: !1192, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1170, file: !26, line: 45, baseType: !219, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1157, file: !26, line: 54, baseType: !1197, size: 256)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !26, line: 48, size: 256, elements: !1198)
!1198 = !{!1199, !1202, !1203, !1204, !1205}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1197, file: !26, line: 49, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1197, file: !26, line: 50, baseType: !130, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1197, file: !26, line: 51, baseType: !130, size: 32, offset: 96)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1197, file: !26, line: 52, baseType: !131, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1197, file: !26, line: 53, baseType: !131, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !966, file: !967, line: 835, baseType: !1207, size: 32, offset: 5120)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 22, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !148, line: 28, baseType: !130)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !966, file: !967, line: 836, baseType: !1207, size: 32, offset: 5152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !966, file: !967, line: 840, baseType: !131, size: 64, offset: 5184)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !966, file: !967, line: 849, baseType: !965, size: 64, offset: 5248)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !966, file: !967, line: 852, baseType: !965, size: 64, offset: 5312)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !966, file: !967, line: 857, baseType: !410, size: 128, offset: 5376)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !966, file: !967, line: 858, baseType: !410, size: 128, offset: 5504)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !966, file: !967, line: 859, baseType: !965, size: 64, offset: 5632)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !966, file: !967, line: 867, baseType: !410, size: 128, offset: 5696)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !966, file: !967, line: 868, baseType: !410, size: 128, offset: 5824)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !966, file: !967, line: 871, baseType: !1219, size: 64, offset: 5952)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1227, !1228, !1235, !1236}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1220, file: !47, line: 61, baseType: !979, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1220, file: !47, line: 62, baseType: !7, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1220, file: !47, line: 63, baseType: !558, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1220, file: !47, line: 65, baseType: !1226, size: 256, offset: 64)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 256, elements: !904)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1220, file: !47, line: 66, baseType: !447, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1220, file: !47, line: 68, baseType: !1229, size: 128, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1230, line: 40, baseType: !1231)
!1230 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1230, line: 36, size: 128, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1231, file: !1230, line: 37, baseType: !558)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1231, file: !1230, line: 38, baseType: !410, size: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1220, file: !47, line: 69, baseType: !163, size: 128, align: 64, offset: 512)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1220, file: !47, line: 70, baseType: !1237, size: 128, offset: 640)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 128, elements: !1119)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !1239)
!1239 = !{!1240, !1241}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1238, file: !47, line: 55, baseType: !130, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1238, file: !47, line: 56, baseType: !1242, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !966, file: !967, line: 872, baseType: !1245, size: 512, offset: 6016)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 512, elements: !904)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !966, file: !967, line: 873, baseType: !410, size: 128, offset: 6528)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !966, file: !967, line: 874, baseType: !410, size: 128, offset: 6656)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !966, file: !967, line: 876, baseType: !1249, size: 64, offset: 6784)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1251, line: 26, size: 192, elements: !1252)
!1251 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1250, file: !1251, line: 27, baseType: !7, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1250, file: !1251, line: 28, baseType: !1255, size: 128, offset: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1256, line: 43, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1255, file: !1256, line: 44, baseType: !609)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1255, file: !1256, line: 45, baseType: !410, size: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !966, file: !967, line: 879, baseType: !520, size: 64, offset: 6848)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !966, file: !967, line: 882, baseType: !520, size: 64, offset: 6912)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !966, file: !967, line: 884, baseType: !219, size: 64, offset: 6976)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !966, file: !967, line: 885, baseType: !219, size: 64, offset: 7040)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !966, file: !967, line: 890, baseType: !219, size: 64, offset: 7104)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !966, file: !967, line: 891, baseType: !1266, size: 128, offset: 7168)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !967, line: 242, size: 128, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1266, file: !967, line: 244, baseType: !219, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1266, file: !967, line: 245, baseType: !219, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1266, file: !967, line: 246, baseType: !609, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !966, file: !967, line: 900, baseType: !131, size: 64, offset: 7296)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !966, file: !967, line: 901, baseType: !131, size: 64, offset: 7360)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !966, file: !967, line: 904, baseType: !219, size: 64, offset: 7424)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !966, file: !967, line: 907, baseType: !219, size: 64, offset: 7488)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !966, file: !967, line: 910, baseType: !131, size: 64, offset: 7552)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !966, file: !967, line: 911, baseType: !131, size: 64, offset: 7616)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !966, file: !967, line: 914, baseType: !1278, size: 640, offset: 7680)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1279, line: 123, size: 640, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !{!1281, !1287, !1288}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1278, file: !1279, line: 124, baseType: !1282, size: 576)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 576, elements: !464)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1279, line: 108, size: 192, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1283, file: !1279, line: 109, baseType: !219, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1283, file: !1279, line: 110, baseType: !1091, size: 128, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1278, file: !1279, line: 125, baseType: !7, size: 32, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1278, file: !1279, line: 126, baseType: !7, size: 32, offset: 608)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !966, file: !967, line: 917, baseType: !1290, size: 192, offset: 8320)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1279, line: 134, size: 192, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1290, file: !1279, line: 135, baseType: !163, size: 128, align: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1290, file: !1279, line: 136, baseType: !7, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !966, file: !967, line: 923, baseType: !1295, size: 64, offset: 8512)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1298, line: 111, size: 1280, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1319, !1320, !1321, !1322, !1323, !1324, !1431, !1432, !1433, !1434, !1460, !1463, !1473}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1297, file: !1298, line: 112, baseType: !576, size: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1297, file: !1298, line: 120, baseType: !235, size: 32, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1297, file: !1298, line: 121, baseType: !243, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1297, file: !1298, line: 122, baseType: !235, size: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1297, file: !1298, line: 123, baseType: !243, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1297, file: !1298, line: 124, baseType: !235, size: 32, offset: 160)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1297, file: !1298, line: 125, baseType: !243, size: 32, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1297, file: !1298, line: 126, baseType: !235, size: 32, offset: 224)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1297, file: !1298, line: 127, baseType: !243, size: 32, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1297, file: !1298, line: 128, baseType: !7, size: 32, offset: 288)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1297, file: !1298, line: 129, baseType: !1311, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1312, line: 26, baseType: !1313)
!1312 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1312, line: 24, size: 64, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1313, file: !1312, line: 25, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 2)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1297, file: !1298, line: 130, baseType: !1311, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1297, file: !1298, line: 131, baseType: !1311, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1297, file: !1298, line: 132, baseType: !1311, size: 64, offset: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1297, file: !1298, line: 133, baseType: !1311, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1297, file: !1298, line: 135, baseType: !225, size: 8, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1297, file: !1298, line: 137, baseType: !1325, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1327, line: 189, size: 1664, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1330, !1333, !1338, !1339, !1342, !1343, !1348, !1349, !1350, !1351, !1353, !1354, !1355, !1356, !1357, !1395, !1416}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1326, file: !1327, line: 190, baseType: !979, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1326, file: !1327, line: 191, baseType: !1331, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1327, line: 28, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !124, line: 98, baseType: !1192)
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1327, line: 192, baseType: !1334, size: 192, offset: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1327, line: 192, size: 192, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1334, file: !1327, line: 193, baseType: !410, size: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1334, file: !1327, line: 194, baseType: !589, size: 192, align: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1326, file: !1327, line: 199, baseType: !596, size: 256, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1326, file: !1327, line: 200, baseType: !1340, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1327, line: 200, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1326, file: !1327, line: 201, baseType: !122, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1327, line: 202, baseType: !1344, size: 64, offset: 640)
!1344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1327, line: 202, size: 64, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1344, file: !1327, line: 203, baseType: !340, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1344, file: !1327, line: 204, baseType: !340, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1326, file: !1327, line: 206, baseType: !340, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1326, file: !1327, line: 207, baseType: !235, size: 32, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1326, file: !1327, line: 208, baseType: !243, size: 32, offset: 800)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1326, file: !1327, line: 209, baseType: !1352, size: 32, offset: 832)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1327, line: 31, baseType: !360)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1326, file: !1327, line: 210, baseType: !232, size: 16, offset: 864)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1326, file: !1327, line: 211, baseType: !232, size: 16, offset: 880)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1326, file: !1327, line: 215, baseType: !954, size: 16, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1326, file: !1327, line: 222, baseType: !131, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1327, line: 239, baseType: !1358, size: 320, offset: 1024)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1327, line: 239, size: 320, elements: !1359)
!1359 = !{!1360, !1387}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1358, file: !1327, line: 240, baseType: !1361, size: 320)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1327, line: 108, size: 320, elements: !1362)
!1362 = !{!1363, !1364, !1376, !1379, !1386}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1361, file: !1327, line: 110, baseType: !131, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1327, line: 111, baseType: !1365, size: 64, offset: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1327, line: 111, size: 64, elements: !1366)
!1366 = !{!1367, !1375}
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1327, line: 112, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1327, line: 112, size: 64, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1368, file: !1327, line: 114, baseType: !688, size: 16)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1368, file: !1327, line: 115, baseType: !1372, size: 48, offset: 16)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 48, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 6)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1365, file: !1327, line: 121, baseType: !131, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1361, file: !1327, line: 123, baseType: !1377, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1327, line: 96, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1361, file: !1327, line: 124, baseType: !1380, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1327, line: 102, size: 192, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1381, file: !1327, line: 103, baseType: !163, size: 128, align: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1381, file: !1327, line: 104, baseType: !979, size: 32, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1381, file: !1327, line: 105, baseType: !294, size: 8, offset: 160)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1361, file: !1327, line: 125, baseType: !263, size: 64, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !1327, line: 241, baseType: !1388, size: 320)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1358, file: !1327, line: 241, size: 320, elements: !1389)
!1389 = !{!1390, !1391, !1392, !1393, !1394}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1388, file: !1327, line: 242, baseType: !131, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1388, file: !1327, line: 243, baseType: !131, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1388, file: !1327, line: 244, baseType: !1377, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1388, file: !1327, line: 245, baseType: !1380, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1388, file: !1327, line: 246, baseType: !289, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1327, line: 254, baseType: !1396, size: 256, offset: 1344)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1327, line: 254, size: 256, elements: !1397)
!1397 = !{!1398, !1404}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1396, file: !1327, line: 255, baseType: !1399, size: 256)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1327, line: 128, size: 256, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1399, file: !1327, line: 129, baseType: !122, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1399, file: !1327, line: 130, baseType: !1403, size: 256)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !904)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1327, line: 256, baseType: !1405, size: 256)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !1327, line: 256, size: 256, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1405, file: !1327, line: 258, baseType: !410, size: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1405, file: !1327, line: 259, baseType: !1409, size: 128, offset: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1410, line: 22, size: 128, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1411 = !{!1412, !1415}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1409, file: !1410, line: 23, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1410, line: 23, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1409, file: !1410, line: 24, baseType: !131, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1326, file: !1327, line: 274, baseType: !1417, size: 64, offset: 1600)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1327, line: 170, size: 192, elements: !1419)
!1419 = !{!1420, !1429, !1430}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1418, file: !1327, line: 171, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1327, line: 165, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!130, !1325, !1425, !1427, !1325}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1418, file: !1327, line: 172, baseType: !1325, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1418, file: !1327, line: 173, baseType: !1377, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1297, file: !1298, line: 138, baseType: !1325, size: 64, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1297, file: !1298, line: 139, baseType: !1325, size: 64, offset: 832)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1297, file: !1298, line: 140, baseType: !1325, size: 64, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1297, file: !1298, line: 145, baseType: !1435, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1437, line: 13, size: 896, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1436, file: !1437, line: 14, baseType: !979, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1436, file: !1437, line: 15, baseType: !576, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1436, file: !1437, line: 16, baseType: !576, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1436, file: !1437, line: 21, baseType: !600, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1436, file: !1437, line: 27, baseType: !131, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1436, file: !1437, line: 28, baseType: !131, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1436, file: !1437, line: 29, baseType: !600, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1436, file: !1437, line: 32, baseType: !451, size: 128, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1436, file: !1437, line: 33, baseType: !235, size: 32, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1436, file: !1437, line: 37, baseType: !600, size: 64, offset: 576)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1436, file: !1437, line: 44, baseType: !1450, size: 256, offset: 640)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1451, line: 15, size: 256, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1450, file: !1451, line: 16, baseType: !609)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1450, file: !1451, line: 18, baseType: !130, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1450, file: !1451, line: 19, baseType: !130, size: 32, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1450, file: !1451, line: 20, baseType: !130, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1450, file: !1451, line: 21, baseType: !130, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1450, file: !1451, line: 22, baseType: !131, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1451, line: 23, baseType: !131, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1297, file: !1298, line: 146, baseType: !1461, size: 64, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !236, line: 18, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1297, file: !1298, line: 147, baseType: !1464, size: 64, offset: 1088)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1298, line: 25, size: 64, elements: !1466)
!1466 = !{!1467, !1468, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1465, file: !1298, line: 26, baseType: !576, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1465, file: !1298, line: 27, baseType: !130, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1465, file: !1298, line: 28, baseType: !1470, offset: 64)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !1471)
!1471 = !{!1472}
!1472 = !DISubrange(count: 0)
!1473 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !1298, line: 149, baseType: !1474, size: 128, offset: 1152)
!1474 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !1298, line: 149, size: 128, elements: !1475)
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1474, file: !1298, line: 150, baseType: !130, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1474, file: !1298, line: 151, baseType: !163, size: 128, align: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !966, file: !967, line: 926, baseType: !1295, size: 64, offset: 8576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !966, file: !967, line: 929, baseType: !1295, size: 64, offset: 8640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !966, file: !967, line: 933, baseType: !1325, size: 64, offset: 8704)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !966, file: !967, line: 943, baseType: !1482, size: 128, offset: 8768)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !1483)
!1483 = !{!1484}
!1484 = !DISubrange(count: 16)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !966, file: !967, line: 945, baseType: !1486, size: 64, offset: 8896)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !967, line: 49, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !966, file: !967, line: 956, baseType: !1489, size: 64, offset: 8960)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !967, line: 45, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !966, file: !967, line: 959, baseType: !1492, size: 64, offset: 9024)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !967, line: 959, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !966, file: !967, line: 962, baseType: !1495, size: 64, offset: 9088)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !967, line: 66, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !966, file: !967, line: 966, baseType: !1498, size: 64, offset: 9152)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1500, line: 35, flags: DIFlagFwdDecl)
!1500 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !966, file: !967, line: 969, baseType: !1502, size: 64, offset: 9216)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1504, line: 82, size: 7296, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1541, !1550, !1551, !1553, !1554, !1555, !1558, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1588, !1589, !1596, !1597, !1598, !1599, !1600, !1601}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1503, file: !1504, line: 83, baseType: !979, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1503, file: !1504, line: 84, baseType: !576, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1503, file: !1504, line: 85, baseType: !130, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1503, file: !1504, line: 86, baseType: !410, size: 128, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1503, file: !1504, line: 88, baseType: !1229, size: 128, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1503, file: !1504, line: 91, baseType: !965, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1503, file: !1504, line: 94, baseType: !1513, size: 192, offset: 448)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1514, line: 30, size: 192, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1513, file: !1514, line: 31, baseType: !410, size: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1513, file: !1514, line: 32, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1519, line: 25, baseType: !1520)
!1519 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1519, line: 23, size: 64, elements: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1520, file: !1519, line: 24, baseType: !1118, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1503, file: !1504, line: 97, baseType: !447, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1503, file: !1504, line: 100, baseType: !130, size: 32, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1503, file: !1504, line: 106, baseType: !130, size: 32, offset: 736)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1503, file: !1504, line: 107, baseType: !965, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1503, file: !1504, line: 110, baseType: !130, size: 32, offset: 832)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1503, file: !1504, line: 111, baseType: !7, size: 32, offset: 864)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1503, file: !1504, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1503, file: !1504, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1503, file: !1504, line: 128, baseType: !130, size: 32, offset: 928)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1503, file: !1504, line: 129, baseType: !410, size: 128, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1503, file: !1504, line: 132, baseType: !1040, size: 512, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1503, file: !1504, line: 133, baseType: !1048, size: 64, offset: 1600)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1503, file: !1504, line: 140, baseType: !1536, size: 256, offset: 1664)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1537, size: 256, elements: !1317)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1504, line: 38, size: 128, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1537, file: !1504, line: 39, baseType: !219, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1537, file: !1504, line: 40, baseType: !219, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1503, file: !1504, line: 146, baseType: !1542, size: 192, offset: 1920)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1504, line: 66, size: 192, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1542, file: !1504, line: 67, baseType: !1545, size: 192)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1504, line: 47, size: 192, elements: !1546)
!1546 = !{!1547, !1548, !1549}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1545, file: !1504, line: 48, baseType: !602, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1545, file: !1504, line: 49, baseType: !602, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1545, file: !1504, line: 50, baseType: !602, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1503, file: !1504, line: 150, baseType: !1278, size: 640, offset: 2112)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1503, file: !1504, line: 153, baseType: !1552, size: 256, offset: 2752)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 256, elements: !904)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1503, file: !1504, line: 159, baseType: !1219, size: 64, offset: 3008)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1503, file: !1504, line: 162, baseType: !130, size: 32, offset: 3072)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1503, file: !1504, line: 164, baseType: !1556, size: 64, offset: 3136)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1504, line: 164, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1503, file: !1504, line: 175, baseType: !1559, size: 32, offset: 3200)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !186, line: 805, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 798, size: 32, elements: !1561)
!1561 = !{!1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1560, file: !186, line: 803, baseType: !185, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1560, file: !186, line: 804, baseType: !558, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1503, file: !1504, line: 176, baseType: !219, size: 64, offset: 3264)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1503, file: !1504, line: 176, baseType: !219, size: 64, offset: 3328)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1503, file: !1504, line: 176, baseType: !219, size: 64, offset: 3392)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1503, file: !1504, line: 176, baseType: !219, size: 64, offset: 3456)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1503, file: !1504, line: 177, baseType: !219, size: 64, offset: 3520)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1503, file: !1504, line: 178, baseType: !219, size: 64, offset: 3584)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1503, file: !1504, line: 179, baseType: !1266, size: 128, offset: 3648)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1503, file: !1504, line: 180, baseType: !131, size: 64, offset: 3776)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1503, file: !1504, line: 180, baseType: !131, size: 64, offset: 3840)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1503, file: !1504, line: 180, baseType: !131, size: 64, offset: 3904)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1503, file: !1504, line: 180, baseType: !131, size: 64, offset: 3968)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1503, file: !1504, line: 181, baseType: !131, size: 64, offset: 4032)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1503, file: !1504, line: 181, baseType: !131, size: 64, offset: 4096)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1503, file: !1504, line: 181, baseType: !131, size: 64, offset: 4160)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1503, file: !1504, line: 181, baseType: !131, size: 64, offset: 4224)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1503, file: !1504, line: 182, baseType: !131, size: 64, offset: 4288)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1503, file: !1504, line: 182, baseType: !131, size: 64, offset: 4352)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1503, file: !1504, line: 182, baseType: !131, size: 64, offset: 4416)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1503, file: !1504, line: 182, baseType: !131, size: 64, offset: 4480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1503, file: !1504, line: 183, baseType: !131, size: 64, offset: 4544)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1503, file: !1504, line: 183, baseType: !131, size: 64, offset: 4608)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1503, file: !1504, line: 184, baseType: !1586, offset: 4672)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1587, line: 12, elements: !459)
!1587 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1503, file: !1504, line: 192, baseType: !221, size: 64, offset: 4672)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1503, file: !1504, line: 203, baseType: !1590, size: 2048, offset: 4736)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1591, size: 2048, elements: !1483)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1592, line: 43, size: 128, elements: !1593)
!1592 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1591, file: !1592, line: 44, baseType: !384, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1591, file: !1592, line: 45, baseType: !384, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1503, file: !1504, line: 220, baseType: !294, size: 8, offset: 6784)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1503, file: !1504, line: 221, baseType: !954, size: 16, offset: 6800)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1503, file: !1504, line: 222, baseType: !954, size: 16, offset: 6816)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1503, file: !1504, line: 224, baseType: !803, size: 64, offset: 6848)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1503, file: !1504, line: 227, baseType: !922, size: 192, offset: 6912)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1503, file: !1504, line: 233, baseType: !922, size: 192, offset: 7104)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !966, file: !967, line: 970, baseType: !1603, size: 64, offset: 9280)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1504, line: 20, size: 16576, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1604, file: !1504, line: 21, baseType: !558)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1604, file: !1504, line: 22, baseType: !979, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1604, file: !1504, line: 23, baseType: !1229, size: 128, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1604, file: !1504, line: 24, baseType: !1610, size: 16384, offset: 192)
!1610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1611, size: 16384, elements: !1631)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1514, line: 49, size: 256, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1611, file: !1514, line: 50, baseType: !1614, size: 256)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1514, line: 35, size: 256, elements: !1615)
!1615 = !{!1616, !1623, !1624, !1630}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1614, file: !1514, line: 37, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1618, line: 19, baseType: !1619)
!1618 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1618, line: 18, baseType: !1621)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !130}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1614, file: !1514, line: 38, baseType: !131, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1614, file: !1514, line: 44, baseType: !1625, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1618, line: 22, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1618, line: 21, baseType: !1628)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1614, file: !1514, line: 46, baseType: !1518, size: 64, offset: 192)
!1631 = !{!1632}
!1632 = !DISubrange(count: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !966, file: !967, line: 971, baseType: !1518, size: 64, offset: 9344)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !966, file: !967, line: 972, baseType: !1518, size: 64, offset: 9408)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !966, file: !967, line: 974, baseType: !1518, size: 64, offset: 9472)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !966, file: !967, line: 975, baseType: !1513, size: 192, offset: 9536)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !966, file: !967, line: 976, baseType: !131, size: 64, offset: 9728)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !966, file: !967, line: 977, baseType: !382, size: 64, offset: 9792)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !966, file: !967, line: 978, baseType: !7, size: 32, offset: 9856)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !966, file: !967, line: 980, baseType: !166, size: 64, offset: 9920)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !966, file: !967, line: 989, baseType: !1642, size: 128, offset: 9984)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1643, line: 35, size: 128, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1642, file: !1643, line: 36, baseType: !130, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1642, file: !1643, line: 37, baseType: !576, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1642, file: !1643, line: 38, baseType: !1648, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1643, line: 23, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !966, file: !967, line: 992, baseType: !219, size: 64, offset: 10112)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !966, file: !967, line: 993, baseType: !219, size: 64, offset: 10176)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !966, file: !967, line: 996, baseType: !558, offset: 10240)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !966, file: !967, line: 999, baseType: !609, offset: 10240)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !966, file: !967, line: 1001, baseType: !1655, size: 64, offset: 10240)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !967, line: 636, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1655, file: !967, line: 637, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !966, file: !967, line: 1005, baseType: !581, size: 128, offset: 10304)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !966, file: !967, line: 1007, baseType: !965, size: 64, offset: 10432)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !966, file: !967, line: 1009, baseType: !1662, size: 64, offset: 10496)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !967, line: 1009, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !966, file: !967, line: 1043, baseType: !122, size: 64, offset: 10560)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !966, file: !967, line: 1046, baseType: !1666, size: 64, offset: 10624)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !967, line: 41, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !966, file: !967, line: 1050, baseType: !1669, size: 64, offset: 10688)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !967, line: 42, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !966, file: !967, line: 1054, baseType: !1672, size: 64, offset: 10752)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !967, line: 55, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !966, file: !967, line: 1056, baseType: !1675, size: 64, offset: 10816)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !967, line: 40, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !966, file: !967, line: 1058, baseType: !1678, size: 64, offset: 10880)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1680, line: 99, size: 704, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1707, !1708}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1679, file: !1680, line: 100, baseType: !600, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1679, file: !1680, line: 101, baseType: !576, size: 32, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1679, file: !1680, line: 102, baseType: !576, size: 32, offset: 96)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1679, file: !1680, line: 105, baseType: !558, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1679, file: !1680, line: 107, baseType: !232, size: 16, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1679, file: !1680, line: 109, baseType: !554, size: 128, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1679, file: !1680, line: 110, baseType: !1689, size: 64, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1680, line: 73, size: 448, elements: !1691)
!1691 = !{!1692, !1695, !1696, !1701, !1706}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1690, file: !1680, line: 74, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1680, line: 74, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1690, file: !1680, line: 75, baseType: !1678, size: 64, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1680, line: 83, baseType: !1697, size: 128, offset: 128)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !1680, line: 83, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1697, file: !1680, line: 84, baseType: !410, size: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1697, file: !1680, line: 85, baseType: !764, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1680, line: 87, baseType: !1702, size: 128, offset: 256)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !1680, line: 87, size: 128, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1702, file: !1680, line: 88, baseType: !451, size: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1702, file: !1680, line: 89, baseType: !163, size: 128, align: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !1680, line: 92, baseType: !7, size: 32, offset: 384)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1679, file: !1680, line: 111, baseType: !447, size: 64, offset: 384)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1679, file: !1680, line: 113, baseType: !1709, size: 256, offset: 448)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1710, line: 102, size: 256, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1714}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1709, file: !1710, line: 103, baseType: !600, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1709, file: !1710, line: 104, baseType: !410, size: 128, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1709, file: !1710, line: 105, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1710, line: 21, baseType: !1716)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !966, file: !967, line: 1061, baseType: !1721, size: 64, offset: 10944)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !967, line: 43, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !966, file: !967, line: 1064, baseType: !131, size: 64, offset: 11008)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !966, file: !967, line: 1065, baseType: !1725, size: 64, offset: 11072)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1514, line: 14, baseType: !1727)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1514, line: 12, size: 384, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1727, file: !1514, line: 13, baseType: !1730, size: 384)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1727, file: !1514, line: 13, size: 384, elements: !1731)
!1731 = !{!1732, !1733, !1734, !1735}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1730, file: !1514, line: 13, baseType: !130, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1730, file: !1514, line: 13, baseType: !130, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1730, file: !1514, line: 13, baseType: !130, size: 32, offset: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1730, file: !1514, line: 13, baseType: !1736, size: 256, offset: 128)
!1736 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1737, line: 32, size: 256, elements: !1738)
!1737 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1738 = !{!1739, !1744, !1757, !1763, !1772, !1792, !1797}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1736, file: !1737, line: 37, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !1737, line: 34, size: 64, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1740, file: !1737, line: 35, baseType: !1208, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1740, file: !1737, line: 36, baseType: !241, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1736, file: !1737, line: 45, baseType: !1745, size: 192)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !1737, line: 40, size: 192, elements: !1746)
!1746 = !{!1747, !1749, !1750, !1756}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1745, file: !1737, line: 41, baseType: !1748, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !148, line: 95, baseType: !130)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1745, file: !1737, line: 42, baseType: !130, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1745, file: !1737, line: 43, baseType: !1751, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1737, line: 11, baseType: !1752)
!1752 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1737, line: 8, size: 64, elements: !1753)
!1753 = !{!1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1752, file: !1737, line: 9, baseType: !130, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1752, file: !1737, line: 10, baseType: !122, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1745, file: !1737, line: 44, baseType: !130, size: 32, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1736, file: !1737, line: 52, baseType: !1758, size: 128)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !1737, line: 48, size: 128, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1758, file: !1737, line: 49, baseType: !1208, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1758, file: !1737, line: 50, baseType: !241, size: 32, offset: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1758, file: !1737, line: 51, baseType: !1751, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1736, file: !1737, line: 61, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !1737, line: 55, size: 256, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1771}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1764, file: !1737, line: 56, baseType: !1208, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1764, file: !1737, line: 57, baseType: !241, size: 32, offset: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1764, file: !1737, line: 58, baseType: !130, size: 32, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1764, file: !1737, line: 59, baseType: !1770, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !148, line: 94, baseType: !381)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1764, file: !1737, line: 60, baseType: !1770, size: 64, offset: 192)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1736, file: !1737, line: 95, baseType: !1773, size: 256)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !1737, line: 64, size: 256, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1773, file: !1737, line: 65, baseType: !122, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1737, line: 77, baseType: !1777, size: 192, offset: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1737, line: 77, size: 192, elements: !1778)
!1778 = !{!1779, !1780, !1787}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1777, file: !1737, line: 82, baseType: !954, size: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1777, file: !1737, line: 88, baseType: !1781, size: 192)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !1737, line: 84, size: 192, elements: !1782)
!1782 = !{!1783, !1785, !1786}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1781, file: !1737, line: 85, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 64, elements: !1078)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1781, file: !1737, line: 86, baseType: !122, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1781, file: !1737, line: 87, baseType: !122, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1777, file: !1737, line: 93, baseType: !1788, size: 96)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !1737, line: 90, size: 96, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1788, file: !1737, line: 91, baseType: !1784, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1788, file: !1737, line: 92, baseType: !215, size: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1736, file: !1737, line: 101, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !1737, line: 98, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1793, file: !1737, line: 99, baseType: !132, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1793, file: !1737, line: 100, baseType: !130, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1736, file: !1737, line: 108, baseType: !1798, size: 128)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1736, file: !1737, line: 104, size: 128, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1798, file: !1737, line: 105, baseType: !122, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1798, file: !1737, line: 106, baseType: !130, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1798, file: !1737, line: 107, baseType: !7, size: 32, offset: 96)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !966, file: !967, line: 1067, baseType: !1586, offset: 11136)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !966, file: !967, line: 1099, baseType: !1805, size: 64, offset: 11136)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !967, line: 56, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !966, file: !967, line: 1103, baseType: !410, size: 128, offset: 11200)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !966, file: !967, line: 1104, baseType: !1809, size: 64, offset: 11328)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !967, line: 46, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !966, file: !967, line: 1105, baseType: !922, size: 192, offset: 11392)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !966, file: !967, line: 1106, baseType: !7, size: 32, offset: 11584)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !966, file: !967, line: 1109, baseType: !1814, size: 128, offset: 11648)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1815, size: 128, elements: !1317)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !967, line: 51, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !966, file: !967, line: 1110, baseType: !922, size: 192, offset: 11776)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !966, file: !967, line: 1111, baseType: !410, size: 128, offset: 11968)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !966, file: !967, line: 1173, baseType: !1820, size: 64, offset: 12096)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1822, line: 62, size: 256, align: 256, elements: !1823)
!1822 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !{!1824, !1825, !1826, !1831}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1821, file: !1822, line: 75, baseType: !215, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1821, file: !1822, line: 90, baseType: !215, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1821, file: !1822, line: 124, baseType: !1827, size: 64, offset: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !1822, line: 109, size: 64, elements: !1828)
!1828 = !{!1829, !1830}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1827, file: !1822, line: 110, baseType: !220, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1827, file: !1822, line: 112, baseType: !220, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1821, file: !1822, line: 144, baseType: !215, size: 32, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !966, file: !967, line: 1174, baseType: !213, size: 32, offset: 12160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !966, file: !967, line: 1179, baseType: !131, size: 64, offset: 12224)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !966, file: !967, line: 1182, baseType: !1835, size: 128, offset: 12288)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !900, line: 76, size: 128, elements: !1836)
!1836 = !{!1837, !1842, !1843}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1835, file: !900, line: 85, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1839, line: 7, size: 64, elements: !1840)
!1839 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1838, file: !1839, line: 12, baseType: !1115, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1835, file: !900, line: 88, baseType: !294, size: 8, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1835, file: !900, line: 95, baseType: !294, size: 8, offset: 72)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 1184, baseType: !1845, size: 128, offset: 12416)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 1184, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1845, file: !967, line: 1185, baseType: !979, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1845, file: !967, line: 1186, baseType: !163, size: 128, align: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !966, file: !967, line: 1190, baseType: !1850, size: 64, offset: 12544)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !967, line: 53, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !966, file: !967, line: 1192, baseType: !1853, size: 128, offset: 12608)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !900, line: 64, size: 128, elements: !1854)
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1853, file: !900, line: 65, baseType: !536, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1853, file: !900, line: 67, baseType: !215, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1853, file: !900, line: 68, baseType: !215, size: 32, offset: 96)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !966, file: !967, line: 1206, baseType: !130, size: 32, offset: 12736)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !966, file: !967, line: 1207, baseType: !130, size: 32, offset: 12768)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !966, file: !967, line: 1209, baseType: !131, size: 64, offset: 12800)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !966, file: !967, line: 1219, baseType: !219, size: 64, offset: 12864)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !966, file: !967, line: 1220, baseType: !219, size: 64, offset: 12928)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !966, file: !967, line: 1317, baseType: !130, size: 32, offset: 12992)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !966, file: !967, line: 1319, baseType: !965, size: 64, offset: 13056)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !966, file: !967, line: 1322, baseType: !1866, size: 64, offset: 13120)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1868, line: 56, size: 512, elements: !1869)
!1868 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1878}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1867, file: !1868, line: 57, baseType: !1866, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1867, file: !1868, line: 58, baseType: !122, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1867, file: !1868, line: 59, baseType: !131, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1867, file: !1868, line: 60, baseType: !131, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1867, file: !1868, line: 61, baseType: !649, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1867, file: !1868, line: 62, baseType: !7, size: 32, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1867, file: !1868, line: 63, baseType: !1877, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !124, line: 153, baseType: !219)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1867, file: !1868, line: 64, baseType: !1879, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !966, file: !967, line: 1326, baseType: !979, size: 32, offset: 13184)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !966, file: !967, line: 1342, baseType: !122, size: 64, offset: 13248)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !966, file: !967, line: 1343, baseType: !220, size: 64, offset: 13312)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !966, file: !967, line: 1344, baseType: !219, size: 64, offset: 13376)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !966, file: !967, line: 1345, baseType: !220, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !966, file: !967, line: 1346, baseType: !220, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !966, file: !967, line: 1347, baseType: !220, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !966, file: !967, line: 1348, baseType: !163, size: 128, align: 64, offset: 13504)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !966, file: !967, line: 1358, baseType: !1890, size: 34816, offset: 13824)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1891, line: 485, size: 34816, elements: !1892)
!1891 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1922, !1923, !1924, !1925, !1926, !1927, !1930, !1931, !1932}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1890, file: !1891, line: 487, baseType: !1894, size: 192)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 192, elements: !464)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1896, line: 16, size: 64, elements: !1897)
!1896 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1895, file: !1896, line: 17, baseType: !688, size: 16)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1895, file: !1896, line: 18, baseType: !688, size: 16, offset: 16)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1895, file: !1896, line: 19, baseType: !688, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1895, file: !1896, line: 19, baseType: !688, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1895, file: !1896, line: 19, baseType: !688, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1895, file: !1896, line: 19, baseType: !688, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1895, file: !1896, line: 19, baseType: !688, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1895, file: !1896, line: 20, baseType: !688, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1895, file: !1896, line: 20, baseType: !688, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1895, file: !1896, line: 20, baseType: !688, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1895, file: !1896, line: 20, baseType: !688, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1895, file: !1896, line: 20, baseType: !688, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1895, file: !1896, line: 20, baseType: !688, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1890, file: !1891, line: 491, baseType: !131, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1890, file: !1891, line: 495, baseType: !232, size: 16, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1890, file: !1891, line: 496, baseType: !232, size: 16, offset: 272)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1890, file: !1891, line: 497, baseType: !232, size: 16, offset: 288)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1890, file: !1891, line: 498, baseType: !232, size: 16, offset: 304)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1890, file: !1891, line: 502, baseType: !131, size: 64, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1890, file: !1891, line: 503, baseType: !131, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1890, file: !1891, line: 514, baseType: !1919, size: 256, offset: 448)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1920, size: 256, elements: !904)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1891, line: 483, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1890, file: !1891, line: 516, baseType: !131, size: 64, offset: 704)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1890, file: !1891, line: 518, baseType: !131, size: 64, offset: 768)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1890, file: !1891, line: 520, baseType: !131, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1890, file: !1891, line: 521, baseType: !131, size: 64, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1890, file: !1891, line: 522, baseType: !131, size: 64, offset: 960)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1890, file: !1891, line: 528, baseType: !1928, size: 64, offset: 1024)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1891, line: 10, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1890, file: !1891, line: 535, baseType: !131, size: 64, offset: 1088)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1890, file: !1891, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1890, file: !1891, line: 540, baseType: !1933, size: 33280, offset: 1536)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1934, line: 317, size: 33280, elements: !1935)
!1934 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1933, file: !1934, line: 330, baseType: !7, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1933, file: !1934, line: 337, baseType: !131, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1933, file: !1934, line: 348, baseType: !1939, size: 32768, offset: 512)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1934, line: 304, size: 32768, elements: !1940)
!1940 = !{!1941, !1956, !1995, !2045, !2058}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1939, file: !1934, line: 305, baseType: !1942, size: 896)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1934, line: 12, size: 896, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1955}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1942, file: !1934, line: 13, baseType: !213, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1942, file: !1934, line: 14, baseType: !213, size: 32, offset: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1942, file: !1934, line: 15, baseType: !213, size: 32, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1942, file: !1934, line: 16, baseType: !213, size: 32, offset: 96)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1942, file: !1934, line: 17, baseType: !213, size: 32, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1942, file: !1934, line: 18, baseType: !213, size: 32, offset: 160)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1942, file: !1934, line: 19, baseType: !213, size: 32, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1942, file: !1934, line: 22, baseType: !1952, size: 640, offset: 224)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 640, elements: !1953)
!1953 = !{!1954}
!1954 = !DISubrange(count: 20)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1942, file: !1934, line: 25, baseType: !213, size: 32, offset: 864)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1939, file: !1934, line: 306, baseType: !1957, size: 4096, align: 128)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1934, line: 34, size: 4096, align: 128, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1978, !1979, !1980, !1984, !1986, !1990}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1957, file: !1934, line: 35, baseType: !688, size: 16)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1957, file: !1934, line: 36, baseType: !688, size: 16, offset: 16)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1957, file: !1934, line: 37, baseType: !688, size: 16, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1957, file: !1934, line: 38, baseType: !688, size: 16, offset: 48)
!1963 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !1934, line: 39, baseType: !1964, size: 128, offset: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1934, line: 39, size: 128, elements: !1965)
!1965 = !{!1966, !1971}
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1934, line: 40, baseType: !1967, size: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1934, line: 40, size: 128, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1967, file: !1934, line: 41, baseType: !219, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1967, file: !1934, line: 42, baseType: !219, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1934, line: 44, baseType: !1972, size: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1964, file: !1934, line: 44, size: 128, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1972, file: !1934, line: 45, baseType: !213, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1972, file: !1934, line: 46, baseType: !213, size: 32, offset: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1972, file: !1934, line: 47, baseType: !213, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1972, file: !1934, line: 48, baseType: !213, size: 32, offset: 96)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1957, file: !1934, line: 51, baseType: !213, size: 32, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1957, file: !1934, line: 52, baseType: !213, size: 32, offset: 224)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1957, file: !1934, line: 55, baseType: !1981, size: 1024, offset: 256)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1024, elements: !1982)
!1982 = !{!1983}
!1983 = !DISubrange(count: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1957, file: !1934, line: 58, baseType: !1985, size: 2048, offset: 1280)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 2048, elements: !1631)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1957, file: !1934, line: 60, baseType: !1987, size: 384, offset: 3328)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 384, elements: !1988)
!1988 = !{!1989}
!1989 = !DISubrange(count: 12)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !1934, line: 62, baseType: !1991, size: 384, offset: 3712)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1934, line: 62, size: 384, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1991, file: !1934, line: 63, baseType: !1987, size: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1991, file: !1934, line: 64, baseType: !1987, size: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1939, file: !1934, line: 307, baseType: !1996, size: 1088)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1934, line: 79, size: 1088, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2044}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1996, file: !1934, line: 80, baseType: !213, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1996, file: !1934, line: 81, baseType: !213, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1996, file: !1934, line: 82, baseType: !213, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1996, file: !1934, line: 83, baseType: !213, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1996, file: !1934, line: 84, baseType: !213, size: 32, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1996, file: !1934, line: 85, baseType: !213, size: 32, offset: 160)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1996, file: !1934, line: 86, baseType: !213, size: 32, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1996, file: !1934, line: 88, baseType: !1952, size: 640, offset: 224)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1996, file: !1934, line: 89, baseType: !1100, size: 8, offset: 864)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1996, file: !1934, line: 90, baseType: !1100, size: 8, offset: 872)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1996, file: !1934, line: 91, baseType: !1100, size: 8, offset: 880)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1996, file: !1934, line: 92, baseType: !1100, size: 8, offset: 888)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1996, file: !1934, line: 93, baseType: !1100, size: 8, offset: 896)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1996, file: !1934, line: 94, baseType: !1100, size: 8, offset: 904)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1996, file: !1934, line: 95, baseType: !2013, size: 64, offset: 960)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2015, line: 11, size: 128, elements: !2016)
!2015 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !{!2017, !2018}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2014, file: !2015, line: 12, baseType: !132, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2014, file: !2015, line: 13, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2021, line: 56, size: 1344, elements: !2022)
!2021 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2022 = !{!2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2020, file: !2021, line: 61, baseType: !131, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2020, file: !2021, line: 62, baseType: !131, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2020, file: !2021, line: 63, baseType: !131, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2020, file: !2021, line: 64, baseType: !131, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2020, file: !2021, line: 65, baseType: !131, size: 64, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2020, file: !2021, line: 66, baseType: !131, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2020, file: !2021, line: 68, baseType: !131, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2020, file: !2021, line: 69, baseType: !131, size: 64, offset: 448)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2020, file: !2021, line: 70, baseType: !131, size: 64, offset: 512)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2020, file: !2021, line: 71, baseType: !131, size: 64, offset: 576)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2020, file: !2021, line: 72, baseType: !131, size: 64, offset: 640)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2020, file: !2021, line: 73, baseType: !131, size: 64, offset: 704)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2020, file: !2021, line: 74, baseType: !131, size: 64, offset: 768)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2020, file: !2021, line: 75, baseType: !131, size: 64, offset: 832)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2020, file: !2021, line: 76, baseType: !131, size: 64, offset: 896)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2020, file: !2021, line: 81, baseType: !131, size: 64, offset: 960)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2020, file: !2021, line: 83, baseType: !131, size: 64, offset: 1024)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2020, file: !2021, line: 84, baseType: !131, size: 64, offset: 1088)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2020, file: !2021, line: 85, baseType: !131, size: 64, offset: 1152)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2020, file: !2021, line: 86, baseType: !131, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2020, file: !2021, line: 87, baseType: !131, size: 64, offset: 1280)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1996, file: !1934, line: 96, baseType: !213, size: 32, offset: 1024)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1939, file: !1934, line: 308, baseType: !2046, size: 4608, align: 512)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1934, line: 289, size: 4608, align: 512, elements: !2047)
!2047 = !{!2048, !2049, !2056}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2046, file: !1934, line: 290, baseType: !1957, size: 4096, align: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2046, file: !1934, line: 291, baseType: !2050, size: 512, offset: 4096)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1934, line: 268, size: 512, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2050, file: !1934, line: 269, baseType: !219, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2050, file: !1934, line: 270, baseType: !219, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2050, file: !1934, line: 271, baseType: !2055, size: 384, offset: 128)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 384, elements: !1373)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2046, file: !1934, line: 292, baseType: !2057, offset: 4608)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, elements: !1471)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1939, file: !1934, line: 309, baseType: !2059, size: 32768)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1100, size: 32768, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 4096)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !962, file: !538, line: 378, baseType: !2063, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !958, file: !538, line: 384, baseType: !1250, size: 192, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !807, file: !538, line: 500, baseType: !558, offset: 6656)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !807, file: !538, line: 501, baseType: !2067, size: 64, offset: 6656)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !538, line: 387, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !807, file: !538, line: 516, baseType: !1461, size: 64, offset: 6720)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !807, file: !538, line: 519, baseType: !150, size: 64, offset: 6784)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !807, file: !538, line: 521, baseType: !2072, size: 64, offset: 6848)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !538, line: 521, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !807, file: !538, line: 545, baseType: !576, size: 32, offset: 6912)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !807, file: !538, line: 548, baseType: !294, size: 8, offset: 6944)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !807, file: !538, line: 550, baseType: !2077, offset: 6952)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2078, line: 142, elements: !459)
!2078 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !807, file: !538, line: 554, baseType: !1709, size: 256, offset: 6976)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !807, file: !538, line: 557, baseType: !213, size: 32, offset: 7232)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !804, file: !538, line: 565, baseType: !2082, offset: 7296)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, elements: !2083)
!2083 = !{!2084}
!2084 = !DISubrange(count: -1)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !800, file: !538, line: 151, baseType: !576, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !793, file: !538, line: 156, baseType: !558, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !538, line: 159, baseType: !2088, size: 128)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !542, file: !538, line: 159, size: 128, elements: !2089)
!2089 = !{!2090, !2093}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2088, file: !538, line: 161, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !538, line: 161, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2088, file: !538, line: 162, baseType: !122, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !542, file: !538, line: 176, baseType: !163, size: 128, align: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, scope: !537, file: !538, line: 179, baseType: !2096, size: 32, offset: 384)
!2096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !537, file: !538, line: 179, size: 32, elements: !2097)
!2097 = !{!2098, !2099, !2100, !2101}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2096, file: !538, line: 184, baseType: !576, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2096, file: !538, line: 192, baseType: !7, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2096, file: !538, line: 194, baseType: !7, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2096, file: !538, line: 195, baseType: !130, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !537, file: !538, line: 199, baseType: !576, size: 32, offset: 416)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !472, file: !38, line: 1964, baseType: !2104, size: 64, offset: 1344)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!132, !406, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2109, line: 12, size: 256, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2113, !2114, !2115}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2108, file: !2109, line: 13, baseType: !123, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2108, file: !2109, line: 16, baseType: !130, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2108, file: !2109, line: 23, baseType: !131, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2108, file: !2109, line: 30, baseType: !131, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2108, file: !2109, line: 33, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !538, line: 27, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !472, file: !38, line: 1966, baseType: !2104, size: 64, offset: 1408)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !407, file: !38, line: 1424, baseType: !2120, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !32, line: 322, size: 704, elements: !2123)
!2123 = !{!2124, !2170, !2174, !2178, !2179, !2180, !2181, !2182, !2187, !2192, !2196}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2122, file: !32, line: 323, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!130, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !32, line: 294, size: 1600, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2155, !2156, !2157}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2129, file: !32, line: 295, baseType: !451, size: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2129, file: !32, line: 296, baseType: !410, size: 128, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2129, file: !32, line: 297, baseType: !410, size: 128, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2129, file: !32, line: 298, baseType: !410, size: 128, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2129, file: !32, line: 299, baseType: !922, size: 192, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2129, file: !32, line: 300, baseType: !558, offset: 704)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2129, file: !32, line: 301, baseType: !576, size: 32, offset: 704)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2129, file: !32, line: 302, baseType: !406, size: 64, offset: 768)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2129, file: !32, line: 303, baseType: !2140, size: 64, offset: 832)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !32, line: 68, size: 64, elements: !2141)
!2141 = !{!2142, !2154}
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !32, line: 69, baseType: !2143, size: 32)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !32, line: 69, size: 32, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2143, file: !32, line: 70, baseType: !235, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2143, file: !32, line: 71, baseType: !243, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2143, file: !32, line: 72, baseType: !2148, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2149, line: 24, baseType: !2150)
!2149 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 22, size: 32, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2150, file: !2149, line: 23, baseType: !2153, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2149, line: 20, baseType: !241)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2140, file: !32, line: 74, baseType: !31, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2129, file: !32, line: 304, baseType: !146, size: 64, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2129, file: !32, line: 305, baseType: !131, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2129, file: !32, line: 306, baseType: !2158, size: 576, offset: 1024)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !32, line: 205, size: 576, elements: !2159)
!2159 = !{!2160, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2158, file: !32, line: 206, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !32, line: 66, baseType: !149)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2158, file: !32, line: 207, baseType: !2161, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2158, file: !32, line: 208, baseType: !2161, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2158, file: !32, line: 209, baseType: !2161, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2158, file: !32, line: 210, baseType: !2161, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2158, file: !32, line: 211, baseType: !2161, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2158, file: !32, line: 212, baseType: !2161, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2158, file: !32, line: 213, baseType: !340, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2158, file: !32, line: 214, baseType: !340, size: 64, offset: 512)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2122, file: !32, line: 324, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!2128, !406, !130}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2122, file: !32, line: 325, baseType: !2175, size: 64, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2128}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2122, file: !32, line: 326, baseType: !2125, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2122, file: !32, line: 327, baseType: !2125, size: 64, offset: 256)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2122, file: !32, line: 328, baseType: !2125, size: 64, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2122, file: !32, line: 329, baseType: !500, size: 64, offset: 384)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2122, file: !32, line: 332, baseType: !2183, size: 64, offset: 448)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!2186, !227}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2122, file: !32, line: 333, baseType: !2188, size: 64, offset: 512)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!130, !227, !2191}
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2122, file: !32, line: 335, baseType: !2193, size: 64, offset: 576)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!130, !227, !2186}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2122, file: !32, line: 337, baseType: !2197, size: 64, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!130, !406, !2200}
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !407, file: !38, line: 1425, baseType: !2202, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !32, line: 428, size: 704, elements: !2205)
!2205 = !{!2206, !2210, !2211, !2215, !2216, !2217, !2232, !2255, !2259, !2260, !2283}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2204, file: !32, line: 429, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!130, !406, !130, !130, !350}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2204, file: !32, line: 430, baseType: !500, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2204, file: !32, line: 431, baseType: !2212, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!130, !406, !7}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2204, file: !32, line: 432, baseType: !2212, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2204, file: !32, line: 433, baseType: !500, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2204, file: !32, line: 434, baseType: !2218, size: 64, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!130, !406, !130, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !32, line: 415, size: 256, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2222, file: !32, line: 416, baseType: !130, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2222, file: !32, line: 417, baseType: !7, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2222, file: !32, line: 418, baseType: !7, size: 32, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2222, file: !32, line: 420, baseType: !7, size: 32, offset: 96)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2222, file: !32, line: 421, baseType: !7, size: 32, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2222, file: !32, line: 422, baseType: !7, size: 32, offset: 160)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2222, file: !32, line: 423, baseType: !7, size: 32, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2222, file: !32, line: 424, baseType: !7, size: 32, offset: 224)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2204, file: !32, line: 435, baseType: !2233, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!130, !406, !2140, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !32, line: 343, size: 960, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2237, file: !32, line: 344, baseType: !130, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2237, file: !32, line: 345, baseType: !219, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2237, file: !32, line: 346, baseType: !219, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2237, file: !32, line: 347, baseType: !219, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2237, file: !32, line: 348, baseType: !219, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2237, file: !32, line: 349, baseType: !219, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2237, file: !32, line: 350, baseType: !219, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2237, file: !32, line: 351, baseType: !606, size: 64, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2237, file: !32, line: 353, baseType: !606, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2237, file: !32, line: 354, baseType: !130, size: 32, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2237, file: !32, line: 355, baseType: !130, size: 32, offset: 608)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2237, file: !32, line: 356, baseType: !219, size: 64, offset: 640)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2237, file: !32, line: 357, baseType: !219, size: 64, offset: 704)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2237, file: !32, line: 358, baseType: !219, size: 64, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2237, file: !32, line: 359, baseType: !606, size: 64, offset: 832)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2237, file: !32, line: 360, baseType: !130, size: 32, offset: 896)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2204, file: !32, line: 436, baseType: !2256, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!130, !406, !2200, !2236}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2204, file: !32, line: 438, baseType: !2233, size: 64, offset: 512)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2204, file: !32, line: 439, baseType: !2261, size: 64, offset: 576)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!130, !406, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !32, line: 409, size: 1408, elements: !2266)
!2266 = !{!2267, !2268}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2265, file: !32, line: 410, baseType: !7, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2265, file: !32, line: 411, baseType: !2269, size: 1344, offset: 64)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2270, size: 1344, elements: !464)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !32, line: 395, size: 448, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2282}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2270, file: !32, line: 396, baseType: !7, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2270, file: !32, line: 397, baseType: !7, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2270, file: !32, line: 399, baseType: !7, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2270, file: !32, line: 400, baseType: !7, size: 32, offset: 96)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2270, file: !32, line: 401, baseType: !7, size: 32, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2270, file: !32, line: 402, baseType: !7, size: 32, offset: 160)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2270, file: !32, line: 403, baseType: !7, size: 32, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2270, file: !32, line: 404, baseType: !221, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2270, file: !32, line: 405, baseType: !2281, size: 64, offset: 320)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !124, line: 126, baseType: !219)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2270, file: !32, line: 406, baseType: !2281, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2204, file: !32, line: 440, baseType: !2212, size: 64, offset: 640)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !407, file: !38, line: 1426, baseType: !2285, size: 64, offset: 576)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2287)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !38, line: 49, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !407, file: !38, line: 1427, baseType: !131, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !407, file: !38, line: 1428, baseType: !131, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !407, file: !38, line: 1429, baseType: !131, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !407, file: !38, line: 1430, baseType: !180, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !407, file: !38, line: 1431, baseType: !596, size: 256, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !407, file: !38, line: 1432, baseType: !130, size: 32, offset: 1152)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !407, file: !38, line: 1433, baseType: !576, size: 32, offset: 1184)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !407, file: !38, line: 1437, baseType: !2296, size: 64, offset: 1216)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2299)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !38, line: 1437, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !407, file: !38, line: 1449, baseType: !2301, size: 64, offset: 1280)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !196, line: 34, size: 64, elements: !2302)
!2302 = !{!2303}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2301, file: !196, line: 35, baseType: !199, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !407, file: !38, line: 1450, baseType: !410, size: 128, offset: 1344)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !407, file: !38, line: 1451, baseType: !2306, size: 64, offset: 1472)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !38, line: 699, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !407, file: !38, line: 1452, baseType: !1675, size: 64, offset: 1536)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !407, file: !38, line: 1453, baseType: !2310, size: 64, offset: 1600)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !38, line: 1453, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !407, file: !38, line: 1454, baseType: !451, size: 128, offset: 1664)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !407, file: !38, line: 1455, baseType: !7, size: 32, offset: 1792)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !407, file: !38, line: 1456, baseType: !2315, size: 2432, offset: 1856)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !32, line: 518, size: 2432, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2321, !2353}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2315, file: !32, line: 519, baseType: !7, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2315, file: !32, line: 520, baseType: !596, size: 256, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2315, file: !32, line: 521, baseType: !2320, size: 192, offset: 320)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 192, elements: !464)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2315, file: !32, line: 522, baseType: !2322, size: 1728, offset: 512)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, size: 1728, elements: !464)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !32, line: 222, size: 576, elements: !2324)
!2324 = !{!2325, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2323, file: !32, line: 223, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !32, line: 443, size: 256, elements: !2328)
!2328 = !{!2329, !2330, !2343, !2344}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2327, file: !32, line: 444, baseType: !130, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2327, file: !32, line: 445, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !32, line: 310, size: 512, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2333, file: !32, line: 311, baseType: !500, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2333, file: !32, line: 312, baseType: !500, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2333, file: !32, line: 313, baseType: !500, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2333, file: !32, line: 314, baseType: !500, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2333, file: !32, line: 315, baseType: !2125, size: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2333, file: !32, line: 316, baseType: !2125, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2333, file: !32, line: 317, baseType: !2125, size: 64, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2333, file: !32, line: 318, baseType: !2197, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2327, file: !32, line: 446, baseType: !125, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2327, file: !32, line: 447, baseType: !2326, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2323, file: !32, line: 224, baseType: !130, size: 32, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2323, file: !32, line: 226, baseType: !410, size: 128, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2323, file: !32, line: 227, baseType: !131, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2323, file: !32, line: 228, baseType: !7, size: 32, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2323, file: !32, line: 229, baseType: !7, size: 32, offset: 352)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2323, file: !32, line: 230, baseType: !2161, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2323, file: !32, line: 231, baseType: !2161, size: 64, offset: 448)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2323, file: !32, line: 232, baseType: !122, size: 64, offset: 512)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2315, file: !32, line: 523, baseType: !2354, size: 192, offset: 2240)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2331, size: 192, elements: !464)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !407, file: !38, line: 1458, baseType: !2356, size: 2112, offset: 4288)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !38, line: 1410, size: 2112, elements: !2357)
!2357 = !{!2358, !2359, !2360}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2356, file: !38, line: 1411, baseType: !130, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2356, file: !38, line: 1412, baseType: !1229, size: 128, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2356, file: !38, line: 1413, baseType: !2361, size: 1920, offset: 192)
!2361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2362, size: 1920, elements: !464)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2363, line: 12, size: 640, elements: !2364)
!2363 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2364 = !{!2365, !2373, !2375, !2380, !2381}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2362, file: !2363, line: 13, baseType: !2366, size: 320)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2367, line: 17, size: 320, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2366, file: !2367, line: 18, baseType: !130, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2366, file: !2367, line: 19, baseType: !130, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2366, file: !2367, line: 20, baseType: !1229, size: 128, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2366, file: !2367, line: 22, baseType: !163, size: 128, align: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2362, file: !2363, line: 14, baseType: !2374, size: 64, offset: 320)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2362, file: !2363, line: 15, baseType: !2376, size: 64, offset: 384)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2377, line: 16, size: 64, elements: !2378)
!2377 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2376, file: !2377, line: 17, baseType: !965, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2362, file: !2363, line: 16, baseType: !1229, size: 128, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2362, file: !2363, line: 17, baseType: !576, size: 32, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !407, file: !38, line: 1465, baseType: !122, size: 64, offset: 6400)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !407, file: !38, line: 1468, baseType: !213, size: 32, offset: 6464)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !407, file: !38, line: 1470, baseType: !340, size: 64, offset: 6528)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !407, file: !38, line: 1471, baseType: !340, size: 64, offset: 6592)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !407, file: !38, line: 1473, baseType: !215, size: 32, offset: 6656)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !407, file: !38, line: 1474, baseType: !2388, size: 64, offset: 6720)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !38, line: 603, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !407, file: !38, line: 1477, baseType: !2391, size: 256, offset: 6784)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !1982)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !407, file: !38, line: 1478, baseType: !2393, size: 128, offset: 7040)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2394, line: 18, baseType: !2395)
!2394 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2394, line: 16, size: 128, elements: !2396)
!2396 = !{!2397}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2395, file: !2394, line: 17, baseType: !2398, size: 128)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 128, elements: !1483)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !407, file: !38, line: 1480, baseType: !7, size: 32, offset: 7168)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !407, file: !38, line: 1481, baseType: !2401, size: 32, offset: 7200)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !124, line: 150, baseType: !7)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !407, file: !38, line: 1487, baseType: !922, size: 192, offset: 7232)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !407, file: !38, line: 1493, baseType: !263, size: 64, offset: 7424)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !407, file: !38, line: 1495, baseType: !2405, size: 64, offset: 7488)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2407)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !178, line: 135, size: 1024, align: 512, elements: !2408)
!2408 = !{!2409, !2413, !2414, !2421, !2427, !2431, !2435, !2439, !2440, !2444, !2448, !2453, !2457}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2407, file: !178, line: 136, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!130, !180, !7}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2407, file: !178, line: 137, baseType: !2410, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2407, file: !178, line: 138, baseType: !2415, size: 64, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!130, !2418, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2407, file: !178, line: 139, baseType: !2422, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!130, !2418, !7, !263, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2407, file: !178, line: 141, baseType: !2428, size: 64, offset: 256)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!130, !2418}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2407, file: !178, line: 142, baseType: !2432, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!130, !180}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2407, file: !178, line: 143, baseType: !2436, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{null, !180}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2407, file: !178, line: 144, baseType: !2436, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2407, file: !178, line: 145, baseType: !2441, size: 64, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !180, !227}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2407, file: !178, line: 146, baseType: !2445, size: 64, offset: 576)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!289, !180, !289, !130}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2407, file: !178, line: 147, baseType: !2449, size: 64, offset: 640)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!176, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2407, file: !178, line: 148, baseType: !2454, size: 64, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!130, !350, !294}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2407, file: !178, line: 149, baseType: !2458, size: 64, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!180, !180, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !407, file: !38, line: 1500, baseType: !130, size: 32, offset: 7552)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !407, file: !38, line: 1502, baseType: !2465, size: 448, offset: 7616)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2109, line: 60, size: 448, elements: !2466)
!2466 = !{!2467, !2472, !2473, !2474, !2475, !2476, !2477}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2465, file: !2109, line: 61, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!131, !2471, !2107}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2465, file: !2109, line: 63, baseType: !2468, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2465, file: !2109, line: 66, baseType: !132, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2465, file: !2109, line: 67, baseType: !130, size: 32, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2465, file: !2109, line: 68, baseType: !7, size: 32, offset: 224)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2465, file: !2109, line: 71, baseType: !410, size: 128, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2465, file: !2109, line: 77, baseType: !2478, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !407, file: !38, line: 1505, baseType: !600, size: 64, offset: 8064)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !407, file: !38, line: 1508, baseType: !600, size: 64, offset: 8128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !407, file: !38, line: 1511, baseType: !130, size: 32, offset: 8192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !407, file: !38, line: 1514, baseType: !738, size: 32, offset: 8224)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !407, file: !38, line: 1517, baseType: !2484, size: 64, offset: 8256)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1710, line: 18, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !407, file: !38, line: 1518, baseType: !447, size: 64, offset: 8320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !407, file: !38, line: 1525, baseType: !1461, size: 64, offset: 8384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !407, file: !38, line: 1532, baseType: !2489, size: 64, offset: 8448)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2490, line: 52, size: 64, elements: !2491)
!2490 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2491 = !{!2492}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2489, file: !2490, line: 53, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2490, line: 40, size: 256, elements: !2495)
!2495 = !{!2496, !2497, !2502}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2494, file: !2490, line: 42, baseType: !558)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2494, file: !2490, line: 44, baseType: !2498, size: 192)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2490, line: 28, size: 192, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2498, file: !2490, line: 29, baseType: !410, size: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2498, file: !2490, line: 31, baseType: !132, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2494, file: !2490, line: 49, baseType: !132, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !407, file: !38, line: 1533, baseType: !2489, size: 64, offset: 8512)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !407, file: !38, line: 1534, baseType: !163, size: 128, align: 64, offset: 8576)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !407, file: !38, line: 1535, baseType: !1709, size: 256, offset: 8704)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !407, file: !38, line: 1537, baseType: !922, size: 192, offset: 8960)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !407, file: !38, line: 1542, baseType: !130, size: 32, offset: 9152)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !407, file: !38, line: 1545, baseType: !558, offset: 9184)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !407, file: !38, line: 1546, baseType: !410, size: 128, offset: 9216)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !407, file: !38, line: 1548, baseType: !558, offset: 9344)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !407, file: !38, line: 1549, baseType: !410, size: 128, offset: 9344)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !228, file: !38, line: 624, baseType: !549, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !228, file: !38, line: 631, baseType: !131, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !38, line: 639, baseType: !2515, size: 32, offset: 384)
!2515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !38, line: 639, size: 32, elements: !2516)
!2516 = !{!2517, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2515, file: !38, line: 640, baseType: !2518, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2515, file: !38, line: 641, baseType: !7, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !228, file: !38, line: 643, baseType: !317, size: 32, offset: 416)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !228, file: !38, line: 644, baseType: !146, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !228, file: !38, line: 645, baseType: !336, size: 128, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !228, file: !38, line: 646, baseType: !336, size: 128, offset: 640)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !228, file: !38, line: 647, baseType: !336, size: 128, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !228, file: !38, line: 648, baseType: !558, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !228, file: !38, line: 649, baseType: !232, size: 16, offset: 896)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !228, file: !38, line: 650, baseType: !1100, size: 8, offset: 912)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !228, file: !38, line: 651, baseType: !1100, size: 8, offset: 920)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !228, file: !38, line: 652, baseType: !2281, size: 64, offset: 960)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !228, file: !38, line: 659, baseType: !131, size: 64, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !228, file: !38, line: 660, baseType: !596, size: 256, offset: 1088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !228, file: !38, line: 662, baseType: !131, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !228, file: !38, line: 663, baseType: !131, size: 64, offset: 1408)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !228, file: !38, line: 665, baseType: !451, size: 128, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !228, file: !38, line: 666, baseType: !410, size: 128, offset: 1600)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !228, file: !38, line: 675, baseType: !410, size: 128, offset: 1728)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !228, file: !38, line: 676, baseType: !410, size: 128, offset: 1856)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !228, file: !38, line: 677, baseType: !410, size: 128, offset: 1984)
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !38, line: 678, baseType: !2540, size: 128, offset: 2112)
!2540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !38, line: 678, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2540, file: !38, line: 679, baseType: !447, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2540, file: !38, line: 680, baseType: !163, size: 128, align: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !228, file: !38, line: 682, baseType: !602, size: 64, offset: 2240)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !228, file: !38, line: 683, baseType: !602, size: 64, offset: 2304)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !228, file: !38, line: 684, baseType: !576, size: 32, offset: 2368)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !228, file: !38, line: 685, baseType: !576, size: 32, offset: 2400)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !228, file: !38, line: 686, baseType: !576, size: 32, offset: 2432)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !228, file: !38, line: 688, baseType: !576, size: 32, offset: 2464)
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !38, line: 690, baseType: !2551, size: 64, offset: 2496)
!2551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !38, line: 690, size: 64, elements: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2551, file: !38, line: 691, baseType: !137, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2551, file: !38, line: 692, baseType: !479, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !228, file: !38, line: 694, baseType: !2556, size: 64, offset: 2560)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !38, line: 1100, size: 384, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2557, file: !38, line: 1101, baseType: !558)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2557, file: !38, line: 1102, baseType: !410, size: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2557, file: !38, line: 1103, baseType: !410, size: 128, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2557, file: !38, line: 1104, baseType: !410, size: 128, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !228, file: !38, line: 695, baseType: !550, size: 1216, align: 64, offset: 2624)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !228, file: !38, line: 696, baseType: !410, size: 128, offset: 3840)
!2565 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !38, line: 697, baseType: !2566, size: 64, offset: 3968)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !38, line: 697, size: 64, elements: !2567)
!2567 = !{!2568, !2569, !2570, !2573, !2574}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2566, file: !38, line: 698, baseType: !1850, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2566, file: !38, line: 699, baseType: !2306, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2566, file: !38, line: 700, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !38, line: 700, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2566, file: !38, line: 701, baseType: !289, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2566, file: !38, line: 702, baseType: !7, size: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !228, file: !38, line: 705, baseType: !215, size: 32, offset: 4032)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !228, file: !38, line: 708, baseType: !215, size: 32, offset: 4064)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !228, file: !38, line: 709, baseType: !2388, size: 64, offset: 4096)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !228, file: !38, line: 720, baseType: !122, size: 64, offset: 4160)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !181, file: !178, line: 98, baseType: !2580, size: 256, offset: 448)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !1982)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !181, file: !178, line: 101, baseType: !2582, size: 32, offset: 704)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2583, line: 25, size: 32, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2584 = !{!2585}
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2582, file: !2583, line: 26, baseType: !2586, size: 32)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2582, file: !2583, line: 26, size: 32, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, scope: !2586, file: !2583, line: 30, baseType: !2589, size: 32)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2586, file: !2583, line: 30, size: 32, elements: !2590)
!2590 = !{!2591, !2592}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2589, file: !2583, line: 31, baseType: !558)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2589, file: !2583, line: 32, baseType: !130, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !181, file: !178, line: 102, baseType: !2405, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !181, file: !178, line: 103, baseType: !406, size: 64, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !181, file: !178, line: 104, baseType: !131, size: 64, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !181, file: !178, line: 105, baseType: !122, size: 64, offset: 960)
!2597 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !178, line: 107, baseType: !2598, size: 128, offset: 1024)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !178, line: 107, size: 128, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2598, file: !178, line: 108, baseType: !410, size: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2598, file: !178, line: 109, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !181, file: !178, line: 111, baseType: !410, size: 128, offset: 1152)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !181, file: !178, line: 112, baseType: !410, size: 128, offset: 1280)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !181, file: !178, line: 120, baseType: !2606, size: 128, offset: 1408)
!2606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !178, line: 116, size: 128, elements: !2607)
!2607 = !{!2608, !2609, !2610}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2606, file: !178, line: 117, baseType: !451, size: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2606, file: !178, line: 118, baseType: !195, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2606, file: !178, line: 119, baseType: !163, size: 128, align: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !151, file: !38, line: 922, baseType: !227, size: 64, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !151, file: !38, line: 923, baseType: !137, size: 64, offset: 320)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !151, file: !38, line: 929, baseType: !558, offset: 384)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !151, file: !38, line: 930, baseType: !37, size: 32, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !151, file: !38, line: 931, baseType: !600, size: 64, offset: 448)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !151, file: !38, line: 932, baseType: !7, size: 32, offset: 512)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !151, file: !38, line: 933, baseType: !2401, size: 32, offset: 544)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !151, file: !38, line: 934, baseType: !922, size: 192, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !151, file: !38, line: 935, baseType: !146, size: 64, offset: 768)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !151, file: !38, line: 936, baseType: !2621, size: 192, offset: 832)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !38, line: 885, size: 192, elements: !2622)
!2622 = !{!2623, !2631, !2632, !2633, !2634, !2635}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2621, file: !38, line: 886, baseType: !2624)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2625, line: 20, baseType: !2626)
!2625 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2625, line: 11, elements: !2627)
!2627 = !{!2628}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2626, file: !2625, line: 12, baseType: !2629)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !570, line: 33, baseType: !2630)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !570, line: 31, elements: !459)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2621, file: !38, line: 887, baseType: !1219, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2621, file: !38, line: 888, baseType: !46, size: 32, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2621, file: !38, line: 889, baseType: !235, size: 32, offset: 96)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2621, file: !38, line: 889, baseType: !235, size: 32, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2621, file: !38, line: 890, baseType: !130, size: 32, offset: 160)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !151, file: !38, line: 937, baseType: !1295, size: 64, offset: 1024)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !151, file: !38, line: 938, baseType: !2638, size: 256, offset: 1088)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !38, line: 896, size: 256, elements: !2639)
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2638, file: !38, line: 897, baseType: !131, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2638, file: !38, line: 898, baseType: !7, size: 32, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2638, file: !38, line: 899, baseType: !7, size: 32, offset: 96)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2638, file: !38, line: 902, baseType: !7, size: 32, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2638, file: !38, line: 903, baseType: !7, size: 32, offset: 160)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2638, file: !38, line: 904, baseType: !146, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !151, file: !38, line: 940, baseType: !219, size: 64, offset: 1344)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !151, file: !38, line: 945, baseType: !122, size: 64, offset: 1408)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !151, file: !38, line: 949, baseType: !410, size: 128, offset: 1472)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !151, file: !38, line: 950, baseType: !410, size: 128, offset: 1600)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !151, file: !38, line: 952, baseType: !549, size: 64, offset: 1728)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !151, file: !38, line: 953, baseType: !738, size: 32, offset: 1792)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !151, file: !38, line: 954, baseType: !738, size: 32, offset: 1824)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !139, file: !38, line: 1825, baseType: !2654, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!379, !150, !289, !382, !2657}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !139, file: !38, line: 1826, baseType: !2659, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!379, !150, !263, !382, !2657}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !139, file: !38, line: 1827, baseType: !673, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !139, file: !38, line: 1828, baseType: !673, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !139, file: !38, line: 1829, baseType: !2665, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!130, !676, !294}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !139, file: !38, line: 1830, baseType: !2669, size: 64, offset: 448)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!130, !150, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !38, line: 1776, size: 128, elements: !2674)
!2674 = !{!2675, !2680}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2673, file: !38, line: 1777, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !38, line: 1773, baseType: !2677)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!130, !2672, !263, !130, !146, !219, !7}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2673, file: !38, line: 1778, baseType: !146, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !139, file: !38, line: 1831, baseType: !2669, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !139, file: !38, line: 1832, baseType: !2683, size: 64, offset: 576)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!2686, !150, !2688}
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2687, line: 52, baseType: !7)
!2687 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !431, line: 27, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !139, file: !38, line: 1833, baseType: !2691, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!132, !150, !7, !131}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !139, file: !38, line: 1834, baseType: !2691, size: 64, offset: 704)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !139, file: !38, line: 1835, baseType: !2696, size: 64, offset: 768)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!130, !150, !810}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !139, file: !38, line: 1836, baseType: !131, size: 64, offset: 832)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !139, file: !38, line: 1837, baseType: !2701, size: 64, offset: 896)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!130, !227, !150}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !139, file: !38, line: 1838, baseType: !2705, size: 64, offset: 960)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!130, !150, !2708}
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !38, line: 1007, baseType: !122)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !139, file: !38, line: 1839, baseType: !2701, size: 64, offset: 1024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !139, file: !38, line: 1840, baseType: !2711, size: 64, offset: 1088)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!130, !150, !146, !146, !130}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !139, file: !38, line: 1841, baseType: !2715, size: 64, offset: 1152)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!130, !130, !150, !130}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !139, file: !38, line: 1842, baseType: !2719, size: 64, offset: 1216)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!130, !150, !130, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !38, line: 1062, size: 1664, elements: !2724)
!2724 = !{!2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2749, !2750, !2751, !2764, !2795}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2723, file: !38, line: 1063, baseType: !2722, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2723, file: !38, line: 1064, baseType: !410, size: 128, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2723, file: !38, line: 1065, baseType: !451, size: 128, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2723, file: !38, line: 1066, baseType: !410, size: 128, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2723, file: !38, line: 1069, baseType: !410, size: 128, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2723, file: !38, line: 1072, baseType: !2708, size: 64, offset: 576)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2723, file: !38, line: 1073, baseType: !7, size: 32, offset: 640)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2723, file: !38, line: 1074, baseType: !225, size: 8, offset: 672)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2723, file: !38, line: 1075, baseType: !7, size: 32, offset: 704)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2723, file: !38, line: 1076, baseType: !130, size: 32, offset: 736)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2723, file: !38, line: 1077, baseType: !1229, size: 128, offset: 768)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2723, file: !38, line: 1078, baseType: !150, size: 64, offset: 896)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2723, file: !38, line: 1079, baseType: !146, size: 64, offset: 960)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2723, file: !38, line: 1080, baseType: !146, size: 64, offset: 1024)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2723, file: !38, line: 1082, baseType: !2740, size: 64, offset: 1088)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !38, line: 1314, size: 320, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2741, file: !38, line: 1315, baseType: !2624)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2741, file: !38, line: 1316, baseType: !130, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2741, file: !38, line: 1317, baseType: !130, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2741, file: !38, line: 1318, baseType: !2740, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2741, file: !38, line: 1319, baseType: !150, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2741, file: !38, line: 1320, baseType: !163, size: 128, align: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2723, file: !38, line: 1084, baseType: !131, size: 64, offset: 1152)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2723, file: !38, line: 1085, baseType: !131, size: 64, offset: 1216)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2723, file: !38, line: 1087, baseType: !2752, size: 64, offset: 1280)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !38, line: 1011, size: 128, elements: !2755)
!2755 = !{!2756, !2760}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2754, file: !38, line: 1012, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2722, !2722}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2754, file: !38, line: 1013, baseType: !2761, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{null, !2722}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2723, file: !38, line: 1088, baseType: !2765, size: 64, offset: 1344)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !38, line: 1016, size: 512, elements: !2768)
!2768 = !{!2769, !2773, !2777, !2778, !2782, !2786, !2790, !2794}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2767, file: !38, line: 1017, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!2708, !2708}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2767, file: !38, line: 1018, baseType: !2774, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2708}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2767, file: !38, line: 1019, baseType: !2761, size: 64, offset: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2767, file: !38, line: 1020, baseType: !2779, size: 64, offset: 192)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!130, !2722, !130}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2767, file: !38, line: 1021, baseType: !2783, size: 64, offset: 256)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!294, !2722}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2767, file: !38, line: 1022, baseType: !2787, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!130, !2722, !130, !413}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2767, file: !38, line: 1023, baseType: !2791, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2722, !650}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2767, file: !38, line: 1024, baseType: !2783, size: 64, offset: 448)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2723, file: !38, line: 1097, baseType: !2796, size: 256, offset: 1408)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2723, file: !38, line: 1089, size: 256, elements: !2797)
!2797 = !{!2798, !2807, !2813}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2796, file: !38, line: 1090, baseType: !2799, size: 256)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2800, line: 10, size: 256, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2801 = !{!2802, !2803, !2806}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2799, file: !2800, line: 11, baseType: !213, size: 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2799, file: !2800, line: 12, baseType: !2804, size: 64, offset: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2800, line: 5, flags: DIFlagFwdDecl)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2799, file: !2800, line: 13, baseType: !410, size: 128, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2796, file: !38, line: 1091, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2800, line: 17, size: 64, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2808, file: !2800, line: 18, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2800, line: 16, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2796, file: !38, line: 1096, baseType: !2814, size: 192)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2796, file: !38, line: 1092, size: 192, elements: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2814, file: !38, line: 1093, baseType: !410, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2814, file: !38, line: 1094, baseType: !130, size: 32, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2814, file: !38, line: 1095, baseType: !7, size: 32, offset: 160)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !139, file: !38, line: 1843, baseType: !2820, size: 64, offset: 1280)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!379, !150, !536, !130, !382, !2657, !130}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !139, file: !38, line: 1844, baseType: !850, size: 64, offset: 1344)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !139, file: !38, line: 1845, baseType: !2825, size: 64, offset: 1408)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!130, !130}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !139, file: !38, line: 1846, baseType: !2719, size: 64, offset: 1472)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !139, file: !38, line: 1847, baseType: !2830, size: 64, offset: 1536)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!379, !1850, !150, !2657, !382, !7}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !139, file: !38, line: 1848, baseType: !2834, size: 64, offset: 1600)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!379, !150, !2657, !1850, !382, !7}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !139, file: !38, line: 1849, baseType: !2838, size: 64, offset: 1664)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!130, !150, !132, !2841, !650}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !139, file: !38, line: 1850, baseType: !2843, size: 64, offset: 1728)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!132, !150, !130, !146, !146}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !139, file: !38, line: 1852, baseType: !2847, size: 64, offset: 1792)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !526, !150}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !139, file: !38, line: 1856, baseType: !2851, size: 64, offset: 1856)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!379, !150, !146, !150, !146, !382, !7}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !139, file: !38, line: 1858, baseType: !2855, size: 64, offset: 1920)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!146, !150, !146, !150, !146, !146, !7}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !139, file: !38, line: 1861, baseType: !2711, size: 64, offset: 1984)
!2859 = !{!2860}
!2860 = !DISubrange(count: 256)
!2861 = !DIGlobalVariableExpression(var: !2862, expr: !DIExpression())
!2862 = distinct !DIGlobalVariable(name: "usb_class", scope: !2, file: !3, line: 63, type: !2863, isLocal: true, isDefinition: true)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_class", file: !3, line: 60, size: 128, elements: !2865)
!2865 = !{!2866, !2871}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2864, file: !3, line: 61, baseType: !2867, size: 32)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2868, line: 19, size: 32, elements: !2869)
!2868 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2869 = !{!2870}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2867, file: !2868, line: 20, baseType: !979, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2864, file: !3, line: 62, baseType: !2872, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2874, line: 54, size: 960, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !{!2876, !2877, !2878, !3171, !3172, !3173, !3693, !3697, !3701, !3702, !3703, !3704, !3708, !3712, !3713}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2873, file: !2874, line: 55, baseType: !263, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2873, file: !2874, line: 56, baseType: !125, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2873, file: !2874, line: 58, baseType: !2879, size: 64, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2882)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2883, line: 84, size: 320, elements: !2884)
!2883 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2884 = !{!2885, !2886, !3149, !3168, !3169}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2882, file: !2883, line: 85, baseType: !263, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2882, file: !2883, line: 86, baseType: !2887, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!231, !2890, !2954, !130}
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2892, line: 64, size: 512, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2893 = !{!2894, !2895, !2896, !2897, !2937, !3004, !3143, !3144, !3145, !3146, !3147, !3148}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2891, file: !2892, line: 65, baseType: !263, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2891, file: !2892, line: 66, baseType: !410, size: 128, offset: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2891, file: !2892, line: 67, baseType: !2890, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2891, file: !2892, line: 68, baseType: !2898, size: 64, offset: 256)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2892, line: 192, size: 704, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2904}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2899, file: !2892, line: 193, baseType: !410, size: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2899, file: !2892, line: 194, baseType: !558, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2899, file: !2892, line: 195, baseType: !2891, size: 512, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2899, file: !2892, line: 196, baseType: !2905, size: 64, offset: 640)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2907)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2892, line: 156, size: 192, elements: !2908)
!2908 = !{!2909, !2914, !2919}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2907, file: !2892, line: 157, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2911)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!130, !2898, !2890}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2907, file: !2892, line: 158, baseType: !2915, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2916)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!263, !2898, !2890}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2907, file: !2892, line: 159, baseType: !2920, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2921)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!130, !2898, !2890, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2892, line: 148, size: 20736, elements: !2926)
!2926 = !{!2927, !2929, !2931, !2932, !2936}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2925, file: !2892, line: 149, baseType: !2928, size: 192)
!2928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 192, elements: !464)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2925, file: !2892, line: 150, baseType: !2930, size: 4096, offset: 192)
!2930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 4096, elements: !1631)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2925, file: !2892, line: 151, baseType: !130, size: 32, offset: 4288)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2925, file: !2892, line: 152, baseType: !2933, size: 16384, offset: 4320)
!2933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 16384, elements: !2934)
!2934 = !{!2935}
!2935 = !DISubrange(count: 2048)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2925, file: !2892, line: 153, baseType: !130, size: 32, offset: 20704)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2891, file: !2892, line: 69, baseType: !2938, size: 64, offset: 320)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2892, line: 138, size: 448, elements: !2940)
!2940 = !{!2941, !2945, !2963, !2965, !2966, !2994, !2998}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2939, file: !2892, line: 139, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !2890}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2939, file: !2892, line: 140, baseType: !2946, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2883, line: 230, size: 128, elements: !2949)
!2949 = !{!2950, !2959}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2948, file: !2883, line: 231, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!379, !2890, !2954, !289}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2883, line: 30, size: 128, elements: !2956)
!2956 = !{!2957, !2958}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2955, file: !2883, line: 31, baseType: !263, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2955, file: !2883, line: 32, baseType: !231, size: 16, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2948, file: !2883, line: 232, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!379, !2890, !2954, !263, !382}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2939, file: !2892, line: 141, baseType: !2964, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2939, file: !2892, line: 142, baseType: !2879, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2939, file: !2892, line: 143, baseType: !2967, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!2970, !2890}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !55, line: 39, size: 384, elements: !2973)
!2973 = !{!2974, !2975, !2979, !2983, !2989, !2993}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2972, file: !55, line: 40, baseType: !54, size: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2972, file: !55, line: 41, baseType: !2976, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!294}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2972, file: !55, line: 42, baseType: !2980, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!122}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2972, file: !55, line: 43, baseType: !2984, size: 64, offset: 192)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!1879, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !55, line: 19, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2972, file: !55, line: 44, baseType: !2990, size: 64, offset: 256)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!1879}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2972, file: !55, line: 45, baseType: !271, size: 64, offset: 320)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2939, file: !2892, line: 144, baseType: !2995, size: 64, offset: 320)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!1879, !2890}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2939, file: !2892, line: 145, baseType: !2999, size: 64, offset: 384)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{null, !2890, !3002, !3003}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2891, file: !2892, line: 70, baseType: !3005, size: 64, offset: 384)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !431, line: 123, size: 1024, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3136, !3137, !3138, !3139, !3140}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3006, file: !431, line: 124, baseType: !576, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3006, file: !431, line: 125, baseType: !576, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3006, file: !431, line: 135, baseType: !3005, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3006, file: !431, line: 136, baseType: !263, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3006, file: !431, line: 138, baseType: !589, size: 192, align: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3006, file: !431, line: 140, baseType: !1879, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3006, file: !431, line: 141, baseType: !7, size: 32, offset: 448)
!3015 = !DIDerivedType(tag: DW_TAG_member, scope: !3006, file: !431, line: 142, baseType: !3016, size: 256, offset: 512)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3006, file: !431, line: 142, size: 256, elements: !3017)
!3017 = !{!3018, !3064, !3068}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3016, file: !431, line: 143, baseType: !3019, size: 192)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !431, line: 91, size: 192, elements: !3020)
!3020 = !{!3021, !3022, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3019, file: !431, line: 92, baseType: !131, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3019, file: !431, line: 94, baseType: !585, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3019, file: !431, line: 100, baseType: !3024, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !431, line: 180, size: 704, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3036, !3037, !3038, !3062, !3063}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3025, file: !431, line: 182, baseType: !3005, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3025, file: !431, line: 183, baseType: !7, size: 32, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3025, file: !431, line: 186, baseType: !3030, size: 192, offset: 128)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3031, line: 19, size: 192, elements: !3032)
!3031 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3032 = !{!3033, !3034, !3035}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3030, file: !3031, line: 20, baseType: !554, size: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3030, file: !3031, line: 21, baseType: !7, size: 32, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3030, file: !3031, line: 22, baseType: !7, size: 32, offset: 160)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3025, file: !431, line: 187, baseType: !213, size: 32, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3025, file: !431, line: 188, baseType: !213, size: 32, offset: 352)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3025, file: !431, line: 189, baseType: !3039, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !431, line: 168, size: 320, elements: !3041)
!3041 = !{!3042, !3046, !3050, !3054, !3058}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3040, file: !431, line: 169, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!130, !526, !3024}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3040, file: !431, line: 171, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!130, !3005, !263, !231}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3040, file: !431, line: 173, baseType: !3051, size: 64, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!130, !3005}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3040, file: !431, line: 174, baseType: !3055, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!130, !3005, !3005, !263}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3040, file: !431, line: 176, baseType: !3059, size: 64, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!130, !526, !3005, !3024}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3025, file: !431, line: 192, baseType: !410, size: 128, offset: 448)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3025, file: !431, line: 194, baseType: !1229, size: 128, offset: 576)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3016, file: !431, line: 144, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !431, line: 103, size: 64, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3065, file: !431, line: 104, baseType: !3005, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3016, file: !431, line: 145, baseType: !3069, size: 256)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !431, line: 107, size: 256, elements: !3070)
!3070 = !{!3071, !3131, !3134, !3135}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3069, file: !431, line: 108, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !431, line: 217, size: 768, elements: !3075)
!3075 = !{!3076, !3096, !3100, !3104, !3108, !3112, !3116, !3120, !3121, !3122, !3123, !3127}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3074, file: !431, line: 222, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!130, !3080}
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !431, line: 197, size: 1088, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3081, file: !431, line: 199, baseType: !3005, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3081, file: !431, line: 200, baseType: !150, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3081, file: !431, line: 201, baseType: !526, size: 64, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3081, file: !431, line: 202, baseType: !122, size: 64, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3081, file: !431, line: 205, baseType: !922, size: 192, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3081, file: !431, line: 206, baseType: !922, size: 192, offset: 448)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3081, file: !431, line: 207, baseType: !130, size: 32, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3081, file: !431, line: 208, baseType: !410, size: 128, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3081, file: !431, line: 209, baseType: !289, size: 64, offset: 832)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3081, file: !431, line: 211, baseType: !382, size: 64, offset: 896)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3081, file: !431, line: 212, baseType: !294, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3081, file: !431, line: 213, baseType: !294, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3081, file: !431, line: 214, baseType: !838, size: 64, offset: 1024)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3074, file: !431, line: 223, baseType: !3097, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !3080}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3074, file: !431, line: 236, baseType: !3101, size: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!130, !526, !122}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3074, file: !431, line: 238, baseType: !3105, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!122, !526, !2657}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3074, file: !431, line: 239, baseType: !3109, size: 64, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!122, !526, !122, !2657}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3074, file: !431, line: 240, baseType: !3113, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !526, !122}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3074, file: !431, line: 242, baseType: !3117, size: 64, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!379, !3080, !289, !382, !146}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3074, file: !431, line: 252, baseType: !382, size: 64, offset: 448)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3074, file: !431, line: 259, baseType: !294, size: 8, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3074, file: !431, line: 260, baseType: !3117, size: 64, offset: 576)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3074, file: !431, line: 263, baseType: !3124, size: 64, offset: 640)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!2686, !3080, !2688}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3074, file: !431, line: 266, baseType: !3128, size: 64, offset: 704)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!130, !3080, !810}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3069, file: !431, line: 109, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !431, line: 31, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3069, file: !431, line: 110, baseType: !146, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3069, file: !431, line: 111, baseType: !3005, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3006, file: !431, line: 148, baseType: !122, size: 64, offset: 768)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3006, file: !431, line: 154, baseType: !219, size: 64, offset: 832)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3006, file: !431, line: 156, baseType: !232, size: 16, offset: 896)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3006, file: !431, line: 157, baseType: !231, size: 16, offset: 912)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3006, file: !431, line: 158, baseType: !3141, size: 64, offset: 960)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !431, line: 32, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2891, file: !2892, line: 71, baseType: !2867, size: 32, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2891, file: !2892, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2891, file: !2892, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2891, file: !2892, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2891, file: !2892, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2891, file: !2892, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2882, file: !2883, line: 88, baseType: !3150, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!231, !2890, !3153, !130}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2883, line: 168, size: 448, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3163, !3164}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3154, file: !2883, line: 169, baseType: !2955, size: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3154, file: !2883, line: 170, baseType: !382, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3154, file: !2883, line: 171, baseType: !122, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3154, file: !2883, line: 172, baseType: !3160, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!379, !150, !2890, !3153, !289, !146, !382}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3154, file: !2883, line: 174, baseType: !3160, size: 64, offset: 320)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3154, file: !2883, line: 176, baseType: !3165, size: 64, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!130, !150, !2890, !3153, !810}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2882, file: !2883, line: 90, baseType: !2964, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2882, file: !2883, line: 91, baseType: !3170, size: 64, offset: 256)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2873, file: !2874, line: 59, baseType: !2879, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2873, file: !2874, line: 60, baseType: !2890, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2873, file: !2874, line: 62, baseType: !3174, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!130, !3177, !2924}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3185, !3186, !3234, !3325, !3326, !3327, !3328, !3329, !3338, !3443, !3456, !3651, !3652, !3656, !3658, !3659, !3660, !3664, !3670, !3671, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3686, !3689, !3690, !3691, !3692}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3178, file: !67, line: 462, baseType: !2891, size: 512)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3178, file: !67, line: 463, baseType: !3177, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3178, file: !67, line: 465, baseType: !3183, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3178, file: !67, line: 467, baseType: !263, size: 64, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3178, file: !67, line: 468, baseType: !3187, size: 64, offset: 704)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3189)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3190)
!3190 = !{!3191, !3192, !3193, !3194, !3199, !3203}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3189, file: !67, line: 88, baseType: !263, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3189, file: !67, line: 89, baseType: !2879, size: 64, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3189, file: !67, line: 90, baseType: !3174, size: 64, offset: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3189, file: !67, line: 91, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!289, !3177, !3198, !3002, !3003}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3189, file: !67, line: 93, baseType: !3200, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !3177}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3189, file: !67, line: 95, baseType: !3204, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3207)
!3207 = !{!3208, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3206, file: !74, line: 279, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!130, !3177}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3206, file: !74, line: 280, baseType: !3200, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3206, file: !74, line: 281, baseType: !3209, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3206, file: !74, line: 282, baseType: !3209, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3206, file: !74, line: 283, baseType: !3209, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3206, file: !74, line: 284, baseType: !3209, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3206, file: !74, line: 285, baseType: !3209, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3206, file: !74, line: 286, baseType: !3209, size: 64, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3206, file: !74, line: 287, baseType: !3209, size: 64, offset: 512)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3206, file: !74, line: 288, baseType: !3209, size: 64, offset: 576)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3206, file: !74, line: 289, baseType: !3209, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3206, file: !74, line: 290, baseType: !3209, size: 64, offset: 704)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3206, file: !74, line: 291, baseType: !3209, size: 64, offset: 768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3206, file: !74, line: 292, baseType: !3209, size: 64, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3206, file: !74, line: 293, baseType: !3209, size: 64, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3206, file: !74, line: 294, baseType: !3209, size: 64, offset: 960)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3206, file: !74, line: 295, baseType: !3209, size: 64, offset: 1024)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3206, file: !74, line: 296, baseType: !3209, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3206, file: !74, line: 297, baseType: !3209, size: 64, offset: 1152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3206, file: !74, line: 298, baseType: !3209, size: 64, offset: 1216)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3206, file: !74, line: 299, baseType: !3209, size: 64, offset: 1280)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3206, file: !74, line: 300, baseType: !3209, size: 64, offset: 1344)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3206, file: !74, line: 301, baseType: !3209, size: 64, offset: 1408)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3178, file: !67, line: 470, baseType: !3235, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3237, line: 82, size: 1408, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3320, !3323, !3324}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3236, file: !3237, line: 83, baseType: !263, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3236, file: !3237, line: 84, baseType: !263, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3236, file: !3237, line: 85, baseType: !3177, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3236, file: !3237, line: 86, baseType: !2879, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3236, file: !3237, line: 87, baseType: !2879, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3236, file: !3237, line: 88, baseType: !2879, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3236, file: !3237, line: 90, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!130, !3177, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !61, line: 95, size: 1152, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3271, !3284, !3285, !3286, !3287, !3288, !3296, !3297, !3298, !3299, !3300, !3301}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3250, file: !61, line: 96, baseType: !263, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3250, file: !61, line: 97, baseType: !3235, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3250, file: !61, line: 99, baseType: !125, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3250, file: !61, line: 100, baseType: !263, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3250, file: !61, line: 102, baseType: !294, size: 8, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3250, file: !61, line: 103, baseType: !60, size: 32, offset: 288)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3250, file: !61, line: 105, baseType: !3259, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3262, line: 262, size: 1600, elements: !3263)
!3262 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3263 = !{!3264, !3265, !3266, !3270}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3261, file: !3262, line: 263, baseType: !2391, size: 256)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3261, file: !3262, line: 264, baseType: !2391, size: 256, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3261, file: !3262, line: 265, baseType: !3267, size: 1024, offset: 512)
!3267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1024, elements: !3268)
!3268 = !{!3269}
!3269 = !DISubrange(count: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3261, file: !3262, line: 266, baseType: !1879, size: 64, offset: 1536)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3250, file: !61, line: 106, baseType: !3272, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3262, line: 210, size: 256, elements: !3275)
!3275 = !{!3276, !3280, !3282, !3283}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3274, file: !3262, line: 211, baseType: !3277, size: 72)
!3277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1101, size: 72, elements: !3278)
!3278 = !{!3279}
!3279 = !DISubrange(count: 9)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3274, file: !3262, line: 212, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3262, line: 14, baseType: !131)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3274, file: !3262, line: 213, baseType: !215, size: 32, offset: 192)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3274, file: !3262, line: 214, baseType: !215, size: 32, offset: 224)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3250, file: !61, line: 108, baseType: !3209, size: 64, offset: 448)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3250, file: !61, line: 109, baseType: !3200, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3250, file: !61, line: 110, baseType: !3209, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3250, file: !61, line: 111, baseType: !3200, size: 64, offset: 640)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3250, file: !61, line: 112, baseType: !3289, size: 64, offset: 704)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!130, !3177, !3292}
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3294)
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3293, file: !74, line: 51, baseType: !130, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3250, file: !61, line: 113, baseType: !3209, size: 64, offset: 768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3250, file: !61, line: 114, baseType: !2879, size: 64, offset: 832)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3250, file: !61, line: 115, baseType: !2879, size: 64, offset: 896)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3250, file: !61, line: 117, baseType: !3204, size: 64, offset: 960)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3250, file: !61, line: 118, baseType: !3200, size: 64, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3250, file: !61, line: 120, baseType: !3302, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !61, line: 120, flags: DIFlagFwdDecl)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3236, file: !3237, line: 91, baseType: !3174, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3236, file: !3237, line: 92, baseType: !3209, size: 64, offset: 512)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3236, file: !3237, line: 93, baseType: !3200, size: 64, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3236, file: !3237, line: 94, baseType: !3209, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3236, file: !3237, line: 95, baseType: !3200, size: 64, offset: 704)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3236, file: !3237, line: 97, baseType: !3209, size: 64, offset: 768)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3236, file: !3237, line: 98, baseType: !3209, size: 64, offset: 832)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3236, file: !3237, line: 100, baseType: !3289, size: 64, offset: 896)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3236, file: !3237, line: 101, baseType: !3209, size: 64, offset: 960)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3236, file: !3237, line: 103, baseType: !3209, size: 64, offset: 1024)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3236, file: !3237, line: 105, baseType: !3209, size: 64, offset: 1088)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3236, file: !3237, line: 107, baseType: !3204, size: 64, offset: 1152)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3236, file: !3237, line: 109, baseType: !3317, size: 64, offset: 1216)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3237, line: 109, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3236, file: !3237, line: 111, baseType: !3321, size: 64, offset: 1280)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3237, line: 111, flags: DIFlagFwdDecl)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3236, file: !3237, line: 112, baseType: !457, offset: 1344)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3236, file: !3237, line: 114, baseType: !294, size: 8, offset: 1344)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3178, file: !67, line: 471, baseType: !3249, size: 64, offset: 832)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3178, file: !67, line: 473, baseType: !122, size: 64, offset: 896)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3178, file: !67, line: 475, baseType: !122, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3178, file: !67, line: 480, baseType: !922, size: 192, offset: 1024)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3178, file: !67, line: 484, baseType: !3330, size: 576, offset: 1216)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3330, file: !67, line: 362, baseType: !410, size: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3330, file: !67, line: 363, baseType: !410, size: 128, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3330, file: !67, line: 364, baseType: !410, size: 128, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3330, file: !67, line: 365, baseType: !410, size: 128, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3330, file: !67, line: 366, baseType: !294, size: 8, offset: 512)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3330, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3178, file: !67, line: 485, baseType: !3339, size: 2304, offset: 1792)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3436, !3440}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3339, file: !74, line: 566, baseType: !3292, size: 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3339, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3339, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3339, file: !74, line: 569, baseType: !294, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3339, file: !74, line: 570, baseType: !294, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3339, file: !74, line: 571, baseType: !294, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3339, file: !74, line: 572, baseType: !294, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3339, file: !74, line: 573, baseType: !294, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3339, file: !74, line: 574, baseType: !294, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3339, file: !74, line: 575, baseType: !294, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3339, file: !74, line: 576, baseType: !294, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3339, file: !74, line: 577, baseType: !213, size: 32, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3339, file: !74, line: 578, baseType: !558, offset: 96)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3339, file: !74, line: 580, baseType: !410, size: 128, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3339, file: !74, line: 581, baseType: !1250, size: 192, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3339, file: !74, line: 582, baseType: !3357, size: 64, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3359, line: 43, size: 1472, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3368, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3358, file: !3359, line: 44, baseType: !263, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3358, file: !3359, line: 45, baseType: !130, size: 32, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3358, file: !3359, line: 46, baseType: !410, size: 128, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3358, file: !3359, line: 47, baseType: !558, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3358, file: !3359, line: 48, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3358, file: !3359, line: 49, baseType: !3369, size: 320, offset: 320)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3370, line: 11, size: 320, elements: !3371)
!3370 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3371 = !{!3372, !3373, !3374, !3379}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3369, file: !3370, line: 16, baseType: !451, size: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3369, file: !3370, line: 17, baseType: !131, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3369, file: !3370, line: 18, baseType: !3375, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3369, file: !3370, line: 19, baseType: !213, size: 32, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3358, file: !3359, line: 50, baseType: !131, size: 64, offset: 640)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3358, file: !3359, line: 51, baseType: !1048, size: 64, offset: 704)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3358, file: !3359, line: 52, baseType: !1048, size: 64, offset: 768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3358, file: !3359, line: 53, baseType: !1048, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3358, file: !3359, line: 54, baseType: !1048, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3358, file: !3359, line: 55, baseType: !1048, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3358, file: !3359, line: 56, baseType: !131, size: 64, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3358, file: !3359, line: 57, baseType: !131, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3358, file: !3359, line: 58, baseType: !131, size: 64, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3358, file: !3359, line: 59, baseType: !131, size: 64, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3358, file: !3359, line: 60, baseType: !131, size: 64, offset: 1280)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3358, file: !3359, line: 61, baseType: !3177, size: 64, offset: 1344)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3358, file: !3359, line: 62, baseType: !294, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3358, file: !3359, line: 63, baseType: !294, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3339, file: !74, line: 583, baseType: !294, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3339, file: !74, line: 584, baseType: !294, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3339, file: !74, line: 585, baseType: !294, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3339, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3339, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3339, file: !74, line: 592, baseType: !1040, size: 512, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3339, file: !74, line: 593, baseType: !219, size: 64, offset: 1088)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3339, file: !74, line: 594, baseType: !1709, size: 256, offset: 1152)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3339, file: !74, line: 595, baseType: !1229, size: 128, offset: 1408)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3339, file: !74, line: 596, baseType: !3366, size: 64, offset: 1536)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3339, file: !74, line: 597, baseType: !576, size: 32, offset: 1600)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3339, file: !74, line: 598, baseType: !576, size: 32, offset: 1632)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3339, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3339, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3339, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3339, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3339, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3339, file: !74, line: 604, baseType: !294, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3339, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3339, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3339, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3339, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3339, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3339, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3339, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3339, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3339, file: !74, line: 613, baseType: !130, size: 32, offset: 1792)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3339, file: !74, line: 614, baseType: !130, size: 32, offset: 1824)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3339, file: !74, line: 615, baseType: !219, size: 64, offset: 1856)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3339, file: !74, line: 616, baseType: !219, size: 64, offset: 1920)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3339, file: !74, line: 617, baseType: !219, size: 64, offset: 1984)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3339, file: !74, line: 618, baseType: !219, size: 64, offset: 2048)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3339, file: !74, line: 620, baseType: !3427, size: 64, offset: 2112)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3428, file: !74, line: 537, baseType: !558)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3428, file: !74, line: 538, baseType: !7, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3428, file: !74, line: 540, baseType: !410, size: 128, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3428, file: !74, line: 543, baseType: !3434, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3339, file: !74, line: 621, baseType: !3437, size: 64, offset: 2176)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !3177, !1192}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3339, file: !74, line: 622, baseType: !3441, size: 64, offset: 2240)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3178, file: !67, line: 486, baseType: !3444, size: 64, offset: 4096)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3453, !3454, !3455}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3445, file: !74, line: 643, baseType: !3206, size: 1472)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3445, file: !74, line: 644, baseType: !3209, size: 64, offset: 1472)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3445, file: !74, line: 645, baseType: !3450, size: 64, offset: 1536)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3177, !294}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3445, file: !74, line: 646, baseType: !3209, size: 64, offset: 1600)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3445, file: !74, line: 647, baseType: !3200, size: 64, offset: 1664)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3445, file: !74, line: 648, baseType: !3200, size: 64, offset: 1728)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3178, file: !67, line: 493, baseType: !3457, size: 64, offset: 4160)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !88, line: 162, size: 1088, elements: !3459)
!3459 = !{!3460, !3461, !3462, !3635, !3636, !3637, !3638, !3639, !3640, !3643, !3644, !3645, !3646, !3647, !3648, !3649}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3458, file: !88, line: 163, baseType: !410, size: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3458, file: !88, line: 164, baseType: !263, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3458, file: !88, line: 165, baseType: !3463, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3465)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !88, line: 105, size: 640, elements: !3466)
!3466 = !{!3467, !3585, !3596, !3601, !3605, !3612, !3616, !3620, !3627, !3631}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3465, file: !88, line: 106, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!130, !3457, !3471, !87}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3473, line: 51, size: 1344, elements: !3474)
!3473 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3474 = !{!3475, !3476, !3478, !3479, !3569, !3578, !3579, !3580, !3581, !3582, !3583, !3584}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3472, file: !3473, line: 52, baseType: !263, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3472, file: !3473, line: 53, baseType: !3477, size: 32, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3473, line: 28, baseType: !213)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3472, file: !3473, line: 54, baseType: !263, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3472, file: !3473, line: 55, baseType: !3480, size: 192, offset: 192)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3481, line: 17, size: 192, elements: !3482)
!3481 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3482 = !{!3483, !3485, !3568}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3480, file: !3481, line: 18, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3480, file: !3481, line: 19, baseType: !3486, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3481, line: 110, size: 1152, elements: !3489)
!3489 = !{!3490, !3494, !3498, !3504, !3510, !3514, !3518, !3523, !3527, !3528, !3532, !3536, !3540, !3551, !3552, !3553, !3554, !3564}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3488, file: !3481, line: 111, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!3484, !3484}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3488, file: !3481, line: 112, baseType: !3495, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !3484}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3488, file: !3481, line: 113, baseType: !3499, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!294, !3502}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3488, file: !3481, line: 114, baseType: !3505, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!1879, !3502, !3508}
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3178)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3488, file: !3481, line: 116, baseType: !3511, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!294, !3502, !263}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3488, file: !3481, line: 118, baseType: !3515, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!130, !3502, !263, !7, !122, !382}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3488, file: !3481, line: 123, baseType: !3519, size: 64, offset: 384)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!130, !3502, !263, !3522, !382}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3488, file: !3481, line: 126, baseType: !3524, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!263, !3502}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3488, file: !3481, line: 127, baseType: !3524, size: 64, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3488, file: !3481, line: 128, baseType: !3529, size: 64, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!3484, !3502}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3488, file: !3481, line: 130, baseType: !3533, size: 64, offset: 640)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!3484, !3502, !3484}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3488, file: !3481, line: 133, baseType: !3537, size: 64, offset: 704)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!3484, !3502, !263}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3488, file: !3481, line: 135, baseType: !3541, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!130, !3502, !263, !263, !7, !7, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3481, line: 43, size: 640, elements: !3546)
!3546 = !{!3547, !3548, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3545, file: !3481, line: 44, baseType: !3484, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3545, file: !3481, line: 45, baseType: !7, size: 32, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3545, file: !3481, line: 46, baseType: !3550, size: 512, offset: 128)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 512, elements: !1078)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3488, file: !3481, line: 140, baseType: !3533, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3488, file: !3481, line: 143, baseType: !3529, size: 64, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3488, file: !3481, line: 145, baseType: !3491, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3488, file: !3481, line: 146, baseType: !3555, size: 64, offset: 1024)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!130, !3502, !3558}
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3481, line: 29, size: 128, elements: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3559, file: !3481, line: 30, baseType: !7, size: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3559, file: !3481, line: 31, baseType: !7, size: 32, offset: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3559, file: !3481, line: 32, baseType: !3502, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3488, file: !3481, line: 148, baseType: !3565, size: 64, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!130, !3502, !3177}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3480, file: !3481, line: 20, baseType: !3177, size: 64, offset: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3472, file: !3473, line: 57, baseType: !3570, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3473, line: 31, size: 704, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3571, file: !3473, line: 32, baseType: !289, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3571, file: !3473, line: 33, baseType: !130, size: 32, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3571, file: !3473, line: 34, baseType: !122, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3571, file: !3473, line: 35, baseType: !3570, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3571, file: !3473, line: 43, baseType: !3154, size: 448, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3472, file: !3473, line: 58, baseType: !3570, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3472, file: !3473, line: 59, baseType: !3471, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3472, file: !3473, line: 60, baseType: !3471, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3472, file: !3473, line: 61, baseType: !3471, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3472, file: !3473, line: 63, baseType: !2891, size: 512, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3472, file: !3473, line: 65, baseType: !131, size: 64, offset: 1216)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3472, file: !3473, line: 66, baseType: !122, size: 64, offset: 1280)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3465, file: !88, line: 108, baseType: !3586, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!130, !3457, !3589, !87}
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !88, line: 63, size: 640, elements: !3591)
!3591 = !{!3592, !3593, !3594}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3590, file: !88, line: 64, baseType: !3484, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3590, file: !88, line: 65, baseType: !130, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3590, file: !88, line: 66, baseType: !3595, size: 512, offset: 96)
!3595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 512, elements: !1483)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3465, file: !88, line: 110, baseType: !3597, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!130, !3457, !7, !3600}
!3600 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !124, line: 164, baseType: !131)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3465, file: !88, line: 111, baseType: !3602, size: 64, offset: 192)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !3457, !7}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3465, file: !88, line: 112, baseType: !3606, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!130, !3457, !3471, !3609, !7, !3611, !2374}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3465, file: !88, line: 117, baseType: !3613, size: 64, offset: 320)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!130, !3457, !7, !7, !122}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3465, file: !88, line: 119, baseType: !3617, size: 64, offset: 384)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !3457, !7, !7}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3465, file: !88, line: 121, baseType: !3621, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!130, !3457, !3624, !294}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3626, line: 11, flags: DIFlagFwdDecl)
!3626 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3465, file: !88, line: 122, baseType: !3628, size: 64, offset: 512)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3457, !3624}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3465, file: !88, line: 123, baseType: !3632, size: 64, offset: 576)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!130, !3457, !3589, !3611, !2374}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3458, file: !88, line: 166, baseType: !122, size: 64, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3458, file: !88, line: 167, baseType: !7, size: 32, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3458, file: !88, line: 168, baseType: !7, size: 32, offset: 352)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3458, file: !88, line: 171, baseType: !3484, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3458, file: !88, line: 172, baseType: !87, size: 32, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3458, file: !88, line: 173, baseType: !3641, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !88, line: 134, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3458, file: !88, line: 175, baseType: !3457, size: 64, offset: 576)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3458, file: !88, line: 182, baseType: !3600, size: 64, offset: 640)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3458, file: !88, line: 183, baseType: !7, size: 32, offset: 704)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3458, file: !88, line: 184, baseType: !7, size: 32, offset: 736)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3458, file: !88, line: 185, baseType: !554, size: 128, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3458, file: !88, line: 186, baseType: !922, size: 192, offset: 896)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3458, file: !88, line: 187, baseType: !3650, offset: 1088)
!3650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2083)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3178, file: !67, line: 499, baseType: !410, size: 128, offset: 4224)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3178, file: !67, line: 502, baseType: !3653, size: 64, offset: 4352)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3655)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3178, file: !67, line: 504, baseType: !3657, size: 64, offset: 4416)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3178, file: !67, line: 505, baseType: !219, size: 64, offset: 4480)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3178, file: !67, line: 510, baseType: !219, size: 64, offset: 4544)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3178, file: !67, line: 511, baseType: !3661, size: 64, offset: 4608)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3663)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3178, file: !67, line: 513, baseType: !3665, size: 64, offset: 4672)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3667)
!3667 = !{!3668, !3669}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3666, file: !67, line: 293, baseType: !7, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3666, file: !67, line: 294, baseType: !131, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3178, file: !67, line: 515, baseType: !410, size: 128, offset: 4736)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3178, file: !67, line: 526, baseType: !3672, offset: 4864)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3673, line: 5, elements: !459)
!3673 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3178, file: !67, line: 528, baseType: !3471, size: 64, offset: 4864)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3178, file: !67, line: 529, baseType: !3484, size: 64, offset: 4928)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3178, file: !67, line: 534, baseType: !317, size: 32, offset: 4992)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3178, file: !67, line: 535, baseType: !213, size: 32, offset: 5024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3178, file: !67, line: 537, baseType: !558, offset: 5056)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3178, file: !67, line: 538, baseType: !410, size: 128, offset: 5056)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3178, file: !67, line: 540, baseType: !2872, size: 64, offset: 5184)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3178, file: !67, line: 541, baseType: !2879, size: 64, offset: 5248)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3178, file: !67, line: 543, baseType: !3200, size: 64, offset: 5312)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3178, file: !67, line: 544, baseType: !3684, size: 64, offset: 5376)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3178, file: !67, line: 545, baseType: !3687, size: 64, offset: 5440)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3178, file: !67, line: 547, baseType: !294, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3178, file: !67, line: 548, baseType: !294, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3178, file: !67, line: 549, baseType: !294, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3178, file: !67, line: 550, baseType: !294, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2873, file: !2874, line: 63, baseType: !3694, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!289, !3177, !3198}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2873, file: !2874, line: 65, baseType: !3698, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !2872}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2873, file: !2874, line: 66, baseType: !3200, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2873, file: !2874, line: 68, baseType: !3209, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2873, file: !2874, line: 70, baseType: !2970, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2873, file: !2874, line: 71, baseType: !3705, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!1879, !3177}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2873, file: !2874, line: 73, baseType: !3709, size: 64, offset: 768)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3177, !3002, !3003}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2873, file: !2874, line: 75, baseType: !3204, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2873, file: !2874, line: 77, baseType: !3321, size: 64, offset: 896)
!3714 = !DIGlobalVariableExpression(var: !3715, expr: !DIExpression())
!3715 = distinct !DIGlobalVariable(name: "init_usb_class_mutex", scope: !2, file: !3, line: 32, type: !922, isLocal: true, isDefinition: true)
!3716 = !DIGlobalVariableExpression(var: !3717, expr: !DIExpression())
!3717 = distinct !DIGlobalVariable(name: "__key", scope: !3718, file: !3, line: 91, type: !457, isLocal: true, isDefinition: true)
!3718 = distinct !DISubprogram(name: "init_usb_class", scope: !3, file: !3, line: 75, type: !3719, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!130}
!3721 = !DIGlobalVariableExpression(var: !3722, expr: !DIExpression())
!3722 = distinct !DIGlobalVariable(name: "minor_rwsem", scope: !2, file: !3, line: 31, type: !596, isLocal: true, isDefinition: true)
!3723 = !{i32 7, !"Dwarf Version", i32 4}
!3724 = !{i32 2, !"Debug Info Version", i32 3}
!3725 = !{i32 1, !"wchar_size", i32 2}
!3726 = !{i32 1, !"Code Model", i32 2}
!3727 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3728 = distinct !DISubprogram(name: "usb_major_init", scope: !3, file: !3, line: 120, type: !3719, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3729 = !DILocalVariable(name: "error", scope: !3728, file: !3, line: 122, type: !130)
!3730 = !DILocation(line: 122, column: 6, scope: !3728)
!3731 = !DILocation(line: 124, column: 10, scope: !3728)
!3732 = !DILocation(line: 124, column: 8, scope: !3728)
!3733 = !DILocation(line: 125, column: 6, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3728, file: !3, line: 125, column: 6)
!3735 = !DILocation(line: 125, column: 6, scope: !3728)
!3736 = !DILocation(line: 126, column: 3, scope: !3734)
!3737 = !DILocation(line: 129, column: 9, scope: !3728)
!3738 = !DILocation(line: 129, column: 2, scope: !3728)
!3739 = distinct !DISubprogram(name: "register_chrdev", scope: !38, file: !38, line: 2589, type: !3740, scopeLine: 2591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!130, !7, !263, !137}
!3742 = !DILocalVariable(name: "major", arg: 1, scope: !3739, file: !38, line: 2589, type: !7)
!3743 = !DILocation(line: 2589, column: 48, scope: !3739)
!3744 = !DILocalVariable(name: "name", arg: 2, scope: !3739, file: !38, line: 2589, type: !263)
!3745 = !DILocation(line: 2589, column: 67, scope: !3739)
!3746 = !DILocalVariable(name: "fops", arg: 3, scope: !3739, file: !38, line: 2590, type: !137)
!3747 = !DILocation(line: 2590, column: 37, scope: !3739)
!3748 = !DILocation(line: 2592, column: 27, scope: !3739)
!3749 = !DILocation(line: 2592, column: 42, scope: !3739)
!3750 = !DILocation(line: 2592, column: 48, scope: !3739)
!3751 = !DILocation(line: 2592, column: 9, scope: !3739)
!3752 = !DILocation(line: 2592, column: 2, scope: !3739)
!3753 = distinct !DISubprogram(name: "usb_major_cleanup", scope: !3, file: !3, line: 132, type: !1628, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3754 = !DILocation(line: 134, column: 2, scope: !3753)
!3755 = !DILocation(line: 135, column: 1, scope: !3753)
!3756 = distinct !DISubprogram(name: "unregister_chrdev", scope: !38, file: !38, line: 2595, type: !3757, scopeLine: 2596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !7, !263}
!3759 = !DILocalVariable(name: "major", arg: 1, scope: !3756, file: !38, line: 2595, type: !7)
!3760 = !DILocation(line: 2595, column: 51, scope: !3756)
!3761 = !DILocalVariable(name: "name", arg: 2, scope: !3756, file: !38, line: 2595, type: !263)
!3762 = !DILocation(line: 2595, column: 70, scope: !3756)
!3763 = !DILocation(line: 2597, column: 22, scope: !3756)
!3764 = !DILocation(line: 2597, column: 37, scope: !3756)
!3765 = !DILocation(line: 2597, column: 2, scope: !3756)
!3766 = !DILocation(line: 2598, column: 1, scope: !3756)
!3767 = distinct !DISubprogram(name: "usb_register_dev", scope: !3, file: !3, line: 156, type: !3768, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!130, !3770, !3862}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !6, line: 232, size: 6272, elements: !3772)
!3772 = !{!3773, !3835, !3836, !3837, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !3771, file: !6, line: 235, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !6, line: 82, size: 320, elements: !3776)
!3776 = !{!3777, !3790, !3791, !3793, !3834}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3775, file: !6, line: 83, baseType: !3778, size: 72)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !3779, line: 389, size: 72, elements: !3780)
!3779 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3778, file: !3779, line: 390, baseType: !1101, size: 8)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3778, file: !3779, line: 391, baseType: !1101, size: 8, offset: 8)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !3778, file: !3779, line: 393, baseType: !1101, size: 8, offset: 16)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !3778, file: !3779, line: 394, baseType: !1101, size: 8, offset: 24)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !3778, file: !3779, line: 395, baseType: !1101, size: 8, offset: 32)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !3778, file: !3779, line: 396, baseType: !1101, size: 8, offset: 40)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !3778, file: !3779, line: 397, baseType: !1101, size: 8, offset: 48)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !3778, file: !3779, line: 398, baseType: !1101, size: 8, offset: 56)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !3778, file: !3779, line: 399, baseType: !1101, size: 8, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3775, file: !6, line: 85, baseType: !130, size: 32, offset: 96)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3775, file: !6, line: 86, baseType: !3792, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !3775, file: !6, line: 91, baseType: !3794, size: 64, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !6, line: 67, size: 640, elements: !3796)
!3796 = !{!3797, !3809, !3817, !3825, !3826, !3827, !3830, !3831, !3832, !3833}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3795, file: !6, line: 68, baseType: !3798, size: 72)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !3779, line: 407, size: 72, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3806, !3807, !3808}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3798, file: !3779, line: 408, baseType: !1101, size: 8)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3798, file: !3779, line: 409, baseType: !1101, size: 8, offset: 8)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3798, file: !3779, line: 411, baseType: !1101, size: 8, offset: 16)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3798, file: !3779, line: 412, baseType: !1101, size: 8, offset: 24)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3798, file: !3779, line: 413, baseType: !3805, size: 16, offset: 32)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2687, line: 29, baseType: !689)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3798, file: !3779, line: 414, baseType: !1101, size: 8, offset: 48)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3798, file: !3779, line: 418, baseType: !1101, size: 8, offset: 56)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3798, file: !3779, line: 419, baseType: !1101, size: 8, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3795, file: !6, line: 69, baseType: !3810, size: 48, offset: 72)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !3779, line: 689, size: 48, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815, !3816}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3810, file: !3779, line: 690, baseType: !1101, size: 8)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3810, file: !3779, line: 691, baseType: !1101, size: 8, offset: 8)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3810, file: !3779, line: 693, baseType: !1101, size: 8, offset: 16)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3810, file: !3779, line: 694, baseType: !1101, size: 8, offset: 24)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3810, file: !3779, line: 695, baseType: !3805, size: 16, offset: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3795, file: !6, line: 70, baseType: !3818, size: 64, offset: 120)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !3779, line: 677, size: 64, elements: !3819)
!3819 = !{!3820, !3821, !3822, !3823}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3818, file: !3779, line: 678, baseType: !1101, size: 8)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3818, file: !3779, line: 679, baseType: !1101, size: 8, offset: 8)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3818, file: !3779, line: 680, baseType: !3805, size: 16, offset: 16)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3818, file: !3779, line: 681, baseType: !3824, size: 32, offset: 32)
!3824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2687, line: 31, baseType: !215)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3795, file: !6, line: 71, baseType: !410, size: 128, offset: 192)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3795, file: !6, line: 72, baseType: !122, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3795, file: !6, line: 73, baseType: !3828, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !6, line: 48, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3795, file: !6, line: 75, baseType: !3792, size: 64, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3795, file: !6, line: 76, baseType: !130, size: 32, offset: 512)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3795, file: !6, line: 77, baseType: !130, size: 32, offset: 544)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3795, file: !6, line: 78, baseType: !130, size: 32, offset: 576)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3775, file: !6, line: 93, baseType: !289, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !3771, file: !6, line: 237, baseType: !3774, size: 64, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !3771, file: !6, line: 239, baseType: !7, size: 32, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !3771, file: !6, line: 243, baseType: !3838, size: 64, offset: 192)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !3779, line: 783, size: 64, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3839, file: !3779, line: 784, baseType: !1101, size: 8)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3839, file: !3779, line: 785, baseType: !1101, size: 8, offset: 8)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !3839, file: !3779, line: 787, baseType: !1101, size: 8, offset: 16)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !3839, file: !3779, line: 788, baseType: !1101, size: 8, offset: 24)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !3839, file: !3779, line: 789, baseType: !1101, size: 8, offset: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !3839, file: !3779, line: 790, baseType: !1101, size: 8, offset: 40)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !3839, file: !3779, line: 791, baseType: !1101, size: 8, offset: 48)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !3839, file: !3779, line: 792, baseType: !1101, size: 8, offset: 56)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3771, file: !6, line: 245, baseType: !130, size: 32, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3771, file: !6, line: 247, baseType: !5, size: 32, offset: 288)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !3771, file: !6, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !3771, file: !6, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !3771, file: !6, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !3771, file: !6, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !3771, file: !6, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !3771, file: !6, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !3771, file: !6, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3771, file: !6, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3771, file: !6, line: 257, baseType: !3178, size: 5568, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !3771, file: !6, line: 258, baseType: !3177, size: 64, offset: 5952)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !3771, file: !6, line: 259, baseType: !1709, size: 256, offset: 6016)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_class_driver", file: !6, line: 1274, size: 256, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3863, file: !6, line: 1275, baseType: !289, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3863, file: !6, line: 1276, baseType: !3694, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3863, file: !6, line: 1277, baseType: !137, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "minor_base", scope: !3863, file: !6, line: 1278, baseType: !130, size: 32, offset: 192)
!3869 = !DILocalVariable(name: "intf", arg: 1, scope: !3767, file: !3, line: 156, type: !3770)
!3870 = !DILocation(line: 156, column: 44, scope: !3767)
!3871 = !DILocalVariable(name: "class_driver", arg: 2, scope: !3767, file: !3, line: 157, type: !3862)
!3872 = !DILocation(line: 157, column: 33, scope: !3767)
!3873 = !DILocalVariable(name: "retval", scope: !3767, file: !3, line: 159, type: !130)
!3874 = !DILocation(line: 159, column: 6, scope: !3767)
!3875 = !DILocalVariable(name: "minor_base", scope: !3767, file: !3, line: 160, type: !130)
!3876 = !DILocation(line: 160, column: 6, scope: !3767)
!3877 = !DILocation(line: 160, column: 19, scope: !3767)
!3878 = !DILocation(line: 160, column: 33, scope: !3767)
!3879 = !DILocalVariable(name: "minor", scope: !3767, file: !3, line: 161, type: !130)
!3880 = !DILocation(line: 161, column: 6, scope: !3767)
!3881 = !DILocalVariable(name: "name", scope: !3767, file: !3, line: 162, type: !3882)
!3882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 160, elements: !1953)
!3883 = !DILocation(line: 162, column: 7, scope: !3767)
!3884 = !DILocation(line: 173, column: 6, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 173, column: 6)
!3886 = !DILocation(line: 173, column: 20, scope: !3885)
!3887 = !DILocation(line: 173, column: 25, scope: !3885)
!3888 = !DILocation(line: 173, column: 6, scope: !3767)
!3889 = !DILocation(line: 174, column: 3, scope: !3885)
!3890 = !DILocation(line: 175, column: 6, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 175, column: 6)
!3892 = !DILocation(line: 175, column: 12, scope: !3891)
!3893 = !DILocation(line: 175, column: 18, scope: !3891)
!3894 = !DILocation(line: 175, column: 6, scope: !3767)
!3895 = !DILocation(line: 176, column: 3, scope: !3891)
!3896 = !DILocation(line: 178, column: 2, scope: !3767)
!3897 = !DILocation(line: 179, column: 11, scope: !3767)
!3898 = !DILocation(line: 179, column: 9, scope: !3767)
!3899 = !DILocation(line: 180, column: 2, scope: !3767)
!3900 = !DILocation(line: 182, column: 6, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 182, column: 6)
!3902 = !DILocation(line: 182, column: 6, scope: !3767)
!3903 = !DILocation(line: 183, column: 10, scope: !3901)
!3904 = !DILocation(line: 183, column: 3, scope: !3901)
!3905 = !DILocation(line: 187, column: 2, scope: !3767)
!3906 = !DILocation(line: 188, column: 15, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 188, column: 2)
!3908 = !DILocation(line: 188, column: 13, scope: !3907)
!3909 = !DILocation(line: 188, column: 7, scope: !3907)
!3910 = !DILocation(line: 188, column: 27, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 188, column: 2)
!3912 = !DILocation(line: 188, column: 33, scope: !3911)
!3913 = !DILocation(line: 188, column: 2, scope: !3907)
!3914 = !DILocation(line: 189, column: 18, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 189, column: 7)
!3916 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 188, column: 60)
!3917 = !DILocation(line: 189, column: 7, scope: !3915)
!3918 = !DILocation(line: 189, column: 7, scope: !3916)
!3919 = !DILocation(line: 190, column: 4, scope: !3915)
!3920 = !DILocation(line: 192, column: 23, scope: !3916)
!3921 = !DILocation(line: 192, column: 37, scope: !3916)
!3922 = !DILocation(line: 192, column: 14, scope: !3916)
!3923 = !DILocation(line: 192, column: 3, scope: !3916)
!3924 = !DILocation(line: 192, column: 21, scope: !3916)
!3925 = !DILocation(line: 193, column: 17, scope: !3916)
!3926 = !DILocation(line: 193, column: 3, scope: !3916)
!3927 = !DILocation(line: 193, column: 9, scope: !3916)
!3928 = !DILocation(line: 193, column: 15, scope: !3916)
!3929 = !DILocation(line: 194, column: 3, scope: !3916)
!3930 = !DILocation(line: 188, column: 51, scope: !3911)
!3931 = !DILocation(line: 188, column: 2, scope: !3911)
!3932 = distinct !{!3932, !3913, !3933}
!3933 = !DILocation(line: 195, column: 2, scope: !3907)
!3934 = !DILocation(line: 196, column: 6, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 196, column: 6)
!3936 = !DILocation(line: 196, column: 12, scope: !3935)
!3937 = !DILocation(line: 196, column: 18, scope: !3935)
!3938 = !DILocation(line: 196, column: 6, scope: !3767)
!3939 = !DILocation(line: 197, column: 3, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 196, column: 23)
!3941 = !DILocation(line: 198, column: 3, scope: !3940)
!3942 = !DILocation(line: 202, column: 11, scope: !3767)
!3943 = !DILocation(line: 202, column: 31, scope: !3767)
!3944 = !DILocation(line: 202, column: 45, scope: !3767)
!3945 = !DILocation(line: 202, column: 51, scope: !3767)
!3946 = !DILocation(line: 202, column: 59, scope: !3767)
!3947 = !DILocation(line: 202, column: 57, scope: !3767)
!3948 = !DILocation(line: 202, column: 2, scope: !3767)
!3949 = !DILocation(line: 203, column: 32, scope: !3767)
!3950 = !DILocation(line: 203, column: 43, scope: !3767)
!3951 = !DILocation(line: 203, column: 51, scope: !3767)
!3952 = !DILocation(line: 203, column: 57, scope: !3767)
!3953 = !DILocation(line: 204, column: 11, scope: !3767)
!3954 = !DILocation(line: 204, column: 36, scope: !3767)
!3955 = !DILocation(line: 205, column: 27, scope: !3767)
!3956 = !DILocation(line: 205, column: 17, scope: !3767)
!3957 = !DILocation(line: 203, column: 18, scope: !3767)
!3958 = !DILocation(line: 203, column: 2, scope: !3767)
!3959 = !DILocation(line: 203, column: 8, scope: !3767)
!3960 = !DILocation(line: 203, column: 16, scope: !3767)
!3961 = !DILocation(line: 206, column: 13, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 206, column: 6)
!3963 = !DILocation(line: 206, column: 19, scope: !3962)
!3964 = !DILocation(line: 206, column: 6, scope: !3962)
!3965 = !DILocation(line: 206, column: 6, scope: !3767)
!3966 = !DILocation(line: 207, column: 14, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 206, column: 29)
!3968 = !DILocation(line: 207, column: 3, scope: !3967)
!3969 = !DILocation(line: 207, column: 21, scope: !3967)
!3970 = !DILocation(line: 208, column: 3, scope: !3967)
!3971 = !DILocation(line: 208, column: 9, scope: !3967)
!3972 = !DILocation(line: 208, column: 15, scope: !3967)
!3973 = !DILocation(line: 209, column: 20, scope: !3967)
!3974 = !DILocation(line: 209, column: 26, scope: !3967)
!3975 = !DILocation(line: 209, column: 12, scope: !3967)
!3976 = !DILocation(line: 209, column: 10, scope: !3967)
!3977 = !DILocation(line: 210, column: 2, scope: !3967)
!3978 = !DILocation(line: 211, column: 2, scope: !3767)
!3979 = !DILocation(line: 212, column: 9, scope: !3767)
!3980 = !DILocation(line: 212, column: 2, scope: !3767)
!3981 = !DILocation(line: 213, column: 1, scope: !3767)
!3982 = !DILocalVariable(name: "s", arg: 1, scope: !3983, file: !115, line: 445, type: !764)
!3983 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !115, file: !115, line: 445, type: !3984, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!122, !764, !123, !382}
!3986 = !DILocation(line: 445, column: 72, scope: !3983, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 552, column: 10, scope: !3988, inlinedAt: !3993)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !115, line: 540, column: 34)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !115, line: 540, column: 6)
!3990 = distinct !DISubprogram(name: "kmalloc", scope: !115, file: !115, line: 538, type: !3991, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!122, !382, !123}
!3993 = distinct !DILocation(line: 84, column: 14, scope: !3718)
!3994 = !DILocalVariable(name: "flags", arg: 2, scope: !3983, file: !115, line: 446, type: !123)
!3995 = !DILocation(line: 446, column: 9, scope: !3983, inlinedAt: !3987)
!3996 = !DILocalVariable(name: "size", arg: 3, scope: !3983, file: !115, line: 446, type: !382)
!3997 = !DILocation(line: 446, column: 23, scope: !3983, inlinedAt: !3987)
!3998 = !DILocalVariable(name: "ret", scope: !3983, file: !115, line: 448, type: !122)
!3999 = !DILocation(line: 448, column: 8, scope: !3983, inlinedAt: !3987)
!4000 = !DILocalVariable(name: "flags", arg: 1, scope: !4001, file: !115, line: 318, type: !123)
!4001 = distinct !DISubprogram(name: "kmalloc_type", scope: !115, file: !115, line: 318, type: !4002, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!114, !123}
!4004 = !DILocation(line: 318, column: 67, scope: !4001, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 553, column: 20, scope: !3988, inlinedAt: !3993)
!4006 = !DILocalVariable(name: "size", arg: 1, scope: !4007, file: !115, line: 346, type: !382)
!4007 = distinct !DISubprogram(name: "kmalloc_index", scope: !115, file: !115, line: 346, type: !4008, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!7, !382}
!4010 = !DILocation(line: 346, column: 58, scope: !4007, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 547, column: 11, scope: !3988, inlinedAt: !3993)
!4012 = !DILocalVariable(name: "size", arg: 1, scope: !4013, file: !115, line: 472, type: !382)
!4013 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !115, file: !115, line: 472, type: !4014, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!122, !382, !123, !7}
!4016 = !DILocation(line: 472, column: 28, scope: !4013, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 481, column: 9, scope: !4018, inlinedAt: !4019)
!4018 = distinct !DISubprogram(name: "kmalloc_large", scope: !115, file: !115, line: 478, type: !3991, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4019 = distinct !DILocation(line: 545, column: 11, scope: !4020, inlinedAt: !3993)
!4020 = distinct !DILexicalBlock(scope: !3988, file: !115, line: 544, column: 7)
!4021 = !DILocalVariable(name: "flags", arg: 2, scope: !4013, file: !115, line: 472, type: !123)
!4022 = !DILocation(line: 472, column: 40, scope: !4013, inlinedAt: !4017)
!4023 = !DILocalVariable(name: "order", arg: 3, scope: !4013, file: !115, line: 472, type: !7)
!4024 = !DILocation(line: 472, column: 60, scope: !4013, inlinedAt: !4017)
!4025 = !DILocalVariable(name: "size", arg: 1, scope: !4018, file: !115, line: 478, type: !382)
!4026 = !DILocation(line: 478, column: 51, scope: !4018, inlinedAt: !4019)
!4027 = !DILocalVariable(name: "flags", arg: 2, scope: !4018, file: !115, line: 478, type: !123)
!4028 = !DILocation(line: 478, column: 63, scope: !4018, inlinedAt: !4019)
!4029 = !DILocalVariable(name: "order", scope: !4018, file: !115, line: 480, type: !7)
!4030 = !DILocation(line: 480, column: 15, scope: !4018, inlinedAt: !4019)
!4031 = !DILocalVariable(name: "size", arg: 1, scope: !3990, file: !115, line: 538, type: !382)
!4032 = !DILocation(line: 538, column: 45, scope: !3990, inlinedAt: !3993)
!4033 = !DILocalVariable(name: "flags", arg: 2, scope: !3990, file: !115, line: 538, type: !123)
!4034 = !DILocation(line: 538, column: 57, scope: !3990, inlinedAt: !3993)
!4035 = !DILocalVariable(name: "index", scope: !3988, file: !115, line: 542, type: !7)
!4036 = !DILocation(line: 542, column: 16, scope: !3988, inlinedAt: !3993)
!4037 = !DILocalVariable(name: "result", scope: !3718, file: !3, line: 77, type: !130)
!4038 = !DILocation(line: 77, column: 6, scope: !3718)
!4039 = !DILocation(line: 79, column: 6, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 79, column: 6)
!4041 = !DILocation(line: 79, column: 16, scope: !4040)
!4042 = !DILocation(line: 79, column: 6, scope: !3718)
!4043 = !DILocation(line: 80, column: 13, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 79, column: 25)
!4045 = !DILocation(line: 80, column: 24, scope: !4044)
!4046 = !DILocation(line: 80, column: 3, scope: !4044)
!4047 = !DILocation(line: 81, column: 3, scope: !4044)
!4048 = !DILocation(line: 540, column: 27, scope: !3989, inlinedAt: !3993)
!4049 = !DILocation(line: 540, column: 6, scope: !3989, inlinedAt: !3993)
!4050 = !DILocation(line: 540, column: 6, scope: !3990, inlinedAt: !3993)
!4051 = !DILocation(line: 544, column: 7, scope: !4020, inlinedAt: !3993)
!4052 = !DILocation(line: 544, column: 12, scope: !4020, inlinedAt: !3993)
!4053 = !DILocation(line: 544, column: 7, scope: !3988, inlinedAt: !3993)
!4054 = !DILocation(line: 545, column: 25, scope: !4020, inlinedAt: !3993)
!4055 = !DILocation(line: 545, column: 31, scope: !4020, inlinedAt: !3993)
!4056 = !DILocation(line: 480, column: 33, scope: !4018, inlinedAt: !4019)
!4057 = !DILocation(line: 480, column: 23, scope: !4018, inlinedAt: !4019)
!4058 = !DILocation(line: 481, column: 29, scope: !4018, inlinedAt: !4019)
!4059 = !DILocation(line: 481, column: 35, scope: !4018, inlinedAt: !4019)
!4060 = !DILocation(line: 481, column: 42, scope: !4018, inlinedAt: !4019)
!4061 = !DILocation(line: 474, column: 23, scope: !4013, inlinedAt: !4017)
!4062 = !DILocation(line: 474, column: 29, scope: !4013, inlinedAt: !4017)
!4063 = !DILocation(line: 474, column: 36, scope: !4013, inlinedAt: !4017)
!4064 = !DILocation(line: 474, column: 9, scope: !4013, inlinedAt: !4017)
!4065 = !DILocation(line: 545, column: 4, scope: !4020, inlinedAt: !3993)
!4066 = !DILocation(line: 547, column: 25, scope: !3988, inlinedAt: !3993)
!4067 = !DILocation(line: 348, column: 7, scope: !4068, inlinedAt: !4011)
!4068 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 348, column: 6)
!4069 = !DILocation(line: 348, column: 6, scope: !4007, inlinedAt: !4011)
!4070 = !DILocation(line: 349, column: 3, scope: !4068, inlinedAt: !4011)
!4071 = !DILocation(line: 351, column: 6, scope: !4072, inlinedAt: !4011)
!4072 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 351, column: 6)
!4073 = !DILocation(line: 351, column: 11, scope: !4072, inlinedAt: !4011)
!4074 = !DILocation(line: 351, column: 6, scope: !4007, inlinedAt: !4011)
!4075 = !DILocation(line: 352, column: 3, scope: !4072, inlinedAt: !4011)
!4076 = !DILocation(line: 354, column: 32, scope: !4077, inlinedAt: !4011)
!4077 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 354, column: 6)
!4078 = !DILocation(line: 354, column: 37, scope: !4077, inlinedAt: !4011)
!4079 = !DILocation(line: 354, column: 42, scope: !4077, inlinedAt: !4011)
!4080 = !DILocation(line: 354, column: 45, scope: !4077, inlinedAt: !4011)
!4081 = !DILocation(line: 354, column: 50, scope: !4077, inlinedAt: !4011)
!4082 = !DILocation(line: 354, column: 6, scope: !4007, inlinedAt: !4011)
!4083 = !DILocation(line: 355, column: 3, scope: !4077, inlinedAt: !4011)
!4084 = !DILocation(line: 356, column: 32, scope: !4085, inlinedAt: !4011)
!4085 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 356, column: 6)
!4086 = !DILocation(line: 356, column: 37, scope: !4085, inlinedAt: !4011)
!4087 = !DILocation(line: 356, column: 43, scope: !4085, inlinedAt: !4011)
!4088 = !DILocation(line: 356, column: 46, scope: !4085, inlinedAt: !4011)
!4089 = !DILocation(line: 356, column: 51, scope: !4085, inlinedAt: !4011)
!4090 = !DILocation(line: 356, column: 6, scope: !4007, inlinedAt: !4011)
!4091 = !DILocation(line: 357, column: 3, scope: !4085, inlinedAt: !4011)
!4092 = !DILocation(line: 358, column: 6, scope: !4093, inlinedAt: !4011)
!4093 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 358, column: 6)
!4094 = !DILocation(line: 358, column: 11, scope: !4093, inlinedAt: !4011)
!4095 = !DILocation(line: 358, column: 6, scope: !4007, inlinedAt: !4011)
!4096 = !DILocation(line: 358, column: 26, scope: !4093, inlinedAt: !4011)
!4097 = !DILocation(line: 359, column: 6, scope: !4098, inlinedAt: !4011)
!4098 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 359, column: 6)
!4099 = !DILocation(line: 359, column: 11, scope: !4098, inlinedAt: !4011)
!4100 = !DILocation(line: 359, column: 6, scope: !4007, inlinedAt: !4011)
!4101 = !DILocation(line: 359, column: 26, scope: !4098, inlinedAt: !4011)
!4102 = !DILocation(line: 360, column: 6, scope: !4103, inlinedAt: !4011)
!4103 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 360, column: 6)
!4104 = !DILocation(line: 360, column: 11, scope: !4103, inlinedAt: !4011)
!4105 = !DILocation(line: 360, column: 6, scope: !4007, inlinedAt: !4011)
!4106 = !DILocation(line: 360, column: 26, scope: !4103, inlinedAt: !4011)
!4107 = !DILocation(line: 361, column: 6, scope: !4108, inlinedAt: !4011)
!4108 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 361, column: 6)
!4109 = !DILocation(line: 361, column: 11, scope: !4108, inlinedAt: !4011)
!4110 = !DILocation(line: 361, column: 6, scope: !4007, inlinedAt: !4011)
!4111 = !DILocation(line: 361, column: 26, scope: !4108, inlinedAt: !4011)
!4112 = !DILocation(line: 362, column: 6, scope: !4113, inlinedAt: !4011)
!4113 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 362, column: 6)
!4114 = !DILocation(line: 362, column: 11, scope: !4113, inlinedAt: !4011)
!4115 = !DILocation(line: 362, column: 6, scope: !4007, inlinedAt: !4011)
!4116 = !DILocation(line: 362, column: 26, scope: !4113, inlinedAt: !4011)
!4117 = !DILocation(line: 363, column: 6, scope: !4118, inlinedAt: !4011)
!4118 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 363, column: 6)
!4119 = !DILocation(line: 363, column: 11, scope: !4118, inlinedAt: !4011)
!4120 = !DILocation(line: 363, column: 6, scope: !4007, inlinedAt: !4011)
!4121 = !DILocation(line: 363, column: 26, scope: !4118, inlinedAt: !4011)
!4122 = !DILocation(line: 364, column: 6, scope: !4123, inlinedAt: !4011)
!4123 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 364, column: 6)
!4124 = !DILocation(line: 364, column: 11, scope: !4123, inlinedAt: !4011)
!4125 = !DILocation(line: 364, column: 6, scope: !4007, inlinedAt: !4011)
!4126 = !DILocation(line: 364, column: 26, scope: !4123, inlinedAt: !4011)
!4127 = !DILocation(line: 365, column: 6, scope: !4128, inlinedAt: !4011)
!4128 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 365, column: 6)
!4129 = !DILocation(line: 365, column: 11, scope: !4128, inlinedAt: !4011)
!4130 = !DILocation(line: 365, column: 6, scope: !4007, inlinedAt: !4011)
!4131 = !DILocation(line: 365, column: 26, scope: !4128, inlinedAt: !4011)
!4132 = !DILocation(line: 366, column: 6, scope: !4133, inlinedAt: !4011)
!4133 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 366, column: 6)
!4134 = !DILocation(line: 366, column: 11, scope: !4133, inlinedAt: !4011)
!4135 = !DILocation(line: 366, column: 6, scope: !4007, inlinedAt: !4011)
!4136 = !DILocation(line: 366, column: 26, scope: !4133, inlinedAt: !4011)
!4137 = !DILocation(line: 367, column: 6, scope: !4138, inlinedAt: !4011)
!4138 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 367, column: 6)
!4139 = !DILocation(line: 367, column: 11, scope: !4138, inlinedAt: !4011)
!4140 = !DILocation(line: 367, column: 6, scope: !4007, inlinedAt: !4011)
!4141 = !DILocation(line: 367, column: 26, scope: !4138, inlinedAt: !4011)
!4142 = !DILocation(line: 368, column: 6, scope: !4143, inlinedAt: !4011)
!4143 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 368, column: 6)
!4144 = !DILocation(line: 368, column: 11, scope: !4143, inlinedAt: !4011)
!4145 = !DILocation(line: 368, column: 6, scope: !4007, inlinedAt: !4011)
!4146 = !DILocation(line: 368, column: 26, scope: !4143, inlinedAt: !4011)
!4147 = !DILocation(line: 369, column: 6, scope: !4148, inlinedAt: !4011)
!4148 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 369, column: 6)
!4149 = !DILocation(line: 369, column: 11, scope: !4148, inlinedAt: !4011)
!4150 = !DILocation(line: 369, column: 6, scope: !4007, inlinedAt: !4011)
!4151 = !DILocation(line: 369, column: 26, scope: !4148, inlinedAt: !4011)
!4152 = !DILocation(line: 370, column: 6, scope: !4153, inlinedAt: !4011)
!4153 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 370, column: 6)
!4154 = !DILocation(line: 370, column: 11, scope: !4153, inlinedAt: !4011)
!4155 = !DILocation(line: 370, column: 6, scope: !4007, inlinedAt: !4011)
!4156 = !DILocation(line: 370, column: 26, scope: !4153, inlinedAt: !4011)
!4157 = !DILocation(line: 371, column: 6, scope: !4158, inlinedAt: !4011)
!4158 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 371, column: 6)
!4159 = !DILocation(line: 371, column: 11, scope: !4158, inlinedAt: !4011)
!4160 = !DILocation(line: 371, column: 6, scope: !4007, inlinedAt: !4011)
!4161 = !DILocation(line: 371, column: 26, scope: !4158, inlinedAt: !4011)
!4162 = !DILocation(line: 372, column: 6, scope: !4163, inlinedAt: !4011)
!4163 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 372, column: 6)
!4164 = !DILocation(line: 372, column: 11, scope: !4163, inlinedAt: !4011)
!4165 = !DILocation(line: 372, column: 6, scope: !4007, inlinedAt: !4011)
!4166 = !DILocation(line: 372, column: 26, scope: !4163, inlinedAt: !4011)
!4167 = !DILocation(line: 373, column: 6, scope: !4168, inlinedAt: !4011)
!4168 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 373, column: 6)
!4169 = !DILocation(line: 373, column: 11, scope: !4168, inlinedAt: !4011)
!4170 = !DILocation(line: 373, column: 6, scope: !4007, inlinedAt: !4011)
!4171 = !DILocation(line: 373, column: 26, scope: !4168, inlinedAt: !4011)
!4172 = !DILocation(line: 374, column: 6, scope: !4173, inlinedAt: !4011)
!4173 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 374, column: 6)
!4174 = !DILocation(line: 374, column: 11, scope: !4173, inlinedAt: !4011)
!4175 = !DILocation(line: 374, column: 6, scope: !4007, inlinedAt: !4011)
!4176 = !DILocation(line: 374, column: 26, scope: !4173, inlinedAt: !4011)
!4177 = !DILocation(line: 375, column: 6, scope: !4178, inlinedAt: !4011)
!4178 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 375, column: 6)
!4179 = !DILocation(line: 375, column: 11, scope: !4178, inlinedAt: !4011)
!4180 = !DILocation(line: 375, column: 6, scope: !4007, inlinedAt: !4011)
!4181 = !DILocation(line: 375, column: 27, scope: !4178, inlinedAt: !4011)
!4182 = !DILocation(line: 376, column: 6, scope: !4183, inlinedAt: !4011)
!4183 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 376, column: 6)
!4184 = !DILocation(line: 376, column: 11, scope: !4183, inlinedAt: !4011)
!4185 = !DILocation(line: 376, column: 6, scope: !4007, inlinedAt: !4011)
!4186 = !DILocation(line: 376, column: 32, scope: !4183, inlinedAt: !4011)
!4187 = !DILocation(line: 377, column: 6, scope: !4188, inlinedAt: !4011)
!4188 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 377, column: 6)
!4189 = !DILocation(line: 377, column: 11, scope: !4188, inlinedAt: !4011)
!4190 = !DILocation(line: 377, column: 6, scope: !4007, inlinedAt: !4011)
!4191 = !DILocation(line: 377, column: 32, scope: !4188, inlinedAt: !4011)
!4192 = !DILocation(line: 378, column: 6, scope: !4193, inlinedAt: !4011)
!4193 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 378, column: 6)
!4194 = !DILocation(line: 378, column: 11, scope: !4193, inlinedAt: !4011)
!4195 = !DILocation(line: 378, column: 6, scope: !4007, inlinedAt: !4011)
!4196 = !DILocation(line: 378, column: 32, scope: !4193, inlinedAt: !4011)
!4197 = !DILocation(line: 379, column: 6, scope: !4198, inlinedAt: !4011)
!4198 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 379, column: 6)
!4199 = !DILocation(line: 379, column: 11, scope: !4198, inlinedAt: !4011)
!4200 = !DILocation(line: 379, column: 6, scope: !4007, inlinedAt: !4011)
!4201 = !DILocation(line: 379, column: 33, scope: !4198, inlinedAt: !4011)
!4202 = !DILocation(line: 380, column: 6, scope: !4203, inlinedAt: !4011)
!4203 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 380, column: 6)
!4204 = !DILocation(line: 380, column: 11, scope: !4203, inlinedAt: !4011)
!4205 = !DILocation(line: 380, column: 6, scope: !4007, inlinedAt: !4011)
!4206 = !DILocation(line: 380, column: 33, scope: !4203, inlinedAt: !4011)
!4207 = !DILocation(line: 381, column: 6, scope: !4208, inlinedAt: !4011)
!4208 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 381, column: 6)
!4209 = !DILocation(line: 381, column: 11, scope: !4208, inlinedAt: !4011)
!4210 = !DILocation(line: 381, column: 6, scope: !4007, inlinedAt: !4011)
!4211 = !DILocation(line: 381, column: 33, scope: !4208, inlinedAt: !4011)
!4212 = !DILocation(line: 382, column: 2, scope: !4213, inlinedAt: !4011)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !115, line: 382, column: 2)
!4214 = distinct !DILexicalBlock(scope: !4007, file: !115, line: 382, column: 2)
!4215 = !{i32 -2144241408, i32 -2144241379, i32 -2144241333, i32 -2144241275, i32 -2144241221, i32 -2144241167, i32 -2144241112, i32 -2144241081}
!4216 = !DILocation(line: 382, column: 2, scope: !4217, inlinedAt: !4011)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !115, line: 382, column: 2)
!4218 = distinct !DILexicalBlock(scope: !4214, file: !115, line: 382, column: 2)
!4219 = !{i32 -2144240638, i32 -2144240631, i32 -2144240577, i32 -2144240546, i32 -2144240516}
!4220 = !DILocation(line: 382, column: 2, scope: !4218, inlinedAt: !4011)
!4221 = !DILocation(line: 386, column: 1, scope: !4007, inlinedAt: !4011)
!4222 = !DILocation(line: 547, column: 9, scope: !3988, inlinedAt: !3993)
!4223 = !DILocation(line: 549, column: 8, scope: !4224, inlinedAt: !3993)
!4224 = distinct !DILexicalBlock(scope: !3988, file: !115, line: 549, column: 7)
!4225 = !DILocation(line: 549, column: 7, scope: !3988, inlinedAt: !3993)
!4226 = !DILocation(line: 550, column: 4, scope: !4224, inlinedAt: !3993)
!4227 = !DILocation(line: 553, column: 33, scope: !3988, inlinedAt: !3993)
!4228 = !DILocation(line: 325, column: 6, scope: !4229, inlinedAt: !4005)
!4229 = distinct !DILexicalBlock(scope: !4001, file: !115, line: 325, column: 6)
!4230 = !DILocation(line: 325, column: 6, scope: !4001, inlinedAt: !4005)
!4231 = !DILocation(line: 326, column: 3, scope: !4229, inlinedAt: !4005)
!4232 = !DILocation(line: 332, column: 9, scope: !4001, inlinedAt: !4005)
!4233 = !DILocation(line: 332, column: 15, scope: !4001, inlinedAt: !4005)
!4234 = !DILocation(line: 332, column: 2, scope: !4001, inlinedAt: !4005)
!4235 = !DILocation(line: 336, column: 1, scope: !4001, inlinedAt: !4005)
!4236 = !DILocation(line: 553, column: 5, scope: !3988, inlinedAt: !3993)
!4237 = !DILocation(line: 553, column: 41, scope: !3988, inlinedAt: !3993)
!4238 = !DILocation(line: 554, column: 5, scope: !3988, inlinedAt: !3993)
!4239 = !DILocation(line: 554, column: 12, scope: !3988, inlinedAt: !3993)
!4240 = !DILocation(line: 448, column: 31, scope: !3983, inlinedAt: !3987)
!4241 = !DILocation(line: 448, column: 34, scope: !3983, inlinedAt: !3987)
!4242 = !DILocation(line: 448, column: 14, scope: !3983, inlinedAt: !3987)
!4243 = !DILocation(line: 450, column: 22, scope: !3983, inlinedAt: !3987)
!4244 = !DILocation(line: 450, column: 25, scope: !3983, inlinedAt: !3987)
!4245 = !DILocation(line: 450, column: 30, scope: !3983, inlinedAt: !3987)
!4246 = !DILocation(line: 450, column: 36, scope: !3983, inlinedAt: !3987)
!4247 = !DILocation(line: 450, column: 8, scope: !3983, inlinedAt: !3987)
!4248 = !DILocation(line: 450, column: 6, scope: !3983, inlinedAt: !3987)
!4249 = !DILocation(line: 451, column: 9, scope: !3983, inlinedAt: !3987)
!4250 = !DILocation(line: 552, column: 3, scope: !3988, inlinedAt: !3993)
!4251 = !DILocation(line: 557, column: 19, scope: !3990, inlinedAt: !3993)
!4252 = !DILocation(line: 557, column: 25, scope: !3990, inlinedAt: !3993)
!4253 = !DILocation(line: 557, column: 9, scope: !3990, inlinedAt: !3993)
!4254 = !DILocation(line: 557, column: 2, scope: !3990, inlinedAt: !3993)
!4255 = !DILocation(line: 558, column: 1, scope: !3990, inlinedAt: !3993)
!4256 = !DILocation(line: 84, column: 14, scope: !3718)
!4257 = !DILocation(line: 84, column: 12, scope: !3718)
!4258 = !DILocation(line: 85, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 85, column: 6)
!4260 = !DILocation(line: 85, column: 6, scope: !3718)
!4261 = !DILocation(line: 86, column: 10, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 85, column: 18)
!4263 = !DILocation(line: 87, column: 3, scope: !4262)
!4264 = !DILocation(line: 90, column: 13, scope: !3718)
!4265 = !DILocation(line: 90, column: 24, scope: !3718)
!4266 = !DILocation(line: 90, column: 2, scope: !3718)
!4267 = !DILocation(line: 91, column: 21, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 91, column: 21)
!4269 = !DILocation(line: 91, column: 2, scope: !3718)
!4270 = !DILocation(line: 91, column: 13, scope: !3718)
!4271 = !DILocation(line: 91, column: 19, scope: !3718)
!4272 = !DILocation(line: 92, column: 13, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 92, column: 6)
!4274 = !DILocation(line: 92, column: 24, scope: !4273)
!4275 = !DILocation(line: 92, column: 6, scope: !4273)
!4276 = !DILocation(line: 92, column: 6, scope: !3718)
!4277 = !DILocation(line: 93, column: 20, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 92, column: 32)
!4279 = !DILocation(line: 93, column: 31, scope: !4278)
!4280 = !DILocation(line: 93, column: 12, scope: !4278)
!4281 = !DILocation(line: 93, column: 10, scope: !4278)
!4282 = !DILocation(line: 94, column: 3, scope: !4278)
!4283 = !DILocation(line: 95, column: 9, scope: !4278)
!4284 = !DILocation(line: 95, column: 3, scope: !4278)
!4285 = !DILocation(line: 96, column: 13, scope: !4278)
!4286 = !DILocation(line: 97, column: 3, scope: !4278)
!4287 = !DILocation(line: 99, column: 2, scope: !3718)
!4288 = !DILocation(line: 99, column: 13, scope: !3718)
!4289 = !DILocation(line: 99, column: 20, scope: !3718)
!4290 = !DILocation(line: 99, column: 28, scope: !3718)
!4291 = !DILabel(scope: !3718, name: "exit", file: !3, line: 101)
!4292 = !DILocation(line: 101, column: 1, scope: !3718)
!4293 = !DILocation(line: 102, column: 9, scope: !3718)
!4294 = !DILocation(line: 102, column: 2, scope: !3718)
!4295 = distinct !DISubprogram(name: "kbasename", scope: !4296, file: !4296, line: 252, type: !4297, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4296 = !DIFile(filename: "./include/linux/string.h", directory: "/home/lizy2001/genbc/linux")
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!263, !263}
!4299 = !DILocalVariable(name: "path", arg: 1, scope: !4295, file: !4296, line: 252, type: !263)
!4300 = !DILocation(line: 252, column: 49, scope: !4295)
!4301 = !DILocalVariable(name: "tail", scope: !4295, file: !4296, line: 254, type: !263)
!4302 = !DILocation(line: 254, column: 14, scope: !4295)
!4303 = !DILocation(line: 254, column: 29, scope: !4295)
!4304 = !DILocation(line: 254, column: 21, scope: !4295)
!4305 = !DILocation(line: 255, column: 9, scope: !4295)
!4306 = !DILocation(line: 255, column: 16, scope: !4295)
!4307 = !DILocation(line: 255, column: 21, scope: !4295)
!4308 = !DILocation(line: 255, column: 27, scope: !4295)
!4309 = !DILocation(line: 255, column: 2, scope: !4295)
!4310 = distinct !DISubprogram(name: "IS_ERR", scope: !4311, file: !4311, line: 34, type: !4312, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4311 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!294, !1879}
!4314 = !DILocalVariable(name: "ptr", arg: 1, scope: !4310, file: !4311, line: 34, type: !1879)
!4315 = !DILocation(line: 34, column: 60, scope: !4310)
!4316 = !DILocation(line: 36, column: 9, scope: !4310)
!4317 = !DILocation(line: 36, column: 2, scope: !4310)
!4318 = distinct !DISubprogram(name: "PTR_ERR", scope: !4311, file: !4311, line: 29, type: !4319, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!132, !1879}
!4321 = !DILocalVariable(name: "ptr", arg: 1, scope: !4318, file: !4311, line: 29, type: !1879)
!4322 = !DILocation(line: 29, column: 61, scope: !4318)
!4323 = !DILocation(line: 31, column: 16, scope: !4318)
!4324 = !DILocation(line: 31, column: 9, scope: !4318)
!4325 = !DILocation(line: 31, column: 2, scope: !4318)
!4326 = distinct !DISubprogram(name: "usb_deregister_dev", scope: !3, file: !3, line: 230, type: !4327, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !3770, !3862}
!4329 = !DILocalVariable(name: "intf", arg: 1, scope: !4326, file: !3, line: 230, type: !3770)
!4330 = !DILocation(line: 230, column: 47, scope: !4326)
!4331 = !DILocalVariable(name: "class_driver", arg: 2, scope: !4326, file: !3, line: 231, type: !3862)
!4332 = !DILocation(line: 231, column: 29, scope: !4326)
!4333 = !DILocation(line: 233, column: 6, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 233, column: 6)
!4335 = !DILocation(line: 233, column: 12, scope: !4334)
!4336 = !DILocation(line: 233, column: 18, scope: !4334)
!4337 = !DILocation(line: 233, column: 6, scope: !4326)
!4338 = !DILocation(line: 234, column: 3, scope: !4334)
!4339 = !DILocation(line: 237, column: 17, scope: !4326)
!4340 = !DILocation(line: 237, column: 28, scope: !4326)
!4341 = !DILocation(line: 237, column: 35, scope: !4326)
!4342 = !DILocation(line: 237, column: 2, scope: !4326)
!4343 = !DILocation(line: 239, column: 2, scope: !4326)
!4344 = !DILocation(line: 240, column: 13, scope: !4326)
!4345 = !DILocation(line: 240, column: 19, scope: !4326)
!4346 = !DILocation(line: 240, column: 2, scope: !4326)
!4347 = !DILocation(line: 240, column: 26, scope: !4326)
!4348 = !DILocation(line: 241, column: 2, scope: !4326)
!4349 = !DILocation(line: 243, column: 2, scope: !4326)
!4350 = !DILocation(line: 243, column: 8, scope: !4326)
!4351 = !DILocation(line: 243, column: 16, scope: !4326)
!4352 = !DILocation(line: 244, column: 2, scope: !4326)
!4353 = !DILocation(line: 244, column: 8, scope: !4326)
!4354 = !DILocation(line: 244, column: 14, scope: !4326)
!4355 = !DILocation(line: 245, column: 2, scope: !4326)
!4356 = !DILocation(line: 246, column: 1, scope: !4326)
!4357 = distinct !DISubprogram(name: "destroy_usb_class", scope: !3, file: !3, line: 113, type: !1628, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4358 = !DILocation(line: 115, column: 2, scope: !4357)
!4359 = !DILocation(line: 116, column: 12, scope: !4357)
!4360 = !DILocation(line: 116, column: 23, scope: !4357)
!4361 = !DILocation(line: 116, column: 2, scope: !4357)
!4362 = !DILocation(line: 117, column: 2, scope: !4357)
!4363 = !DILocation(line: 118, column: 1, scope: !4357)
!4364 = distinct !DISubprogram(name: "usb_open", scope: !3, file: !3, line: 34, type: !2702, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4365 = !DILocalVariable(name: "inode", arg: 1, scope: !4364, file: !3, line: 34, type: !227)
!4366 = !DILocation(line: 34, column: 35, scope: !4364)
!4367 = !DILocalVariable(name: "file", arg: 2, scope: !4364, file: !3, line: 34, type: !150)
!4368 = !DILocation(line: 34, column: 55, scope: !4364)
!4369 = !DILocalVariable(name: "err", scope: !4364, file: !3, line: 36, type: !130)
!4370 = !DILocation(line: 36, column: 6, scope: !4364)
!4371 = !DILocalVariable(name: "new_fops", scope: !4364, file: !3, line: 37, type: !137)
!4372 = !DILocation(line: 37, column: 32, scope: !4364)
!4373 = !DILocation(line: 39, column: 2, scope: !4364)
!4374 = !DILocation(line: 40, column: 13, scope: !4364)
!4375 = !DILocation(line: 40, column: 11, scope: !4364)
!4376 = !DILocation(line: 42, column: 7, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 42, column: 6)
!4378 = !DILocation(line: 42, column: 6, scope: !4364)
!4379 = !DILocation(line: 43, column: 3, scope: !4377)
!4380 = !DILocation(line: 45, column: 2, scope: !4364)
!4381 = !DILocalVariable(name: "__file", scope: !4382, file: !3, line: 45, type: !150)
!4382 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 45, column: 2)
!4383 = !DILocation(line: 45, column: 2, scope: !4382)
!4384 = !DILocation(line: 45, column: 2, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4386, file: !3, line: 45, column: 2)
!4386 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 45, column: 2)
!4387 = !DILocation(line: 45, column: 2, scope: !4386)
!4388 = !DILocation(line: 45, column: 2, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !3, line: 45, column: 2)
!4390 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 45, column: 2)
!4391 = !DILocation(line: 45, column: 2, scope: !4390)
!4392 = !DILocation(line: 45, column: 2, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 45, column: 2)
!4394 = !DILocation(line: 45, column: 2, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 45, column: 2)
!4396 = !DILocation(line: 45, column: 2, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 45, column: 2)
!4398 = !{i32 -2141917053, i32 -2141917024, i32 -2141916978, i32 -2141916920, i32 -2141916866, i32 -2141916812, i32 -2141916757, i32 -2141916726}
!4399 = !DILocation(line: 45, column: 2, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 45, column: 2)
!4401 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 45, column: 2)
!4402 = !{i32 -2141916281, i32 -2141916274, i32 -2141916220, i32 -2141916189, i32 -2141916159}
!4403 = !DILocation(line: 45, column: 2, scope: !4401)
!4404 = !DILocation(line: 47, column: 6, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 47, column: 6)
!4406 = !DILocation(line: 47, column: 12, scope: !4405)
!4407 = !DILocation(line: 47, column: 18, scope: !4405)
!4408 = !DILocation(line: 47, column: 6, scope: !4364)
!4409 = !DILocation(line: 48, column: 9, scope: !4405)
!4410 = !DILocation(line: 48, column: 15, scope: !4405)
!4411 = !DILocation(line: 48, column: 21, scope: !4405)
!4412 = !DILocation(line: 48, column: 26, scope: !4405)
!4413 = !DILocation(line: 48, column: 33, scope: !4405)
!4414 = !DILocation(line: 48, column: 7, scope: !4405)
!4415 = !DILocation(line: 48, column: 3, scope: !4405)
!4416 = !DILabel(scope: !4364, name: "done", file: !3, line: 49)
!4417 = !DILocation(line: 49, column: 2, scope: !4364)
!4418 = !DILocation(line: 50, column: 2, scope: !4364)
!4419 = !DILocation(line: 51, column: 9, scope: !4364)
!4420 = !DILocation(line: 51, column: 2, scope: !4364)
!4421 = distinct !DISubprogram(name: "iminor", scope: !38, file: !38, line: 875, type: !4422, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!7, !2461}
!4424 = !DILocalVariable(name: "inode", arg: 1, scope: !4421, file: !38, line: 875, type: !2461)
!4425 = !DILocation(line: 875, column: 51, scope: !4421)
!4426 = !DILocation(line: 877, column: 9, scope: !4421)
!4427 = !DILocation(line: 877, column: 2, scope: !4421)
!4428 = distinct !DISubprogram(name: "try_module_get", scope: !4429, file: !4429, line: 751, type: !4430, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4429 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!294, !125}
!4432 = !DILocalVariable(name: "module", arg: 1, scope: !4428, file: !4429, line: 751, type: !125)
!4433 = !DILocation(line: 751, column: 50, scope: !4428)
!4434 = !DILocation(line: 753, column: 2, scope: !4428)
!4435 = distinct !DISubprogram(name: "module_put", scope: !4429, file: !4429, line: 756, type: !4436, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{null, !125}
!4438 = !DILocalVariable(name: "module", arg: 1, scope: !4435, file: !4429, line: 756, type: !125)
!4439 = !DILocation(line: 756, column: 46, scope: !4435)
!4440 = !DILocation(line: 758, column: 1, scope: !4435)
!4441 = distinct !DISubprogram(name: "kref_get", scope: !2868, file: !2868, line: 43, type: !4442, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4444}
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!4445 = !DILocalVariable(name: "kref", arg: 1, scope: !4441, file: !2868, line: 43, type: !4444)
!4446 = !DILocation(line: 43, column: 42, scope: !4441)
!4447 = !DILocation(line: 45, column: 16, scope: !4441)
!4448 = !DILocation(line: 45, column: 22, scope: !4441)
!4449 = !DILocation(line: 45, column: 2, scope: !4441)
!4450 = !DILocation(line: 46, column: 1, scope: !4441)
!4451 = distinct !DISubprogram(name: "kref_init", scope: !2868, file: !2868, line: 29, type: !4442, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4452 = !DILocalVariable(name: "kref", arg: 1, scope: !4451, file: !2868, line: 29, type: !4444)
!4453 = !DILocation(line: 29, column: 43, scope: !4451)
!4454 = !DILocation(line: 31, column: 16, scope: !4451)
!4455 = !DILocation(line: 31, column: 22, scope: !4451)
!4456 = !DILocation(line: 31, column: 2, scope: !4451)
!4457 = !DILocation(line: 32, column: 1, scope: !4451)
!4458 = distinct !DISubprogram(name: "usb_devnode", scope: !3, file: !3, line: 65, type: !3695, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4459 = !DILocalVariable(name: "dev", arg: 1, scope: !4458, file: !3, line: 65, type: !3177)
!4460 = !DILocation(line: 65, column: 41, scope: !4458)
!4461 = !DILocalVariable(name: "mode", arg: 2, scope: !4458, file: !3, line: 65, type: !3198)
!4462 = !DILocation(line: 65, column: 55, scope: !4458)
!4463 = !DILocalVariable(name: "drv", scope: !4458, file: !3, line: 67, type: !3862)
!4464 = !DILocation(line: 67, column: 27, scope: !4458)
!4465 = !DILocation(line: 69, column: 24, scope: !4458)
!4466 = !DILocation(line: 69, column: 8, scope: !4458)
!4467 = !DILocation(line: 69, column: 6, scope: !4458)
!4468 = !DILocation(line: 70, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 70, column: 6)
!4470 = !DILocation(line: 70, column: 11, scope: !4469)
!4471 = !DILocation(line: 70, column: 15, scope: !4469)
!4472 = !DILocation(line: 70, column: 20, scope: !4469)
!4473 = !DILocation(line: 70, column: 6, scope: !4458)
!4474 = !DILocation(line: 71, column: 3, scope: !4469)
!4475 = !DILocation(line: 72, column: 9, scope: !4458)
!4476 = !DILocation(line: 72, column: 14, scope: !4458)
!4477 = !DILocation(line: 72, column: 22, scope: !4458)
!4478 = !DILocation(line: 72, column: 27, scope: !4458)
!4479 = !DILocation(line: 72, column: 2, scope: !4458)
!4480 = !DILocation(line: 73, column: 1, scope: !4458)
!4481 = distinct !DISubprogram(name: "refcount_inc", scope: !107, file: !107, line: 265, type: !4482, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{null, !4484}
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!4485 = !DILocalVariable(name: "r", arg: 1, scope: !4481, file: !107, line: 265, type: !4484)
!4486 = !DILocation(line: 265, column: 45, scope: !4481)
!4487 = !DILocation(line: 267, column: 17, scope: !4481)
!4488 = !DILocation(line: 267, column: 2, scope: !4481)
!4489 = !DILocation(line: 268, column: 1, scope: !4481)
!4490 = distinct !DISubprogram(name: "__refcount_inc", scope: !107, file: !107, line: 248, type: !4491, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{null, !4484, !520}
!4493 = !DILocalVariable(name: "r", arg: 1, scope: !4490, file: !107, line: 248, type: !4484)
!4494 = !DILocation(line: 248, column: 47, scope: !4490)
!4495 = !DILocalVariable(name: "oldp", arg: 2, scope: !4490, file: !107, line: 248, type: !520)
!4496 = !DILocation(line: 248, column: 55, scope: !4490)
!4497 = !DILocation(line: 250, column: 20, scope: !4490)
!4498 = !DILocation(line: 250, column: 23, scope: !4490)
!4499 = !DILocation(line: 250, column: 2, scope: !4490)
!4500 = !DILocation(line: 251, column: 1, scope: !4490)
!4501 = distinct !DISubprogram(name: "__refcount_add", scope: !107, file: !107, line: 191, type: !4502, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{null, !130, !4484, !520}
!4504 = !DILocalVariable(name: "i", arg: 1, scope: !4505, file: !4506, line: 182, type: !130)
!4505 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4506, file: !4506, line: 182, type: !4507, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4506 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!130, !130, !4509}
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!4510 = !DILocation(line: 182, column: 54, scope: !4505, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 143, column: 9, scope: !4512, inlinedAt: !4514)
!4512 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4513, file: !4513, line: 140, type: !4507, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4513 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4514 = distinct !DILocation(line: 193, column: 12, scope: !4501)
!4515 = !DILocalVariable(name: "v", arg: 2, scope: !4505, file: !4506, line: 182, type: !4509)
!4516 = !DILocation(line: 182, column: 67, scope: !4505, inlinedAt: !4511)
!4517 = !DILocalVariable(name: "__ret", scope: !4518, file: !4506, line: 184, type: !130)
!4518 = distinct !DILexicalBlock(scope: !4505, file: !4506, line: 184, column: 9)
!4519 = !DILocation(line: 184, column: 9, scope: !4518, inlinedAt: !4511)
!4520 = !DILocalVariable(name: "v", arg: 1, scope: !4521, file: !4522, line: 99, type: !4525)
!4521 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4522, file: !4522, line: 99, type: !4523, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4522 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4523 = !DISubroutineType(types: !4524)
!4524 = !{null, !4525, !382}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4527)
!4527 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4528 = !DILocation(line: 99, column: 79, scope: !4521, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 142, column: 2, scope: !4512, inlinedAt: !4514)
!4530 = !DILocalVariable(name: "size", arg: 2, scope: !4521, file: !4522, line: 99, type: !382)
!4531 = !DILocation(line: 99, column: 89, scope: !4521, inlinedAt: !4529)
!4532 = !DILocalVariable(name: "i", arg: 1, scope: !4512, file: !4513, line: 140, type: !130)
!4533 = !DILocation(line: 140, column: 30, scope: !4512, inlinedAt: !4514)
!4534 = !DILocalVariable(name: "v", arg: 2, scope: !4512, file: !4513, line: 140, type: !4509)
!4535 = !DILocation(line: 140, column: 43, scope: !4512, inlinedAt: !4514)
!4536 = !DILocalVariable(name: "i", arg: 1, scope: !4501, file: !107, line: 191, type: !130)
!4537 = !DILocation(line: 191, column: 39, scope: !4501)
!4538 = !DILocalVariable(name: "r", arg: 2, scope: !4501, file: !107, line: 191, type: !4484)
!4539 = !DILocation(line: 191, column: 54, scope: !4501)
!4540 = !DILocalVariable(name: "oldp", arg: 3, scope: !4501, file: !107, line: 191, type: !520)
!4541 = !DILocation(line: 191, column: 62, scope: !4501)
!4542 = !DILocalVariable(name: "old", scope: !4501, file: !107, line: 193, type: !130)
!4543 = !DILocation(line: 193, column: 6, scope: !4501)
!4544 = !DILocation(line: 193, column: 37, scope: !4501)
!4545 = !DILocation(line: 193, column: 41, scope: !4501)
!4546 = !DILocation(line: 193, column: 44, scope: !4501)
!4547 = !DILocation(line: 142, column: 31, scope: !4512, inlinedAt: !4514)
!4548 = !DILocation(line: 101, column: 20, scope: !4521, inlinedAt: !4529)
!4549 = !DILocation(line: 101, column: 23, scope: !4521, inlinedAt: !4529)
!4550 = !DILocation(line: 101, column: 2, scope: !4521, inlinedAt: !4529)
!4551 = !DILocation(line: 102, column: 2, scope: !4521, inlinedAt: !4529)
!4552 = !DILocation(line: 143, column: 39, scope: !4512, inlinedAt: !4514)
!4553 = !DILocation(line: 143, column: 42, scope: !4512, inlinedAt: !4514)
!4554 = !{i32 -2146619248}
!4555 = !DILocation(line: 195, column: 6, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4501, file: !107, line: 195, column: 6)
!4557 = !DILocation(line: 195, column: 6, scope: !4501)
!4558 = !DILocation(line: 196, column: 11, scope: !4556)
!4559 = !DILocation(line: 196, column: 4, scope: !4556)
!4560 = !DILocation(line: 196, column: 9, scope: !4556)
!4561 = !DILocation(line: 196, column: 3, scope: !4556)
!4562 = !DILocation(line: 198, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4501, file: !107, line: 198, column: 6)
!4564 = !DILocation(line: 198, column: 6, scope: !4501)
!4565 = !DILocation(line: 199, column: 26, scope: !4563)
!4566 = !DILocation(line: 199, column: 3, scope: !4563)
!4567 = !DILocation(line: 200, column: 11, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4563, file: !107, line: 200, column: 11)
!4569 = !DILocation(line: 200, column: 11, scope: !4563)
!4570 = !DILocation(line: 201, column: 26, scope: !4568)
!4571 = !DILocation(line: 201, column: 3, scope: !4568)
!4572 = !DILocation(line: 202, column: 1, scope: !4501)
!4573 = distinct !DISubprogram(name: "kasan_check_write", scope: !4574, file: !4574, line: 38, type: !4575, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4574 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!294, !4525, !7}
!4577 = !DILocalVariable(name: "p", arg: 1, scope: !4573, file: !4574, line: 38, type: !4525)
!4578 = !DILocation(line: 38, column: 59, scope: !4573)
!4579 = !DILocalVariable(name: "size", arg: 2, scope: !4573, file: !4574, line: 38, type: !7)
!4580 = !DILocation(line: 38, column: 75, scope: !4573)
!4581 = !DILocation(line: 40, column: 2, scope: !4573)
!4582 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4583, file: !4583, line: 178, type: !4584, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4583 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4584 = !DISubroutineType(types: !4585)
!4585 = !{null, !4525, !382, !130}
!4586 = !DILocalVariable(name: "ptr", arg: 1, scope: !4582, file: !4583, line: 178, type: !4525)
!4587 = !DILocation(line: 178, column: 60, scope: !4582)
!4588 = !DILocalVariable(name: "size", arg: 2, scope: !4582, file: !4583, line: 178, type: !382)
!4589 = !DILocation(line: 178, column: 72, scope: !4582)
!4590 = !DILocalVariable(name: "type", arg: 3, scope: !4582, file: !4583, line: 179, type: !130)
!4591 = !DILocation(line: 179, column: 15, scope: !4582)
!4592 = !DILocation(line: 179, column: 23, scope: !4582)
!4593 = distinct !DISubprogram(name: "get_order", scope: !4594, file: !4594, line: 29, type: !4595, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4594 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!130, !131}
!4597 = !DILocalVariable(name: "x", arg: 1, scope: !4598, file: !4599, line: 366, type: !220)
!4598 = distinct !DISubprogram(name: "fls64", scope: !4599, file: !4599, line: 366, type: !4600, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4599 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!130, !220}
!4602 = !DILocation(line: 366, column: 40, scope: !4598, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 46, column: 9, scope: !4593)
!4604 = !DILocalVariable(name: "bitpos", scope: !4598, file: !4599, line: 368, type: !130)
!4605 = !DILocation(line: 368, column: 6, scope: !4598, inlinedAt: !4603)
!4606 = !DILocalVariable(name: "size", arg: 1, scope: !4593, file: !4594, line: 29, type: !131)
!4607 = !DILocation(line: 29, column: 63, scope: !4593)
!4608 = !DILocation(line: 31, column: 27, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4593, file: !4594, line: 31, column: 6)
!4610 = !DILocation(line: 31, column: 6, scope: !4609)
!4611 = !DILocation(line: 31, column: 6, scope: !4593)
!4612 = !DILocation(line: 32, column: 8, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !4594, line: 32, column: 7)
!4614 = distinct !DILexicalBlock(scope: !4609, file: !4594, line: 31, column: 34)
!4615 = !DILocation(line: 32, column: 7, scope: !4614)
!4616 = !DILocation(line: 33, column: 4, scope: !4613)
!4617 = !DILocation(line: 35, column: 7, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !4594, line: 35, column: 7)
!4619 = !DILocation(line: 35, column: 12, scope: !4618)
!4620 = !DILocation(line: 35, column: 7, scope: !4614)
!4621 = !DILocation(line: 36, column: 4, scope: !4618)
!4622 = !DILocation(line: 38, column: 10, scope: !4614)
!4623 = !DILocation(line: 38, column: 28, scope: !4614)
!4624 = !DILocation(line: 38, column: 41, scope: !4614)
!4625 = !DILocation(line: 38, column: 3, scope: !4614)
!4626 = !DILocation(line: 41, column: 6, scope: !4593)
!4627 = !DILocation(line: 42, column: 7, scope: !4593)
!4628 = !DILocation(line: 46, column: 15, scope: !4593)
!4629 = !DILocation(line: 374, column: 2, scope: !4598, inlinedAt: !4603)
!4630 = !DILocation(line: 376, column: 14, scope: !4598, inlinedAt: !4603)
!4631 = !{i32 302917}
!4632 = !DILocation(line: 377, column: 9, scope: !4598, inlinedAt: !4603)
!4633 = !DILocation(line: 377, column: 16, scope: !4598, inlinedAt: !4603)
!4634 = !DILocation(line: 46, column: 2, scope: !4593)
!4635 = !DILocation(line: 48, column: 1, scope: !4593)
!4636 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4637, file: !4637, line: 30, type: !4638, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4637 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!130, !219}
!4640 = !DILocation(line: 366, column: 40, scope: !4598, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 32, column: 9, scope: !4636)
!4642 = !DILocation(line: 368, column: 6, scope: !4598, inlinedAt: !4641)
!4643 = !DILocalVariable(name: "n", arg: 1, scope: !4636, file: !4637, line: 30, type: !219)
!4644 = !DILocation(line: 30, column: 21, scope: !4636)
!4645 = !DILocation(line: 32, column: 15, scope: !4636)
!4646 = !DILocation(line: 374, column: 2, scope: !4598, inlinedAt: !4641)
!4647 = !DILocation(line: 376, column: 14, scope: !4598, inlinedAt: !4641)
!4648 = !DILocation(line: 377, column: 9, scope: !4598, inlinedAt: !4641)
!4649 = !DILocation(line: 377, column: 16, scope: !4598, inlinedAt: !4641)
!4650 = !DILocation(line: 32, column: 18, scope: !4636)
!4651 = !DILocation(line: 32, column: 2, scope: !4636)
!4652 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4653, file: !4653, line: 137, type: !4654, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4653 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!122, !764, !1879, !382, !123}
!4656 = !DILocalVariable(name: "s", arg: 1, scope: !4652, file: !4653, line: 137, type: !764)
!4657 = !DILocation(line: 137, column: 54, scope: !4652)
!4658 = !DILocalVariable(name: "object", arg: 2, scope: !4652, file: !4653, line: 137, type: !1879)
!4659 = !DILocation(line: 137, column: 69, scope: !4652)
!4660 = !DILocalVariable(name: "size", arg: 3, scope: !4652, file: !4653, line: 138, type: !382)
!4661 = !DILocation(line: 138, column: 12, scope: !4652)
!4662 = !DILocalVariable(name: "flags", arg: 4, scope: !4652, file: !4653, line: 138, type: !123)
!4663 = !DILocation(line: 138, column: 24, scope: !4652)
!4664 = !DILocation(line: 140, column: 17, scope: !4652)
!4665 = !DILocation(line: 140, column: 2, scope: !4652)
!4666 = distinct !DISubprogram(name: "refcount_set", scope: !107, file: !107, line: 134, type: !4667, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{null, !4484, !130}
!4669 = !DILocalVariable(name: "v", arg: 1, scope: !4670, file: !4506, line: 39, type: !4509)
!4670 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4506, file: !4506, line: 39, type: !4671, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{null, !4509, !130}
!4673 = !DILocation(line: 39, column: 55, scope: !4670, inlinedAt: !4674)
!4674 = distinct !DILocation(line: 46, column: 2, scope: !4675, inlinedAt: !4676)
!4675 = distinct !DISubprogram(name: "atomic_set", scope: !4513, file: !4513, line: 43, type: !4671, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4676 = distinct !DILocation(line: 136, column: 2, scope: !4666)
!4677 = !DILocalVariable(name: "i", arg: 2, scope: !4670, file: !4506, line: 39, type: !130)
!4678 = !DILocation(line: 39, column: 62, scope: !4670, inlinedAt: !4674)
!4679 = !DILocalVariable(name: "v", arg: 1, scope: !4680, file: !4522, line: 84, type: !4525)
!4680 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4522, file: !4522, line: 84, type: !4523, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4681 = !DILocation(line: 84, column: 74, scope: !4680, inlinedAt: !4682)
!4682 = distinct !DILocation(line: 45, column: 2, scope: !4675, inlinedAt: !4676)
!4683 = !DILocalVariable(name: "size", arg: 2, scope: !4680, file: !4522, line: 84, type: !382)
!4684 = !DILocation(line: 84, column: 84, scope: !4680, inlinedAt: !4682)
!4685 = !DILocalVariable(name: "v", arg: 1, scope: !4675, file: !4513, line: 43, type: !4509)
!4686 = !DILocation(line: 43, column: 22, scope: !4675, inlinedAt: !4676)
!4687 = !DILocalVariable(name: "i", arg: 2, scope: !4675, file: !4513, line: 43, type: !130)
!4688 = !DILocation(line: 43, column: 29, scope: !4675, inlinedAt: !4676)
!4689 = !DILocalVariable(name: "r", arg: 1, scope: !4666, file: !107, line: 134, type: !4484)
!4690 = !DILocation(line: 134, column: 45, scope: !4666)
!4691 = !DILocalVariable(name: "n", arg: 2, scope: !4666, file: !107, line: 134, type: !130)
!4692 = !DILocation(line: 134, column: 52, scope: !4666)
!4693 = !DILocation(line: 136, column: 14, scope: !4666)
!4694 = !DILocation(line: 136, column: 17, scope: !4666)
!4695 = !DILocation(line: 136, column: 23, scope: !4666)
!4696 = !DILocation(line: 45, column: 26, scope: !4675, inlinedAt: !4676)
!4697 = !DILocation(line: 86, column: 20, scope: !4680, inlinedAt: !4682)
!4698 = !DILocation(line: 86, column: 23, scope: !4680, inlinedAt: !4682)
!4699 = !DILocation(line: 86, column: 2, scope: !4680, inlinedAt: !4682)
!4700 = !DILocation(line: 87, column: 2, scope: !4680, inlinedAt: !4682)
!4701 = !DILocation(line: 46, column: 18, scope: !4675, inlinedAt: !4676)
!4702 = !DILocation(line: 46, column: 21, scope: !4675, inlinedAt: !4676)
!4703 = !DILocation(line: 41, column: 2, scope: !4704, inlinedAt: !4674)
!4704 = distinct !DILexicalBlock(scope: !4670, file: !4506, line: 41, column: 2)
!4705 = !DILocation(line: 137, column: 1, scope: !4666)
!4706 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !4707, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!122, !3508}
!4709 = !DILocalVariable(name: "dev", arg: 1, scope: !4706, file: !67, line: 655, type: !3508)
!4710 = !DILocation(line: 655, column: 58, scope: !4706)
!4711 = !DILocation(line: 657, column: 9, scope: !4706)
!4712 = !DILocation(line: 657, column: 14, scope: !4706)
!4713 = !DILocation(line: 657, column: 2, scope: !4706)
!4714 = distinct !DISubprogram(name: "kref_put", scope: !2868, file: !2868, line: 62, type: !4715, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!130, !4444, !4717}
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4718 = !DILocalVariable(name: "kref", arg: 1, scope: !4714, file: !2868, line: 62, type: !4444)
!4719 = !DILocation(line: 62, column: 41, scope: !4714)
!4720 = !DILocalVariable(name: "release", arg: 2, scope: !4714, file: !2868, line: 62, type: !4717)
!4721 = !DILocation(line: 62, column: 54, scope: !4714)
!4722 = !DILocation(line: 64, column: 29, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4714, file: !2868, line: 64, column: 6)
!4724 = !DILocation(line: 64, column: 35, scope: !4723)
!4725 = !DILocation(line: 64, column: 6, scope: !4723)
!4726 = !DILocation(line: 64, column: 6, scope: !4714)
!4727 = !DILocation(line: 65, column: 3, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4723, file: !2868, line: 64, column: 46)
!4729 = !DILocation(line: 65, column: 11, scope: !4728)
!4730 = !DILocation(line: 66, column: 3, scope: !4728)
!4731 = !DILocation(line: 68, column: 2, scope: !4714)
!4732 = !DILocation(line: 69, column: 1, scope: !4714)
!4733 = distinct !DISubprogram(name: "release_usb_class", scope: !3, file: !3, line: 105, type: !4442, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4734 = !DILocalVariable(name: "kref", arg: 1, scope: !4733, file: !3, line: 105, type: !4444)
!4735 = !DILocation(line: 105, column: 44, scope: !4733)
!4736 = !DILocation(line: 108, column: 16, scope: !4733)
!4737 = !DILocation(line: 108, column: 27, scope: !4733)
!4738 = !DILocation(line: 108, column: 2, scope: !4733)
!4739 = !DILocation(line: 109, column: 8, scope: !4733)
!4740 = !DILocation(line: 109, column: 2, scope: !4733)
!4741 = !DILocation(line: 110, column: 12, scope: !4733)
!4742 = !DILocation(line: 111, column: 1, scope: !4733)
!4743 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !107, file: !107, line: 331, type: !4744, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!294, !4484}
!4746 = !DILocalVariable(name: "r", arg: 1, scope: !4743, file: !107, line: 331, type: !4484)
!4747 = !DILocation(line: 331, column: 67, scope: !4743)
!4748 = !DILocation(line: 333, column: 33, scope: !4743)
!4749 = !DILocation(line: 333, column: 9, scope: !4743)
!4750 = !DILocation(line: 333, column: 2, scope: !4743)
!4751 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !107, file: !107, line: 313, type: !4752, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!294, !4484, !520}
!4754 = !DILocalVariable(name: "r", arg: 1, scope: !4751, file: !107, line: 313, type: !4484)
!4755 = !DILocation(line: 313, column: 69, scope: !4751)
!4756 = !DILocalVariable(name: "oldp", arg: 2, scope: !4751, file: !107, line: 313, type: !520)
!4757 = !DILocation(line: 313, column: 77, scope: !4751)
!4758 = !DILocation(line: 315, column: 36, scope: !4751)
!4759 = !DILocation(line: 315, column: 39, scope: !4751)
!4760 = !DILocation(line: 315, column: 9, scope: !4751)
!4761 = !DILocation(line: 315, column: 2, scope: !4751)
!4762 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !107, file: !107, line: 270, type: !4763, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!294, !130, !4484, !520}
!4765 = !DILocalVariable(name: "i", arg: 1, scope: !4766, file: !4506, line: 188, type: !130)
!4766 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4506, file: !4506, line: 188, type: !4507, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4767 = !DILocation(line: 188, column: 54, scope: !4766, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 221, column: 9, scope: !4769, inlinedAt: !4770)
!4769 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4513, file: !4513, line: 218, type: !4507, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !459)
!4770 = distinct !DILocation(line: 272, column: 12, scope: !4762)
!4771 = !DILocalVariable(name: "v", arg: 2, scope: !4766, file: !4506, line: 188, type: !4509)
!4772 = !DILocation(line: 188, column: 67, scope: !4766, inlinedAt: !4768)
!4773 = !DILocalVariable(name: "__ret", scope: !4774, file: !4506, line: 190, type: !130)
!4774 = distinct !DILexicalBlock(scope: !4766, file: !4506, line: 190, column: 9)
!4775 = !DILocation(line: 190, column: 9, scope: !4774, inlinedAt: !4768)
!4776 = !DILocation(line: 99, column: 79, scope: !4521, inlinedAt: !4777)
!4777 = distinct !DILocation(line: 220, column: 2, scope: !4769, inlinedAt: !4770)
!4778 = !DILocation(line: 99, column: 89, scope: !4521, inlinedAt: !4777)
!4779 = !DILocalVariable(name: "i", arg: 1, scope: !4769, file: !4513, line: 218, type: !130)
!4780 = !DILocation(line: 218, column: 30, scope: !4769, inlinedAt: !4770)
!4781 = !DILocalVariable(name: "v", arg: 2, scope: !4769, file: !4513, line: 218, type: !4509)
!4782 = !DILocation(line: 218, column: 43, scope: !4769, inlinedAt: !4770)
!4783 = !DILocalVariable(name: "i", arg: 1, scope: !4762, file: !107, line: 270, type: !130)
!4784 = !DILocation(line: 270, column: 61, scope: !4762)
!4785 = !DILocalVariable(name: "r", arg: 2, scope: !4762, file: !107, line: 270, type: !4484)
!4786 = !DILocation(line: 270, column: 76, scope: !4762)
!4787 = !DILocalVariable(name: "oldp", arg: 3, scope: !4762, file: !107, line: 270, type: !520)
!4788 = !DILocation(line: 270, column: 84, scope: !4762)
!4789 = !DILocalVariable(name: "old", scope: !4762, file: !107, line: 272, type: !130)
!4790 = !DILocation(line: 272, column: 6, scope: !4762)
!4791 = !DILocation(line: 272, column: 37, scope: !4762)
!4792 = !DILocation(line: 272, column: 41, scope: !4762)
!4793 = !DILocation(line: 272, column: 44, scope: !4762)
!4794 = !DILocation(line: 220, column: 31, scope: !4769, inlinedAt: !4770)
!4795 = !DILocation(line: 101, column: 20, scope: !4521, inlinedAt: !4777)
!4796 = !DILocation(line: 101, column: 23, scope: !4521, inlinedAt: !4777)
!4797 = !DILocation(line: 101, column: 2, scope: !4521, inlinedAt: !4777)
!4798 = !DILocation(line: 102, column: 2, scope: !4521, inlinedAt: !4777)
!4799 = !DILocation(line: 221, column: 39, scope: !4769, inlinedAt: !4770)
!4800 = !DILocation(line: 221, column: 42, scope: !4769, inlinedAt: !4770)
!4801 = !{i32 -2146617896}
!4802 = !DILocation(line: 274, column: 6, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4762, file: !107, line: 274, column: 6)
!4804 = !DILocation(line: 274, column: 6, scope: !4762)
!4805 = !DILocation(line: 275, column: 11, scope: !4803)
!4806 = !DILocation(line: 275, column: 4, scope: !4803)
!4807 = !DILocation(line: 275, column: 9, scope: !4803)
!4808 = !DILocation(line: 275, column: 3, scope: !4803)
!4809 = !DILocation(line: 277, column: 6, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4762, file: !107, line: 277, column: 6)
!4811 = !DILocation(line: 277, column: 13, scope: !4810)
!4812 = !DILocation(line: 277, column: 10, scope: !4810)
!4813 = !DILocation(line: 277, column: 6, scope: !4762)
!4814 = !DILocation(line: 278, column: 3, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !107, line: 277, column: 16)
!4816 = !{i32 -2144397429}
!4817 = !DILocation(line: 279, column: 3, scope: !4815)
!4818 = !DILocation(line: 282, column: 6, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4762, file: !107, line: 282, column: 6)
!4820 = !DILocation(line: 282, column: 6, scope: !4762)
!4821 = !DILocation(line: 283, column: 26, scope: !4819)
!4822 = !DILocation(line: 283, column: 3, scope: !4819)
!4823 = !DILocation(line: 285, column: 2, scope: !4762)
!4824 = !DILocation(line: 286, column: 1, scope: !4762)
